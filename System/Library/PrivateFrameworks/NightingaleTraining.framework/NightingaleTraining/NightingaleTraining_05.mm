uint64_t protocol witness for UnsafeMutableMemoryAccessible.withUnsafeMutableBufferPointer<A>(_:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error), v10, a4, a3, v5, MEMORY[0x277D84950], &v15, a5);
}

uint64_t thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = a2(a1);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t protocol witness for UnsafeMutableMemoryAccessible.withUnsafeMutableBufferPointer<A>(_:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error), v10, a4, a3, v5, MEMORY[0x277D84950], &v15, a5);
}

uint64_t _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(void (*a1)(void *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11[1] = a8;
  v12 = a1;
  v13 = a2;
  v26 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeMutableBufferPointer with negative count";
  v21 = "Swift/UnsafeBufferPointer.swift";
  v33[4] = a4;
  v33[3] = a5;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v25 = v11 - v24;
  v28 = *(v8 + 16);
  v33[2] = v28;
  v29 = ArraySlice.count.getter();
  ArraySlice._makeMutableAndUnique()();
  v30 = v27[1];
  v31 = v27[2] * *(*(v28 - 8) + 72);
  v32 = v30 + v31;
  if (v29 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v17;
    v33[0] = v32;
    v33[1] = v29;
    v12(v33, v25);
    v11[0] = v9;
    if (v9)
    {
      (*(v22 + 32))(v18, v25, v15);
    }

    return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v33, v30 + v31, v29, v27, v28);
  }

  return result;
}

NightingaleTraining::FeatureStatsOption_optional __swiftcall FeatureStatsOption.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "none";
  *(v1 + 8) = 4;
  *(v1 + 16) = 2;
  *(v1 + 24) = "perSlice";
  *(v1 + 32) = 8;
  *(v1 + 40) = 2;
  *(v1 + 48) = "allSlices";
  *(v1 + 56) = 9;
  *(v1 + 64) = 2;
  *(v1 + 72) = "deviceMean";
  *(v1 + 80) = 10;
  *(v1 + 88) = 2;
  *(v1 + 96) = "deviceMedian";
  *(v1 + 104) = 12;
  *(v1 + 112) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = NightingaleTraining_FeatureStatsOption_none;
LABEL_12:

      return v5;
    case 1:
      v5.value = NightingaleTraining_FeatureStatsOption_perSlice;
      goto LABEL_12;
    case 2:
      v5.value = NightingaleTraining_FeatureStatsOption_allSlices;
      goto LABEL_12;
    case 3:
      v5.value = NightingaleTraining_FeatureStatsOption_deviceMean;
      goto LABEL_12;
    case 4:
      v5.value = NightingaleTraining_FeatureStatsOption_deviceMedian;
      goto LABEL_12;
  }

  return 5;
}

NightingaleTraining::FeatureStatsOption_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureStatsOption@<W0>(Swift::String *a1@<X0>, NightingaleTraining::FeatureStatsOption_optional *a2@<X8>)
{
  result.value = FeatureStatsOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FeatureStatsOption@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureStatsOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:)(Swift::tuple_flow_OpaquePointer_daySHR10_OpaquePointer_nightSHR10_OpaquePointer_periodStartMean_OpaquePointer_periodStartStd_OpaquePointer_labels_OpaquePointer_cycleStats_tuple_size_Float_mean_Float_std_Float_daySHR10CountStats_tuple_mean_Float_optional_std_Float *__return_ptr retstr, Swift::OpaquePointer *flows, Swift::OpaquePointer *daySHR10s, Swift::OpaquePointer *nightSHR10s, Swift::OpaquePointer *calendarPeriodPredictions, Swift::OpaquePointer *historicalPeriods, Swift::OpaquePointer *cycleFactors, Swift::UInt32 dummyPeriodLength, Swift::UInt32 sliceSize, Swift::UInt32 maxNumDaysToNextPeriod, Swift::UInt32 minNumDaysToNextPeriod, Swift::Int minNumOfDaySHRPerSlice)
{
  v335 = retstr;
  v355 = flows;
  v354 = daySHR10s;
  v347 = nightSHR10s;
  v348 = calendarPeriodPredictions;
  v353 = historicalPeriods;
  v349 = cycleFactors;
  v350 = dummyPeriodLength;
  v351 = sliceSize;
  v359 = maxNumDaysToNextPeriod;
  v360 = minNumDaysToNextPeriod;
  v352 = minNumOfDaySHRPerSlice;
  v337 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v338 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v339 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v340 = closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v341 = partial apply for closure #2 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v342 = "Fatal error";
  v343 = "Range requires lowerBound <= upperBound";
  v344 = "Swift/Range.swift";
  v345 = "Unexpectedly found nil while unwrapping an Optional value";
  v346 = "NightingaleTraining/Featurizer.swift";
  v521 = 0;
  v520 = 0;
  v519 = 0;
  v518 = 0;
  v517 = 0;
  v516 = 0;
  v515 = 0;
  v514 = 0;
  v513 = 0;
  v512 = 0;
  v511 = 0;
  v510 = 0;
  v509 = 0;
  v507 = 0;
  v505 = 0;
  v503 = 0;
  v501 = 0;
  v491 = 0;
  v489 = 0;
  v488 = 0;
  v487._rawValue = 0;
  v486 = 0;
  v478 = 0;
  v474 = 0;
  v473 = 0;
  v472 = 0;
  memset(v471, 0, sizeof(v471));
  v468 = 0;
  v467 = 0;
  v464 = 0;
  v465 = 0;
  v466 = 0;
  v459 = 0.0;
  v455 = 0.0;
  v456 = 0;
  v454 = 0.0;
  v453 = 0;
  v452 = 0;
  v451._rawValue = 0;
  v450._rawValue = 0;
  v449._rawValue = 0;
  v448._rawValue = 0;
  v447._rawValue = 0;
  v446 = 0;
  v445 = 0;
  v442 = 0;
  v437 = 0;
  v433 = 0;
  v431 = 0;
  v430 = 0;
  v428 = 0;
  v429 = 0;
  v422 = 0;
  v421 = 0;
  v419 = 0;
  v420 = 0;
  v414 = 0.0;
  v404 = 0;
  v403 = 0.0;
  v402 = 0.0;
  v401 = 0.0;
  v400 = 0.0;
  v390 = 0;
  v391 = 0;
  v392 = 0.0;
  v388 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v378 = 0.0;
  v376 = 0;
  v368 = 0;
  v367 = 0;
  v365 = 0;
  v356 = type metadata accessor for PFLStats.StdMethod();
  v357 = *(v356 - 8);
  v358 = v356 - 8;
  v13 = MEMORY[0x28223BE20](v355, v354);
  v361 = &v78 - v14;
  v521 = v13;
  v520 = v15;
  v519 = v16;
  v518 = v17;
  v517 = v18;
  v516 = v19;
  v515 = v20;
  v514 = v21;
  v513 = maxNumDaysToNextPeriod;
  v512 = minNumDaysToNextPeriod;
  v511 = v22;
  v510 = v12;
  v363 = *v18;

  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd, &_ss6UInt32V5start_AB3endtMR);
  v364 = MEMORY[0x25F8895B0](v363);
  v509 = v364;

  if (v365 >= v364)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v84 = swift_allocError();
    *v77 = 49;
    swift_willThrow();
    v92 = v84;
    return;
  }

  rawValue = v348->_rawValue;

  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd, &_sSf15periodStartMean_Sf0aB3StdtMR);
  v334 = MEMORY[0x25F889170](rawValue, MEMORY[0x277D84CC0]);

  if (v334)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v85 = swift_allocError();
    *v76 = 50;
    swift_willThrow();
    v92 = v85;
    return;
  }

  v330 = v354->_rawValue;

  v331 = MEMORY[0x25F889170](v330, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);

  if (v331)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v86 = swift_allocError();
    *v75 = 51;
    swift_willThrow();
    v92 = v86;
    return;
  }

  v324 = v354->_rawValue;

  v508 = v325;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
  v23 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v24 = v336;
  v327 = v23;
  v25 = Sequence.sorted(by:)();
  v328 = v24;
  v329 = v25;
  if (v24)
  {
    __break(1u);
    goto LABEL_146;
  }

  v319 = v329;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v507 = v319;
  v320 = v347->_rawValue;

  v26 = v328;
  v506 = v321;
  v27 = Sequence.sorted(by:)();
  v322 = v26;
  v323 = v27;
  if (v26)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v313 = v323;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v505 = v313;
  v314 = v348->_rawValue;

  v504 = v315;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMd, &_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMR);
  lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)].Keys and conformance [A : B].Keys();
  v28 = v322;
  v29 = Sequence.sorted(by:)();
  v317 = v28;
  v318 = v29;
  if (v28)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v307 = v318;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v503 = v307;
  v308 = v353->_rawValue;

  v502 = v308;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v30 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v31 = v317;
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v340, 0, v309, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v310);
  v311 = v31;
  v312 = v32;
  if (v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    v83 = v263;
    v82 = v262;

    outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator(v471);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v83;
    return;
  }

  v303._rawValue = v312;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v501 = v303._rawValue;
  v499 = v319;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  v305 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection.first.getter();
  v306 = v497;
  if (v498)
  {
    _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v345, 57, 2, v346, 36, 2, 97, 0);
    __break(1u);
  }

  else
  {
    v302 = v306;
  }

  v496 = v302;
  v495 = v307;
  Collection.first.getter();
  v301 = v493;
  if (v494)
  {
    _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v345, 57, 2, v346, 36, 2, 97, 0);
    __break(1u);
  }

  else
  {
    v300 = v301;
  }

  v492 = v300;
  max<A>(_:_:)();
  v298 = v500;
  v491 = v500;
  v299 = v364 - 1;
  if (__OFSUB__(v364, 1))
  {
    __break(1u);
    goto LABEL_154;
  }

  Array.subscript.getter();
  v297 = v490;
  v489 = v490;
  if (v298 >= v490)
  {
LABEL_142:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v87 = swift_allocError();
    *v74 = 52;
    swift_willThrow();

    v92 = v87;
    return;
  }

  v296 = v297 - v298;
  if (v297 < v298)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v296 < v351)
  {
    goto LABEL_142;
  }

  v488 = findDaysNeedingDummyFlow(_:_:)(v353, v350);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V4flow_Sf8daySHR10Sf05nightD0Sf15periodStartMeanSf0fG3StdtMd, &_ss5UInt8V4flow_Sf8daySHR10Sf05nightD0Sf15periodStartMeanSf0fG3StdtMR);
  v294 = MEMORY[0x277D84CC0];
  v487._rawValue = Dictionary.init()();
  v483 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v319, &v483, v294, MEMORY[0x277D84CD8], &v484);
  v295 = v484;
  if (v485)
  {
    v290 = 0;
    v291 = 1;
  }

  else
  {
    v292 = v295;
    v290 = v295;
    v291 = 0;
  }

  v289 = v290;
  if (v291)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v88 = swift_allocError();
    *v73 = 55;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v88;
    return;
  }

  v288 = v289;
  v486 = v289;
  v479 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v313, &v479, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v480);
  v287 = v480;
  if (v481)
  {
    v482.value = 0;
    v482.is_nil = 1;
  }

  else
  {
    v286 = v287;
    v482.value = v287;
    v482.is_nil = 0;
  }

  v475 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v307, &v475, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v476);
  v285 = v476;
  if (v477)
  {
    v282 = 0;
    v283 = 1;
  }

  else
  {
    v284 = v285;
    v282 = v285;
    v283 = 0;
  }

  v281 = v282;
  if (v283)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v89 = swift_allocError();
    *v72 = 55;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v89;
    return;
  }

  v280 = v281;
  v478 = v281;
  v523 = findPeriodPredictionLabel(_:_:_:_:)(v303, v298, v351, v360);
  value = v523.value;
  if (v523.value._1)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v90 = swift_allocError();
    *v71 = 53;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v90;
    return;
  }

  v278 = value;
  v271 = value._1;
  v272 = value._0;
  v473 = value._1;
  v474 = value._0;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMR);
  v274 = AugmentedIntervalTree.__allocating_init()();
  v472 = v274;
  v275 = v349->_rawValue;

  v276 = &v522;
  Dictionary.makeIterator()();
  memcpy(v471, v276, sizeof(v471));
  for (i = v311; ; i = v259)
  {
    v268 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMd, &_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMR);
    Dictionary.Iterator.next()();
    v269 = v469;
    v270 = v470;
    if (!v470)
    {
      break;
    }

    v266 = v269;
    v267 = v270;
    v264 = v270;
    v265 = v269;
    v368 = v269;
    v367 = v270;
    if (v265 == NgtMenstrualAlgorithmsPhase.rawValue.getter(8))
    {
      v260 = v268;
    }

    else
    {
      v366 = v264;

      lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
      v34 = v268;
      Sequence.forEach(_:)();
      v261 = v34;
      v262 = v264;
      v263 = v34;
      if (v34)
      {
        goto LABEL_149;
      }

      v260 = v261;
    }

    v259 = v260;
  }

  outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator(v471);
  v468 = Array.init()();
  v255 = AugmentedIntervalTree.__allocating_init()();
  v467 = v255;
  v256 = v353->_rawValue;

  v257 = MEMORY[0x25F8895B0](v256, v362);

  v258 = v257 - 1;
  if (__OFSUB__(v257, 1))
  {
    goto LABEL_155;
  }

  if (v258 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v343, 39, 2, v344, 17, 2, 760, 0);
    __break(1u);
  }

  v462 = 0;
  v463 = v258;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (j = v268; ; j = v240)
  {
    v251 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    v252 = v460;
    if (v461)
    {
      break;
    }

    v250 = v252;
    v247 = v252;
    v380 = v252;
    Array.subscript.getter();
    v248 = v379;
    v378 = v379;
    v249 = v247 + 1;
    if (__OFADD__(v247, 1))
    {
      goto LABEL_166;
    }

    Array.subscript.getter();
    v246 = v377 - 1;
    if (!v377)
    {
      goto LABEL_167;
    }

    v37 = v251;
    v376 = v246;
    v375 = v248;
    v374 = v246;
    v38 = AugmentedIntervalTree.overlap(start:end:)(&v375, &v374);
    v243 = v37;
    v244 = v38;
    v245 = v37;
    if (v37)
    {
      v81 = v245;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v92 = v81;
      return;
    }

    if (v244)
    {
      v39 = v243;
      v371 = v248;
      v370 = v246;
      memset(v369, 0, sizeof(v369));
      AugmentedIntervalTree.insert(start:end:context:)(&v371, &v370, v369);
      v241 = v39;
      v242 = v39;
      outlined destroy of Pregnancy?(v369);
      v240 = v241;
    }

    else
    {
      v235 = &v373;
      v373 = v246;
      v237 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v236 = MEMORY[0x277D84CC0];
      Float.init<A>(_:)();
      v238 = v40;
      v372[1] = v248;
      Float.init<A>(_:)();
      v239 = v372;
      v372[0] = v238 - v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      Array.append(_:)();
      v240 = v243;
    }
  }

  v233 = v468;

  v234 = MEMORY[0x25F8895B0](v233, MEMORY[0x277D83A90]);

  if (v234 <= 0)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v91 = swift_allocError();
    *v70 = 54;
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v91;
    return;
  }

  v228 = v468;

  v223 = MEMORY[0x25F8895B0](v228, MEMORY[0x277D83A90]);
  v459 = v223;
  v42 = *MEMORY[0x277D41410];
  v224 = *(v357 + 104);
  v225 = v357 + 104;
  v224(v361, v42, v356);
  v457 = static PFLStats.meanAndStd(_:_:)();
  v458 = v43;
  v229 = *&v457;
  v230 = BYTE4(v457);
  v231 = v43;
  v226 = *(v357 + 8);
  v227 = v357 + 8;
  v226(v361, v356);

  v455 = v229;
  v456 = v230 & 1;
  v454 = v231;
  v453 = v298;
  v232 = v297 - v351;
  if (v297 < v351)
  {
    goto LABEL_156;
  }

  v452 = v232;
  v220 = MEMORY[0x277D83A90];
  v451._rawValue = Array.init()();
  v450._rawValue = Array.init()();
  v449._rawValue = Array.init()();
  v448._rawValue = Array.init()();
  v447._rawValue = Array.init()();
  v446 = Array.init()();
  v445 = Array.init()();
  v221 = __PAIR64__(v271, v272);
  v222 = v251;
  while (2)
  {
    v218 = v221;
    for (k = v222; ; k = v215)
    {
      v215 = k;
      v216 = HIDWORD(v218);
      v217 = v453;
      if (v232 < v453)
      {
        v194 = v215;
        goto LABEL_128;
      }

      v213 = *&v216;
      v214 = v217;
      if (v216 < v359)
      {
        break;
      }

      v212 = v216 - v359;
      v211 = v212 + 1;
      if (v212 == -1)
      {
        goto LABEL_163;
      }

      v210 = v217 + v211;
      if (__CFADD__(v217, v211))
      {
        goto LABEL_164;
      }

      v381 = v210;
      evictCaches(_:_:_:)(v217, v210, &v487);
      v453 = v210;
      v209 = v359 - 1;
      if (!v359)
      {
        goto LABEL_165;
      }

      v473 = v209;
      HIDWORD(v218) = v209;
    }

    v45 = v215;
    v204 = v214;
    v205 = v213;
    v439 = v214;
    v438 = v218;
    v46 = AugmentedIntervalTree.search(start:end:)(&v439, &v438);
    v206 = v45;
    v207 = v46;
    v208 = v45;
    if (v45)
    {
      v80 = v208;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v92 = v80;
      return;
    }

    v201._rawValue = v207;
    v437 = v207;
    v436 = v207;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMd, &_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMR);
    v203 = lazy protocol witness table accessor for type [Interval<UInt32, Any>] and conformance [A]();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v524 = findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(v201, &v453, &v487, v303, v351, v360);
      v199 = v524.value;
      v200 = v201._rawValue;
      if ((v524.value._1 & 1) == 0)
      {
        v198 = v199;
        v195 = v199;
        v382 = v199._1;
        v473 = v199._1;
        v383 = v199._0;
        v474 = v199._0;

        v196 = v195;
        v197 = v206;
LABEL_127:
        v221 = v196;
        v222 = v197;
        continue;
      }

      v194 = v206;
      goto LABEL_128;
    }

    break;
  }

  v47 = v206;
  v435 = v204;
  v434 = v204;
  v48 = AugmentedIntervalTree.search(start:end:)(&v435, &v434);
  v190 = v47;
  v191 = v48;
  v192 = v201._rawValue;
  v193 = v47;
  if (v47)
  {
    v79 = v193;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v79;
    return;
  }

  v189._rawValue = v191;
  v433 = v191;
  v432 = v191;
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v525 = findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(v189, &v453, &v487, v303, v351, v360);
    v186 = v525.value;
    v187 = v201._rawValue;
    v188 = v189._rawValue;
    if ((v525.value._1 & 1) == 0)
    {
      v185 = v186;
      v184 = v186;
      v384 = v186._1;
      v473 = v186._1;
      v385 = v186._0;
      v474 = v186._0;

      v196 = v184;
      v197 = v190;
      goto LABEL_127;
    }

    v183 = v187;

    v194 = v190;
    goto LABEL_128;
  }

  v431 = 0;
  v430 = 1;
  v182 = v204 + v351;
  if (__CFADD__(v204, v351))
  {
    goto LABEL_157;
  }

  if (v182 < v204)
  {
    _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v343, 39, 2, v344, 17, 2, 760, 0);
    __break(1u);
  }

  v426 = v204;
  v427 = v182;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
  v178 = lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  v179 = 0;
  v180 = 0;
  for (m = v190; ; m = v170)
  {
    v170 = m;
    v171 = v180;
    v172 = v179;
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd, &_ss16IndexingIteratorVySnys6UInt32VGGMR);
    IndexingIterator.next()();
    v174 = v424;
    v175 = v172;
    v176 = v173;
    if (v425)
    {
      break;
    }

    v169 = v174;
    v388 = v174;
    v50 = v354->_rawValue;
    v386 = v174;
    MEMORY[0x25F8891D0](&v387, &v386, v50, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if ((v387 & 0x100000000) != 0)
    {
      v167 = v172;
      v168 = v171;
    }

    else
    {
      v166 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        goto LABEL_161;
      }

      v431 = v166;
      v167 = v166;
      v168 = v166;
    }

    v179 = v167;
    v180 = v168;
  }

  v164 = v176;
  v165 = v175;
  if (v175 < v352)
  {
    v430 = 0;
    v163 = 0;
  }

  else
  {
    v163 = 1;
  }

  if (v163)
  {
    v162 = v204 + v351;
    if (__CFADD__(v204, v351))
    {
      goto LABEL_160;
    }

    if (v162 < v204)
    {
      _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v343, 39, 2, v344, 17, 2, 760, 0);
      __break(1u);
    }

    v417 = v204;
    v418 = v162;
    Collection<>.makeIterator()();
    for (n = v170; ; n = v159)
    {
      v159 = n;
      IndexingIterator.next()();
      v160 = v415[2];
      if (v416)
      {
        break;
      }

      v158 = v160;
      v154 = LODWORD(v160);
      v414 = v160;
      v410 = v160;
      MEMORY[0x25F8891D0](v411, &v410, v487._rawValue, MEMORY[0x277D84CC0], v293, MEMORY[0x277D84CD0]);
      v155 = v411[0];
      v156 = v411[1];
      v157 = v412;
      if (v413)
      {
        v54 = v355->_rawValue;
        v407 = v154;
        MEMORY[0x25F8891D0](&v408, &v407, v54, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
        v405 = v408;
        v406 = v409 & 1;
        if (v409)
        {
          v146 = 0;
        }

        else
        {
          v146 = v405;
        }

        v143 = 0;
        v138 = static Imputation.imputeFlow(flow:day:days:flowImputed:imputeValue:)(v146, v154, &v488, 0, 2u);
        v404 = v138;
        v131 = &v403;
        v133 = 0.0;
        v403 = 0.0;
        v132._rawValue = v354->_rawValue;

        Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(v132, &v486, v154, v131);

        v134 = &v402;
        v402 = v133;
        v135._rawValue = v347->_rawValue;

        Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(v135, &v482, v154, 64.88, v134);

        v136 = v348->_rawValue;

        v140 = static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(v136, v154, &v478);
        v142 = v55;

        v401 = v140;
        v400 = v142;
        v137 = &v399;
        v399 = v138;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        Float.init<A>(_:)();
        v139 = LODWORD(v403);
        v141 = LODWORD(v402);
        appendFeature(_:_:_:_:_:_:_:_:_:_:)(v56, &v451, v403, &v450, v402, &v449, v140, &v448, v142, &v447);
        v145 = &v394;
        v394 = v138;
        v395 = v139;
        v396 = v141 | (LODWORD(v140) << 32);
        v397 = v142;
        v398 = v143 & 1;
        v144 = &v393;
        v393 = v154;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd, &_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMR);
        Dictionary.subscript.setter();
      }

      else
      {
        v151 = v155;
        v152 = v156;
        v153 = v157;
        v150 = v157;
        v149 = v156;
        v148 = *(&v155 + 1);
        LOBYTE(v390) = v155;
        HIDWORD(v390) = HIDWORD(v155);
        v391 = v156;
        v392 = v157;
        v147 = &v389;
        v389 = v155;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        Float.init<A>(_:)();
        appendFeature(_:_:_:_:_:_:_:_:_:_:)(v53, &v451, v148, &v450, *&v149, &v449, *(&v149 + 1), &v448, v150, &v447);
      }
    }

    v415[1] = v205;
    Array.append(_:)();
    v127 = v415;
    v415[0] = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
    v128 = v205;
    v129 = v204;
    v130 = v159;
  }

  else
  {
    v128 = v205;
    v129 = v204;
    v130 = v170;
  }

  v122 = v130;
  v125 = v129;
  v123 = v128;
  v124 = &v423;
  v423 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd, &_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMR);
  Dictionary.removeValue(forKey:)();
  v126 = v125 + 1;
  if (v125 == -1)
  {
    goto LABEL_158;
  }

  v453 = v126;
  v121 = LODWORD(v123) - 1;
  if (v123 != 0.0)
  {
    v473 = v121;
    if (v121 >= v360)
    {
      v116 = __PAIR64__(v121, v218);
    }

    else
    {
      v526 = findPeriodPredictionLabel(_:_:_:_:)(v303, v126, v351, v360);
      v118 = v526.value;
      v119 = v201._rawValue;
      v120 = v189._rawValue;
      if (v526.value._1)
      {
        v115 = v119;

        v194 = v122;
LABEL_128:
        v111 = v194;
        v443 = 0.0;
        v444 = 1;
        v442 = 0;
        v112 = v445;

        v113 = MEMORY[0x25F8895B0](v112, MEMORY[0x277D83A90]);

        if (v113 <= 0)
        {
          v108 = 0.0;
          v109 = 0.0;
          v110 = 1;
        }

        else
        {
          v104 = v445;

          v224(v361, *MEMORY[0x277D41410], v356);
          v440 = static PFLStats.meanAndStd(_:_:)();
          v441 = v57;
          v107 = *&v440;
          v105 = BYTE4(v440);
          v106 = v57;
          v226(v361, v356);

          v443 = v107;
          v444 = v105 & 1;
          v442 = v106;
          v108 = *&v106;
          v109 = v107;
          v110 = v105;
        }

        v95 = v110;
        v96 = v109;
        v97 = v108;
        v98 = v451._rawValue;

        v99 = v450._rawValue;

        v100 = v449._rawValue;

        v101 = v448._rawValue;

        v102 = v447._rawValue;

        v103 = v446;

        if (v230)
        {
          _assertionFailure(_:_:file:line:flags:)(v342, 11, 2, v345, 57, 2, v346, 36, 2, 288, 0);
          __break(1u);
        }

        else
        {
          v94 = v229;
        }

        v93 = v94;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        v58 = v99;
        v59 = v100;
        v60 = v101;
        v61 = v102;
        v62 = v103;
        v63 = v223;
        v64 = v93;
        v65 = v231;
        v66 = v96;
        v67 = v95;
        v68 = v335;
        v69 = v97;
        v335->flow._rawValue = v98;
        v68->daySHR10._rawValue = v58;
        v68->nightSHR10._rawValue = v59;
        v68->periodStartMean._rawValue = v60;
        v68->periodStartStd._rawValue = v61;
        v68->labels._rawValue = v62;
        v68->cycleStats.size = v63;
        v68->cycleStats.mean = v64;
        v68->cycleStats.std = v65;
        v68->daySHR10CountStats.mean.value = v66;
        v68->daySHR10CountStats.mean.is_nil = v67 & 1;
        v68->daySHR10CountStats.std = v69;
        return;
      }

      v117 = v118;
      v421 = v118._1;
      v473 = v118._1;
      v422 = v118._0;
      v474 = v118._0;
      v116 = v118;
    }

    v114 = v116;

    v196 = v114;
    v197 = v122;
    goto LABEL_127;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

uint64_t findDaysNeedingDummyFlow(_:_:)(void *a1, int a2)
{
  v21 = a2;
  v24 = 0;
  v33 = a1;
  v32 = a2;
  v22 = *a1;

  v31 = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v23 = v25;
  lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v26 = 0;
  v27 = _ArrayProtocol.filter(_:)();
  v30 = v27;
  v15 = &v9;
  MEMORY[0x28223BE20](&v9, v2);
  v17 = v8;
  v8[4] = v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  v16 = v18;
  v4 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in findDaysNeedingDummyFlow(_:_:), v17, v23, v18, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
  v19 = 0;
  v20 = v6;
  v10 = v6;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v29 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays6UInt32VGGMd, &_sSaySays6UInt32VGGMR);
  v12 = lazy protocol witness table accessor for type [[UInt32]] and conformance [A]();
  v13 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v14 = Sequence.flatMap<A>(_:)();
  v9 = v14;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v28 = v9;
  return Set.init<A>(_:)();
}

Swift::tuple_UInt32_UInt32_optional __swiftcall findPeriodPredictionLabel(_:_:_:_:)(Swift::OpaquePointer a1, Swift::UInt32 a2, Swift::UInt32 a3, Swift::UInt32 a4)
{
  v13 = a2;
  rawValue = a1._rawValue;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v15 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v15 + a4;
  if (__CFADD__(v15, a4))
  {
    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v12 - 1;
  LODWORD(a1._rawValue) = static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(a1._rawValue, &v16, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v17);
  if (v18)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = v17;
    v11 = 0;
  }

  if (v11)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v13 + a3;
  if (__CFADD__(v13, a3))
  {
    goto LABEL_26;
  }

  if (v10 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 - v9 == -1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = v10;
  v8 = 0;
LABEL_22:
  LODWORD(a1._rawValue) = v7;
  a2 = v8 & 1;
LABEL_29:
  result.value._0 = a1._rawValue;
  result.is_nil = a3;
  result.value._1 = a2;
  return result;
}

void *closure #2 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:)(_DWORD *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LODWORD(v8) = *a1;
  HIDWORD(v8) = v2;
  v7 = a2;
  v6 = v8;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  AugmentedIntervalTree.insert(start:end:context:)(&v6, &v5, v4);
  return outlined destroy of Pregnancy?(v4);
}

Swift::Void __swiftcall evictCaches(_:_:_:)(Swift::UInt32 a1, Swift::UInt32 a2, Swift::OpaquePointer *a3)
{
  if (a2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
  lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd, &_ss16IndexingIteratorVySnys6UInt32VGGMR);
    IndexingIterator.next()();
    if (v3)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd, &_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMR);
    Dictionary.removeValue(forKey:)();
  }
}

{
  if (a2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
  lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd, &_ss16IndexingIteratorVySnys6UInt32VGGMR);
    IndexingIterator.next()();
    if (v3)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMd, &_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMR);
    Dictionary.removeValue(forKey:)();
  }
}

Swift::tuple_UInt32_UInt32_optional __swiftcall findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(Swift::OpaquePointer disqualifyingDays, Swift::UInt32 *currentSliceStart, Swift::OpaquePointer *featureCaches, Swift::OpaquePointer historicalPeriodsStartDays, Swift::UInt32 sliceSize, Swift::UInt32 minLabel)
{
  v7 = maxEnd<A>(_:)(disqualifyingDays._rawValue, MEMORY[0x277D84F70] + 8, v6);
  v16 = v7 + 1;
  if (v7 == -1)
  {
    __break(1u);
  }

  else
  {
    evictCaches(_:_:_:)(*currentSliceStart, v16, featureCaches);
    *currentSliceStart = v16;
    *&v7 = findPeriodPredictionLabel(_:_:_:_:)(historicalPeriodsStartDays, *currentSliceStart, sliceSize, minLabel);
    v8 = v10 & 1;
  }

  result.value._1 = v8;
  result.value._0 = v7;
  result.is_nil = v9;
  return result;
}

Swift::Void __swiftcall appendFeature(_:_:_:_:_:_:_:_:_:_:)(Swift::Float a1, Swift::OpaquePointer *a2, Swift::Float a3, Swift::OpaquePointer *a4, Swift::Float a5, Swift::OpaquePointer *a6, Swift::Float a7, Swift::OpaquePointer *a8, Swift::Float a9, Swift::OpaquePointer *a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
}

void Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v27 = a4;
  v28 = a2;
  v29 = a5;
  v35 = 0;
  v30 = 0;
  v32 = 0.0;
  v41 = a3;
  v31 = a3;
  v40 = a1;
  v39 = a5;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  if ((a1 & 1) == 0)
  {
    v25 = 1;
    v26 = v30;
    return;
  }

  v5 = v30;

  v34 = v28;
  v20 = &v13;
  MEMORY[0x28223BE20](&v13, v6);
  v21 = v12;
  v12[4] = v31;
  v12[5] = v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v8 = _ArrayProtocol.filter(_:)();
  v23 = v5;
  v24 = v8;
  v16 = v8;
  v17 = MEMORY[0x25F8895B0]();

  v18 = v17;
  v19 = HIDWORD(v31) - v31;
  if (HIDWORD(v31) < v31)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v19 + 1;
  if (v19 == -1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33[0] = v15;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  Double.init<A>(_:)();
  v32 = v18 / v9;
  if (v18 / v9 >= v29)
  {
    v25 = 1;
    v26 = v23;
    return;
  }

  v10 = __OFADD__(*v27, 1);
  v14 = *v27 + 1;
  if (!v10)
  {
    v11 = v23;
    *v27 = v14;
    v25 = 0;
    v26 = v11;
    return;
  }

LABEL_14:
  __break(1u);
}

Swift::Void __swiftcall Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(Swift::OpaquePointer feature, Swift::UInt32 *lastDayHasFeature, Swift::UInt32 currentDay, Swift::Float *cache)
{
  v12[1] = 0;
  rawValue = feature._rawValue;
  v14 = lastDayHasFeature;
  v13 = currentDay;
  v12[2] = cache;
  v11 = currentDay;
  MEMORY[0x25F8891D0](v12, &v11, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v12[0] & 0x100000000) == 0)
  {
    *lastDayHasFeature = currentDay;
  }

  v9 = *lastDayHasFeature;
  MEMORY[0x25F8891D0](&v10, &v9, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v10 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Featurizer.swift", 36, 2, 322, 0);
    __break(1u);
  }

  else
  {
    v4 = v10;
  }

  *cache = v4;
}

Swift::Void __swiftcall Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::UInt32_optional *lastDay, Swift::OpaquePointer *to, Swift::UInt32 currentDay, Swift::Float *cache)
{
  if (required)
  {
    if (lastDay->is_nil)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Featurizer.swift", 36, 2, 337, 0);
      __break(1u);
    }

    Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(feature, &lastDay->value, currentDay, cache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }
}

Swift::Void __swiftcall Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(Swift::OpaquePointer feature, Swift::UInt32_optional *lastDayHasFeature, Swift::UInt32 currentDay, Swift::Float defaultValue, Swift::Float *cache)
{
  v21 = 0;
  v17 = 0;
  v16 = 0;
  rawValue = feature._rawValue;
  v25 = lastDayHasFeature;
  v24 = currentDay;
  v23 = defaultValue;
  v22 = cache;
  v20 = defaultValue;
  value = lastDayHasFeature->value;
  if (lastDayHasFeature->is_nil)
  {
    v8 = defaultValue;
  }

  else
  {
    v16 = lastDayHasFeature->value;
    v14 = value;
    MEMORY[0x25F8891D0](&v15, &v14, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if ((v15 & 0x100000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Featurizer.swift", 36, 2, 353, 0);
      __break(1u);
    }

    else
    {
      v7 = *&v15;
    }

    v20 = v7;
    v8 = v7;
  }

  v18 = currentDay;
  MEMORY[0x25F8891D0](&v19, &v18, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  v6 = *&v19;
  if ((v19 & 0x100000000) != 0)
  {
    v5 = v8;
  }

  else
  {
    v17 = v19;
    lastDayHasFeature->value = currentDay;
    lastDayHasFeature->is_nil = 0;
    v20 = v6;
    v5 = v6;
  }

  *cache = v5;
}

Swift::Void __swiftcall Featurizer.updateFeature(required:feature:lastDayHasFeature:to:currentDay:defaultValue:cache:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::UInt32_optional *lastDayHasFeature, Swift::OpaquePointer *to, Swift::UInt32 currentDay, Swift::Float defaultValue, Swift::Float *cache)
{
  if (required)
  {
    Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(feature, lastDayHasFeature, currentDay, defaultValue, cache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }
}

uint64_t Featurizer.featureArrayWithNan(feature:)(uint64_t a1)
{
  v26 = 0;
  v19 = 0;
  v15 = 0;
  v14[0] = 0;
  *(v14 + 5) = 0;
  v9 = 0;
  v27 = a1;
  v25 = Array.init()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
  lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v6 = Sequence<>.sorted()();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v23 = v6;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection.first.getter();
  if (v21 & 1) != 0 || (v19 = v20, v18 = v6, lazy protocol witness table accessor for type [UInt32] and conformance [A](), BidirectionalCollection.last.getter(), (v17))
  {
    v2 = _allocateUninitializedArray<A>(_:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v2;
  }

  else
  {
    v15 = v16;
    if (v16 < v20)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
      __break(1u);
    }

    v12 = v20;
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNys6UInt32VGGMd, &_ss16IndexingIteratorVySNys6UInt32VGGMR);
      IndexingIterator.next()();
      if (v11)
      {
        break;
      }

      v9 = v10;
      v7 = v10;
      MEMORY[0x25F8891D0](&v8, &v7, a1, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
      if ((v8 & 0x100000000) != 0)
      {
        static Float.nan.getter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      Array.append(_:)();
    }

    v3 = v25;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v3;
  }
}

id Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  v15 = MEMORY[0x28223BE20](a1, a2);
  v1079 = v14;
  v1103 = v13;
  v1101 = v16;
  v1100 = v17;
  v1099 = v18;
  v1098 = v19;
  v1097 = v20;
  v1096 = v21;
  v1105 = v22;
  v1104 = v15;
  v1080 = v23;
  v1108 = a13;
  v1081 = a13;
  v1082 = a12;
  v1107 = a11;
  v1083 = a11;
  v1106 = a10;
  v1084 = a10;
  v1102 = a9;
  v1085 = a9;
  v1086 = 0;
  v1221 = 0;
  v1220 = 0;
  v1219 = 0;
  v1218 = 0;
  v1217 = 0;
  v1216 = 0;
  v1215 = 0;
  v1214 = 0;
  v1213 = 0;
  v1212 = 0;
  v1211 = 0;
  v1210 = 0;
  v1209 = 0;
  v1208 = 0;
  v1201 = 0;
  v1200 = 0;
  v1199 = 0;
  v1198 = 0;
  v1197 = 0;
  v1188 = 0;
  v1185 = 0;
  v1182 = 0;
  v1177 = 0;
  v1174 = 0;
  v1171 = 0;
  v1168 = 0;
  v1165 = 0;
  v1162 = 0;
  v1159 = 0;
  v1156 = 0;
  v1153 = 0;
  v1150 = 0;
  v1147 = 0;
  v1144 = 0;
  v1141 = 0;
  v1138 = 0;
  v1135 = 0;
  v1132 = 0;
  v1129 = 0;
  v1126 = 0;
  v1123 = 0;
  v1120 = 0;
  v1117 = 0;
  v1114 = 0;
  v1087 = type metadata accessor for Logger();
  v1088 = *(v1087 - 8);
  v1089 = v1088;
  v1092 = *(v1088 + 64);
  v24 = MEMORY[0x28223BE20](0, v1087);
  v1094 = (v1092 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1090 = &v338 - v1094;
  v25 = MEMORY[0x28223BE20](v24, &v338 - v1094);
  v1091 = &v338 - v1094;
  v26 = MEMORY[0x28223BE20](v25, &v338 - v1094);
  v1093 = &v338 - v1094;
  MEMORY[0x28223BE20](v26, &v338 - v1094);
  v1095 = &v338 - v1094;
  type metadata accessor for String.Encoding();
  v27 = MEMORY[0x28223BE20](v1104, v1105);
  v1109 = &v338 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1221 = v27;
  v1220 = v29;
  v1219 = v30;
  v1218 = v31;
  v1217 = v32;
  v1216 = v33;
  v1215 = v34;
  v1214 = v35;
  v1213 = v36;
  v1212 = v1106;
  v1211 = v1107;
  v1210 = a12;
  v1209 = v1108;
  v1208 = v37;
  v1207 = HyperParams.featurizerEngine.getter() & 1;
  v1206 = 1;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v1072 = v1079;
LABEL_293:
    v420 = v1072;
    static PFLLogging.plugin.getter();
    v424 = Logger.logObject.getter();
    v421 = v424;
    v423 = static os_log_type_t.debug.getter();
    v422 = v423;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v425 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v424, v423))
    {
      v418 = v420;
      v410 = static UnsafeMutablePointer.allocate(capacity:)();
      v406 = v410;
      v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v408 = 0;
      v411 = createStorage<A>(capacity:type:)(0, v407, v407);
      v409 = v411;
      v412 = createStorage<A>(capacity:type:)(v408, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v1205[0] = v410;
      v1204 = v411;
      v1203 = v412;
      v413 = 0;
      v414 = v1205;
      serialize(_:at:)(0, v1205);
      serialize(_:at:)(v413, v414);
      v1202 = v425;
      v415 = &v338;
      MEMORY[0x28223BE20](&v338, v291);
      v416 = &v338 - 6;
      v334 = v292;
      v335 = &v1204;
      v336 = &v1203;
      v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v293 = v418;
      Sequence.forEach(_:)();
      v419 = v293;
      if (v293)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25C4D8000, v421, v422, "Using native to featurize.", v406, 2u);
        v404 = 0;
        destroyStorage<A>(_:count:)(v409, 0, v407);
        destroyStorage<A>(_:count:)(v412, v404, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v406, MEMORY[0x277D84B78]);

        v405 = v419;
      }
    }

    else
    {

      v405 = v420;
    }

    v380 = v405;

    (*(v1089 + 8))(v1091, v1087);
    v294 = v380;
    Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(v1105, v1096, v1097, v1098, v1099, v1100, v1101, v1085, v1084, v1083, v1082, v1081);
    v381 = v294;
    v382 = v1205[43];
    v383 = v1205[44];
    v384 = v1205[45];
    v385 = v1205[46];
    v386 = v1205[47];
    v387 = v1205[48];
    v388 = v1205[49];
    v389 = v1205[50];
    v390 = v1205[51];
    v391 = v1205[52];
    v392 = v1205[53];
    v393 = v1205[54];
    v394 = v1205[55];
    v395 = v1205[56];
    v396 = v1205[57];
    v397 = v1205[58];
    v398 = v1205[59];
    v399 = v1205[60];
    v400 = v1205[61];
    v401 = v1205[62];
    v402 = v1205[63];
    v403 = v294;
    if (!v294)
    {
      v1205[22] = v382;
      v1205[23] = v383;
      v1205[24] = v384;
      v1205[25] = v385;
      v1205[26] = v386;
      v1205[27] = v387;
      v1205[28] = v388;
      v1205[29] = v389;
      v1205[30] = v390;
      v1205[31] = v391;
      v1205[32] = v392;
      v1205[33] = v393;
      v1205[34] = v394;
      v1205[35] = v395;
      v1205[36] = v396;
      v1205[37] = v397;
      v1205[38] = v398;
      v1205[39] = v399;
      v1205[40] = v400;
      v1205[41] = v401;
      v1205[42] = v402;
      v521 = v382;
      v522 = v383;
      v523 = v384;
      v524 = v385;
      v525 = v386;
      v526 = v387;
      v527 = v388;
      v528 = v389;
      v529 = v390;
      v530 = v391;
      v531 = v392;
      v532 = v393;
      v533 = v394;
      v534 = v395;
      v535 = v396;
      v536 = v397;
      v537 = v398;
      v538 = v399;
      v539 = v400;
      v540 = v401;
      v541 = v402;
      v542 = 0;
      goto LABEL_300;
    }

    return v403;
  }

  HyperParams.morpheusFeaturizerProgramFileName.getter();
  v1075 = v38;
  v39 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v1078 = v40;
  v1076 = v39;
  v1077 = v40;

  if (!v1078)
  {
    v1072 = v1079;
    goto LABEL_293;
  }

  v1073 = v1076;
  v1074 = v1077;
  v1066 = v1077;
  v1065 = v1076;
  v1067 = v1079;
  v1200 = v1076;
  v1201 = v1077;
  static String.Encoding.utf8.getter();
  v41 = v1067;
  v42 = String.init(contentsOfFile:encoding:)();
  v1068 = v41;
  v1069 = v42;
  v1070 = v43;
  v1071 = v41;
  if (v41)
  {
    v378 = 0;
    v379 = 0;

    v1062 = v378;
    v1063 = v378;
    v1064 = v379;
  }

  else
  {
    v1062 = v1069;
    v1063 = v1070;
    v1064 = 0;
  }

  v1059 = v1064;
  v1060 = v1063;
  v1061 = v1062;
  if (!v1063)
  {

    v1072 = v1059;
    goto LABEL_293;
  }

  v1057 = v1061;
  v1058 = v1060;
  v1049 = v1060;
  v1050 = v1061;
  v1198 = v1061;
  v1199 = v1060;
  static PFLLogging.plugin.getter();
  v1055 = Logger.logObject.getter();
  v1051 = v1055;
  v1054 = static os_log_type_t.debug.getter();
  v1052 = v1054;
  v1053 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v1056 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v1055, v1054))
  {
    v1047 = v1059;
    v1039 = static UnsafeMutablePointer.allocate(capacity:)();
    v1035 = v1039;
    v1036 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v1037 = 0;
    v1040 = createStorage<A>(capacity:type:)(0, v1036, v1036);
    v1038 = v1040;
    v1041 = createStorage<A>(capacity:type:)(v1037, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v1113[0] = v1039;
    v1112 = v1040;
    v1111 = v1041;
    v1042 = 0;
    v1043 = v1113;
    serialize(_:at:)(0, v1113);
    serialize(_:at:)(v1042, v1043);
    v1110 = v1056;
    v1044 = &v338;
    MEMORY[0x28223BE20](&v338, v45);
    v1045 = &v338 - 6;
    v334 = v46;
    v335 = &v1112;
    v336 = &v1111;
    v1046 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v47 = v1047;
    Sequence.forEach(_:)();
    v1048 = v47;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v1051, v1052, "Using Morpheus to featurize.", v1035, 2u);
      v1033 = 0;
      destroyStorage<A>(_:count:)(v1038, 0, v1036);
      destroyStorage<A>(_:count:)(v1041, v1033, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v1035, MEMORY[0x277D84B78]);

      v1034 = v1048;
    }
  }

  else
  {

    v1034 = v1059;
  }

  v1029 = v1034;

  v1027 = *(v1089 + 8);
  v1028 = (v1089 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1027(v1095, v1087);
  type metadata accessor for MorpheusProgram();
  v48 = v1029;
  v49 = static MorpheusProgram.fromDSL(_:)();
  v1030 = v48;
  v1031 = v49;
  v1032 = v48;
  if (v48)
  {
    v518 = v1032;
    v519 = 0;
    goto LABEL_302;
  }

  v1019 = v1031;
  v1024 = 0;
  v1188 = v1031;
  v1187 = v1083;
  v1020 = &v338;
  MEMORY[0x28223BE20](&v338, v50);
  v1021 = &v334;
  v336 = closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v1022 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd, &_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMR);
  v1023 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SaySaySiGGtMd, &_sSi_SaySaySiGGtMR);
  v51 = lazy protocol witness table accessor for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]();
  v52 = v1024;
  v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt8, @guaranteed [(start: UInt32, end: UInt32)]) -> (@unowned Int, @owned [[Int]]), v1021, v1022, v1023, MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v53);
  v1025 = v52;
  v1026 = v54;
  if (v52)
  {
    __break(1u);
    goto LABEL_311;
  }

  v1016 = 0;
  v1186 = v1026;
  v1009 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySiGGMd, &_sSaySaySiGGMR);
  v1008 = v1009;
  v1010 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SaySaySiGGtGMd, &_sSaySi_SaySaySiGGtGMR);
  lazy protocol witness table accessor for type [(Int, [[Int]])] and conformance [A]();
  v1011 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v1185 = v1011;
  v1184 = v1085;
  v1012 = &v338;
  MEMORY[0x28223BE20](&v338, v55);
  v1013 = &v334;
  v336 = closure #2 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMd, &_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMR);
  v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SaySfGtMd, &_sSi_SaySfGtMR);
  v56 = lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)] and conformance [A : B]();
  v57 = v1016;
  v59 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float) -> (@unowned Int, @owned [Float]), v1013, v1014, v1015, MEMORY[0x277D84A98], v56, MEMORY[0x277D84AC0], v58);
  v1017 = v57;
  v1018 = v59;
  if (v57)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v1004 = 0;
  v1183 = v1018;
  v991 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v990 = v991;
  v992 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SaySfGtGMd, &_sSaySi_SaySfGtGMR);
  lazy protocol witness table accessor for type [(Int, [Float])] and conformance [A]();
  v993 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v1182 = v993;
  v60 = _allocateUninitializedArray<A>(_:)();
  v996 = v61;
  v994 = v60;
  v995 = v61;

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
  v63 = v1105;
  v64 = v996;
  v65 = v1096;
  v996[3] = v62;
  *v64 = v63;
  v997 = v64 + 4;
  v1180[16] = v65;
  v998 = &v338;
  MEMORY[0x28223BE20](&v338, v64);
  v1001 = &v334;
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v1002 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
  v999 = v1002;
  v1003 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SftMd, &_sSi_SftMR);
  v1000 = v1003;
  v66 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
  v67 = v1004;
  v1005 = v66;
  v69 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), v1001, v1002, v1003, MEMORY[0x277D84A98], v66, MEMORY[0x277D84AC0], v68);
  v1006 = v67;
  v1007 = v69;
  if (v67)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v985 = 0;
  v1180[15] = v1007;
  v981 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SftGMd, &_sSaySi_SftGMR);
  v980 = v981;
  v982 = lazy protocol witness table accessor for type [(Int, Float)] and conformance [A]();
  v983 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSfGMd, &_sSDySiSfGMR);
  v71 = v997;
  v72 = v983;
  v73 = v70;
  v74 = v1096;
  v984 = v73;
  v997[3] = v73;
  *v71 = v72;
  v75 = Featurizer.featureArrayWithNan(feature:)(v74);
  v76 = v995;
  v77 = v1097;
  v78 = v985;
  v995[11] = v990;
  v76[8] = v75;
  v986 = v76 + 12;
  v1180[14] = v77;
  v987 = &v338;
  MEMORY[0x28223BE20](&v338, v79);
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v84 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v334, v80, v81, MEMORY[0x277D84A98], v82, MEMORY[0x277D84AC0], v83);
  v988 = v78;
  v989 = v84;
  if (v78)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v975 = 0;
  v1180[13] = v989;
  v85 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v86 = v986;
  v87 = v85;
  v88 = v1097;
  v986[3] = v984;
  *v86 = v87;
  v89 = Featurizer.featureArrayWithNan(feature:)(v88);
  v90 = v995;
  v91 = v1098;
  v92 = v975;
  v995[19] = v990;
  v90[16] = v89;
  v976 = v90 + 20;
  v1180[12] = v91;
  v977 = &v338;
  MEMORY[0x28223BE20](&v338, v93);
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v98 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v334, v94, v95, MEMORY[0x277D84A98], v96, MEMORY[0x277D84AC0], v97);
  v978 = v92;
  v979 = v98;
  if (v92)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  v970 = 0;
  v1180[11] = v979;
  v99 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v100 = v976;
  v101 = v99;
  v102 = v1098;
  v976[3] = v984;
  *v100 = v101;
  v103 = Featurizer.featureArrayWithNan(feature:)(v102);
  v104 = v995;
  v105 = v1099;
  v106 = v970;
  v995[27] = v990;
  v104[24] = v103;
  v971 = v104 + 28;
  v1180[10] = v105;
  v972 = &v338;
  MEMORY[0x28223BE20](&v338, v107);
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v334, v108, v109, MEMORY[0x277D84A98], v110, MEMORY[0x277D84AC0], v111);
  v973 = v106;
  v974 = v112;
  if (v106)
  {
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  v965 = 0;
  v1180[9] = v974;
  v113 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v114 = v971;
  v115 = v113;
  v116 = v1099;
  v971[3] = v984;
  *v114 = v115;
  v117 = Featurizer.featureArrayWithNan(feature:)(v116);
  v118 = v995;
  v119 = v1100;
  v120 = v965;
  v995[35] = v990;
  v118[32] = v117;
  v966 = v118 + 36;
  v1180[8] = v119;
  v967 = &v338;
  MEMORY[0x28223BE20](&v338, v121);
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v126 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v334, v122, v123, MEMORY[0x277D84A98], v124, MEMORY[0x277D84AC0], v125);
  v968 = v120;
  v969 = v126;
  if (v120)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v960 = 0;
  v1180[7] = v969;
  v127 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v128 = v966;
  v129 = v127;
  v130 = v1100;
  v966[3] = v984;
  *v128 = v129;
  v131 = Featurizer.featureArrayWithNan(feature:)(v130);
  v132 = v995;
  v133 = v1101;
  v134 = v960;
  v995[43] = v990;
  v132[40] = v131;
  v961 = v132 + 44;
  v1180[6] = v133;
  v962 = &v338;
  MEMORY[0x28223BE20](&v338, v135);
  v336 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v337 = 0;
  v140 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v334, v136, v137, MEMORY[0x277D84A98], v138, MEMORY[0x277D84AC0], v139);
  v963 = v134;
  v964 = v140;
  if (v134)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v956 = 0;
  v1180[5] = v964;
  v955 = MEMORY[0x277D83A90];
  v141 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v142 = v961;
  v143 = v141;
  v144 = v1101;
  v961[3] = v984;
  *v142 = v143;
  v145 = Featurizer.featureArrayWithNan(feature:)(v144);
  v146 = v995;
  v995[51] = v990;
  v146[48] = v145;

  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSaySfGGMd, &_sSDySiSaySfGGMR);
  v148 = v993;
  v149 = v995;
  v995[55] = v147;
  v149[52] = v148;
  v952 = v149 + 56;
  KeyPath = swift_getKeyPath();
  v953 = KeyPath;

  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd, &_sSf15periodStartMean_Sf0aB3StdtMR);
  v151 = v956;
  v957 = v150;
  v152 = Dictionary.mapValues<A>(_:)();
  v958 = v151;
  v959 = v152;
  if (v151)
  {
LABEL_318:

    __break(1u);
    goto LABEL_319;
  }

  v944 = v959;
  v947 = 0;

  v945 = Featurizer.featureArrayWithNan(feature:)(v944);

  v153 = v952;
  v154 = v945;
  v155 = v995;
  v952[3] = v990;
  *v153 = v154;
  v946 = v155 + 60;
  v156 = swift_getKeyPath();
  v157 = v947;
  v949 = v156;
  v948 = v156;

  v158 = Dictionary.mapValues<A>(_:)();
  v950 = v157;
  v951 = v158;
  if (v157)
  {
LABEL_319:

    __break(1u);
    goto LABEL_320;
  }

  v936 = v951;
  v941 = 0;

  v937 = Featurizer.featureArrayWithNan(feature:)(v936);

  v159 = v946;
  v160 = v937;
  v161 = v995;
  v162 = v1084;
  v946[3] = v990;
  *v159 = v160;
  v938 = v161 + 64;
  v1180[4] = v162;
  v939 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v163 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v164 = v941;
  v166 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v939, v940, MEMORY[0x277D84A98], v163, MEMORY[0x277D84AC0], v165);
  v942 = v164;
  v943 = v166;
  if (v164)
  {
LABEL_320:
    __break(1u);
    goto LABEL_321;
  }

  v167 = v938;
  v168 = v943;
  v930 = 0;
  v938[3] = v1008;
  *v167 = v168;

  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSaySaySiGGGMd, &_sSDySiSaySaySiGGGMR);
  v170 = v1011;
  v171 = v995;
  v995[71] = v169;
  v171[68] = v170;

  v927 = 0;
  v172 = type metadata accessor for HyperParams();
  v173 = v1082;
  v174 = v1081;
  v175 = v995;
  v995[75] = v172;
  v175[72] = v173;
  v175[79] = MEMORY[0x277D83B88];
  v175[76] = v174;
  v928 = MEMORY[0x277D84F70] + 8;
  _finalizeUninitializedArray<A>(_:)();
  v931 = v176;
  v926 = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v932 = Dictionary.init(dictionaryLiteral:)();
  v929 = v932;
  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurize", 9uLL, 1);
  v178 = v930;
  object = v177._object;
  dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
  v934 = v178;
  v935 = v178;
  if (v178)
  {
LABEL_321:
    v339 = v935;
    v340 = 0;

    v518 = v339;
    v519 = v340;
    goto LABEL_302;
  }

  v1179[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v1179[0] = swift_allocObject();
  outlined init with copy of Any?(v1181, v1179[0] + 16);
  v925 = v1180;
  v924 = v1179;
  static MorpheusUtils.unwrapMorpheusResult(result:)();
  __swift_destroy_boxed_opaque_existential_1(v924);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v923 = v1178;
  }

  else
  {
    v923 = 0;
  }

  v922 = v923;
  if (!v923)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v452 = 0;
    v453 = swift_allocError();
    *v285 = 73;
    swift_willThrow();
    v454 = v452;
    outlined destroy of Pregnancy?(v1181);

    v518 = v453;
    v519 = v454;
    goto LABEL_302;
  }

  v921 = v922;
  v919 = v922;
  v1177 = v922;
  v1175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
  v920 = &v1175;
  MEMORY[0x25F8891D0](v1176);
  outlined destroy of DefaultStringInterpolation();
  if (v1176[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v918 = v1113[1];
    }

    else
    {
      v918 = 0;
    }

    v917 = v918;
  }

  else
  {
    outlined destroy of Pregnancy?(v1176);
    v917 = 0;
  }

  v916 = v917;
  if (v917)
  {
    v915 = v916;
    v912 = v934;
    v1113[2] = v916;
    v910 = swift_getKeyPath();
    v909 = v910;

    v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v179 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v180 = v912;
    v182 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v910, v911, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v179, MEMORY[0x277D84AC0], v181);
    v913 = v180;
    v914 = v182;
    if (v180)
    {

      __break(1u);
      goto LABEL_323;
    }

    v906 = v914;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v907 = v906;
    v908 = v913;
  }

  else
  {
    v907 = 0;
    v908 = v934;
  }

  v904 = v908;
  v905 = v907;
  if (!v907)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v455 = 0;
    v456 = swift_allocError();
    *v284 = 74;
    swift_willThrow();
    v457 = v455;

    outlined destroy of Pregnancy?(v1181);

    v518 = v456;
    v519 = v457;
    goto LABEL_302;
  }

  v903 = v905;
  v901 = v905;
  v1174 = v905;
  v1172 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", 0x14uLL, 1);
  v902 = &v1172;
  MEMORY[0x25F8891D0](v1173);
  outlined destroy of DefaultStringInterpolation();
  if (v1173[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v900 = v1113[3];
    }

    else
    {
      v900 = 0;
    }

    v899 = v900;
  }

  else
  {
    outlined destroy of Pregnancy?(v1173);
    v899 = 0;
  }

  v898 = v899;
  if (v899)
  {
    v897 = v898;
    v894 = v904;
    v1113[4] = v898;
    v892 = swift_getKeyPath();
    v891 = v892;

    v893 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v183 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v184 = v894;
    v186 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v892, v893, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v183, MEMORY[0x277D84AC0], v185);
    v895 = v184;
    v896 = v186;
    if (!v184)
    {
      v888 = v896;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v889 = v888;
      v890 = v895;
      goto LABEL_49;
    }

LABEL_323:

    __break(1u);
    goto LABEL_324;
  }

  v889 = 0;
  v890 = v904;
LABEL_49:
  v886 = v890;
  v887 = v889;
  if (!v889)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v458 = 0;
    v459 = swift_allocError();
    *v283 = 74;
    swift_willThrow();
    v460 = v458;

    outlined destroy of Pregnancy?(v1181);

    v518 = v459;
    v519 = v460;
    goto LABEL_302;
  }

  v885 = v887;
  v883 = v887;
  v1171 = v887;
  v1169 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, 1);
  v884 = &v1169;
  MEMORY[0x25F8891D0](v1170);
  outlined destroy of DefaultStringInterpolation();
  if (v1170[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v882 = v1113[5];
    }

    else
    {
      v882 = 0;
    }

    v881 = v882;
  }

  else
  {
    outlined destroy of Pregnancy?(v1170);
    v881 = 0;
  }

  v880 = v881;
  if (v881)
  {
    v879 = v880;
    v876 = v886;
    v1113[6] = v880;
    v874 = swift_getKeyPath();
    v873 = v874;

    v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v187 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v188 = v876;
    v190 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v874, v875, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v187, MEMORY[0x277D84AC0], v189);
    v877 = v188;
    v878 = v190;
    if (!v188)
    {
      v870 = v878;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v871 = v870;
      v872 = v877;
      goto LABEL_58;
    }

LABEL_324:

    __break(1u);
    goto LABEL_325;
  }

  v871 = 0;
  v872 = v886;
LABEL_58:
  v868 = v872;
  v869 = v871;
  if (!v871)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v461 = 0;
    v462 = swift_allocError();
    *v282 = 75;
    swift_willThrow();
    v463 = v461;

    outlined destroy of Pregnancy?(v1181);

    v518 = v462;
    v519 = v463;
    goto LABEL_302;
  }

  v867 = v869;
  v865 = v869;
  v1168 = v869;
  v1166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, 1);
  v866 = &v1166;
  MEMORY[0x25F8891D0](v1167);
  outlined destroy of DefaultStringInterpolation();
  if (v1167[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v864 = v1113[7];
    }

    else
    {
      v864 = 0;
    }

    v863 = v864;
  }

  else
  {
    outlined destroy of Pregnancy?(v1167);
    v863 = 0;
  }

  v862 = v863;
  if (v863)
  {
    v861 = v862;
    v858 = v868;
    v1113[8] = v862;
    v856 = swift_getKeyPath();
    v855 = v856;

    v857 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v191 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v192 = v858;
    v194 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v856, v857, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v191, MEMORY[0x277D84AC0], v193);
    v859 = v192;
    v860 = v194;
    if (!v192)
    {
      v852 = v860;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v853 = v852;
      v854 = v859;
      goto LABEL_67;
    }

LABEL_325:

    __break(1u);
    goto LABEL_326;
  }

  v853 = 0;
  v854 = v868;
LABEL_67:
  v850 = v854;
  v851 = v853;
  if (!v853)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v464 = 0;
    v465 = swift_allocError();
    *v281 = 75;
    swift_willThrow();
    v466 = v464;

    outlined destroy of Pregnancy?(v1181);

    v518 = v465;
    v519 = v466;
    goto LABEL_302;
  }

  v849 = v851;
  v847 = v851;
  v1165 = v851;
  v1163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, 1);
  v848 = &v1163;
  MEMORY[0x25F8891D0](v1164);
  outlined destroy of DefaultStringInterpolation();
  if (v1164[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v846 = v1113[9];
    }

    else
    {
      v846 = 0;
    }

    v845 = v846;
  }

  else
  {
    outlined destroy of Pregnancy?(v1164);
    v845 = 0;
  }

  v844 = v845;
  if (v845)
  {
    v843 = v844;
    v840 = v850;
    v1113[10] = v844;
    v838 = swift_getKeyPath();
    v837 = v838;

    v839 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v195 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v196 = v840;
    v198 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v838, v839, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v195, MEMORY[0x277D84AC0], v197);
    v841 = v196;
    v842 = v198;
    if (!v196)
    {
      v834 = v842;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v835 = v834;
      v836 = v841;
      goto LABEL_76;
    }

LABEL_326:

    __break(1u);
    goto LABEL_327;
  }

  v835 = 0;
  v836 = v850;
LABEL_76:
  v832 = v836;
  v833 = v835;
  if (!v835)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v467 = 0;
    v468 = swift_allocError();
    *v280 = 76;
    swift_willThrow();
    v469 = v467;

    outlined destroy of Pregnancy?(v1181);

    v518 = v468;
    v519 = v469;
    goto LABEL_302;
  }

  v831 = v833;
  v829 = v833;
  v1162 = v833;
  v1160 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", 0xFuLL, 1);
  v830 = &v1160;
  MEMORY[0x25F8891D0](v1161);
  outlined destroy of DefaultStringInterpolation();
  if (v1161[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v828 = v1113[11];
    }

    else
    {
      v828 = 0;
    }

    v827 = v828;
  }

  else
  {
    outlined destroy of Pregnancy?(v1161);
    v827 = 0;
  }

  v826 = v827;
  if (v827)
  {
    v825 = v826;
    v822 = v832;
    v1113[12] = v826;
    v820 = swift_getKeyPath();
    v819 = v820;

    v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v199 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v200 = v822;
    v202 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v820, v821, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v199, MEMORY[0x277D84AC0], v201);
    v823 = v200;
    v824 = v202;
    if (!v200)
    {
      v816 = v824;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v817 = v816;
      v818 = v823;
      goto LABEL_85;
    }

LABEL_327:

    __break(1u);
    goto LABEL_328;
  }

  v817 = 0;
  v818 = v832;
LABEL_85:
  v814 = v818;
  v815 = v817;
  if (!v817)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v470 = 0;
    v471 = swift_allocError();
    *v279 = 76;
    swift_willThrow();
    v472 = v470;

    outlined destroy of Pregnancy?(v1181);

    v518 = v471;
    v519 = v472;
    goto LABEL_302;
  }

  v813 = v815;
  v811 = v815;
  v1159 = v815;
  v1157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", 0xAuLL, 1);
  v812 = &v1157;
  MEMORY[0x25F8891D0](v1158);
  outlined destroy of DefaultStringInterpolation();
  if (v1158[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v810 = v1113[13];
    }

    else
    {
      v810 = 0;
    }

    v809 = v810;
  }

  else
  {
    outlined destroy of Pregnancy?(v1158);
    v809 = 0;
  }

  v808 = v809;
  if (v809)
  {
    v807 = v808;
    v804 = v814;
    v1113[14] = v808;
    v802 = swift_getKeyPath();
    v801 = v802;

    v803 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v203 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v204 = v804;
    v206 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v802, v803, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v203, MEMORY[0x277D84AC0], v205);
    v805 = v204;
    v806 = v206;
    if (!v204)
    {
      v798 = v806;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v799 = v798;
      v800 = v805;
      goto LABEL_94;
    }

LABEL_328:

    __break(1u);
    goto LABEL_329;
  }

  v799 = 0;
  v800 = v814;
LABEL_94:
  v796 = v800;
  v797 = v799;
  if (!v799)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v473 = 0;
    v474 = swift_allocError();
    *v278 = 77;
    swift_willThrow();
    v475 = v473;

    outlined destroy of Pregnancy?(v1181);

    v518 = v474;
    v519 = v475;
    goto LABEL_302;
  }

  v795 = v797;
  v793 = v797;
  v1156 = v797;
  v1154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", 0xFuLL, 1);
  v794 = &v1154;
  MEMORY[0x25F8891D0](v1155);
  outlined destroy of DefaultStringInterpolation();
  if (v1155[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v792 = v1113[15];
    }

    else
    {
      v792 = 0;
    }

    v791 = v792;
  }

  else
  {
    outlined destroy of Pregnancy?(v1155);
    v791 = 0;
  }

  v790 = v791;
  if (v791)
  {
    v789 = v790;
    v786 = v796;
    v1113[16] = v790;
    v784 = swift_getKeyPath();
    v783 = v784;

    v785 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v207 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v208 = v786;
    v210 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v784, v785, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v207, MEMORY[0x277D84AC0], v209);
    v787 = v208;
    v788 = v210;
    if (!v208)
    {
      v780 = v788;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v781 = v780;
      v782 = v787;
      goto LABEL_103;
    }

LABEL_329:

    __break(1u);
    goto LABEL_330;
  }

  v781 = 0;
  v782 = v796;
LABEL_103:
  v778 = v782;
  v779 = v781;
  if (!v781)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v476 = 0;
    v477 = swift_allocError();
    *v277 = 77;
    swift_willThrow();
    v478 = v476;

    outlined destroy of Pregnancy?(v1181);

    v518 = v477;
    v519 = v478;
    goto LABEL_302;
  }

  v777 = v779;
  v775 = v779;
  v1153 = v779;
  v1151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, 1);
  v776 = &v1151;
  MEMORY[0x25F8891D0](v1152);
  outlined destroy of DefaultStringInterpolation();
  if (v1152[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v774 = v1113[17];
    }

    else
    {
      v774 = 0;
    }

    v773 = v774;
  }

  else
  {
    outlined destroy of Pregnancy?(v1152);
    v773 = 0;
  }

  v772 = v773;
  if (v773)
  {
    v771 = v772;
    v768 = v778;
    v1113[18] = v772;
    v766 = swift_getKeyPath();
    v765 = v766;

    v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v211 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v212 = v768;
    v214 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v766, v767, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v211, MEMORY[0x277D84AC0], v213);
    v769 = v212;
    v770 = v214;
    if (!v212)
    {
      v762 = v770;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v763 = v762;
      v764 = v769;
      goto LABEL_112;
    }

LABEL_330:

    __break(1u);
    goto LABEL_331;
  }

  v763 = 0;
  v764 = v778;
LABEL_112:
  v760 = v764;
  v761 = v763;
  if (!v763)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v479 = 0;
    v480 = swift_allocError();
    *v276 = 78;
    swift_willThrow();
    v481 = v479;

    outlined destroy of Pregnancy?(v1181);

    v518 = v480;
    v519 = v481;
    goto LABEL_302;
  }

  v759 = v761;
  v757 = v761;
  v1150 = v761;
  v1148 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, 1);
  v758 = &v1148;
  MEMORY[0x25F8891D0](v1149);
  outlined destroy of DefaultStringInterpolation();
  if (v1149[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v756 = v1113[19];
    }

    else
    {
      v756 = 0;
    }

    v755 = v756;
  }

  else
  {
    outlined destroy of Pregnancy?(v1149);
    v755 = 0;
  }

  v754 = v755;
  if (v755)
  {
    v753 = v754;
    v750 = v760;
    v1113[20] = v754;
    v748 = swift_getKeyPath();
    v747 = v748;

    v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v215 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v216 = v750;
    v218 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v748, v749, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v215, MEMORY[0x277D84AC0], v217);
    v751 = v216;
    v752 = v218;
    if (!v216)
    {
      v744 = v752;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v745 = v744;
      v746 = v751;
      goto LABEL_121;
    }

LABEL_331:

    __break(1u);
    goto LABEL_332;
  }

  v745 = 0;
  v746 = v760;
LABEL_121:
  v742 = v746;
  v743 = v745;
  if (!v745)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v482 = 0;
    v483 = swift_allocError();
    *v275 = 78;
    swift_willThrow();
    v484 = v482;

    outlined destroy of Pregnancy?(v1181);

    v518 = v483;
    v519 = v484;
    goto LABEL_302;
  }

  v741 = v743;
  v739 = v743;
  v1147 = v743;
  v1145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", 0xAuLL, 1);
  v740 = &v1145;
  MEMORY[0x25F8891D0](v1146);
  outlined destroy of DefaultStringInterpolation();
  if (v1146[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v738 = v1113[21];
    }

    else
    {
      v738 = 0;
    }

    v737 = v738;
  }

  else
  {
    outlined destroy of Pregnancy?(v1146);
    v737 = 0;
  }

  v736 = v737;
  if (v737)
  {
    v735 = v736;
    v732 = v742;
    v1113[22] = v736;
    v730 = swift_getKeyPath();
    v729 = v730;

    v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v219 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v220 = v732;
    v222 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v730, v731, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v219, MEMORY[0x277D84AC0], v221);
    v733 = v220;
    v734 = v222;
    if (!v220)
    {
      v726 = v734;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v727 = v726;
      v728 = v733;
      goto LABEL_130;
    }

LABEL_332:

    __break(1u);
    goto LABEL_333;
  }

  v727 = 0;
  v728 = v742;
LABEL_130:
  v724 = v728;
  v725 = v727;
  if (!v727)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v485 = 0;
    v486 = swift_allocError();
    *v274 = 79;
    swift_willThrow();
    v487 = v485;

    outlined destroy of Pregnancy?(v1181);

    v518 = v486;
    v519 = v487;
    goto LABEL_302;
  }

  v723 = v725;
  v721 = v725;
  v1144 = v725;
  v1142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", 0xFuLL, 1);
  v722 = &v1142;
  MEMORY[0x25F8891D0](v1143);
  outlined destroy of DefaultStringInterpolation();
  if (v1143[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v720 = v1113[23];
    }

    else
    {
      v720 = 0;
    }

    v719 = v720;
  }

  else
  {
    outlined destroy of Pregnancy?(v1143);
    v719 = 0;
  }

  v718 = v719;
  if (v719)
  {
    v717 = v718;
    v714 = v724;
    v1113[24] = v718;
    v712 = swift_getKeyPath();
    v711 = v712;

    v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v223 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v224 = v714;
    v226 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v712, v713, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v223, MEMORY[0x277D84AC0], v225);
    v715 = v224;
    v716 = v226;
    if (!v224)
    {
      v708 = v716;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v709 = v708;
      v710 = v715;
      goto LABEL_139;
    }

LABEL_333:

    __break(1u);
    goto LABEL_334;
  }

  v709 = 0;
  v710 = v724;
LABEL_139:
  v706 = v710;
  v707 = v709;
  if (!v709)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v488 = 0;
    v489 = swift_allocError();
    *v273 = 79;
    swift_willThrow();
    v490 = v488;

    outlined destroy of Pregnancy?(v1181);

    v518 = v489;
    v519 = v490;
    goto LABEL_302;
  }

  v705 = v707;
  v703 = v707;
  v1141 = v707;
  v1139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", 0xAuLL, 1);
  v704 = &v1139;
  MEMORY[0x25F8891D0](v1140);
  outlined destroy of DefaultStringInterpolation();
  if (v1140[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v702 = v1113[25];
    }

    else
    {
      v702 = 0;
    }

    v701 = v702;
  }

  else
  {
    outlined destroy of Pregnancy?(v1140);
    v701 = 0;
  }

  v700 = v701;
  if (v701)
  {
    v699 = v700;
    v696 = v706;
    v1113[26] = v700;
    v694 = swift_getKeyPath();
    v693 = v694;

    v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v227 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v228 = v696;
    v230 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v694, v695, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v227, MEMORY[0x277D84AC0], v229);
    v697 = v228;
    v698 = v230;
    if (!v228)
    {
      v690 = v698;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v691 = v690;
      v692 = v697;
      goto LABEL_148;
    }

LABEL_334:

    __break(1u);
    goto LABEL_335;
  }

  v691 = 0;
  v692 = v706;
LABEL_148:
  v688 = v692;
  v689 = v691;
  if (!v691)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v491 = 0;
    v492 = swift_allocError();
    *v272 = 80;
    swift_willThrow();
    v493 = v491;

    outlined destroy of Pregnancy?(v1181);

    v518 = v492;
    v519 = v493;
    goto LABEL_302;
  }

  v687 = v689;
  v685 = v689;
  v1138 = v689;
  v1136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", 0xFuLL, 1);
  v686 = &v1136;
  MEMORY[0x25F8891D0](v1137);
  outlined destroy of DefaultStringInterpolation();
  if (v1137[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v684 = v1113[27];
    }

    else
    {
      v684 = 0;
    }

    v683 = v684;
  }

  else
  {
    outlined destroy of Pregnancy?(v1137);
    v683 = 0;
  }

  v682 = v683;
  if (v683)
  {
    v681 = v682;
    v678 = v688;
    v1113[28] = v682;
    v676 = swift_getKeyPath();
    v675 = v676;

    v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v231 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v232 = v678;
    v234 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v676, v677, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v231, MEMORY[0x277D84AC0], v233);
    v679 = v232;
    v680 = v234;
    if (!v232)
    {
      v672 = v680;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v673 = v672;
      v674 = v679;
      goto LABEL_157;
    }

LABEL_335:

    __break(1u);
    goto LABEL_336;
  }

  v673 = 0;
  v674 = v688;
LABEL_157:
  v670 = v674;
  v671 = v673;
  if (!v673)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v494 = 0;
    v495 = swift_allocError();
    *v271 = 80;
    swift_willThrow();
    v496 = v494;

    outlined destroy of Pregnancy?(v1181);

    v518 = v495;
    v519 = v496;
    goto LABEL_302;
  }

  v669 = v671;
  v667 = v671;
  v1135 = v671;
  v1133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", 0x16uLL, 1);
  v668 = &v1133;
  MEMORY[0x25F8891D0](v1134);
  outlined destroy of DefaultStringInterpolation();
  if (v1134[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v666 = v1113[29];
    }

    else
    {
      v666 = 0;
    }

    v665 = v666;
  }

  else
  {
    outlined destroy of Pregnancy?(v1134);
    v665 = 0;
  }

  v664 = v665;
  if (v665)
  {
    v663 = v664;
    v660 = v670;
    v1113[30] = v664;
    v658 = swift_getKeyPath();
    v657 = v658;

    v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v235 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v236 = v660;
    v238 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v658, v659, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v235, MEMORY[0x277D84AC0], v237);
    v661 = v236;
    v662 = v238;
    if (!v236)
    {
      v654 = v662;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v655 = v654;
      v656 = v661;
      goto LABEL_166;
    }

LABEL_336:

    __break(1u);
    goto LABEL_337;
  }

  v655 = 0;
  v656 = v670;
LABEL_166:
  v652 = v656;
  v653 = v655;
  if (!v655)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v497 = 0;
    v498 = swift_allocError();
    *v270 = 81;
    swift_willThrow();
    v499 = v497;

    outlined destroy of Pregnancy?(v1181);

    v518 = v498;
    v519 = v499;
    goto LABEL_302;
  }

  v651 = v653;
  v649 = v653;
  v1132 = v653;
  v1130 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, 1);
  v650 = &v1130;
  MEMORY[0x25F8891D0](v1131);
  outlined destroy of DefaultStringInterpolation();
  if (v1131[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v648 = v1113[31];
    }

    else
    {
      v648 = 0;
    }

    v647 = v648;
  }

  else
  {
    outlined destroy of Pregnancy?(v1131);
    v647 = 0;
  }

  v646 = v647;
  if (v647)
  {
    v645 = v646;
    v642 = v652;
    v1113[32] = v646;
    v640 = swift_getKeyPath();
    v639 = v640;

    v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v239 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v240 = v642;
    v242 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v640, v641, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v239, MEMORY[0x277D84AC0], v241);
    v643 = v240;
    v644 = v242;
    if (!v240)
    {
      v636 = v644;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v637 = v636;
      v638 = v643;
      goto LABEL_175;
    }

LABEL_337:

    __break(1u);
    goto LABEL_338;
  }

  v637 = 0;
  v638 = v652;
LABEL_175:
  v634 = v638;
  v635 = v637;
  if (!v637)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v500 = 0;
    v501 = swift_allocError();
    *v269 = 81;
    swift_willThrow();
    v502 = v500;

    outlined destroy of Pregnancy?(v1181);

    v518 = v501;
    v519 = v502;
    goto LABEL_302;
  }

  v633 = v635;
  v631 = v635;
  v1129 = v635;
  v1127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, 1);
  v632 = &v1127;
  MEMORY[0x25F8891D0](v1128);
  outlined destroy of DefaultStringInterpolation();
  if (v1128[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v630 = v1113[33];
    }

    else
    {
      v630 = 0;
    }

    v629 = v630;
  }

  else
  {
    outlined destroy of Pregnancy?(v1128);
    v629 = 0;
  }

  v628 = v629;
  if (v629)
  {
    v627 = v628;
    v624 = v634;
    v1113[34] = v628;
    v622 = swift_getKeyPath();
    v621 = v622;

    v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v243 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v244 = v624;
    v246 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v622, v623, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v243, MEMORY[0x277D84AC0], v245);
    v625 = v244;
    v626 = v246;
    if (!v244)
    {
      v618 = v626;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v619 = v618;
      v620 = v625;
      goto LABEL_184;
    }

LABEL_338:

    __break(1u);
    goto LABEL_339;
  }

  v619 = 0;
  v620 = v634;
LABEL_184:
  v616 = v620;
  v617 = v619;
  if (!v619)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v503 = 0;
    v504 = swift_allocError();
    *v268 = 82;
    swift_willThrow();
    v505 = v503;

    outlined destroy of Pregnancy?(v1181);

    v518 = v504;
    v519 = v505;
    goto LABEL_302;
  }

  v615 = v617;
  v613 = v617;
  v1126 = v617;
  v1124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, 1);
  v614 = &v1124;
  MEMORY[0x25F8891D0](v1125);
  outlined destroy of DefaultStringInterpolation();
  if (v1125[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v612 = v1113[35];
    }

    else
    {
      v612 = 0;
    }

    v611 = v612;
  }

  else
  {
    outlined destroy of Pregnancy?(v1125);
    v611 = 0;
  }

  v610 = v611;
  if (v611)
  {
    v609 = v610;
    v606 = v616;
    v1113[36] = v610;
    v604 = swift_getKeyPath();
    v603 = v604;

    v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v247 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v248 = v606;
    v250 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v604, v605, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v247, MEMORY[0x277D84AC0], v249);
    v607 = v248;
    v608 = v250;
    if (!v248)
    {
      v600 = v608;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v601 = v600;
      v602 = v607;
      goto LABEL_193;
    }

LABEL_339:

    __break(1u);
    goto LABEL_340;
  }

  v601 = 0;
  v602 = v616;
LABEL_193:
  v598 = v602;
  v599 = v601;
  if (!v601)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v506 = 0;
    v507 = swift_allocError();
    *v267 = 82;
    swift_willThrow();
    v508 = v506;

    outlined destroy of Pregnancy?(v1181);

    v518 = v507;
    v519 = v508;
    goto LABEL_302;
  }

  v597 = v599;
  v595 = v599;
  v1123 = v599;
  v1121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, 1);
  v596 = &v1121;
  MEMORY[0x25F8891D0](v1122);
  outlined destroy of DefaultStringInterpolation();
  if (v1122[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v594 = v1113[37];
    }

    else
    {
      v594 = 0;
    }

    v593 = v594;
  }

  else
  {
    outlined destroy of Pregnancy?(v1122);
    v593 = 0;
  }

  v592 = v593;
  if (v593)
  {
    v591 = v592;
    v588 = v598;
    v1113[38] = v592;
    v586 = swift_getKeyPath();
    v585 = v586;

    v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v251 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v252 = v588;
    v254 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v586, v587, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v251, MEMORY[0x277D84AC0], v253);
    v589 = v252;
    v590 = v254;
    if (!v252)
    {
      v582 = v590;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v583 = v582;
      v584 = v589;
      goto LABEL_202;
    }

LABEL_340:

    __break(1u);
    goto LABEL_341;
  }

  v583 = 0;
  v584 = v598;
LABEL_202:
  v580 = v584;
  v581 = v583;
  if (!v583)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v509 = 0;
    v510 = swift_allocError();
    *v266 = 83;
    swift_willThrow();
    v511 = v509;

    outlined destroy of Pregnancy?(v1181);

    v518 = v510;
    v519 = v511;
    goto LABEL_302;
  }

  v579 = v581;
  v577 = v581;
  v1120 = v581;
  v1118 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  v578 = &v1118;
  MEMORY[0x25F8891D0](v1119);
  outlined destroy of DefaultStringInterpolation();
  if (v1119[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v576 = v1113[39];
    }

    else
    {
      v576 = 0;
    }

    v575 = v576;
  }

  else
  {
    outlined destroy of Pregnancy?(v1119);
    v575 = 0;
  }

  v574 = v575;
  if (v575)
  {
    v573 = v574;
    v570 = v580;
    v1113[40] = v574;
    v568 = swift_getKeyPath();
    v567 = v568;

    v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v255 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v256 = v570;
    v258 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v568, v569, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v255, MEMORY[0x277D84AC0], v257);
    v571 = v256;
    v572 = v258;
    if (!v256)
    {
      v564 = v572;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v565 = v564;
      v566 = v571;
      goto LABEL_211;
    }

LABEL_341:

    __break(1u);
    goto LABEL_342;
  }

  v565 = 0;
  v566 = v580;
LABEL_211:
  v562 = v566;
  v563 = v565;
  if (!v565)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v512 = 0;
    v513 = swift_allocError();
    *v265 = 84;
    swift_willThrow();
    v514 = v512;

    outlined destroy of Pregnancy?(v1181);

    v518 = v513;
    v519 = v514;
LABEL_302:
    v316 = v1090;
    v359 = v519;
    v426 = v518;
    v317 = v518;
    v1197 = v426;
    v318 = Logging.default.unsafeMutableAddressor();
    v446 = *(v1089 + 16);
    v445 = (v1089 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v446(v316, v318, v1087);
    v319 = v426;
    v367 = 7;
    v365 = swift_allocObject();
    *(v365 + 16) = v426;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v377 = Logger.logObject.getter();
    v360 = v377;
    v376 = static os_log_type_t.error.getter();
    v361 = v376;
    v362 = 17;
    v371 = swift_allocObject();
    v363 = v371;
    *(v371 + 16) = 64;
    v372 = swift_allocObject();
    v364 = v372;
    *(v372 + 16) = 8;
    v366 = 32;
    v320 = swift_allocObject();
    v321 = v365;
    v368 = v320;
    *(v320 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
    *(v320 + 24) = v321;
    v322 = swift_allocObject();
    v323 = v368;
    v369 = v322;
    *(v322 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v322 + 24) = v323;
    v324 = swift_allocObject();
    v325 = v369;
    v375 = v324;
    v370 = v324;
    *(v324 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v324 + 24) = v325;
    v373 = _allocateUninitializedArray<A>(_:)();
    v374 = v326;

    v327 = v371;
    v328 = v374;
    *v374 = partial apply for closure #1 in OSLogArguments.append(_:);
    v328[1] = v327;

    v329 = v372;
    v330 = v374;
    v374[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v330[3] = v329;

    v331 = v374;
    v332 = v375;
    v374[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v331[5] = v332;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v377, v376))
    {
      v356 = v359;
      v351 = static UnsafeMutablePointer.allocate(capacity:)();
      v348 = v351;
      v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v354 = 1;
      v352 = createStorage<A>(capacity:type:)(1, v349, v349);
      v350 = v352;
      v353 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v1193[0] = v351;
      v1192 = v352;
      v1191 = v353;
      v355 = v1193;
      serialize(_:at:)(2, v1193);
      serialize(_:at:)(v354, v355);
      v333 = v356;
      v1189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v1190 = v363;
      closure #1 in osLogInternal(_:log:type:)(&v1189, v355, &v1192, &v1191);
      v357 = v333;
      v358 = v333;
      if (v333)
      {
        v346 = 0;

        __break(1u);
      }

      else
      {
        v1189 = partial apply for closure #1 in OSLogArguments.append(_:);
        v1190 = v364;
        closure #1 in osLogInternal(_:log:type:)(&v1189, v1193, &v1192, &v1191);
        v344 = 0;
        v345 = 0;
        v1189 = partial apply for closure #1 in OSLogArguments.append(_:);
        v1190 = v370;
        closure #1 in osLogInternal(_:log:type:)(&v1189, v1193, &v1192, &v1191);
        v342 = 0;
        v343 = 0;
        _os_log_impl(&dword_25C4D8000, v360, v361, "Error executing Morpheus program for featurize: %@.", v348, 0xCu);
        destroyStorage<A>(_:count:)(v350, 1, v349);
        destroyStorage<A>(_:count:)(v353, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v348, MEMORY[0x277D84B78]);

        v347 = v342;
      }
    }

    else
    {

      v347 = v359;
    }

    v430 = v347;

    v1027(v1090, v1087);
    if ((HyperParams.featurizerFallbackToNative.getter() & 1) == 0)
    {
      swift_willThrow();

      result = v426;
      v341 = v426;
      return result;
    }

    v286 = v1093;
    v287 = Logging.default.unsafeMutableAddressor();
    v446(v286, v287, v1087);
    v450 = Logger.logObject.getter();
    v447 = v450;
    v449 = static os_log_type_t.info.getter();
    v448 = v449;
    v451 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v450, v449))
    {
      v443 = v430;
      v435 = static UnsafeMutablePointer.allocate(capacity:)();
      v431 = v435;
      v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v433 = 0;
      v436 = createStorage<A>(capacity:type:)(0, v432, v432);
      v434 = v436;
      v437 = createStorage<A>(capacity:type:)(v433, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v1196 = v435;
      v1195 = v436;
      v1194 = v437;
      v438 = 0;
      v439 = &v1196;
      serialize(_:at:)(0, &v1196);
      serialize(_:at:)(v438, v439);
      v1193[1] = v451;
      v440 = &v338;
      MEMORY[0x28223BE20](&v338, v288);
      v441 = &v338 - 6;
      v334 = v289;
      v335 = &v1195;
      v336 = &v1194;
      v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v290 = v443;
      Sequence.forEach(_:)();
      v444 = v290;
      if (v290)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25C4D8000, v447, v448, "Fallback to featurize from native.", v431, 2u);
        v428 = 0;
        destroyStorage<A>(_:count:)(v434, 0, v432);
        destroyStorage<A>(_:count:)(v437, v428, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v431, MEMORY[0x277D84B78]);

        v429 = v444;
      }
    }

    else
    {

      v429 = v430;
    }

    v427 = v429;

    v1027(v1093, v1087);

    v1072 = v427;
    goto LABEL_293;
  }

  v561 = v563;
  v559 = v563;
  v1117 = v563;
  v1115 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("metrics", 7uLL, 1);
  v560 = &v1115;
  MEMORY[0x25F8891D0](v1116);
  outlined destroy of DefaultStringInterpolation();
  if (v1116[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
    if (swift_dynamicCast())
    {
      v558 = v1113[41];
    }

    else
    {
      v558 = 0;
    }

    v557 = v558;
  }

  else
  {
    outlined destroy of Pregnancy?(v1116);
    v557 = 0;
  }

  v556 = v557;
  if (!v557)
  {
    v547 = 0;
    v548 = v562;
    goto LABEL_220;
  }

  v555 = v556;
  v550 = v556;
  v551 = v562;
  v552 = swift_getKeyPath();
  v549 = v552;

  type metadata accessor for NSNumber();
  v259 = v551;
  v260 = Dictionary.mapValues<A>(_:)();
  v553 = v259;
  v554 = v260;
  if (!v259)
  {
    v546 = v554;

    v547 = v546;
    v548 = v553;
LABEL_220:
    v544 = v548;
    v545 = v547;
    if (v547)
    {
      v543 = v545;
      v261 = v865;
      v262 = v883;
      v263 = v901;
      v520 = v545;
      v1114 = v545;

      outlined destroy of Pregnancy?(v1181);

      v521 = v263;
      v522 = v262;
      v523 = v261;
      v524 = v847;
      v525 = v829;
      v526 = v811;
      v527 = v793;
      v528 = v775;
      v529 = v757;
      v530 = v739;
      v531 = v721;
      v532 = v703;
      v533 = v685;
      v534 = v667;
      v535 = v649;
      v536 = v631;
      v537 = v613;
      v538 = v595;
      v539 = v577;
      v540 = v559;
      v541 = v520;
      v542 = v544;
LABEL_300:
      v295 = v1080;
      v1205[1] = v521;
      v1205[2] = v522;
      v1205[3] = v523;
      v1205[4] = v524;
      v1205[5] = v525;
      v1205[6] = v526;
      v1205[7] = v527;
      v1205[8] = v528;
      v1205[9] = v529;
      v1205[10] = v530;
      v1205[11] = v531;
      v1205[12] = v532;
      v1205[13] = v533;
      v1205[14] = v534;
      v1205[15] = v535;
      v1205[16] = v536;
      v1205[17] = v537;
      v1205[18] = v538;
      v1205[19] = v539;
      v1205[20] = v540;
      v1205[21] = v541;
      v296 = v522;
      v297 = v523;
      v298 = v524;
      v299 = v525;
      v300 = v526;
      v301 = v527;
      v302 = v528;
      v303 = v529;
      v304 = v530;
      v305 = v531;
      result = v532;
      v307 = v533;
      v308 = v534;
      v309 = v535;
      v310 = v536;
      v311 = v537;
      v312 = v538;
      v313 = v539;
      v314 = v540;
      v315 = v541;
      *v1080 = v521;
      v295[1] = v296;
      v295[2] = v297;
      v295[3] = v298;
      v295[4] = v299;
      v295[5] = v300;
      v295[6] = v301;
      v295[7] = v302;
      v295[8] = v303;
      v295[9] = v304;
      v295[10] = v305;
      v295[11] = result;
      v295[12] = v307;
      v295[13] = v308;
      v295[14] = v309;
      v295[15] = v310;
      v295[16] = v311;
      v295[17] = v312;
      v295[18] = v313;
      v295[19] = v314;
      v295[20] = v315;
      return result;
    }

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v515 = 0;
    v516 = swift_allocError();
    *v264 = 85;
    swift_willThrow();
    v517 = v515;

    outlined destroy of Pregnancy?(v1181);

    v518 = v516;
    v519 = v517;
    goto LABEL_302;
  }

LABEL_342:

  __break(1u);
  return v403;
}

uint64_t closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(unsigned __int8 a1, uint64_t a2)
{

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v2 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v5, v6, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v7);
  return a1;
}

void closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _allocateUninitializedArray<A>(_:)();
  *v2 = v4;
  v2[1] = v5;
  _finalizeUninitializedArray<A>(_:)();
  *a2 = v3;
}

uint64_t closure #2 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(unsigned int a1, float a2, float a3)
{
  v7 = a1;
  _allocateUninitializedArray<A>(_:)();
  *v3 = a2;
  v3[1] = a3;
  _finalizeUninitializedArray<A>(_:)();
  return v7;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float) -> (@unowned Int, @owned [Float])@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float, float)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float)@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t implicit closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t key path getter for NSNumber.intValue : NSNumber@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 integerValue];
  return MEMORY[0x277D82BD8](v3);
}

void Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v14 = MEMORY[0x28223BE20](a1, a2);
  v541 = v639;
  v564 = v13;
  v542 = v12;
  v543 = v15;
  v544._rawValue = v16;
  v560._rawValue = v17;
  v545._rawValue = v18;
  v546._rawValue = v19;
  v547._rawValue = v20;
  v548._rawValue = v21;
  v549 = v14;
  v550 = v22;
  v551 = a12;
  v552 = a11;
  v553 = a10;
  v554 = a9;
  v562 = 0;
  v555 = 0;
  to._rawValue = 0;
  v814._rawValue = 0;
  v813 = 0;
  v812 = 0;
  v811 = 0;
  v810._rawValue = 0;
  v809._rawValue = 0;
  v808._rawValue = 0;
  v807._rawValue = 0;
  v806 = 0;
  v805 = 0;
  v804 = 0;
  v803 = 0;
  v802 = 0;
  v801 = 0;
  v800 = 0;
  v799 = 0;
  v798 = 0;
  v797 = 0;
  v796 = 0;
  v795 = 0;
  v794._rawValue = 0;
  v792 = 0;
  v790 = 0;
  v788 = 0;
  v786 = 0;
  v784 = 0;
  v782 = 0;
  v780 = 0;
  v777 = 0;
  v776 = 0;
  v775 = 0;
  v774 = 0;
  memset(v773, 0, sizeof(v773));
  v771[0] = 0;
  v770 = 0;
  v769 = 0;
  v768 = 0;
  v767 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v761 = 0;
  v760 = 0;
  v759 = 0;
  v758 = 0;
  v757[7] = 0;
  v757[6] = 0;
  v735 = 0;
  v729 = 0;
  v726 = 0;
  v723 = 0;
  v718 = 0;
  v709 = 0;
  v708 = 0;
  v693 = 0;
  v692 = 0;
  v691 = 0;
  v687 = 0;
  *(v686 + 5) = 0;
  v686[0] = 0;
  v677 = 0;
  v672 = 0;
  v628 = 0;
  v626 = 0.0;
  v625 = 0;
  v578 = 0;
  v577 = 0;
  v571 = 0;
  v570 = 0;
  v828 = v14;
  v827 = v21;
  v826 = v20;
  v825 = v19;
  v824 = v18;
  v823 = v17;
  v822 = v16;
  v821 = v15;
  v820 = a9;
  v819 = a10;
  v818 = a11;
  v817 = a12;
  v816 = v12;
  v558 = MEMORY[0x277D83A90];
  to._rawValue = Array.init()();
  v814._rawValue = Array.init()();
  v813 = Array.init()();
  v812 = Array.init()();
  v811 = Array.init()();
  v810._rawValue = Array.init()();
  v809._rawValue = Array.init()();
  v808._rawValue = Array.init()();
  v807._rawValue = Array.init()();
  v806 = Array.init()();
  v557 = MEMORY[0x277D84CC0];
  v805 = Array.init()();
  v559 = MEMORY[0x277D84CD0];
  v804 = Dictionary.init()();
  v803 = Array.init()();
  v802 = Array.init()();
  v801 = Array.init()();
  v800 = Array.init()();
  v799 = Array.init()();
  v798 = Array.init()();
  v797 = Array.init()();
  v796 = Array.init()();
  v795 = Array.init()();
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf8daySHR10_Sf05nightB0Sf15periodStartMeanSf0dE3StdSf019daysSinceLastPeriodE0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tMd, &_sSf8daySHR10_Sf05nightB0Sf15periodStartMeanSf0dE3StdSf019daysSinceLastPeriodE0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tMR);
  v794._rawValue = Dictionary.init()();

  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
  v561 = v563;
  v565 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v566 = v13;
  v567 = Sequence.sorted(by:)();
  if (v13)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    v204 = v492;

    outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator(v773);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v205 = v493;
    return;
  }

  v537 = v567;
  v538 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v792 = v567;

  v539 = 0;
  v540 = Sequence.sorted(by:)();
  v533 = v540;
  v534 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v790 = v540;

  v535 = 0;
  v536 = Sequence.sorted(by:)();
  v529 = v536;
  v530 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v788 = v536;

  v531 = 0;
  v532 = Sequence.sorted(by:)();
  v525 = v532;
  v526 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v786 = v532;

  v527 = 0;
  v528 = Sequence.sorted(by:)();
  v521 = v528;
  v522 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v784 = v528;

  v523 = 0;
  v524 = Sequence.sorted(by:)();
  v515 = v524;
  v518 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v782 = v524;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd, &_sSf15periodStartMean_Sf0aB3StdtMR);

  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMd, &_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMR);
  lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)].Keys and conformance [A : B].Keys();
  v519 = 0;
  v520 = Sequence.sorted(by:)();
  v508 = v520;
  v511 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v780 = v520;
  v779 = v554;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v509 = v510;
  v512 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v513 = 0;
  v514 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v510, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v512, MEMORY[0x277D84AC0], v23);
  v778 = v514;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  v502 = v503;
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v504 = Set.init<A>(_:)();
  v777 = v504;
  v505 = HyperParams.sliceSize.getter();
  v776 = v505;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMR);
  v506 = AugmentedIntervalTree.__allocating_init()();
  v775 = v506;

  Dictionary.makeIterator()();
  v24 = v541;
  v25 = v829;
  v774 = v831;
  v541[62] = v830;
  v24[61] = v25;
  for (i = 0; ; i = v482)
  {
    v499 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMd, &_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMR);
    Dictionary.Iterator.next()();
    v500 = v771[1];
    v501 = v772;
    if (!v772)
    {
      break;
    }

    v497 = v500;
    v498 = v501;
    v494 = v501;
    v495 = v500;
    v571 = v500;
    v496 = v500;
    v570 = v501;
    if (v500 == NgtMenstrualAlgorithmsPhase.rawValue.getter(8))
    {
      v482 = v499;
    }

    else if (v495 == NgtMenstrualAlgorithmsPhase.rawValue.getter(0))
    {
      v482 = v499;
    }

    else
    {
      if (v495 == NgtMenstrualAlgorithmsPhase.rawValue.getter(1))
      {
        if (HyperParams.excludeLactationSlices.getter())
        {
          v490 = v499;
          v568 = v494;

          lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
          Sequence.forEach(_:)();
          v491 = v499;
          v492 = v494;
          v493 = v499;

          v489 = 0;
        }

        else
        {
          v489 = v499;
        }

        v488 = v489;
      }

      else
      {
        if (HyperParams.excludeContraceptionSlices.getter())
        {
          v484 = v499;
          v569 = v494;

          lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
          Sequence.forEach(_:)();
          v485 = v499;
          v486 = v494;
          v487 = v499;

          v483 = 0;
        }

        else
        {
          v483 = v499;
        }

        v488 = v483;
      }

      v482 = v488;
    }

    v481 = v482;
  }

  outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator(v773);
  if (HyperParams.excludeOtherPregnancySlices.getter())
  {
    v478 = v499;
    v572 = v549;

    v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Sequence.forEach(_:)();
    v479 = v499;
    v480 = v499;

    v476 = 0;
  }

  else
  {
    v476 = v499;
  }

  v474 = v476;
  v472 = 0;
  v771[0] = 0;
  v770 = 0;
  v769 = 0;
  v768 = 0;
  v767 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v761 = 0;
  v760 = 0;
  v759 = 0;
  v758 = 0;

  v757[5] = v549;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
  lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v476; ; j = v443)
  {
    v471 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd, &_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMR);
    IndexingIterator.next()();
    if (!v757[3])
    {
      v306 = v471;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v93 = HyperParams.daySHRStatsOption.getter();
      v94 = v306;
      v308 = v93;
      v309 = v805;
      v307 = v805;

      v95 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v308, v309, v560._rawValue, v505);
      v310 = v94;
      v311 = v95;
      v312 = v94;
      if (v94)
      {
LABEL_212:
        v202 = v312;

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v205 = v202;
        return;
      }

      v298 = v311;
      v299 = 0;

      v803 = v298;

      v96 = HyperParams.nightSHRStatsOption.getter();
      v97 = v299;
      v301 = v96;
      v302 = v805;
      v300 = v805;

      v98 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v301, v302, v544._rawValue, v505);
      v303 = v97;
      v304 = v98;
      v305 = v97;
      if (v97)
      {
        v201 = v305;

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v205 = v201;
        return;
      }

      v290 = v304;
      v293 = 0;

      v802 = v290;

      v291 = HyperParams.pSMStatsOption.getter();
      v292 = v805;

      KeyPath = swift_getKeyPath();
      v100 = v293;
      v295 = KeyPath;
      v294 = KeyPath;

      v101 = Dictionary.mapValues<A>(_:)();
      v296 = v100;
      v297 = v101;
      if (v100)
      {

        __break(1u);
      }

      else
      {
        v285 = v297;
        v286 = 0;

        v102 = v286;
        v103 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v291, v292, v285, v505);
        v287 = v102;
        v288 = v103;
        v289 = v102;
        if (!v102)
        {
          v277 = v288;
          v280 = 0;

          v801 = v277;

          v278 = HyperParams.pSSStatsOption.getter();
          v279 = v805;

          v104 = swift_getKeyPath();
          v105 = v280;
          v282 = v104;
          v281 = v104;

          v106 = Dictionary.mapValues<A>(_:)();
          v283 = v105;
          v284 = v106;
          if (v105)
          {

            __break(1u);
          }

          else
          {
            v272 = v284;
            v273 = 0;

            v107 = v273;
            v108 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v278, v279, v272, v505);
            v274 = v107;
            v275 = v108;
            v276 = v107;
            if (!v107)
            {
              v262 = v275;
              v263 = 0;

              v800 = v262;

              PeriodStartStats = HyperParams.daysSinceLastPeriodStartStatsOption.getter();
              v110 = v263;
              v266 = PeriodStartStats;
              v267 = v805;
              v264 = v805;

              v268 = v804;
              v265 = v804;

              v111 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v266, v267, v268, v505);
              v269 = v110;
              v270 = v111;
              v271 = v110;
              if (v110)
              {
                v198 = v271;

                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                v205 = v198;
              }

              else
              {
                v254 = v270;
                v255 = 0;

                v799 = v254;

                v112 = HyperParams.sWTStatsOption.getter();
                v113 = v255;
                v257 = v112;
                v258 = v805;
                v256 = v805;

                v114 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v257, v258, v548._rawValue, v505);
                v259 = v113;
                v260 = v114;
                v261 = v113;
                if (v113)
                {
                  v197 = v261;

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  v205 = v197;
                }

                else
                {
                  v246 = v260;
                  v247 = 0;

                  v798 = v246;

                  v115 = HyperParams.hrvStatsOption.getter();
                  v116 = v247;
                  v249 = v115;
                  v250 = v805;
                  v248 = v805;

                  v117 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v249, v250, v547._rawValue, v505);
                  v251 = v116;
                  v252 = v117;
                  v253 = v116;
                  if (v116)
                  {
                    v196 = v253;

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    v205 = v196;
                  }

                  else
                  {
                    v238 = v252;
                    v239 = 0;

                    v797 = v238;

                    v118 = HyperParams.respiratoryRateStatsOption.getter();
                    v119 = v239;
                    v241 = v118;
                    v242 = v805;
                    v240 = v805;

                    v120 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v241, v242, v546._rawValue, v505);
                    v243 = v119;
                    v244 = v120;
                    v245 = v119;
                    if (v119)
                    {
                      v195 = v245;

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      v205 = v195;
                    }

                    else
                    {
                      v230 = v244;
                      v231 = 0;

                      v796 = v230;

                      v121 = HyperParams.spO2StatsOption.getter();
                      v122 = v231;
                      v233 = v121;
                      v234 = v805;
                      v232 = v805;

                      v123 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v233, v234, v545._rawValue, v505);
                      v235 = v122;
                      v236 = v123;
                      v237 = v122;
                      if (v122)
                      {
                        v194 = v237;

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        v205 = v194;
                      }

                      else
                      {
                        v225 = v236;
                        v228 = 0;

                        v795 = v225;

                        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
                        v210 = _allocateUninitializedArray<A>(_:)();
                        v209 = v124;
                        v207 = 1;
                        v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastCalendarPeriodPredictionDay", 0x26uLL, 1);
                        v126 = v207;
                        v127 = v209;
                        *v209 = v125;
                        *(v127 + 16) = v771[0];
                        v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastHistoricalPeriodStartDay", 0x23uLL, v126);
                        v129 = v207;
                        v130 = v209;
                        *(v209 + 24) = v128;
                        *(v130 + 40) = v770;
                        v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastDaySHRDay", 0x14uLL, v129);
                        v132 = v207;
                        v133 = v209;
                        *(v209 + 48) = v131;
                        *(v133 + 64) = v769;
                        v206 = 17;
                        v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastSWTDay", 0x11uLL, v132);
                        v135 = v207;
                        v136 = v209;
                        v137 = v206;
                        *(v209 + 72) = v134;
                        *(v136 + 88) = v768;
                        v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastHRVDay", v137, v135);
                        v139 = v207;
                        v140 = v209;
                        *(v209 + 96) = v138;
                        *(v140 + 112) = v767;
                        v141 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastRespiratoryRateDay", 0x1DuLL, v139);
                        v142 = v207;
                        v143 = v209;
                        *(v209 + 120) = v141;
                        *(v143 + 136) = v766;
                        v144 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastSpO2Day", 0x12uLL, v142);
                        v145 = v207;
                        v146 = v209;
                        *(v209 + 144) = v144;
                        *(v146 + 160) = v765;
                        v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedDaySHRAvailability", 0x18uLL, v145);
                        v148 = v207;
                        v149 = v209;
                        *(v209 + 168) = v147;
                        *(v149 + 184) = v764;
                        v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedNightSHRAvailability", 0x1AuLL, v148);
                        v151 = v207;
                        v152 = v209;
                        *(v209 + 192) = v150;
                        *(v152 + 208) = v763;
                        v208 = 21;
                        v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedSWTAvailability", 0x15uLL, v151);
                        v154 = v207;
                        v155 = v209;
                        v156 = v208;
                        *(v209 + 216) = v153;
                        *(v155 + 232) = v762;
                        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedHRVAvailability", v156, v154);
                        v158 = v207;
                        v159 = v209;
                        *(v209 + 240) = v157;
                        *(v159 + 256) = v761;
                        v160 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedRespiratoryRateAvailability", 0x21uLL, v158);
                        v161 = v207;
                        v162 = v209;
                        *(v209 + 264) = v160;
                        *(v162 + 280) = v760;
                        v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedSpO2Availability", 0x16uLL, v161);
                        v164 = v207;
                        v165 = v209;
                        v166 = v208;
                        *(v209 + 288) = v163;
                        *(v165 + 304) = v759;
                        v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludedSlicesDueToCF", v166, v164);
                        v168 = v209;
                        *(v209 + 312) = v167;
                        *(v168 + 328) = v758;
                        _finalizeUninitializedArray<A>(_:)();
                        v229 = Dictionary.init(dictionaryLiteral:)();
                        v735 = v229;
                        rawValue = to._rawValue;

                        v170 = v803;

                        v171 = v814._rawValue;

                        v172 = v802;

                        v212 = v813;

                        v213 = v801;

                        v214 = v812;

                        v215 = v800;

                        v216 = v811;

                        v217 = v799;

                        v218 = v810._rawValue;

                        v219 = v798;

                        v220 = v809._rawValue;

                        v221 = v797;

                        v222 = v808._rawValue;

                        v223 = v796;

                        v224 = v807._rawValue;

                        v226 = v805;

                        v227 = v806;

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        v173 = v550;
                        v736 = rawValue;
                        v737 = v170;
                        v738 = v171;
                        v739 = v172;
                        v740 = v212;
                        v741 = v213;
                        v742 = v214;
                        v743 = v215;
                        v744 = v216;
                        v745 = v217;
                        v746 = v218;
                        v747 = v219;
                        v748 = v220;
                        v749 = v221;
                        v750 = v222;
                        v751 = v223;
                        v752 = v224;
                        v753 = v225;
                        v754 = v226;
                        v755 = v227;
                        v756 = v229;
                        v174 = v212;
                        v175 = v213;
                        v176 = v214;
                        v177 = v215;
                        v178 = v216;
                        v179 = v217;
                        v180 = v218;
                        v181 = v219;
                        v182 = v220;
                        v183 = v221;
                        v184 = v222;
                        v185 = v223;
                        v186 = v224;
                        v187 = v225;
                        v188 = v226;
                        v189 = v227;
                        v190 = v229;
                        *v550 = rawValue;
                        v173[1] = v170;
                        v173[2] = v171;
                        v173[3] = v172;
                        v173[4] = v174;
                        v173[5] = v175;
                        v173[6] = v176;
                        v173[7] = v177;
                        v173[8] = v178;
                        v173[9] = v179;
                        v173[10] = v180;
                        v173[11] = v181;
                        v173[12] = v182;
                        v173[13] = v183;
                        v173[14] = v184;
                        v173[15] = v185;
                        v173[16] = v186;
                        v173[17] = v187;
                        v173[18] = v188;
                        v173[19] = v189;
                        v173[20] = v190;
                      }
                    }
                  }
                }
              }

              return;
            }
          }

          v199 = v276;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          v205 = v199;
          return;
        }
      }

      v200 = v289;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v205 = v200;
      return;
    }

    v467 = v732;
    outlined init with take of HealthDataQuery(v757, v732);
    v469 = v733;
    v468 = v734;
    __swift_project_boxed_opaque_existential_1(v467, v733);
    v731 = (*(v468 + 56))(v469) & 1;
    v730 = 1;
    v470 = lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor();
    v466 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.minSliceAnchorDelta.getter() : HyperParams.lmpMinSliceAnchorDelta.getter();
    v463 = v466;
    v729 = v466;
    v465 = v733;
    v464 = v734;
    __swift_project_boxed_opaque_existential_1(v732, v733);
    v728 = (*(v464 + 56))(v465) & 1;
    v727 = 1;
    v462 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.maxSliceAnchorDelta.getter() : HyperParams.lmpMaxSliceAnchorDelta.getter();
    v459 = v462;
    v726 = v462;
    v461 = v733;
    v460 = v734;
    __swift_project_boxed_opaque_existential_1(v732, v733);
    v725 = (*(v460 + 56))(v461) & 1;
    v724 = 1;
    v458 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.pregLabelStartAnchorDelta.getter() : HyperParams.lmpPregLabelStartAnchorDelta.getter();
    v454 = v458;
    v723 = v458;
    v456 = v733;
    v455 = v734;
    __swift_project_boxed_opaque_existential_1(v732, v733);
    v722 = (*(v455 + 64))(v456);
    v26 = __OFADD__(v722, v463);
    v457 = v722 + v463;
    if (v26)
    {
      break;
    }

    v721 = v505;
    v27 = __OFSUB__(v457, v505);
    v453 = v457 - v505;
    if (v27)
    {
      goto LABEL_224;
    }

    v28 = __OFADD__(v453, 1);
    v452 = v453 + 1;
    if (v28)
    {
      goto LABEL_225;
    }

    v720 = v452;
    if (v452 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
      __break(1u);
    }

    v719 = -1;
    if (v720 > 0xFFFFFFFFLL)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
      __break(1u);
LABEL_63:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
      __break(1u);
      goto LABEL_64;
    }

    v448 = v720;
    v718 = v720;
    v450 = v733;
    v449 = v734;
    __swift_project_boxed_opaque_existential_1(v732, v733);
    v716 = (*(v449 + 64))(v450);
    v29 = __OFADD__(v716, v459);
    v451 = v716 + v459;
    if (v29)
    {
      goto LABEL_226;
    }

    v715 = v451;
    v714 = v551;
    v713 = v551;
    min<A>(_:_:)();
    v712 = v505;
    v30 = __OFSUB__(v717, v505);
    v447 = v717 - v505;
    if (v30)
    {
      goto LABEL_227;
    }

    v31 = __OFADD__(v447, 1);
    v446 = v447 + 1;
    if (v31)
    {
      goto LABEL_228;
    }

    v711 = v446;
    if (v446 < 0)
    {
      goto LABEL_63;
    }

LABEL_64:
    v710 = -1;
    if (v711 > 0xFFFFFFFFLL)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
      __break(1u);
LABEL_68:
      __swift_destroy_boxed_opaque_existential_1(v732);
      v443 = v471;
      continue;
    }

    v444 = v711;
    v709 = v711;
    v708 = v448;
    v445 = 0;
    v706 = 0;
    v707 = 1;
    v704 = 0;
    v705 = 1;
    v703.value = 0;
    v703.is_nil = 1;
    v702.value = 0;
    v702.is_nil = 1;
    v701.value = 0;
    v701.is_nil = 1;
    v700.value = 0;
    v700.is_nil = 1;
    v699.value = 0;
    v699.is_nil = 1;
    v32 = HyperParams.isCalendarPeriodPredictionRequired()();
    static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v32, v508, v448, v445, v771, &v706);
    if ((v33 & 1) == 0)
    {
      goto LABEL_68;
    }

    v439 = v471;
    PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
    v35 = v439;
    v440 = PeriodStart;
    v698 = v554;
    v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v509, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v512, MEMORY[0x277D84AC0], v36);
    v441 = v35;
    v442 = v37;
    if (v35)
    {
      __break(1u);
LABEL_209:
      v203 = v427;
      __swift_destroy_boxed_opaque_existential_1(v732);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v205 = v203;
      return;
    }

    v437 = v442;
    v438 = v448 - 1;
    if (!v448)
    {
      goto LABEL_229;
    }

    static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v440, v437, v438, 0, &v770, &v704);
    v436 = v38;

    if (v436)
    {
      v39 = HyperParams.isDaySHRRequired()();
      static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v39, v537, v448, 1, &v769, &v703);
      if (v40)
      {
        v41 = HyperParams.isSWTRequired()();
        static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v41, v529, v448, 1, &v768, &v702);
        if (v42)
        {
          v43 = HyperParams.isHRVRequired()();
          static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v43, v525, v448, 1, &v767, &v701);
          if (v44)
          {
            v45 = HyperParams.isRespiratoryRateRequired()();
            static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v45, v515, v448, 1, &v766, &v700);
            if (v46)
            {
              v47 = HyperParams.isSpO2Required()();
              static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v47, v521, v448, 1, &v765, &v699);
              if (v48)
              {
                v694 = v448;
                static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v533, &v694, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v695);
                v435 = v695;
                if (v696)
                {
                  v697.value = 0;
                  v697.is_nil = 1;
                }

                else
                {
                  v434 = v435;
                  v697.value = v435;
                  v697.is_nil = 0;
                }

                for (k = v441; ; k = v350)
                {
                  v431 = k;
                  v432 = v708;
                  if (v444 < v708)
                  {
                    __swift_destroy_boxed_opaque_existential_1(v732);
                    v443 = v431;
                    goto LABEL_193;
                  }

                  v430 = v432 + 1;
                  if (v432 == -1)
                  {
                    goto LABEL_230;
                  }

                  v693 = v430;
                  v692 = 1;
                  v49 = __CFADD__(v708, v505);
                  v429 = v708 + v505;
                  if (v49)
                  {
                    goto LABEL_231;
                  }

                  v428 = v429 - 1;
                  if (!v429)
                  {
                    goto LABEL_232;
                  }

                  v50 = v431;
                  v691 = v428;
                  v690 = v708;
                  v689 = v428;
                  v51 = AugmentedIntervalTree.search(start:end:)(&v690, &v689);
                  v425 = v50;
                  v426 = v51;
                  v427 = v50;
                  if (v50)
                  {
                    goto LABEL_209;
                  }

                  v420 = 0;
                  v688 = v426;
                  v421 = &v193;
                  MEMORY[0x28223BE20](&v193, v52);
                  v418 = &v191;
                  v192 = v732;
                  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd, &_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMR);
                  v417 = v419;
                  lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
                  v53 = v420;
                  v54 = _ArrayProtocol.filter(_:)();
                  v422 = v53;
                  v423 = v54;
                  v424 = v421;
                  if (v53)
                  {
                    break;
                  }

                  v416 = v423;
                  v687 = v423;
                  v686[2] = v423;
                  lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
                  if ((Collection.isEmpty.getter() & 1) == 0)
                  {
                    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
                    v57 = maxEnd<A>(_:)(v416, v55, v56);
                    v415 = v57 + 1;
                    if (v57 == -1)
                    {
                      goto LABEL_243;
                    }

                    v693 = v415;
                    v574 = v415;
                    v573 = v708;
                    v414 = v415 - v708;
                    v58 = __OFADD__(v758, v414);
                    v413 = v758 + v414;
                    if (v58)
                    {
                      goto LABEL_244;
                    }

                    v758 = v413;
                    v692 = 0;
                  }

                  if (v692 == 1)
                  {
                    v412 = v733;
                    v411 = v734;
                    __swift_project_boxed_opaque_existential_1(v732, v733);
                    if ((*(v411 + 72))(v412))
                    {
                      v409 = v733;
                      v408 = v734;
                      __swift_project_boxed_opaque_existential_1(v732, v733);
                      v580 = (*(v408 + 64))(v409);
                      v59 = __OFADD__(v580, v454);
                      v410 = v580 + v454;
                      if (v59)
                      {
                        goto LABEL_240;
                      }

                      v579 = v428;
                      v60 = __OFSUB__(v410, v428);
                      v407 = v410 - v428;
                      if (v60)
                      {
                        goto LABEL_241;
                      }

                      v578 = v407;
                      v406 = v733;
                      v405 = v734;
                      __swift_project_boxed_opaque_existential_1(v732, v733);
                      (*(v405 + 48))(v406);
                      if (PregnancySource.isFactorType()())
                      {
                        v404 = HyperParams.dropNegativeSlicesForInferredFactorLMP.getter();
                      }

                      else
                      {
                        v404 = HyperParams.dropNegativeSlicesForInferredTestLMP.getter();
                      }

                      v403 = v404;
                      v577 = v404;
                      if (v407 >= 1)
                      {
                        v692 = v403 < v407;
                        if (v403 >= v407)
                        {
                          v402 = v708;
                          v576 = v407;
                          if (v407 < 0)
                          {
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
                            __break(1u);
                          }

                          v575 = -1;
                          if (v576 > 0xFFFFFFFFLL)
                          {
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                            __break(1u);
                          }

                          else
                          {
                            v61 = __CFADD__(v402, v576);
                            v401 = v402 + v576;
                            if (v61)
                            {
                              goto LABEL_242;
                            }

                            v693 = v401;
                          }
                        }
                      }
                    }
                  }

                  v400 = v692;

                  if (v400 == 1)
                  {
                    v396 = HyperParams.isDaySHRRequired()();
                    v397 = HyperParams.minDaySHRAvailability.getter();
                    v398 = MEMORY[0x277D84CC0];

                    v399 = Array.init<A>(_:)();
                    v585 = v708;
                    v584 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v582 = v585;
                    v583 = v584;
                    v581 = __PAIR64__(v584, v585);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v396, v399, __SPAIR64__(v584, v585), &v764, v397);
                    v394 = v62;

                    v395 = v394;
                  }

                  else
                  {
                    v395 = 0;
                  }

                  v393 = v395;

                  v692 = v393 & 1;

                  if (v393)
                  {
                    v389 = HyperParams.isNightSHRRequired()();
                    v390 = HyperParams.minNightSHRAvailability.getter();
                    v391 = MEMORY[0x277D84CC0];

                    v392 = Array.init<A>(_:)();
                    v591 = v708;
                    v590 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v588 = v591;
                    v589 = v590;
                    v587 = __PAIR64__(v590, v591);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v389, v392, __SPAIR64__(v590, v591), &v763, v390);
                    v387 = v63;

                    v388 = v387;
                  }

                  else
                  {
                    v388 = 0;
                  }

                  v386 = v388;

                  v692 = v386 & 1;

                  if (v386)
                  {
                    v382 = HyperParams.isSWTRequired()();
                    v383 = HyperParams.minWristTempAvailability.getter();
                    v384 = MEMORY[0x277D84CC0];

                    v385 = Array.init<A>(_:)();
                    v597 = v708;
                    v596 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v594 = v597;
                    v595 = v596;
                    v593 = __PAIR64__(v596, v597);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v382, v385, __SPAIR64__(v596, v597), &v762, v383);
                    v380 = v64;

                    v381 = v380;
                  }

                  else
                  {
                    v381 = 0;
                  }

                  v379 = v381;

                  v692 = v379 & 1;

                  if (v379)
                  {
                    v375 = HyperParams.isHRVRequired()();
                    v376 = HyperParams.minHRVAvailability.getter();
                    v377 = MEMORY[0x277D84CC0];

                    v378 = Array.init<A>(_:)();
                    v603 = v708;
                    v602 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v600 = v603;
                    v601 = v602;
                    v599 = __PAIR64__(v602, v603);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v375, v378, __SPAIR64__(v602, v603), &v761, v376);
                    v373 = v65;

                    v374 = v373;
                  }

                  else
                  {
                    v374 = 0;
                  }

                  v372 = v374;

                  v692 = v372 & 1;

                  if (v372)
                  {
                    v368 = HyperParams.isSpO2Required()();
                    v369 = HyperParams.minSpO2Availability.getter();
                    v370 = MEMORY[0x277D84CC0];

                    v371 = Array.init<A>(_:)();
                    v609 = v708;
                    v608 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v606 = v609;
                    v607 = v608;
                    v605 = __PAIR64__(v608, v609);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v368, v371, __SPAIR64__(v608, v609), &v759, v369);
                    v366 = v66;

                    v367 = v366;
                  }

                  else
                  {
                    v367 = 0;
                  }

                  v365 = v367;

                  v692 = v365 & 1;

                  if (v365)
                  {
                    v361 = HyperParams.isRespiratoryRateRequired()();
                    v362 = HyperParams.minRespiratoryRateAvailability.getter();
                    v363 = MEMORY[0x277D84CC0];

                    v364 = Array.init<A>(_:)();
                    v615 = v708;
                    v614 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v612 = v615;
                    v613 = v614;
                    v611 = __PAIR64__(v614, v615);
                    Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v361, v364, __SPAIR64__(v614, v615), &v760, v362);
                    v359 = v67;

                    v360 = v359;
                  }

                  else
                  {
                    v360 = 0;
                  }

                  v358 = v360;

                  v692 = v358 & 1;
                  if (v358)
                  {
                    v685 = v708;
                    v684 = v428;
                    if (v428 < v708)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
                      __break(1u);
                    }

                    v682 = v685;
                    v683 = v684;
                    v680 = v685;
                    v681 = v684;
                    v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
                    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
                    Collection<>.makeIterator()();
                    for (m = v422; ; m = v344)
                    {
                      v344 = m;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNys6UInt32VGGMd, &_ss16IndexingIteratorVySNys6UInt32VGGMR);
                      IndexingIterator.next()();
                      v345 = v678;
                      if (v679)
                      {
                        break;
                      }

                      v343 = v345;
                      v337 = v345;
                      v672 = v345;
                      v668 = v345;
                      MEMORY[0x25F8891D0](v669, &v668, v794._rawValue, MEMORY[0x277D84CC0], v556, MEMORY[0x277D84CD0]);
                      v338 = v669[0];
                      v339 = v669[1];
                      v340 = v669[2];
                      v341 = v669[3];
                      v342 = v670;
                      if (v671)
                      {
                        v331 = 0;
                        v660[0] = 0.0;
                        v660[1] = 0.0;
                        v661 = 0.0;
                        v662 = 0;
                        v663 = 0;
                        v664 = 0;
                        v665 = 0;
                        v666 = 0;
                        v667 = 0;
                        if (HyperParams.isCalendarPeriodPredictionRequired()())
                        {
                          if (v707 == 1)
                          {
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Featurizer.swift", 36, 2, 782, 0);
                            __break(1u);
                          }

                          v329 = static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(v543, v337, &v706);
                          v330 = v78;
                          v626 = v329;
                          v625 = v78;
                          if (HyperParams.isPSMRequired()())
                          {
                            v623 = v329;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
                            Array.append(_:)();
                            v661 = v329;
                          }

                          if (HyperParams.isPSSRequired()())
                          {
                            v624 = v330;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
                            Array.append(_:)();
                            v662 = v330;
                          }
                        }

                        if (HyperParams.isDaysSinceLastPeriodStartRequired()())
                        {
                          v328 = v337 - 1;
                          if (!v337)
                          {
                            goto LABEL_236;
                          }

                          v630[0] = v328;
                          if (MEMORY[0x25F8897F0](v630, v504, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]))
                          {
                            v327 = v337 - 1;
                            if (!v337)
                            {
                              goto LABEL_238;
                            }

                            v704 = v327;
                            v705 = 0;
                          }

                          v326 = v704;
                          if (v705)
                          {
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Featurizer.swift", 36, 2, 797, 0);
                            __break(1u);
                          }

                          else
                          {
                            v325 = v326;
                          }

                          v324 = v337 - v325;
                          if (v337 < v325)
                          {
                            goto LABEL_237;
                          }

                          v629 = v324;
                          lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                          Float.init<A>(_:)();
                          v323 = v79;
                          v628 = v79;
                          v627 = v79;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
                          Array.append(_:)();
                          v663 = v323;
                        }

                        v80 = HyperParams.isDaySHRRequired()();
                        v320 = v660;
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v80, v560, &v703, &to, v337, v660);
                        v81 = HyperParams.isNightSHRRequired()();
                        Featurizer.updateFeature(required:feature:lastDayHasFeature:to:currentDay:defaultValue:cache:)(v81, v544, &v697, &v814, v337, 64.88, v320 + 1);
                        v82 = HyperParams.isSWTRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v82, v548, &v702, &v810, v337, v320 + 5);
                        v83 = HyperParams.isHRVRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v83, v547, &v701, &v809, v337, v320 + 6);
                        v84 = HyperParams.isRespiratoryRateRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v84, v546, &v700, &v808, v337, v320 + 7);
                        v85 = HyperParams.isSpO2Required()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v85, v545, &v699, &v807, v337, v320 + 8);
                        v86 = v541;
                        v87 = v337;
                        v88 = v541[8];
                        v89 = v541[9];
                        v644 = v667;
                        v541[1] = v89;
                        *v86 = v88;
                        v321 = v640;
                        v645 = v639[0];
                        v646 = v639[1];
                        v647 = v639[2];
                        v648 = v639[3];
                        v649 = v640;
                        v650 = v641;
                        v651 = v642;
                        v652 = v643;
                        v653 = v644;
                        v90 = *(v86 + 44);
                        v91 = *(v86 + 60);
                        v658 = v644;
                        v86[6] = v91;
                        v86[5] = v90;
                        v322 = 0;
                        v659 = 0;
                        v633 = v654;
                        v634 = v655;
                        v635 = v656;
                        v636 = v657;
                        v637 = v658;
                        v638 = 0;
                        v632 = v87;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMd, &_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMR);
                        Dictionary.subscript.setter();
                        v630[2] = v321;
                        v631 = v322;
                        v630[1] = v337;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
                        Dictionary.subscript.setter();
                      }

                      else
                      {
                        v332 = v338;
                        v333 = v339;
                        v334 = v340;
                        v335 = v341;
                        v336 = v342;
                        v618 = v338;
                        v619 = v339;
                        v620 = v340;
                        v621 = v341;
                        v622 = v342;
                        appendFeature(hyperParams:_:_:_:_:_:_:_:_:_:_:)(v552, &to, &v814, &v813, &v812, &v811, &v810, &v809, *&v338, *(&v338 + 1), *&v339, *(&v339 + 1), *&v340, *(&v340 + 1), *&v341, *(&v341 + 1), v342, &v808, &v807);
                      }
                    }

                    v677 = 0;
                    v676 = v428;
                    v316 = v428;
                    v318 = v733;
                    v317 = v734;
                    __swift_project_boxed_opaque_existential_1(v732, v733);
                    v675 = (*(v317 + 64))(v318);
                    v92 = __OFADD__(v675, v454);
                    v319 = v675 + v454;
                    if (v92)
                    {
                      goto LABEL_233;
                    }

                    if (v316 >= v319)
                    {
                      v677 = 1065353216;
                    }

                    v674 = v677;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
                    Array.append(_:)();
                    v673 = v428;
                    Array.append(_:)();
                    v314 = v708;
                    v315 = v708 + 1;
                    if (v708 == -1)
                    {
                      goto LABEL_234;
                    }

                    evictCaches(_:_:_:)(v314, v315, &v794);
                    v313 = v708 + 1;
                    if (v708 == -1)
                    {
                      goto LABEL_235;
                    }

                    v708 = v313;

                    v350 = v344;
                  }

                  else
                  {
                    v354 = v422;
                    v353 = v693;
                    evictCaches(_:_:_:)(v708, v693, &v794);
                    v708 = v353;
                    v68 = HyperParams.isCalendarPeriodPredictionRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v68, v508, v353, 0, &v706);
                    v69 = HyperParams.isDaysSinceLastPeriodStartRequired()();
                    v70 = v354;
                    v355 = v69;
                    v617 = v554;
                    v72 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v509, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v512, MEMORY[0x277D84AC0], v71);
                    v356 = v70;
                    v357 = v72;
                    if (v70)
                    {
                      goto LABEL_211;
                    }

                    v351 = v357;
                    v352 = v693 - 1;
                    if (!v693)
                    {
                      goto LABEL_239;
                    }

                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v355, v351, v352, 0, &v704);

                    v73 = HyperParams.isDaySHRRequired()();
                    v348 = v693;
                    v349 = 1;
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v73, v537, v693, 1, &v703);
                    v74 = HyperParams.isSWTRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v74, v529, v348, v349, &v702);
                    v75 = HyperParams.isHRVRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v75, v525, v348, v349, &v701);
                    v76 = HyperParams.isRespiratoryRateRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v76, v515, v348, v349, &v700);
                    v77 = HyperParams.isSpO2Required()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v77, v521, v348, v349, &v699);

                    v350 = v356;
                  }
                }

                __break(1u);
LABEL_211:
                __break(1u);
                goto LABEL_212;
              }
            }
          }
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v732);
    v443 = v441;
LABEL_193:
    ;
  }

  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
  __break(1u);
LABEL_244:
  __break(1u);
}

void *closure #2 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(_DWORD *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LODWORD(v8) = *a1;
  HIDWORD(v8) = v2;
  v7 = a2;
  v6 = v8;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  AugmentedIntervalTree.insert(start:end:context:)(&v6, &v5, v4);
  return outlined destroy of Pregnancy?(v4);
}

void *closure #4 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(void *a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v10 = (*(v3 + 8))(v4);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = (*(v5 + 16))(v6);
  outlined init with copy of HealthDataQuery(a1, v8);
  AugmentedIntervalTree.insert(start:end:context:)(&v10, &v9, v8);
  return outlined destroy of Pregnancy?(v8);
}

uint64_t closure #6 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, void *a2)
{
  v20 = a1;
  v19 = a2;
  outlined init with copy of Pregnancy?((a1 + 8), v15);
  if (!v15[3])
  {
    outlined destroy of Pregnancy?(v15);
LABEL_7:
    v3 = 1;
    return v3 & 1;
  }

  outlined init with take of HealthDataQuery(v15, __dst);
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v13 = (*(v9 + 8))(v10);
  v12 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(__dst, v17);
  if (v13 != (*(v11 + 8))(v12) || (v5 = a2[3], v4 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v5), v8 = (*(v4 + 16))(v5), v7 = v17, v6 = v18, __swift_project_boxed_opaque_existential_1(__dst, v17), v8 != (*(v6 + 16))(v7)))
  {
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v3 = 0;
  return v3 & 1;
}

uint64_t maxEnd<A>(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v21 = a1;
  v13 = a2;
  v23 = MEMORY[0x277D83988];
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v24 = v33;
  v33[0] = 0;
  v33[1] = 0;
  v37 = a2;
  v20 = 0;
  v22 = type metadata accessor for Interval(0, MEMORY[0x277D84CC0], a2, MEMORY[0x277D84CD8]);
  v14 = *(v22 - 8);
  v15 = v22 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v22);
  v17 = &v7[-v16];
  v36 = &v7[-v16];
  v18 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v21, v3);
  v19 = &v7[-v18];
  v35 = v4;
  v27 = 0;
  v34 = 0;

  v32 = v21;
  v25 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.makeIterator()();
  for (i = v27; ; i = v10)
  {
    v11 = i;
    type metadata accessor for IndexingIterator();
    IndexingIterator.next()();
    v5 = (*(v14 + 48))(v19, 1, v22);
    v12 = v11;
    if (v5 == 1)
    {
      break;
    }

    v9 = type metadata accessor for Optional();
    outlined init with take of Interval<UInt32, A>(v19, v17, v13, v9, v22);
    v30 = v11;
    v29 = *(v17 + 1);
    max<A>(_:_:)();
    v10 = v31;
    v34 = v31;
    outlined destroy of Interval<UInt32, A>(v17, v13, v9, v22);
  }

  v8 = v12;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v8;
}

uint64_t appendFeature(hyperParams:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, int a17, uint64_t a18, uint64_t a19)
{
  if (HyperParams.isDaySHRRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isNightSHRRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isPSMRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isPSSRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isDaysSinceLastPeriodStartRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isSWTRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isHRVRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  if (HyperParams.isRespiratoryRateRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
  }

  result = HyperParams.isSpO2Required()();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    return Array.append(_:)();
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.cycleStats(pregnancies:periods:earliestPregrancyLMP:latestPregrancyEndDay:)(Swift::tuple_prePregCycleStats_tuple_count_Float_mean_Float_optional_std_Float_pregCycleStats_tuple_count_Float_mean_Float_optional_std_Float_postPregCycleStats_tuple_count_Float_mean_Float_optional_std_Float *__return_ptr retstr, Swift::OpaquePointer pregnancies, Swift::OpaquePointer periods, Swift::UInt32 earliestPregrancyLMP, Swift::UInt32 latestPregrancyEndDay)
{
  v171 = latestPregrancyEndDay;
  v178 = earliestPregrancyLMP;
  rawValue = periods._rawValue;
  v170 = pregnancies._rawValue;
  v168 = retstr;
  v169 = 0;
  v267 = 0;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v261 = 0;
  v259 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v248 = 0;
  v247 = 0;
  v246[7] = 0;
  v246[6] = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v228 = 0.0;
  v227 = 0;
  v224 = 0.0;
  v223 = 0;
  v220 = 0.0;
  v219 = 0;
  v218 = 0;
  v212 = 0;
  v210 = 0;
  v195 = 0;
  v193 = 0;
  v172 = type metadata accessor for PFLStats.StdMethod();
  v173 = *(v172 - 8);
  v174 = v173;
  v175 = *(v173 + 64);
  v6 = MEMORY[0x28223BE20](rawValue, v172);
  v176 = &v59 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = v7;
  v266 = v6;
  v265 = v8;
  v264 = v9;
  v263 = v5;

  v262 = rawValue;
  v185 = v178;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v179 = v180;
  v10 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v11 = v181;
  v182 = v10;
  v12 = _ArrayProtocol.filter(_:)();
  v183 = v11;
  v184 = v12;
  if (v11)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_71:
    v61 = v132;
    outlined destroy of Pregnancy?(v196);
    __swift_destroy_boxed_opaque_existential_1(v199);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v62 = v61;
  }

  else
  {
    v164 = v184;
    v261 = v184;

    v260 = rawValue;
    v165 = &v59;
    MEMORY[0x28223BE20](&v59, v13);
    v14 = _ArrayProtocol.filter(_:)();
    v166 = 0;
    v167 = v14;
    v160 = v167;
    v259 = v167;

    v258 = rawValue;
    v161 = &v59;
    MEMORY[0x28223BE20](&v59, v15);
    v16 = _ArrayProtocol.filter(_:)();
    v162 = 0;
    v163 = v16;
    v157 = v163;
    v257 = v163;
    v256 = Array.init()();
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd, &_ss6UInt32V5start_AB3endtMR);
    v159 = MEMORY[0x25F8895B0](v164);
    if (v159 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v251 = 0;
    v252 = v159;
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v153 = v154;
    v155 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v162; ; i = v149)
    {
      v149 = i;
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
      IndexingIterator.next()();
      v151 = v249;
      v152 = v150;
      if (v250)
      {
        break;
      }

      v148 = v151;
      v145 = v151;
      v195 = v151;
      Array.subscript.getter();
      v146 = v194;
      v193 = v194;
      v17 = MEMORY[0x25F8895B0](v164, v158);
      v18 = __OFSUB__(v17, 1);
      v147 = v17 - 1;
      if (v18)
      {
        goto LABEL_82;
      }

      if (v145 == v147)
      {
        v188 = v178;
        v143 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v142 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v144 = v19;
        v187 = v146;
        Float.init<A>(_:)();
        v186 = v144 - v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        Array.append(_:)();
      }

      else
      {
        v21 = __OFADD__(v145, 1);
        v141 = v145 + 1;
        if (v21)
        {
          goto LABEL_83;
        }

        Array.subscript.getter();
        v191 = v192;
        v139 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v138 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v140 = v22;
        v190 = v146;
        Float.init<A>(_:)();
        v189 = v140 - v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        Array.append(_:)();
      }
    }

    v134 = v152;
    v248 = Array.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMR);
    v135 = AugmentedIntervalTree.__allocating_init()();
    v247 = v135;

    v246[5] = v170;
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v149; ; j = v124)
    {
      v133 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd, &_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMR);
      IndexingIterator.next()();
      if (!v246[3])
      {
        break;
      }

      v130 = v133;
      v127 = v199;
      outlined init with take of HealthDataQuery(v246, v199);
      v126 = v200;
      v125 = v201;
      __swift_project_boxed_opaque_existential_1(v127, v200);
      v198 = (*(v125 + 40))(v126);
      v129 = v200;
      v128 = v201;
      __swift_project_boxed_opaque_existential_1(v127, v200);
      v24 = (*(v128 + 16))(v129);
      v25 = v130;
      v197 = v24;
      memset(v196, 0, sizeof(v196));
      AugmentedIntervalTree.insert(start:end:context:)(&v198, &v197, v196);
      v131 = v25;
      v132 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

      v124 = 0;
      outlined destroy of Pregnancy?(v196);
      __swift_destroy_boxed_opaque_existential_1(v199);
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v123 = MEMORY[0x25F8895B0](v160, v158);
    if (v123 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v241 = 0;
    v242 = v123;
    Collection<>.makeIterator()();
    for (k = v133; ; k = v108)
    {
      v120 = k;
      IndexingIterator.next()();
      v121 = v239;
      if (v240)
      {
        break;
      }

      v119 = v121;
      v116 = v121;
      v212 = v121;
      Array.subscript.getter();
      v117 = v211;
      v210 = v211;
      v26 = MEMORY[0x25F8895B0](v160, v158);
      v27 = __OFSUB__(v26, 1);
      v118 = v26 - 1;
      if (v27)
      {
        goto LABEL_77;
      }

      if (v116 == v118)
      {
        v206[0] = v117;
        v115 = v171 + 1;
        if (v171 == -1)
        {
          goto LABEL_81;
        }

        v28 = v120;
        v205 = v115;
        v29 = AugmentedIntervalTree.overlap(start:end:)(v206, &v205);
        v112 = v28;
        v113 = v29;
        v114 = v28;
        if (v28)
        {
          v60 = v114;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v62 = v60;
          return;
        }

        if ((v113 & 1) == 0)
        {
          v204 = v171;
          v110 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
          v109 = MEMORY[0x277D84CC0];
          Float.init<A>(_:)();
          v111 = v30;
          v203 = v117;
          Float.init<A>(_:)();
          v202 = (v111 - v31) + 1.0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          Array.append(_:)();
        }

        v108 = v112;
      }

      else
      {
        v209 = v117;
        v32 = __OFADD__(v116, 1);
        v107 = v116 + 1;
        if (v32)
        {
          goto LABEL_78;
        }

        Array.subscript.getter();
        v106 = v208 - 1;
        if (!v208)
        {
          goto LABEL_79;
        }

        v33 = v120;
        v207 = v106;
        v34 = AugmentedIntervalTree.overlap(start:end:)(&v209, &v207);
        v103 = v33;
        v104 = v34;
        v105 = v33;
        if (v33)
        {
          v59 = v105;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v62 = v59;
          return;
        }

        if ((v104 & 1) == 0)
        {
          v35 = __OFADD__(v116, 1);
          v102 = v116 + 1;
          if (v35)
          {
            goto LABEL_80;
          }

          Array.subscript.getter();
          v206[3] = v206[4];
          v100 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
          v99 = MEMORY[0x277D84CC0];
          Float.init<A>(_:)();
          v101 = v36;
          v206[2] = v117;
          Float.init<A>(_:)();
          *&v206[1] = v101 - v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          Array.append(_:)();
        }

        v108 = v103;
      }
    }

    v238 = Array.init()();
    v98 = MEMORY[0x25F8895B0](v157, v158);
    if (v98 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v233 = 0;
    v234 = v98;
    Collection<>.makeIterator()();
    for (m = v120; ; m = v95)
    {
      v95 = m;
      IndexingIterator.next()();
      v96 = v231;
      if (v232)
      {
        v87 = v95;
        v68 = v256;

        v63 = MEMORY[0x277D41408];
        v43 = *MEMORY[0x277D41408];
        v65 = *(v174 + 104);
        v64 = v174 + 104;
        v65(v176, v43, v172);
        v229 = static PFLStats.meanAndStd(_:_:)();
        v230 = v44;
        v76 = *&v229;
        v77 = BYTE4(v229);
        v78 = v44;
        v67 = *(v174 + 8);
        v66 = v174 + 8;
        v67(v176, v172);
        *&v227 = v76;
        BYTE4(v227) = v77;
        v228 = v78;
        v70 = v248;

        v65(v176, *v63, v172);
        v225 = static PFLStats.meanAndStd(_:_:)();
        v226 = v45;
        v80 = *&v225;
        v81 = BYTE4(v225);
        v82 = v45;
        v67(v176, v172);
        *&v223 = v80;
        BYTE4(v223) = v81;
        v224 = v82;
        v73 = v238;

        v65(v176, *v63, v172);
        v221 = static PFLStats.meanAndStd(_:_:)();
        v222 = v46;
        v84 = *&v221;
        v85 = BYTE4(v221);
        v86 = v46;
        v67(v176, v172);
        *&v219 = v84;
        BYTE4(v219) = v85;
        v220 = v86;
        v72 = MEMORY[0x277D83A90];
        v69 = MEMORY[0x25F8895B0](v68);

        v75 = v69;
        v71 = MEMORY[0x25F8895B0](v70, v72);

        v79 = v71;
        v74 = MEMORY[0x25F8895B0](v73, v72);

        v83 = v74;
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        v47 = v76;
        v48 = v77;
        v49 = v78;
        v50 = v79;
        v51 = v80;
        v52 = v81;
        v53 = v82;
        v54 = v83;
        v55 = v84;
        v56 = v85;
        v57 = v168;
        v58 = v86;
        v168->prePregCycleStats.count = v75;
        v57->prePregCycleStats.mean.value = v47;
        v57->prePregCycleStats.mean.is_nil = v48;
        v57->prePregCycleStats.std = v49;
        v57->pregCycleStats.count = v50;
        v57->pregCycleStats.mean.value = v51;
        v57->pregCycleStats.mean.is_nil = v52;
        v57->pregCycleStats.std = v53;
        v57->postPregCycleStats.count = v54;
        v57->postPregCycleStats.mean.value = v55;
        v57->postPregCycleStats.mean.is_nil = v56;
        v57->postPregCycleStats.std = v58;
        return;
      }

      v94 = v96;
      v92 = v96;
      v218 = v96;
      v38 = MEMORY[0x25F8895B0](v157, v158);
      v39 = __OFSUB__(v38, 1);
      v93 = v38 - 1;
      if (v39)
      {
        break;
      }

      if (v92 != v93)
      {
        v40 = __OFADD__(v92, 1);
        v91 = v92 + 1;
        if (v40)
        {
          goto LABEL_76;
        }

        Array.subscript.getter();
        v216 = v217;
        v89 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v88 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v90 = v41;
        Array.subscript.getter();
        v214 = v215;
        Float.init<A>(_:)();
        v213 = v90 - v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        Array.append(_:)();
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

uint64_t Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v254 = a4;
  v253 = a3;
  v256 = a2;
  v261 = a1;
  v251 = a1;
  v255 = 0;
  v357 = 0;
  v252 = 0;
  v356 = 0;
  v355 = 0;
  v354 = 0;
  v353 = 0;
  v352 = 0;
  v350 = 0;
  v349 = 0;
  v348 = 0;
  v343 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v334 = 0;
  v329 = 0;
  v326 = 0;
  v322 = 0;
  v317 = 0;
  v316 = 0.0;
  v315 = 0;
  v313 = 0;
  v312 = 0;
  v311 = 0;
  v306 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v286 = 0;
  memset(&v283[1], 0, 24);
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v257 = type metadata accessor for PFLStats.StdMethod();
  v258 = *(v257 - 8);
  v259 = v258;
  v260 = *(v258 + 64);
  v262 = v84 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = v261;
  v356 = MEMORY[0x28223BE20](v256, v257);
  v355 = v5;
  v354 = v6;
  v353 = v4;
  v351 = v7;
  v8 = MEMORY[0x25F8895B0](v356, MEMORY[0x277D84CC0]);
  v9 = __OFADD__(v8, v8);
  result = 2 * v8;
  v11 = v9;
  v263 = result;
  if ((v11 & 1) == 0)
  {
    v352 = Array.init(repeating:count:)();
    if (!v251)
    {
      v249 = v250;
LABEL_115:
      v84[1] = v249;
      v85 = v352;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v85;
    }

    switch(v251)
    {
      case 1u:
        v282 = v256;
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
        v12 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        MEMORY[0x25F889420](v283, v247, v12);
        v281 = v283[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySays6UInt32VGGMd, &_ss18EnumeratedSequenceVySays6UInt32VGGMR);
        EnumeratedSequence.makeIterator()();
        for (i = v250; ; i = v210)
        {
          v244 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySays6UInt32VG_GMd, &_ss18EnumeratedSequenceV8IteratorVySays6UInt32VG_GMR);
          EnumeratedSequence.Iterator.next()();
          v245 = v278;
          v246 = v279;
          if (v280)
          {
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v249 = v244;
            goto LABEL_115;
          }

          v242 = v245;
          v243 = v246;
          v240 = v246;
          v239 = v245;
          v277 = v245;
          v276 = v246;
          result = Set.init()();
          v275 = result;
          v241 = v240 - v254;
          if (v240 < v254)
          {
            goto LABEL_135;
          }

          v238 = v241 + 1;
          if (v241 == -1)
          {
            goto LABEL_136;
          }

          if (v240 < v238)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
            __break(1u);
          }

          v232 = v244;
          v273 = v238;
          v274 = v240;
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd, &_sShys6UInt32VGMR);
          v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
          lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
          v233 = &v275;
          Set.formUnion<A>(_:)();
          v13 = v232;

          v234 = v84;
          MEMORY[0x28223BE20](v84, v14);
          v83 = v15;
          v16 = Dictionary.filter(_:)();
          v235 = v13;
          v236 = v16;
          v237 = v234;
          if (v13)
          {
            break;
          }

          v227 = 0;
          v272[1] = v236;
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
          v17 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
          v18 = v227;
          v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:), 0, v226, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v19);
          v228 = v18;
          v229 = v20;
          if (v18)
          {
            goto LABEL_117;
          }

          v217 = v229;
          outlined destroy of [(start: UInt32, end: UInt32)]();
          v272[0] = v217;
          v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          v218 = v219;
          lazy protocol witness table accessor for type [Float] and conformance [A]();
          v220 = v272;
          v222 = Sequence<>.sorted()();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v259 + 104))(v262, *MEMORY[0x277D41408], v257);
          v270 = static PFLStats.meanAndStd(_:_:)();
          v271 = v21;
          v223 = v270;
          v221 = v270;
          v225 = BYTE4(v270);
          v224 = v21;
          (*(v259 + 8))(v262, v257);

          v268 = v223;
          v269 = v225;
          v267 = v224;
          if (v225)
          {
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v206 = 0;
            v207 = swift_allocError();
            *v31 = 62;
            swift_willThrow();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            result = v207;
            v208 = v207;
            return result;
          }

          v216 = v221;
          v214 = v221;
          v266 = v221;
          result = 2 * v239;
          v22 = __OFADD__(v239, v239);
          v215 = 2 * v239;
          if (v22)
          {
            goto LABEL_137;
          }

          v212 = &v265;
          v23 = Array.subscript.modify();
          v24 = v212;
          *v25 = v214;
          result = v23(v24, 0);
          v26 = __OFADD__(v239, v239);
          v213 = 2 * v239;
          if (v26)
          {
            goto LABEL_138;
          }

          result = v213 + 1;
          v27 = __OFADD__(v213, 1);
          v211 = v213 + 1;
          if (v27)
          {
            goto LABEL_139;
          }

          v210 = v228;
          v209 = &v264;
          v28 = Array.subscript.modify();
          v29 = v209;
          *v30 = v224;
          v28(v29, 0);
          outlined destroy of [(start: UInt32, end: UInt32)]();
        }

        __break(1u);
LABEL_117:
        __break(1u);
        break;
      case 2u:
        v350 = Set.init()();

        v347 = v256;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        Collection<>.makeIterator()();
        for (j = v250; ; j = v123)
        {
          v128 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays6UInt32VGGMd, &_ss16IndexingIteratorVySays6UInt32VGGMR);
          IndexingIterator.next()();
          result = v345;
          v129 = v345;
          if (v346)
          {
            break;
          }

          v127 = v129;
          v125 = v129;
          v326 = v129;
          v126 = v129 - v254;
          if (v129 < v254)
          {
            goto LABEL_126;
          }

          v124 = v126 + 1;
          if (v126 == -1)
          {
            goto LABEL_127;
          }

          if (v125 < v124)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
            __break(1u);
          }

          v123 = v128;
          v324 = v124;
          v325 = v125;
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd, &_sShys6UInt32VGMR);
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
          lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
          Set.formUnion<A>(_:)();
        }

        v117 = v128;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v64 = v117;

        v118 = v84;
        MEMORY[0x28223BE20](v84, v65);
        v83 = &v350;
        v66 = Dictionary.filter(_:)();
        v119 = v64;
        v120 = v66;
        if (!v64)
        {
          v114 = 0;
          v344[1] = v120;
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
          v67 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
          v68 = v114;
          v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:), 0, v113, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v67, MEMORY[0x277D84AC0], v69);
          v115 = v68;
          v116 = v70;
          if (!v68)
          {
            v103 = v116;
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v344[0] = v103;
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
            v104 = v105;
            lazy protocol witness table accessor for type [Float] and conformance [A]();
            v106 = v344;
            v108 = Sequence<>.sorted()();
            v107 = v108;
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v343 = v108;
            (*(v259 + 104))(v262, *MEMORY[0x277D41408], v257);
            v341 = static PFLStats.meanAndStd(_:_:)();
            v342 = v71;
            v110 = v341;
            v109 = v341;
            v112 = BYTE4(v341);
            v111 = v71;
            (*(v259 + 8))(v262, v257);
            v339 = v110;
            v340 = v112;
            v338 = v111;
            if (v112)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v86 = 0;
              v87 = swift_allocError();
              *v81 = 62;
              swift_willThrow();

              outlined destroy of [(start: UInt32, end: UInt32)]();
              outlined destroy of [(start: UInt32, end: UInt32)]();
              result = v87;
              v208 = v87;
              return result;
            }

            v102 = v109;
            v100 = v109;
            v337 = v109;
            v101 = MEMORY[0x25F8895B0](v256, MEMORY[0x277D84CC0]);
            if (v101 < 0)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
              __break(1u);
            }

            v332 = 0;
            v333 = v101;
            v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
            lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
            Collection<>.makeIterator()();
            for (k = v115; ; k = v89)
            {
              v96 = k;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
              IndexingIterator.next()();
              v97 = v330;
              if (v331)
              {
                break;
              }

              v95 = v97;
              v93 = v97;
              v329 = v97;
              result = 2 * v97;
              v72 = __OFADD__(v93, v93);
              v94 = 2 * v97;
              if (v72)
              {
                goto LABEL_123;
              }

              v91 = &v328;
              v73 = Array.subscript.modify();
              v74 = v91;
              *v75 = v100;
              result = v73(v74, 0);
              v76 = __OFADD__(v93, v93);
              v92 = 2 * v93;
              if (v76)
              {
                goto LABEL_124;
              }

              result = v92 + 1;
              v77 = __OFADD__(v92, 1);
              v90 = v92 + 1;
              if (v77)
              {
                goto LABEL_125;
              }

              v89 = v96;
              v88 = &v327;
              v78 = Array.subscript.modify();
              v79 = v88;
              *v80 = v111;
              v78(v79, 0);
            }

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v249 = v96;
            goto LABEL_115;
          }

          goto LABEL_121;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        result = 0;
        __break(1u);
        return result;
      case 3u:
        v203 = v250;
        v202 = MEMORY[0x277D83A90];

        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
        lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
        v197 = &v301;
        v198 = Sequence<>.sorted()();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v300 = v198;

        v199 = v84;
        MEMORY[0x28223BE20](v84, v32);
        v200 = &v82;
        v83 = v33;
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        v34 = v203;
        v35 = Sequence.compactMap<A>(_:)();
        v204 = v34;
        v205 = v35;
        if (!v34)
        {
          v192 = v205;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v259 + 104))(v262, *MEMORY[0x277D41408], v257);
          v298 = static PFLStats.meanAndStd(_:_:)();
          v299 = v36;
          v193 = v298;
          v191 = v298;
          v195 = BYTE4(v298);
          v194 = v36;
          (*(v259 + 8))(v262, v257);

          v296 = v193;
          v297 = v195;
          v295 = v194;
          if (v195)
          {
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v173 = 0;
            v174 = swift_allocError();
            *v46 = 62;
            swift_willThrow();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            result = v174;
            v208 = v174;
            return result;
          }

          v190 = v191;
          v188 = v191;
          v294 = v191;
          v189 = MEMORY[0x25F8895B0](v256, MEMORY[0x277D84CC0]);
          if (v189 < 0)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
            __break(1u);
          }

          v289 = 0;
          v290 = v189;
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
          lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
          Collection<>.makeIterator()();
          for (m = v204; ; m = v176)
          {
            v184 = m;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
            IndexingIterator.next()();
            v185 = v287;
            if (v288)
            {
              break;
            }

            v183 = v185;
            v181 = v185;
            v286 = v185;
            result = 2 * v185;
            v37 = __OFADD__(v181, v181);
            v182 = 2 * v185;
            if (v37)
            {
              goto LABEL_132;
            }

            v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
            v179 = &v285;
            v38 = Array.subscript.modify();
            v39 = v179;
            *v40 = v188;
            result = v38(v39, 0);
            v41 = __OFADD__(v181, v181);
            v180 = 2 * v181;
            if (v41)
            {
              goto LABEL_133;
            }

            result = v180 + 1;
            v42 = __OFADD__(v180, 1);
            v177 = v180 + 1;
            if (v42)
            {
              goto LABEL_134;
            }

            v176 = v184;
            v175 = &v284;
            v43 = Array.subscript.modify();
            v44 = v175;
            *v45 = v194;
            v43(v44, 0);
          }

          v249 = v184;
          goto LABEL_115;
        }

        break;
      default:
        v171 = MEMORY[0x277D83A90];
        v323 = Dictionary.values.getter();
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVys6UInt32VSf_GMd, &_sSD6ValuesVys6UInt32VSf_GMR);
        lazy protocol witness table accessor for type [UInt32 : Float].Values and conformance [A : B].Values();
        v169 = &v323;
        v172 = Sequence<>.sorted()();
        v170 = v172;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v322 = v172;
        if (MEMORY[0x25F8895B0]() < 1)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v132 = 0;
          v133 = swift_allocError();
          *v63 = 62;
          swift_willThrow();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          result = v133;
          v208 = v133;
          return result;
        }

        v165 = v250;
        v164 = MEMORY[0x277D83A90];

        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd, &_sSD4KeysVys6UInt32VSf_GMR);
        lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
        v159 = &v321;
        v160 = Sequence<>.sorted()();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v320 = v160;

        v161 = v84;
        MEMORY[0x28223BE20](v84, v47);
        v162 = &v82;
        v83 = v48;
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        v49 = v165;
        v50 = Sequence.compactMap<A>(_:)();
        v166 = v49;
        v167 = v50;
        if (!v49)
        {
          v155 = v167;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v259 + 104))(v262, *MEMORY[0x277D41408], v257);
          v318 = static PFLStats.meanAndStd(_:_:)();
          v319 = v51;
          v156 = v51;
          (*(v259 + 8))(v262, v257);

          v317 = v156;
          v316 = 0.0;
          v157 = MEMORY[0x25F8895B0](v170, MEMORY[0x277D83A90]);
          v153 = v157 / 2;
          v315 = v157 / 2;
          v154 = MEMORY[0x25F8895B0](v170, MEMORY[0x277D83A90]);
          v52 = v154 & 1;
          if (v154 < 0)
          {
            v52 = -v52;
          }

          if (v52)
          {
            Array.subscript.getter();
            v316 = v314;
            v151 = v314;
LABEL_67:
            v147 = v151;
            v148 = MEMORY[0x25F8895B0](v256, MEMORY[0x277D84CC0]);
            if (v148 < 0)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
              __break(1u);
            }

            v309 = 0;
            v310 = v148;
            v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
            lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
            Collection<>.makeIterator()();
            for (n = v166; ; n = v135)
            {
              v143 = n;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
              IndexingIterator.next()();
              v144 = v307;
              if (v308)
              {
                break;
              }

              v142 = v144;
              v140 = v144;
              v306 = v144;
              result = 2 * v144;
              v54 = __OFADD__(v140, v140);
              v141 = 2 * v144;
              if (v54)
              {
                goto LABEL_128;
              }

              v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
              v138 = &v305;
              v55 = Array.subscript.modify();
              v56 = v138;
              *v57 = v147;
              result = v55(v56, 0);
              v58 = __OFADD__(v140, v140);
              v139 = 2 * v140;
              if (v58)
              {
                goto LABEL_129;
              }

              result = v139 + 1;
              v59 = __OFADD__(v139, 1);
              v136 = v139 + 1;
              if (v59)
              {
                goto LABEL_130;
              }

              v135 = v143;
              v134 = &v304;
              v60 = Array.subscript.modify();
              v61 = v134;
              *v62 = v156;
              v60(v61, 0);
            }

            v249 = v143;
            goto LABEL_115;
          }

          result = v153 - 1;
          v53 = __OFSUB__(v153, 1);
          v152 = v153 - 1;
          if (!v53)
          {
            v149 = MEMORY[0x277D83A90];
            Array.subscript.getter();
            v150 = v303;
            Array.subscript.getter();
            v316 = (v150 + v302) * 0.5;
            v151 = v316;
            goto LABEL_67;
          }

          goto LABEL_131;
        }

        goto LABEL_119;
    }

    __break(1u);
LABEL_119:

    __break(1u);
    goto LABEL_120;
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t closure #1 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(_DWORD *a1, int *a2, void *a3)
{
  v9 = 0;
  v8 = 0;
  v3 = *a2;
  LODWORD(v9) = *a1;
  HIDWORD(v9) = v3;
  v8 = a3;
  v5 = *a3;

  v7 = v9;
  v6 = MEMORY[0x25F8897F0](&v7, v5, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  return v6 & 1;
}

float closure #2 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

uint64_t closure #3 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(int *a1, uint64_t a2)
{
  v5 = 0;
  v4 = 0;
  v5 = *a1;
  v4 = a2;
  v3 = v5;
  return MEMORY[0x25F8891D0](&v3, a2, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
}

void __swiftcall Featurizer.featurizeWTPeriodPrediction(_:_:_:_:_:_:_:_:)(Swift::tuple_flow_OpaquePointer_swt_OpaquePointer_periodStartMean_OpaquePointer_periodStartStd_OpaquePointer_labels_OpaquePointer *__return_ptr retstr, Swift::OpaquePointer *a2, Swift::OpaquePointer *a3, Swift::OpaquePointer *a4, Swift::OpaquePointer *a5, Swift::OpaquePointer *a6, Swift::UInt32 a7, Swift::UInt32 a8, Swift::UInt32 a9)
{
  v10 = _allocateUninitializedArray<A>(_:)();
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = _allocateUninitializedArray<A>(_:)();
  v13 = _allocateUninitializedArray<A>(_:)();
  v9 = _allocateUninitializedArray<A>(_:)();
  retstr->flow._rawValue = v10;
  retstr->swt._rawValue = v11;
  retstr->periodStartMean._rawValue = v12;
  retstr->periodStartStd._rawValue = v13;
  retstr->labels._rawValue = v9;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.standardize(flow:daySHR:nightSHR:psm:pss:swt:modelType:sliceSize:)(Swift::OpaquePointer *flow, Swift::OpaquePointer *daySHR, Swift::OpaquePointer *nightSHR, Swift::OpaquePointer *psm, Swift::OpaquePointer *pss, Swift::OpaquePointer *swt, NightingaleTraining::NightingalePFLModelType modelType, Swift::UInt32 sliceSize)
{
  standardizeFlow(_:_:)(flow, modelType);
  if (!v8)
  {
    standardizeDaySHR(_:_:)(daySHR, modelType);
    if (!v9)
    {
      standardizeNightSHR(_:_:)(nightSHR, modelType);
      if (!v10)
      {
        standardizePSM(_:_:)(psm, modelType);
        if (!v11)
        {
          standardizePSS(_:_:)(pss, modelType);
          if (!v12)
          {
            centerSWT(_:_:_:)(swt, modelType, sliceSize);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeFlow(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v6 = 1;
  }

  else
  {
    v6 = == infix<A>(_:_:)();
  }

  if (v6)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeDaySHR(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v3, v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeNightSHR(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v3, v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizePSM(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v6 = 1;
  }

  else
  {
    v6 = == infix<A>(_:_:)();
  }

  if (v6)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizePSS(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v6 = 1;
  }

  else
  {
    v6 = == infix<A>(_:_:)();
  }

  if (v6)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> centerSWT(_:_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2, Swift::UInt32 a3)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v29 = 0;
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v26 = a3;
  v41 = a3;
  v40 = a2;
  v39 = 3;
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v22 = 1;
  }

  else
  {
    v38 = a2;
    v37 = 2;
    v22 = == infix<A>(_:_:)();
  }

  if (v22)
  {
    rawValue = a1->_rawValue;

    v21 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D83A90]);

    if (!v26)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division by zero in remainder operation", 39, 2, "Swift/IntegerTypes.swift", 24, 2, 9149, 0);
      __break(1u);
    }

    if (v21 % v26)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v11 = 7;
      swift_willThrow();
    }

    else
    {
      v18 = a1->_rawValue;

      v19 = MEMORY[0x25F8895B0](v18, MEMORY[0x277D83A90]);

      if (!v26)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 9012, 0);
        __break(1u);
      }

      if (v19 / v26 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
        __break(1u);
      }

      v32 = 0;
      v33 = v19 / v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      Collection<>.makeIterator()();
      for (i = v25; ; i = 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
        IndexingIterator.next()();
        v16 = v30;
        if (v31)
        {
          break;
        }

        v29 = v30;
        if ((v29 * v26) >> 64 != (v29 * v26) >> 63)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v15 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_37;
        }

        if ((v15 * v26) >> 64 != (v15 * v26) >> 63)
        {
          goto LABEL_38;
        }

        if (v15 * v26 < v30 * v26)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
          __break(1u);
        }

        v28[0] = Array.subscript.getter();
        v28[1] = v4;
        v28[2] = v5;
        v28[3] = v6;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
        v14 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
        standardize<A>(values:mean:std:)(v28, v13, v14);
        if (i)
        {
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          Array.subscript.setter();
          outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>(v28);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        Array.subscript.setter();
        if ((v16 * v26) >> 64 != (v16 * v26) >> 63)
        {
          goto LABEL_39;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }

        if ((v12 * v26) >> 64 != (v12 * v26) >> 63)
        {
          goto LABEL_41;
        }

        if (v12 * v26 < v16 * v26)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
          __break(1u);
        }

        v27[0] = Array.subscript.getter();
        v27[1] = v8;
        v27[2] = v9;
        v27[3] = v10;
        center<A>(values:)(v27, v13, v14);
        Array.subscript.setter();
      }
    }
  }
}

uint64_t *closure #2 in findDaysNeedingDummyFlow(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v26 = 0;
  v25 = 0;
  v22 = *a1;
  v26 = v22;
  v25 = a2;
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v16 = v19;
  v23 = 1;
  v24 = v20;
  v13 = &v12;
  MEMORY[0x28223BE20](&v12, a2);
  v14 = &v9;
  v10 = v22;
  v11 = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
  v4 = lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  v5 = v16;
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #2 in findDaysNeedingDummyFlow(_:_:), v14, v15, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v6);
  v17 = v5;
  v18 = v7;
  if (v5)
  {
    result = 0;
    __break(1u);
  }

  else
  {
    result = v13;
    *v21 = v18;
  }

  return result;
}

_DWORD *closure #1 in closure #2 in findDaysNeedingDummyFlow(_:_:)@<X0>(_DWORD *result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  if (__CFADD__(a2, *result))
  {
    __break(1u);
  }

  else
  {
    *a3 = a2 + *result;
  }

  return result;
}

uint64_t *standardize<A>(values:mean:std:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v22 = a2;
  v18 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v32 = a2;
  v19 = *(a2 - 8);
  v21 = v19;
  MEMORY[0x28223BE20](a1, a1);
  v23 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v30 = v5;
  v29 = v6;
  v28 = v5;
  v27 = v6;
  (*(v19 + 16))(v23);
  v25 = (*(v20 + 24))(v22);
  v24 = v25;
  v26 = v25;
  (*(v21 + 8))(v23, v22);
  if (v25 < 1)
  {
    result = v17;
    v13 = v17;
  }

  else
  {
    v8 = v17;
    v14 = &v12;
    MEMORY[0x28223BE20](&v12, v7);
    *(&v12 - 4) = v9;
    *(&v12 - 3) = &v28;
    *(&v12 - 2) = &v27;
    (*(v10 + 16))(partial apply for closure #1 in standardize<A>(values:mean:std:));
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      return v14;
    }

    else
    {
      result = 0;
      v13 = 0;
    }
  }

  return result;
}

void closure #1 in standardize<A>(values:mean:std:)(void *a1, uint64_t a2, uint64_t a3, const float *a4)
{
  v7 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v7)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    cblas_saxpy_NEWLAPACK();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    lazy protocol witness table accessor for type UInt and conformance UInt();
    numericCast<A, B>(_:)();
    vDSP_vsdiv(v7, v10, a4, v7, v9, v8);
  }

  else
  {
    v5 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v4, *MEMORY[0x277D413E8]);
    swift_willThrow();
  }
}

void *center<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v20 = a2;
  v15 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v27 = a2;
  v16 = *(a2 - 8);
  v19 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v21 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  v25 = v4;
  (*(v16 + 16))(v21);
  v23 = (*(v18 + 24))(v20);
  v22 = v23;
  v24 = v23;
  (*(v19 + 8))(v21, v20);
  if (v23 < 1)
  {
    result = v14;
    v10 = v14;
  }

  else
  {
    v6 = v14;
    v11 = &v10;
    MEMORY[0x28223BE20](&v10, v5);
    *(&v10 - 2) = &v25;
    *(&v10 - 1) = v7;
    (*(v8 + 16))(partial apply for closure #1 in center<A>(values:));
    v12 = v6;
    v13 = v6;
    if (v6)
    {
      return v11;
    }

    else
    {
      result = 0;
      v10 = 0;
    }
  }

  return result;
}

uint64_t closure #1 in center<A>(values:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v30 = 0;
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v24 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v24)
  {
    v20 = v24;
    v5 = v21;
    v15 = v24;
    v30 = v24;
    v14 = v10;
    v6 = MEMORY[0x28223BE20](v23, v10);
    v9[2] = v15;
    v9[3] = v7;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in closure #1 in center<A>(values:), v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v8);
    v16 = v5;
    if (v5)
    {
      result = 0;
      __break(1u);
    }

    else
    {
      v13 = 0;
      v28 = v22;
      v10[3] = lazy protocol witness table accessor for type Int and conformance Int();
      v10[4] = lazy protocol witness table accessor for type Int32 and conformance Int32();
      v10[1] = MEMORY[0x277D83B88];
      v10[2] = MEMORY[0x277D849A8];
      numericCast<A, B>(_:)();
      v11 = v29;
      v26 = 0;
      numericCast<A, B>(_:)();
      v12 = v27;
      v25 = 1;
      numericCast<A, B>(_:)();
      return cblas_saxpy_NEWLAPACK();
    }
  }

  else
  {
    v18 = 0;
    v17 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    v19 = swift_allocError();
    (*(*(v17 - 8) + 104))(v3, *MEMORY[0x277D413E8]);
    swift_willThrow();
    return 0;
  }

  return result;
}

void closure #1 in closure #1 in center<A>(values:)(float *a1, const float *a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Int and conformance Int();
  numericCast<A, B>(_:)();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  numericCast<A, B>(_:)();
  vDSP_meanv(a2, v6, a1, v5);
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t closure #1 in transferFeatureToMLInputs(_:_:_:_:)(void *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t *a5)
{
  if (UnsafeMutableBufferPointer.baseAddress.getter())
  {
    v7 = *a2;

    MEMORY[0x25F8895B0](v7, MEMORY[0x277D83A90]);

    lazy protocol witness table accessor for type Int and conformance Int();
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    NightingalePFLModelType.numFeatures()();
    numericCast<A, B>(_:)();

    cblas_scopy_NEWLAPACK();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v5, *MEMORY[0x277D413E8]);
    swift_willThrow();
    result = v9;
    *a5 = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureStatsOption and conformance FeatureStatsOption()
{
  v2 = lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption;
  if (!lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption;
  if (!lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  v2 = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [[UInt32]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[UInt32]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[UInt32]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySays6UInt32VGGMd, &_sSaySays6UInt32VGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[UInt32]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!*a1 || *a1 != a2 || a1[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "ArraySlice withUnsafeMutableBufferPointer: replacing the buffer is not allowed", 78, 2, "Swift/ArraySlice.swift", 22, 2, 1307, 0);
    __break(1u);
  }

  type metadata accessor for ArraySlice();
  Array._endMutation()();
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type [(Int, [[Int]])] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi_SaySaySiGGtGMd, &_sSaySi_SaySaySiGGtGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(Int, [Float])] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi_SaySfGtGMd, &_sSaySi_SaySfGtGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

char *outlined init with take of Interval<UInt32, A>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = *(a5 + 48);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(&a1[v10], 1))
  {
    memcpy(&a2[v10], &a1[v10], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v10], 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of Interval<UInt32, A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v8 = *(a2 - 8);
  if (!(*(v8 + 48))(a1 + v7, 1))
  {
    (*(v8 + 8))(a1 + v7, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for FeatureStatsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeatureStatsOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PFLError and conformance PFLError()
{
  v2 = lazy protocol witness table cache variable for type PFLError and conformance PFLError;
  if (!lazy protocol witness table cache variable for type PFLError and conformance PFLError)
  {
    type metadata accessor for PFLError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PFLError and conformance PFLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t mergePregnancies(pregnancies:strategy:)(uint64_t a1, unsigned int a2)
{
  v309 = a1;
  v308 = a2;
  v289 = closure #1 in mergePregnancies(pregnancies:strategy:);
  v290 = closure #2 in mergePregnancies(pregnancies:strategy:);
  v291 = closure #3 in mergePregnancies(pregnancies:strategy:);
  v292 = partial apply for implicit closure #1 in mergePregnancies(pregnancies:strategy:);
  v293 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v294 = partial apply for implicit closure #2 in mergePregnancies(pregnancies:strategy:);
  v295 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32);
  v296 = partial apply for implicit closure #3 in mergePregnancies(pregnancies:strategy:);
  v297 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32);
  v298 = partial apply for closure #1 in OSLogArguments.append(_:);
  v299 = partial apply for closure #1 in OSLogArguments.append(_:);
  v300 = partial apply for closure #1 in OSLogArguments.append(_:);
  v301 = partial apply for closure #1 in OSLogArguments.append(_:);
  v302 = partial apply for closure #1 in OSLogArguments.append(_:);
  v303 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v304 = partial apply for closure #1 in OSLogArguments.append(_:);
  v305 = partial apply for closure #1 in OSLogArguments.append(_:);
  v306 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v307 = closure #4 in mergePregnancies(pregnancies:strategy:);
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v344 = 0;
  v345 = 0;
  v334 = 0;
  v333[7] = 0;
  v333[8] = 0;
  v332 = 0;
  v329 = 0;
  v327 = 0;
  memset(v326, 0, sizeof(v326));
  v310 = type metadata accessor for Logger();
  v311 = *(v310 - 8);
  v312 = v310 - 8;
  v313 = (*(v311 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v314 = v57 - v313;
  v348 = MEMORY[0x28223BE20](v309, v308);
  v347 = v2 & 1;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMR);
    v283 = AugmentedIntervalTree.__allocating_init()();
    v346 = v283;

    v343 = v309;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Collection<>.makeIterator()();
    for (i = v288; ; i = v130)
    {
      v282 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd, &_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMR);
      IndexingIterator.next()();
      if (!v342)
      {
        break;
      }

      v278 = __dst;
      outlined init with take of HealthDataQuery(v341, __dst);
      v277 = v338;
      v276 = v339;
      __swift_project_boxed_opaque_existential_1(v278, v338);
      v281 = (*(v276 + 8))(v277);
      v280 = v338;
      v279 = v339;
      __swift_project_boxed_opaque_existential_1(v278, v338);
      v4 = (*(v279 + 16))(v280);
      if (v4 >= v281)
      {
        v122 = __dst;
        v121 = v338;
        v120 = v339;
        __swift_project_boxed_opaque_existential_1(__dst, v338);
        v37 = (*(v120 + 8))(v121);
        v125 = &v336;
        v336 = v37;
        v124 = v338;
        v123 = v339;
        __swift_project_boxed_opaque_existential_1(v122, v338);
        v38 = (*(v123 + 16))(v124);
        v39 = v282;
        v335 = v38;
        v40 = AugmentedIntervalTree.search(start:end:)(v125, &v335);
        v126 = v39;
        v127 = v40;
        v128 = v39;
        if (v39)
        {
          v64 = v128;
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v65 = v64;
          return v229;
        }

        v117 = v127;
        v334 = v127;
        v333[9] = v127;
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd, &_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMR);
        v119 = lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
        if (Collection.isEmpty.getter())
        {
          v110 = __dst;
          v107 = v338;
          v106 = v339;
          __swift_project_boxed_opaque_existential_1(__dst, v338);
          v41 = (*(v106 + 8))(v107);
          v113 = &v325;
          v325 = v41;
          v109 = v338;
          v108 = v339;
          __swift_project_boxed_opaque_existential_1(v110, v338);
          v42 = (*(v108 + 16))(v109);
          v111 = &v324;
          v324 = v42;
          v112 = v323;
          outlined init with copy of HealthDataQuery(v110, v323);
          v43 = v126;
          AugmentedIntervalTree.insert(start:end:context:)(v113, v111, v112);
          v114 = v43;
          v115 = v117;
          v116 = v43;
          if (v43)
          {
            v63 = v116;
            v62 = v115;
            outlined destroy of Pregnancy?(v323);

            __swift_destroy_boxed_opaque_existential_1(__dst);
            outlined destroy of [(start: UInt32, end: UInt32)]();

            v65 = v63;
            return v229;
          }

          outlined destroy of Pregnancy?(v323);
          v105 = v114;
        }

        else
        {

          v333[6] = v117;
          Collection<>.makeIterator()();
          for (j = v126; ; j = v103)
          {
            v103 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining8IntervalVys6UInt32VAC9Pregnancy_pGGGMd, &_ss16IndexingIteratorVySay19NightingaleTraining8IntervalVys6UInt32VAC9Pregnancy_pGGGMR);
            IndexingIterator.next()();
            if (v333[4] == 1)
            {
              break;
            }

            v102 = v326;
            memcpy(v326, v333, sizeof(v326));
            AugmentedIntervalTree.delete(interval:)(v326);
            outlined destroy of Interval<UInt32, Pregnancy>(v102);
          }

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v331[5] = v117;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
          v45 = v103;
          v99 = v44;
          v46 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v289, 0, v118, v44, MEMORY[0x277D84A98], v119, MEMORY[0x277D84AC0], v229);
          v100 = v45;
          v101 = v46;
          if (v45)
          {
            __break(1u);
LABEL_41:
            __break(1u);
            __break(1u);
LABEL_42:
            v61 = v83;
            v59 = v82;
            v60 = v80;

            outlined destroy of [(start: UInt32, end: UInt32)]();

            __swift_destroy_boxed_opaque_existential_1(__dst);
            outlined destroy of [(start: UInt32, end: UInt32)]();

            v65 = v61;
            return v229;
          }

          v332 = v101;
          v94 = v331;
          outlined init with copy of HealthDataQuery(__dst, v331);
          Array.append(_:)();
          v95 = v332;

          v330 = v95;
          v47 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
          v48 = v100;
          v96 = v47;
          v49 = _ArrayProtocol.filter(_:)();
          v97 = v48;
          v98 = v49;
          if (v48)
          {
            goto LABEL_41;
          }

          v91 = v98;
          v329 = v98;
          v328 = v95;
          v50 = _ArrayProtocol.filter(_:)();
          v92 = 0;
          v93 = v50;
          v88 = v50;
          v327 = v50;
          v89 = MEMORY[0x25F8895B0](v91, v99);
          v90 = 0;

          v87 = v90 < v89 && MEMORY[0x25F8895B0](v88, v99) > 0;
          v86 = v87;

          v85 = v86 || MEMORY[0x25F8895B0](v91, v99) == 0;
          v84 = v85;

          if (v84)
          {
            v51 = v92;
            merge(pregnancies:tree:)(v88, v283);
            v79 = v51;
            v80 = v117;
            v81 = v88;
            v82 = v91;
            v83 = v51;
            if (v51)
            {
              goto LABEL_42;
            }

            v78 = 0;
          }

          else
          {
            v52 = v92;
            merge(pregnancies:tree:)(v91, v283);
            v73 = v52;
            v74 = v117;
            v75 = v88;
            v76 = v91;
            v77 = v52;
            if (v52)
            {
              v58 = v77;
              v57[1] = v76;
              v57[2] = v74;

              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(__dst);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              v65 = v58;
              return v229;
            }

            v78 = 0;
          }

          v72 = v78;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v105 = v72;
        }

        v71 = v105;

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v130 = v71;
      }

      else
      {
        static PFLLogging.plugin.getter();
        v249 = __dst;
        v247 = v322;
        outlined init with copy of HealthDataQuery(__dst, v322);
        v250 = 56;
        v259 = 7;
        v252 = swift_allocObject();
        outlined init with take of HealthDataQuery(v247, (v252 + 16));
        v248 = v321;
        outlined init with copy of HealthDataQuery(v249, v321);
        v254 = swift_allocObject();
        outlined init with take of HealthDataQuery(v248, (v254 + 16));
        v251 = v320;
        outlined init with copy of HealthDataQuery(v249, v320);
        v260 = swift_allocObject();
        outlined init with take of HealthDataQuery(v251, (v260 + 16));
        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.debug.getter();
        v256 = 17;
        v262 = swift_allocObject();
        *(v262 + 16) = 32;
        v263 = swift_allocObject();
        *(v263 + 16) = 8;
        v258 = 32;
        v5 = swift_allocObject();
        v6 = v252;
        v253 = v5;
        *(v5 + 16) = v292;
        *(v5 + 24) = v6;
        v7 = swift_allocObject();
        v8 = v253;
        v264 = v7;
        *(v7 + 16) = v293;
        *(v7 + 24) = v8;
        v265 = swift_allocObject();
        *(v265 + 16) = 0;
        v266 = swift_allocObject();
        v257 = 4;
        *(v266 + 16) = 4;
        v9 = swift_allocObject();
        v10 = v254;
        v255 = v9;
        *(v9 + 16) = v294;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v255;
        v267 = v11;
        *(v11 + 16) = v295;
        *(v11 + 24) = v12;
        v268 = swift_allocObject();
        *(v268 + 16) = 0;
        v269 = swift_allocObject();
        *(v269 + 16) = v257;
        v13 = swift_allocObject();
        v14 = v260;
        v261 = v13;
        *(v13 + 16) = v296;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v261;
        v271 = v15;
        *(v15 + 16) = v297;
        *(v15 + 24) = v16;
        v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v270 = _allocateUninitializedArray<A>(_:)();
        v272 = v17;

        v18 = v262;
        v19 = v272;
        *v272 = v298;
        v19[1] = v18;

        v20 = v263;
        v21 = v272;
        v272[2] = v299;
        v21[3] = v20;

        v22 = v264;
        v23 = v272;
        v272[4] = v300;
        v23[5] = v22;

        v24 = v265;
        v25 = v272;
        v272[6] = v301;
        v25[7] = v24;

        v26 = v266;
        v27 = v272;
        v272[8] = v302;
        v27[9] = v26;

        v28 = v267;
        v29 = v272;
        v272[10] = v303;
        v29[11] = v28;

        v30 = v268;
        v31 = v272;
        v272[12] = v304;
        v31[13] = v30;

        v32 = v269;
        v33 = v272;
        v272[14] = v305;
        v33[15] = v32;

        v34 = v271;
        v35 = v272;
        v272[16] = v306;
        v35[17] = v34;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v274, v275))
        {
          v231 = static UnsafeMutablePointer.allocate(capacity:)();
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v232 = createStorage<A>(capacity:type:)(0, v230, v230);
          v233 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v234 = &v319;
          v319 = v231;
          v235 = &v318;
          v318 = v232;
          v236 = &v317;
          v317 = v233;
          serialize(_:at:)(2, &v319);
          serialize(_:at:)(3, v234);
          v36 = v282;
          v315 = v298;
          v316 = v262;
          closure #1 in osLogInternal(_:log:type:)(&v315, v234, v235, v236);
          v237 = v36;
          v238 = v262;
          v239 = v263;
          v240 = v264;
          v241 = v265;
          v242 = v266;
          v243 = v267;
          v244 = v268;
          v245 = v269;
          v246 = v271;
          if (v36)
          {
            v219 = v238;
            v220 = v239;
            v221 = v240;
            v222 = v241;
            v223 = v242;
            v224 = v243;
            v225 = v244;
            v226 = v245;
            v227 = v246;
            v138 = v246;
            v137 = v245;
            v136 = v244;
            v135 = v243;
            v134 = v242;
            v133 = v241;
            v132 = v240;
            v131 = v239;

            __break(1u);
          }

          else
          {
            v315 = v299;
            v316 = v263;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v209 = 0;
            v210 = v262;
            v211 = v263;
            v212 = v264;
            v213 = v265;
            v214 = v266;
            v215 = v267;
            v216 = v268;
            v217 = v269;
            v218 = v271;
            v315 = v300;
            v316 = v264;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v199 = 0;
            v200 = v262;
            v201 = v263;
            v202 = v264;
            v203 = v265;
            v204 = v266;
            v205 = v267;
            v206 = v268;
            v207 = v269;
            v208 = v271;
            v315 = v301;
            v316 = v265;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v189 = 0;
            v190 = v262;
            v191 = v263;
            v192 = v264;
            v193 = v265;
            v194 = v266;
            v195 = v267;
            v196 = v268;
            v197 = v269;
            v198 = v271;
            v315 = v302;
            v316 = v266;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v179 = 0;
            v180 = v262;
            v181 = v263;
            v182 = v264;
            v183 = v265;
            v184 = v266;
            v185 = v267;
            v186 = v268;
            v187 = v269;
            v188 = v271;
            v315 = v303;
            v316 = v267;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v169 = 0;
            v170 = v262;
            v171 = v263;
            v172 = v264;
            v173 = v265;
            v174 = v266;
            v175 = v267;
            v176 = v268;
            v177 = v269;
            v178 = v271;
            v315 = v304;
            v316 = v268;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v159 = 0;
            v160 = v262;
            v161 = v263;
            v162 = v264;
            v163 = v265;
            v164 = v266;
            v165 = v267;
            v166 = v268;
            v167 = v269;
            v168 = v271;
            v315 = v305;
            v316 = v269;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v149 = 0;
            v150 = v262;
            v151 = v263;
            v152 = v264;
            v153 = v265;
            v154 = v266;
            v155 = v267;
            v156 = v268;
            v157 = v269;
            v158 = v271;
            v315 = v306;
            v316 = v271;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v139 = 0;
            v140 = v262;
            v141 = v263;
            v142 = v264;
            v143 = v265;
            v144 = v266;
            v145 = v267;
            v146 = v268;
            v147 = v269;
            v148 = v271;
            _os_log_impl(&dword_25C4D8000, v274, v275, "Pregancy %s has start day after end day, skipping (startDay: %u, endDay: %u)", v231, 0x18u);
            destroyStorage<A>(_:count:)(v232, 0, v230);
            destroyStorage<A>(_:count:)(v233, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v231, MEMORY[0x277D84B78]);

            v228 = v139;
          }
        }

        else
        {

          v228 = v282;
        }

        v129 = v228;
        MEMORY[0x277D82BD8](v274);
        (*(v311 + 8))(v314, v310);
        __swift_destroy_boxed_opaque_existential_1(__dst);
        v130 = v129;
      }
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v340 = AugmentedIntervalTree.allIntervals()();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd, &_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMR);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
    v53 = lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
    v54 = v282;
    v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v307, 0, v67, v68, MEMORY[0x277D84A98], v53, MEMORY[0x277D84AC0], v229);
    v69 = v54;
    v70 = v55;
    if (!v54)
    {
      v66 = v70;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v286 = v66;
      v287 = v69;
      return v286;
    }

    __break(1u);
    return v229;
  }

  else
  {
    v3 = v288;

    v286 = v309;
    v287 = v3;
    return v286;
  }
}

BOOL static PregnancyInvalidReason.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v37 = a2;
  v61 = a3;
  v51 = a4;
  v38 = a5;
  v60 = a6;
  v40 = a8;
  v41 = "Fatal error";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v45 = "invalid Collection: count differed in successive traversals";
  v46 = "Swift/ArrayShared.swift";
  v74 = a3;
  v73 = a4;
  v72 = a5;
  v47 = *(a5 - 8);
  v48 = a5 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v17 - v49;
  v52 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v52, v60);
  v57 = &v17 - v56;
  v58 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v10);
  v59 = &v17 - v58;
  v62 = swift_getAssociatedTypeWitness();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v61, v60);
  v66 = &v17 - v65;
  v67 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v17 - v67;
  v69 = dispatch thunk of Collection.count.getter();
  if (!v69)
  {
    goto LABEL_24;
  }

  v71 = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v69);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v69 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v41, 11, 2, v42, 39, 2, v43, 17, 2, 760, 0);
    __break(1u);
LABEL_24:
    v19 = static Array._allocateUninitialized(_:)();
    v20 = v39;
    return v19;
  }

  if (!v69)
  {
LABEL_19:
    v25 = v39;
LABEL_20:
    v21 = v25;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v63 + 8);
    v23 = v63 + 8;
    v22(v66, v62);
    if ((v24 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v22(v68, v62);
    v18 = v71;

    v19 = v18;
    v20 = v21;
    return v19;
  }

  v33 = 0;
  for (i = v39; ; i = v29)
  {
    v31 = i;
    v32 = v33;
    if (v33 < 0 || v32 >= v69)
    {
      goto LABEL_18;
    }

    if (v69 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)(v41, 11, 2, v42, 39, 2, v43, 17, 2, 760, 0);
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v30 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    v28 = &v70;
    v27 = dispatch thunk of Collection.subscript.read();
    (*(v54 + 16))(v57);
    v27();
    v16 = v31;
    v36(v57, v50);
    v29 = v16;
    if (v16)
    {
      (*(v54 + 8))(v57, AssociatedTypeWitness);
      (*(v63 + 8))(v68, v62);
      outlined destroy of ContiguousArray<A1>();
      (*(v47 + 32))(v40, v50, v38);
      return v26;
    }

    (*(v54 + 8))(v57, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v30 == v69)
    {
      v25 = v29;
      goto LABEL_20;
    }

    result = v29;
    v33 = v30;
  }

  __break(1u);
  return result;
}