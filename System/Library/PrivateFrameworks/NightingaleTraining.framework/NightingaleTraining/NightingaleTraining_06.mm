uint64_t PregnancyFromFactor.init(factorStartDate:factorEndDate:startSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v54 = a1;
  v67 = a2;
  v66 = a3;
  v87 = 0;
  memset(__b, 0, 0x2AuLL);
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v79 = 0;
  v76 = 0;
  v74 = 0;
  v60 = 0;
  v55 = type metadata accessor for Date();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5);
  v59 = &v22 - v58;
  v61 = type metadata accessor for Calendar();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v6);
  v65 = &v22 - v64;
  v68 = type metadata accessor for DateComponents();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68, v67);
  v72 = &v22 - v71;
  v87 = &v22 - v71;
  v85 = a1;
  v84 = v7;
  v83 = v8;
  *&v9 = Date.toJulianDay()();
  v82 = v9;
  v73 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_16;
  }

  v52 = v73;
  LODWORD(v51) = v73;
  v81 = v73;
  *&v10 = Date.toJulianDay()();
  v80 = v10;
  HIDWORD(v51) = v10;
  if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_16;
  }

  v50 = HIDWORD(v51);
  v44 = HIDWORD(v51);
  v79 = HIDWORD(v51);
  __b[0] = v51;
  __b[2] = v66;
  LODWORD(__b[3]) = v51;
  __b[4] = 0;
  LOWORD(__b[5]) = 0;
  static Calendar.current.getter();
  v46 = type metadata accessor for Calendar.Component();
  v45 = _allocateUninitializedArray<A>(_:)();
  (*(*(v46 - 8) + 104))(v11, *MEMORY[0x277CC9988]);
  _finalizeUninitializedArray<A>(_:)();
  v47 = v12;
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v48 = Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:)();

  (*(v62 + 8))(v65, v61);
  v49 = DateComponents.year.getter();
  if ((v13 & 1) != 0 || (v43 = v49, v76 = v43, v43 <= 3000))
  {
    LOBYTE(__b[1]) = 0;
    HIDWORD(__b[3]) = v44;
    goto LABEL_15;
  }

  Date.init()();
  *&v14 = Date.toJulianDay()();
  v75 = v14;
  v41 = v14;
  v42 = BYTE4(v14);
  (*(v56 + 8))(v59, v55);
  if (v42)
  {
    (*(v69 + 8))(v72, v68);
LABEL_16:
    v23 = *(v56 + 8);
    v22 = v56 + 8;
    v23(v67, v55);
    result = (v23)(v54, v55);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 2;
    goto LABEL_17;
  }

  v40 = v41;
  v74 = v41;
  LOBYTE(__b[1]) = 1;
  HIDWORD(__b[3]) = v41;
LABEL_15:
  (*(v69 + 8))(v72, v68);
  v24 = __dst;
  v25 = 42;
  memcpy(__dst, __b, 0x2AuLL);
  memcpy(v78, __dst, 0x2AuLL);
  v28 = v78[0];
  v29 = v78[1];
  v30 = v78[2];
  v31 = v78[3];
  v32 = v78[4];
  v33 = LOWORD(v78[5]);
  v27 = *(v56 + 8);
  v26 = v56 + 8;
  v27(v67, v55);
  result = (v27)(v54, v55);
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = v33;
LABEL_17:
  v16 = v53;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v21 = v39;
  *v53 = v34;
  v16[1] = v17;
  v16[2] = v18;
  v16[3] = v19;
  v16[4] = v20;
  *(v16 + 20) = v21;
  return result;
}

uint64_t PregnancyFromTest.init(testDate:)(uint64_t a1)
{
  v10[9] = 0;
  *&v1 = Date.toJulianDay()();
  if ((v1 & 0x100000000) != 0)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 8))(a1);
    *&v5 = 0;
  }

  else
  {
    LODWORD(v9) = v1;
    v10[8] = 2;
    HIDWORD(v9) = v1;
    *v10 = 0;
    *v7 = v9;
    *&v7[10] = *&v10[2];
    *v8 = *v7;
    *&v8[10] = *&v10[2];
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(a1);
    return *v8;
  }

  return v5;
}

uint64_t PregnancySource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyFactorWithEnd", 0x18uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyFactorWithoutEnd", 0x1BuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyTestPositive", 0x17uLL, 1)._countAndFlagsBits;
  }
}

Swift::Bool __swiftcall PregnancySource.isFactorType()()
{
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  if (== infix<A>(_:_:)())
  {
    v1 = 1;
  }

  else
  {
    v1 = == infix<A>(_:_:)();
  }

  return v1 & 1;
}

uint64_t SliceDeltaAnchor.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OvuEst", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMP", 3uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::PregnancySource_optional __swiftcall PregnancySource.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "HKPregnancyFactorWithEnd";
  *(v1 + 8) = 24;
  *(v1 + 16) = 2;
  *(v1 + 24) = "HKPregnancyFactorWithoutEnd";
  *(v1 + 32) = 27;
  *(v1 + 40) = 2;
  *(v1 + 48) = "HKPregnancyTestPositive";
  *(v1 + 56) = 23;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = NightingaleTraining_PregnancySource_pregnancyFactorWithEnd;
LABEL_8:

      return v5;
    case 1:
      v5.value = NightingaleTraining_PregnancySource_pregnancyFactorWithoutEnd;
      goto LABEL_8;
    case 2:
      v5.value = NightingaleTraining_PregnancySource_pregnancyTestPositive;
      goto LABEL_8;
  }

  return 3;
}

NightingaleTraining::PregnancySource_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PregnancySource@<W0>(Swift::String *a1@<X0>, NightingaleTraining::PregnancySource_optional *a2@<X8>)
{
  result.value = PregnancySource.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PregnancySource@<X0>(uint64_t *a1@<X8>)
{
  result = PregnancySource.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

NightingaleTraining::SliceDeltaAnchor_optional __swiftcall SliceDeltaAnchor.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "LMP";
  *(v1 + 8) = 3;
  *(v1 + 16) = 2;
  *(v1 + 24) = "OvuEst";
  *(v1 + 32) = 6;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_SliceDeltaAnchor_lmp;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_SliceDeltaAnchor_ovuEst;
    goto LABEL_6;
  }

  return 2;
}

NightingaleTraining::OverlapPregnanciesStrategy_optional __swiftcall OverlapPregnanciesStrategy.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "NoOp";
  *(v1 + 8) = 4;
  *(v1 + 16) = 2;
  *(v1 + 24) = "Merge";
  *(v1 + 32) = 5;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_OverlapPregnanciesStrategy_noOp;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_OverlapPregnanciesStrategy_merge;
    goto LABEL_6;
  }

  return 2;
}

uint64_t OverlapPregnanciesStrategy.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Merge", 5uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoOp", 4uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::SliceDeltaAnchor_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SliceDeltaAnchor@<W0>(Swift::String *a1@<X0>, NightingaleTraining::SliceDeltaAnchor_optional *a2@<X8>)
{
  result.value = SliceDeltaAnchor.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SliceDeltaAnchor@<X0>(uint64_t *a1@<X8>)
{
  result = SliceDeltaAnchor.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

NightingaleTraining::OverlapPregnanciesStrategy_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OverlapPregnanciesStrategy@<W0>(Swift::String *a1@<X0>, NightingaleTraining::OverlapPregnanciesStrategy_optional *a2@<X8>)
{
  result.value = OverlapPregnanciesStrategy.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OverlapPregnanciesStrategy@<X0>(uint64_t *a1@<X8>)
{
  result = OverlapPregnanciesStrategy.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int __swiftcall Pregnancy.duration()()
{
  v5 = v0;
  v4 = v1;
  v6 = (*(v1 + 16))();
  result = (*(v4 + 8))(v5);
  if (!__OFSUB__(v6, result))
  {
    return v6 - result;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows)
{
  v14 = v3;
  v15 = v4;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  *(&v17 + 2) = 0;
  v28 = v3;
  v27 = excludePregnanciesContainingFlow;
  v26 = maxLMPTolerableFlowDelta;
  rawValue = flows._rawValue;
  if (excludePregnanciesContainingFlow)
  {
    v5 = (*(v4 + 40))();
    v10 = maxLMPTolerableFlowDelta + v5;
    if (__CFADD__(maxLMPTolerableFlowDelta, v5))
    {
      __break(1u);
    }

    else if (v10 != -1)
    {
      v9 = (*(v15 + 16))(v14);
      if (v9 < v10 + 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
        __break(1u);
      }

      v20 = v10 + 1;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd, &_sSnys6UInt32VGMR);
      lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
      Collection<>.makeIterator()();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd, &_ss16IndexingIteratorVySnys6UInt32VGGMR);
        IndexingIterator.next()();
        if (v19)
        {
          break;
        }

        *(&v17 + 2) = v18;
        v16 = v18;
        MEMORY[0x25F8891D0](&v17, &v16, flows._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
        if ((v17 & 0x100) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v17;
        }

        if (v8)
        {
          v11 = 1;
          goto LABEL_18;
        }
      }

      v11 = 0;
      goto LABEL_18;
    }

    __break(1u);
    return v5;
  }

  v11 = 0;
LABEL_18:
  LOBYTE(v5) = v11;
  return v5;
}

NightingaleTraining::PregnancyInvalidReason __swiftcall Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta)
{
  v14 = v4;
  v15 = v5;
  v17 = (*(v5 + 104))();
  if (v17 < minDuration || maxDuration < v17)
  {
    return 1;
  }

  v8 = (*(v15 + 96))(v14);
  if (v8 < minLMPDelta || maxLMPDelta < v8)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #1 in mergePregnancies(pregnancies:strategy:)(uint64_t a1)
{
  outlined init with copy of HealthDataQuery(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v2 + 8))(v3);
}

uint64_t implicit closure #3 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v2 + 16))(v3);
}

void *closure #1 in mergePregnancies(pregnancies:strategy:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[5] = a1;
  outlined init with copy of Pregnancy?((a1 + 8), v4);
  if (!v4[3])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Pregnancy.swift", 35, 2, 123, 0);
    __break(1u);
  }

  return outlined init with take of HealthDataQuery(v4, a2);
}

uint64_t closure #2 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v2 + 48))(v3);
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  return == infix<A>(_:_:)() & 1;
}

uint64_t closure #3 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v2 + 48))(v3);
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  return (dispatch thunk of static Equatable.== infix(_:_:)() ^ 1) & 1;
}

uint64_t merge(pregnancies:tree:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = a1;
  v31 = 0;
  v52 = a1;
  v51 = a2;
  v45 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
  v30 = v32;
  v34 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  Sequence.min(by:)();
  v35 = v33;
  if (v33)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    if (!v47)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Pregnancy.swift", 35, 2, 141, 0);
      __break(1u);
    }

    v26 = v35;
    outlined init with take of HealthDataQuery(v46, &__dst);
    v39 = v29;
    Sequence.max(by:)();
    v27 = v35;
    if (!v41)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Pregnancy.swift", 35, 2, 142, 0);
      __break(1u);
    }

    v23 = v27;
    v6[2] = &v42;
    outlined init with take of HealthDataQuery(v40, &v42);
    v8 = v43;
    v7 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v11 = (*(v7 + 16))(v8);
    v9 = v49;
    v10 = v50;
    p_dst = &__dst;
    __swift_mutable_project_boxed_opaque_existential_1(&__dst, v49);
    (*(v10 + 24))(v11, v9);
    v16 = v49;
    v14 = v50;
    v2 = __swift_project_boxed_opaque_existential_1(&__dst, v49);
    v12 = *(v16 - 8);
    v15 = v12;
    v13 = v6;
    MEMORY[0x28223BE20](v6, v2);
    v17 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = (*(v14 + 8))(v16);
    (*(v15 + 8))(v17, v16);
    v38 = v18;
    v20 = v49;
    v19 = v50;
    __swift_project_boxed_opaque_existential_1(p_dst, v49);
    v37 = (*(v19 + 16))(v20);
    v22 = &v36;
    outlined init with copy of HealthDataQuery(p_dst, &v36);
    v4 = v23;
    AugmentedIntervalTree.insert(start:end:context:)(&v38, &v37, v22);
    v24 = v4;
    v25 = v4;
    if (!v4)
    {
      v6[1] = 0;
      outlined destroy of Pregnancy?(&v36);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      return __swift_destroy_boxed_opaque_existential_1(&__dst);
    }
  }

  v6[0] = v25;
  outlined destroy of Pregnancy?(&v36);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  return __swift_destroy_boxed_opaque_existential_1(&__dst);
}

void *closure #4 in mergePregnancies(pregnancies:strategy:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[5] = a1;
  outlined init with copy of Pregnancy?((a1 + 8), v4);
  if (!v4[3])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Pregnancy.swift", 35, 2, 136, 0);
    __break(1u);
  }

  return outlined init with take of HealthDataQuery(v4, a2);
}

Swift::Int __swiftcall PregnancyFromTest.lmpDelta()()
{
  if (!__OFSUB__(result, HIDWORD(v1)))
  {
    return result - HIDWORD(v1);
  }

  __break(1u);
  return result;
}

NightingaleTraining::PregnancyInvalidReason __swiftcall PregnancyFromTest.ensureValid(minDuration:maxDuration:minLMPDelta:maxLMPDelta:excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:startSources:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta, Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows, Swift::OpaquePointer startSources)
{
  *v15 = v16;
  *&v15[16] = v17;
  *&v15[24] = v18;
  if (!(*&v15[10] >> 16))
  {
    return 4;
  }

  if (DWORD2(v16))
  {
    v10 = (*&v15[18] >> 16) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 5;
  }

  v9 = Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(minDuration, maxDuration, minLMPDelta, maxLMPDelta);
  if (!static PregnancyInvalidReason.== infix(_:_:)(v9, 0))
  {
    return v9;
  }

  if (Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(excludePregnanciesContainingFlow, maxLMPTolerableFlowDelta, flows))
  {
    return 3;
  }

  return 0;
}

Swift::Void __swiftcall PregnancyFromTest.update(historicalPeriods:useSeahorseInferredStartdate:useInferredLMP:)(Swift::OpaquePointer historicalPeriods, Swift::Bool useSeahorseInferredStartdate, Swift::Bool useInferredLMP)
{
  rawValue = historicalPeriods._rawValue;
  v33 = useSeahorseInferredStartdate;
  v32 = useInferredLMP;
  v40 = 0;
  v43 = closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v13 - v38;
  v60 = MEMORY[0x28223BE20](rawValue, v33);
  v59 = v4 & 1;
  v58 = v5 & 1;
  v57 = v3;
  v56 = v60;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v6 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v44 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v43, v40, v41, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v42);
  v29 = v44;
  v55 = v44;
  v7 = *v31 != 0;
  v30 = *v31 - 1;
  v8 = !v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v52 = v30;
    static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v29, &v52, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v53);
    v28 = v53;
    if (v54)
    {
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v27 = v28;
      v25 = v28;
      v26 = 0;
    }

    v24 = v25;
    if (v26)
    {
      if (!v32)
      {
        goto LABEL_11;
      }

      v9 = v31;
      v31[3] = *v31;
      *(v9 + 24) = 1;
    }

    else
    {
      v23 = v24;
      v45 = v24;
      v31[3] = v24;
    }

    v7 = __CFADD__(*v31, 1);
    v22 = *v31 + 1;
    v10 = v7;
    if ((v10 & 1) == 0)
    {
      v49 = v22;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v29, &v49, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v50);
      v21 = v50;
      if (v51)
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        v20 = v21;
        v18 = v21;
        v19 = 0;
      }

      v17 = v18;
      if ((v19 & 1) == 0)
      {
        v16 = v17;
        v46 = v17;
        v31[2] = v17;
LABEL_25:
        v12 = v31;
        v31[1] = v31[3];
        v12[5] = v12[3];

        return;
      }

      Date.init()();
      *&v11 = Date.toJulianDay()();
      v48 = v11;
      v14 = v11;
      v15 = BYTE4(v11);
      (*(v36 + 8))(v39, v35);
      if ((v15 & 1) == 0)
      {
        v13[2] = v14;
        v47 = v14;
        v31[2] = v14;
        goto LABEL_25;
      }

LABEL_11:

      return;
    }
  }

  __break(1u);
}

uint64_t protocol witness for Pregnancy.endDay.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.endDay.getter(*v0, *&v2[8]);
}

void (*protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 37496);
  *a1 = v2;
  v2[4] = PregnancyFromTest.endDay.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

void protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for Pregnancy.lmp.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.lmp.getter(*v0, *&v2[8]);
}

uint64_t protocol witness for Pregnancy.source.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.source.getter(*v0, *&v2[8], BYTE6(*(v0 + 10)));
}

uint64_t protocol witness for Pregnancy.sliceAnchorType.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.sliceAnchorType.getter(*v0, *&v3[8], v2, *&v3[24]) & 1;
}

uint64_t protocol witness for Pregnancy.sliceAnchor.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.sliceAnchor.getter(*v0, *&v3[8], v2);
}

uint64_t protocol witness for Pregnancy.inferredLMP.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.inferredLMP.getter(*v0, *&v3[8], v2, v3[24]) & 1;
}

void (*protocol witness for Pregnancy.inferredLMP.modify in conformance PregnancyFromTest(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 48009);
  *a1 = v2;
  v2[4] = PregnancyFromTest.inferredLMP.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

Swift::Void __swiftcall PregnancyFromFactor.update(historicalPeriods:useSeahorseInferredStartdate:useInferredLMP:)(Swift::OpaquePointer historicalPeriods, Swift::Bool useSeahorseInferredStartdate, Swift::Bool useInferredLMP)
{
  v17 = 0;
  rawValue = historicalPeriods._rawValue;
  v19 = useSeahorseInferredStartdate;
  v18 = useInferredLMP;
  v16 = historicalPeriods._rawValue;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
  v3 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v10, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v11);
  v12 = *(v9 + 24);
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v15, &v12, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v13);
  if (v14)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = v13;
    v6 = 0;
  }

  if (v6)
  {
    if (!useInferredLMP)
    {

      return;
    }

    *(v9 + 32) = *v9;
    *(v9 + 40) = 1;
  }

  else
  {
    *(v9 + 32) = v5;
  }

  if (useSeahorseInferredStartdate)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource(0);
    lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource();
    v4 = == infix<A>(_:_:)();
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(v9 + 24) = *(v9 + 32);
  }

  *(v9 + 36) = *(v9 + 32);
}

NightingaleTraining::PregnancyInvalidReason __swiftcall PregnancyFromFactor.ensureValid(minDuration:maxDuration:minLMPDelta:maxLMPDelta:excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:startSources:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta, Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows, Swift::OpaquePointer startSources)
{
  v21 = NightingaleTraining_PregnancyInvalidReason_valid;
  v31 = minDuration;
  v30 = maxDuration;
  v29 = minLMPDelta;
  v28 = maxLMPDelta;
  v27 = excludePregnanciesContainingFlow;
  v26 = maxLMPTolerableFlowDelta;
  rawValue = flows._rawValue;
  v24 = startSources._rawValue;
  v23 = v8;
  if (!*(v8 + 32))
  {
    return 4;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v10 = Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(minDuration, maxDuration, minLMPDelta, maxLMPDelta);
  v21 = v10;
  if (!static PregnancyInvalidReason.== infix(_:_:)(v10, 0))
  {
    return v10;
  }

  memcpy(v20, __src, sizeof(v20));
  if (Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(excludePregnanciesContainingFlow, maxLMPTolerableFlowDelta, flows))
  {
    return 3;
  }

  v32 = __src[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd, &_sSaySo34_HKPrivatePregnancyStartDateSourceVGMR);
  lazy protocol witness table accessor for type [_HKPrivatePregnancyStartDateSource] and conformance [A]();
  lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource();
  if (Sequence<>.contains(_:)())
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

Swift::Int __swiftcall PregnancyFromFactor.lmpDelta()()
{
  v1 = v0[8];
  if (!__OFSUB__(*v0, v1))
  {
    return *v0 - v1;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromFactor(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 41455);
  *a1 = v2;
  v2[4] = PregnancyFromFactor.endDay.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

void (*protocol witness for Pregnancy.inferredLMP.modify in conformance PregnancyFromFactor(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 14920);
  *a1 = v2;
  v2[4] = PregnancyFromFactor.inferredLMP.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

uint64_t outlined destroy of Interval<UInt32, Pregnancy>(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

  return a1;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 159, 0);
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 173, 0);
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v9 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4, v5);

  v10 = specialized Array.count.getter(v9, v6);

  result = v10;
  if (!__OFSUB__(v10, 1))
  {
    return v9;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Insufficient space allocated to copy string contents", 52, 2, "Swift/StringUTF8View.swift", 26, 2, 531, 0);
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "invalid Collection: less than 'count' elements in collection", 60, 2, "Swift/ContiguousArrayBuffer.swift", 33, 2, 1145, 0);
    __break(1u);
  }

  outlined destroy of DefaultStringInterpolation();
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, __n128 a2)
{
  v20 = specialized Array.count.getter(a1, a2);
  v4 = specialized Array.count.getter(*v2, v3);
  v21 = v4 + v20;
  if (__OFADD__(v4, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    *v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "newElements.underestimatedCount was an overestimate", 51, 2, "Swift/Array.swift", 17, 2, 1259, 0);
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Insufficient space allocated to copy array contents", 51, 2, "Swift/Array.swift", 17, 2, 1778, 0);
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (specialized Array._hoistableIsNativeTypeChecked()())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x25F8893A0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "String index is out of bounds", 29, 2, "Swift/StringUTF8View.swift", 26, 2, 167, 0);
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x28223BE20](0, a2);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22, &v17);
    v15 = v28;
    v16 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in serialize<A>(_:at:), &v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v5 = MEMORY[0x277D84CC0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type PregnancyInvalidReason and conformance PregnancyInvalidReason()
{
  v2 = lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason;
  if (!lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason;
  if (!lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy()
{
  v2 = lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy;
  if (!lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy;
  if (!lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [_HKPrivatePregnancyStartDateSource] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd, &_sSaySo34_HKPrivatePregnancyStartDateSourceVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd, &_sSaySo34_HKPrivatePregnancyStartDateSourceVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PregnancySource(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
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

_BYTE *storeEnumTagSinglePayload for PregnancySource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
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

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 10);
  *(a1 + 10) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyFromTest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 24) & 0xFE) != 0)
      {
        v3 = (*(a1 + 24) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyFromTest(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 26);
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyFromFactor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyFromFactor(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 42);
  if (a2 > 0xFE)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

id static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v489 = v10;
  v508 = v12;
  v507 = v13;
  v506 = v14;
  v505 = v15;
  v504 = v16;
  v503 = v17;
  v19 = v18;
  v490 = v18;
  v510 = v11;
  v509 = a10;
  v491 = a10;
  v512 = a9;
  v492 = a9;
  v493 = 0;
  v607 = 0;
  v606 = 0;
  v605 = 0;
  v604 = 0;
  v603 = 0;
  v602 = 0;
  v601 = 0;
  v600 = 0;
  v599 = 0;
  v598 = 0;
  v545 = 0;
  v540 = 0;
  v539 = 0;
  v538 = 0;
  v537 = 0;
  v536 = 0;
  v527 = 0;
  v525 = 0;
  v520 = 0;
  v518 = 0;
  v494 = type metadata accessor for Logger();
  v495 = *(v494 - 8);
  v496 = v495;
  v499 = *(v495 + 64);
  v20 = MEMORY[0x28223BE20](0, v494);
  v501 = (v499 + 15) & 0xFFFFFFFFFFFFFFF0;
  v497 = &v197[-v501];
  v21 = MEMORY[0x28223BE20](v20, &v197[-v501]);
  v498 = &v197[-v501];
  v22 = MEMORY[0x28223BE20](v21, &v197[-v501]);
  v500 = &v197[-v501];
  MEMORY[0x28223BE20](v22, &v197[-v501]);
  v502 = &v197[-v501];
  v511 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  v24 = MEMORY[0x28223BE20](v510, v23);
  v513 = &v197[-((v511 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v607 = v24;
  v606 = v19;
  v605 = v25;
  v604 = v26;
  v603 = v27;
  v602 = v28;
  v601 = v29;
  v600 = v30;
  v598 = v512;
  v599 = v31;
  v597 = HyperParams.metricsProcessEngine.getter() & 1;
  v596 = 1;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v482 = v489;
    goto LABEL_34;
  }

  HyperParams.morpheusMetricsProgramFileName.getter();
  v485 = v32;
  v33 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v488 = v34;
  v486 = v33;
  v487 = v34;

  if (!v488)
  {
    v482 = v489;
    goto LABEL_34;
  }

  v483 = v486;
  v484 = v487;
  v476 = v487;
  v475 = v486;
  v477 = v489;
  v539 = v486;
  v540 = v487;
  static String.Encoding.utf8.getter();
  v35 = v477;
  v36 = String.init(contentsOfFile:encoding:)();
  v478 = v35;
  v479 = v36;
  v480 = v37;
  v481 = v35;
  if (v35)
  {
    v237 = 0;
    v238 = 0;

    v472 = v237;
    v473 = v237;
    v474 = v238;
  }

  else
  {
    v472 = v479;
    v473 = v480;
    v474 = 0;
  }

  v469 = v474;
  v470 = v473;
  v471 = v472;
  if (!v473)
  {

    v482 = v469;
    goto LABEL_34;
  }

  v467 = v471;
  v468 = v470;
  v459 = v470;
  v460 = v471;
  v537 = v471;
  v538 = v470;
  static PFLLogging.plugin.getter();
  v465 = Logger.logObject.getter();
  v461 = v465;
  v464 = static os_log_type_t.debug.getter();
  v462 = v464;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v466 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v465, v464))
  {
    v457 = v469;
    v449 = static UnsafeMutablePointer.allocate(capacity:)();
    v445 = v449;
    v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v447 = 0;
    v450 = createStorage<A>(capacity:type:)(0, v446, v446);
    v448 = v450;
    v451 = createStorage<A>(capacity:type:)(v447, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v517[0] = v449;
    v516 = v450;
    v515 = v451;
    v452 = 0;
    v453 = v517;
    serialize(_:at:)(0, v517);
    serialize(_:at:)(v452, v453);
    v514 = v466;
    v454 = v197;
    MEMORY[0x28223BE20](v197, v39);
    v455 = &v197[-48];
    *&v197[-32] = v40;
    *&v197[-24] = &v516;
    *&v197[-16] = &v515;
    v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v41 = v457;
    Sequence.forEach(_:)();
    v458 = v41;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v461, v462, "Using Morpheus to generate metrics.", v445, 2u);
      v443 = 0;
      destroyStorage<A>(_:count:)(v448, 0, v446);
      destroyStorage<A>(_:count:)(v451, v443, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v445, MEMORY[0x277D84B78]);

      v444 = v458;
    }
  }

  else
  {

    v444 = v469;
  }

  v439 = v444;

  v437 = *(v496 + 8);
  v438 = (v496 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v437(v502, v494);
  type metadata accessor for MorpheusProgram();
  v42 = v439;
  v43 = static MorpheusProgram.fromDSL(_:)();
  v440 = v42;
  v441 = v43;
  v442 = v42;
  if (!v42)
  {
    v430 = v441;
    v434 = 0;
    v527 = v441;
    v526 = v505;
    v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
    v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v431 = v433;
    v44 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
    v45 = v434;
    v47 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v432, v433, MEMORY[0x277D84A98], v44, MEMORY[0x277D84AC0], v46);
    v435 = v45;
    v436 = v47;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      v422 = v436;
      v427 = 0;
      v525 = v436;
      v48 = _allocateUninitializedArray<A>(_:)();
      v423 = v49;
      v419 = v48;
      v420 = v49;

      v425 = 0;
      v50 = type metadata accessor for HyperParams();
      v51 = v490;
      v52 = v423;
      v423[3] = v50;
      *v52 = v51;

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      v54 = v503;
      v55 = v423;
      v421 = v53;
      v423[7] = v53;
      v55[4] = v54;

      v56 = v504;
      v57 = v423;
      v423[11] = v421;
      v57[8] = v56;

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySiGGMd, &_sSaySaySiGGMR);
      v59 = v422;
      v60 = v423;
      v61 = v506;
      v423[15] = v58;
      v60[12] = v59;
      v424 = v60 + 16;
      v523[4] = v61;
      v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
      v62 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
      v63 = v427;
      v65 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:), v425, v426, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v64);
      v428 = v63;
      v429 = v65;
      if (!v63)
      {
        v66 = v424;
        v67 = v429;
        v413 = 0;
        v424[3] = v431;
        *v66 = v67;

        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
        v69 = v507;
        v70 = v508;
        v71 = v420;
        v420[23] = v68;
        v71[20] = v69;
        v71[27] = MEMORY[0x277D83B88];
        v71[24] = v70;
        v411 = MEMORY[0x277D84F70] + 8;
        _finalizeUninitializedArray<A>(_:)();
        v414 = v72;
        v409 = v72;
        v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
        _allocateUninitializedArray<A>(_:)();
        v415 = Dictionary.init(dictionaryLiteral:)();
        v412 = v415;
        v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("generate_metrics", 0x10uLL, 1);
        v74 = v413;
        object = v73._object;
        dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
        v417 = v74;
        v418 = v74;
        if (!v74)
        {

          v522[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v522[0] = swift_allocObject();
          outlined init with copy of Any?(v524, v522[0] + 16);
          v407 = v523;
          v406 = v522;
          static MorpheusUtils.unwrapMorpheusResult(result:)();
          __swift_destroy_boxed_opaque_existential_1(v406);
          v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
          if (swift_dynamicCast())
          {
            v405 = v521;
          }

          else
          {
            v405 = 0;
          }

          v404 = v405;
          if (v405)
          {
            v403 = v404;
            v396 = v404;
            v400 = v417;
            v520 = v404;

            v394 = 1;
            v395 = _allocateUninitializedArray<A>(_:)();
            v393 = v75;
            v76 = NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();
            outlined init with copy of String(v76, v393);
            v77 = v393;
            v78 = v394;
            v393[5] = MEMORY[0x277D83B88];
            v77[2] = v78;
            _finalizeUninitializedArray<A>(_:)();
            v398 = MEMORY[0x277D84F70] + 8;
            v397 = MEMORY[0x277D837D0];
            v399 = MEMORY[0x277D837E0];
            Dictionary.init(dictionaryLiteral:)();
            v79 = v400;
            v80 = Dictionary.merging(_:uniquingKeysWith:)();
            v401 = v79;
            v402 = v80;
            if (v79)
            {
              __break(1u);
            }

            else
            {
              v390 = 0;
              v519 = v402;

              v386 = v197;
              v387 = 32;
              MEMORY[0x28223BE20](v197, v81);
              v82 = v491;
              *&v197[-16] = v83;
              *&v197[-8] = v82;
              v388 = v197;
              MEMORY[0x28223BE20](v197, v84);
              v389 = &v197[-32];
              *&v197[-16] = partial apply for closure #5 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:);
              *&v197[-8] = v85;
              v86 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();
              v87 = v390;
              v89 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any), v389, v408, v410, MEMORY[0x277D84A98], v86, MEMORY[0x277D84AC0], v88);
              v391 = v87;
              v392 = v89;
              if (!v87)
              {
                v382 = v392;

                outlined destroy of [(start: UInt32, end: UInt32)]();
                v518 = v382;

                v517[1] = v382;
                v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_yptGMd, &_sSaySS_yptGMR);
                lazy protocol witness table accessor for type [(String, Any)] and conformance [A]();
                v383 = Dictionary.init<A>(uniqueKeysWithValues:)();

                outlined destroy of Pregnancy?(v524);

                v384 = v383;
                v385 = v391;
                return v384;
              }
            }

            __break(1u);
            goto LABEL_57;
          }

          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v376 = 0;
          v377 = swift_allocError();
          *v90 = 72;
          swift_willThrow();
          v378 = v376;
          outlined destroy of Pregnancy?(v524);

          v379 = v377;
          v380 = v378;
          goto LABEL_44;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:
    v198 = v418;
    v199 = 0;

    v379 = v198;
    v380 = v199;
    goto LABEL_44;
  }

  v379 = v442;
  v380 = 0;
LABEL_44:
  v179 = v497;
  v218 = v380;
  v350 = v379;
  v180 = v379;
  v536 = v350;
  v181 = Logging.default.unsafeMutableAddressor();
  v370 = *(v496 + 16);
  v369 = (v496 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v370(v179, v181, v494);
  v182 = v350;
  v226 = 7;
  v224 = swift_allocObject();
  *(v224 + 16) = v350;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v236 = Logger.logObject.getter();
  v219 = v236;
  v235 = static os_log_type_t.error.getter();
  v220 = v235;
  v221 = 17;
  v230 = swift_allocObject();
  v222 = v230;
  *(v230 + 16) = 64;
  v231 = swift_allocObject();
  v223 = v231;
  *(v231 + 16) = 8;
  v225 = 32;
  v183 = swift_allocObject();
  v184 = v224;
  v227 = v183;
  *(v183 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
  *(v183 + 24) = v184;
  v185 = swift_allocObject();
  v186 = v227;
  v228 = v185;
  *(v185 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v185 + 24) = v186;
  v187 = swift_allocObject();
  v188 = v228;
  v234 = v187;
  v229 = v187;
  *(v187 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v187 + 24) = v188;
  v232 = _allocateUninitializedArray<A>(_:)();
  v233 = v189;

  v190 = v230;
  v191 = v233;
  *v233 = partial apply for closure #1 in OSLogArguments.append(_:);
  v191[1] = v190;

  v192 = v231;
  v193 = v233;
  v233[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v193[3] = v192;

  v194 = v233;
  v195 = v234;
  v233[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v194[5] = v195;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v236, v235))
  {
    v215 = v218;
    v210 = static UnsafeMutablePointer.allocate(capacity:)();
    v207 = v210;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v213 = 1;
    v211 = createStorage<A>(capacity:type:)(1, v208, v208);
    v209 = v211;
    v212 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v532[0] = v210;
    v531 = v211;
    v530 = v212;
    v214 = v532;
    serialize(_:at:)(2, v532);
    serialize(_:at:)(v213, v214);
    v196 = v215;
    v528 = partial apply for closure #1 in OSLogArguments.append(_:);
    v529 = v222;
    closure #1 in osLogInternal(_:log:type:)(&v528, v214, &v531, &v530);
    v216 = v196;
    v217 = v196;
    if (v196)
    {
      v205 = 0;

      __break(1u);
    }

    else
    {
      v528 = partial apply for closure #1 in OSLogArguments.append(_:);
      v529 = v223;
      closure #1 in osLogInternal(_:log:type:)(&v528, v532, &v531, &v530);
      v203 = 0;
      v204 = 0;
      v528 = partial apply for closure #1 in OSLogArguments.append(_:);
      v529 = v229;
      closure #1 in osLogInternal(_:log:type:)(&v528, v532, &v531, &v530);
      v201 = 0;
      v202 = 0;
      _os_log_impl(&dword_25C4D8000, v219, v220, "Error executing Morpheus program for metrics: %@.", v207, 0xCu);
      destroyStorage<A>(_:count:)(v209, 1, v208);
      destroyStorage<A>(_:count:)(v212, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v207, MEMORY[0x277D84B78]);

      v206 = v201;
    }
  }

  else
  {

    v206 = v218;
  }

  v354 = v206;

  v437(v497, v494);
  if ((HyperParams.metricsProcessFallbackToNative.getter() & 1) == 0)
  {
    swift_willThrow();

    result = v350;
    v200 = v350;
    return result;
  }

  v91 = v500;
  v92 = Logging.default.unsafeMutableAddressor();
  v370(v91, v92, v494);
  v374 = Logger.logObject.getter();
  v371 = v374;
  v373 = static os_log_type_t.info.getter();
  v372 = v373;
  v375 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v374, v373))
  {
    v367 = v354;
    v359 = static UnsafeMutablePointer.allocate(capacity:)();
    v355 = v359;
    v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v357 = 0;
    v360 = createStorage<A>(capacity:type:)(0, v356, v356);
    v358 = v360;
    v361 = createStorage<A>(capacity:type:)(v357, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v535 = v359;
    v534 = v360;
    v533 = v361;
    v362 = 0;
    v363 = &v535;
    serialize(_:at:)(0, &v535);
    serialize(_:at:)(v362, v363);
    v532[1] = v375;
    v364 = v197;
    MEMORY[0x28223BE20](v197, v93);
    v365 = &v197[-48];
    *&v197[-32] = v94;
    *&v197[-24] = &v534;
    *&v197[-16] = &v533;
    v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v95 = v367;
    Sequence.forEach(_:)();
    v368 = v95;
    if (v95)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v371, v372, "Fallback to generate metrics from native.", v355, 2u);
      v352 = 0;
      destroyStorage<A>(_:count:)(v358, 0, v356);
      destroyStorage<A>(_:count:)(v361, v352, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v355, MEMORY[0x277D84B78]);

      v353 = v368;
    }
  }

  else
  {

    v353 = v354;
  }

  v351 = v353;

  v437(v500, v494);

  v482 = v351;
LABEL_34:
  v344 = v482;
  static PFLLogging.plugin.getter();
  v348 = Logger.logObject.getter();
  v345 = v348;
  v347 = static os_log_type_t.debug.getter();
  v346 = v347;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v349 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v348, v347))
  {
    v342 = v344;
    v334 = static UnsafeMutablePointer.allocate(capacity:)();
    v330 = v334;
    v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v332 = 0;
    v335 = createStorage<A>(capacity:type:)(0, v331, v331);
    v333 = v335;
    v336 = createStorage<A>(capacity:type:)(v332, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v544[0] = v334;
    v543 = v335;
    v542 = v336;
    v337 = 0;
    v338 = v544;
    serialize(_:at:)(0, v544);
    serialize(_:at:)(v337, v338);
    v541 = v349;
    v339 = v197;
    MEMORY[0x28223BE20](v197, v96);
    v340 = &v197[-48];
    *&v197[-32] = v97;
    *&v197[-24] = &v543;
    *&v197[-16] = &v542;
    v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v98 = v342;
    Sequence.forEach(_:)();
    v343 = v98;
    if (v98)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v345, v346, "Using native to generate metrics.", v330, 2u);
      v328 = 0;
      destroyStorage<A>(_:count:)(v333, 0, v331);
      destroyStorage<A>(_:count:)(v336, v328, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v330, MEMORY[0x277D84B78]);

      v329 = v343;
    }
  }

  else
  {

    v329 = v344;
  }

  v317 = v329;

  (*(v496 + 8))(v498, v494);
  v99 = v317;
  static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(v490, v503, v504, v505, v506, v507, v508, v595);
  v318 = v99;
  v319 = v595[0];
  v320 = v595[1];
  v321 = v595[2];
  v322 = v595[3];
  v323 = v595[4];
  v324 = v595[5];
  v325 = v595[6];
  v326 = v595[7];
  v327 = v99;
  if (v99)
  {
LABEL_57:
    result = v327;
    v200 = v327;
    return result;
  }

  v294 = v326;
  v295 = v325;
  v296 = v324;
  v297 = v323;
  v298 = v322;
  v299 = v321;
  v300 = v320;
  v301 = v319;
  v594[0] = v319;
  v594[1] = v320;
  v594[2] = v321;
  v594[3] = v322;
  v594[4] = v323;
  v594[5] = v324;
  v594[6] = v325;
  v594[7] = v326;
  static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)(v490, v503, v504, &v581);
  v302 = 0;
  v303 = v581;
  v304 = v582;
  v305 = v583;
  v306 = v584;
  v307 = v585;
  v308 = v586;
  v309 = v587;
  v310 = v588;
  v311 = v589;
  v312 = v590;
  v313 = v591;
  v314 = v592;
  v315 = v593;
  v316 = 0;
  v280 = v593;
  v281 = v592;
  v266 = v591;
  v263 = v590;
  v261 = v589;
  v276 = v588;
  v277 = v587;
  v278 = v586;
  v279 = v585;
  v282 = v584;
  v283 = v583;
  v252 = v582;
  v275 = v581;
  v291 = 0;
  v568 = v581;
  v569 = v582;
  v570 = v583;
  v571 = v584;
  v572 = v585;
  v573 = v586;
  v574 = v587;
  v575 = v588;
  v576 = v589;
  v577 = v590;
  v578 = v591;
  v579 = v592;
  v580 = v593;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v274 = _allocateUninitializedArray<A>(_:)();
  v273 = v100;
  v101 = NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor();
  outlined init with copy of String(v101, v273);
  v249 = v594;
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v594, v567);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v103 = v273;
  v104 = v301;
  v270 = v102;
  v273[5] = v102;
  v103[2] = v104;
  v242 = v103 + 6;
  v105 = NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor();
  outlined init with copy of String(v105, v242);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v566);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v107 = v273;
  v108 = v300;
  v259 = v106;
  v273[11] = v106;
  v107[8] = v108;
  v243 = v107 + 12;
  v109 = NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor();
  outlined init with copy of String(v109, v243);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v565);
  v110 = v273;
  v111 = v299;
  v273[17] = v270;
  v110[14] = v111;
  v244 = v110 + 18;
  v112 = NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor();
  outlined init with copy of String(v112, v244);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v564);
  v113 = v273;
  v114 = v298;
  v273[23] = v259;
  v113[20] = v114;
  v245 = v113 + 24;
  v115 = NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor();
  outlined init with copy of String(v115, v245);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v563);
  v116 = v273;
  v117 = v297;
  v273[29] = v270;
  v116[26] = v117;
  v246 = v116 + 30;
  v118 = NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor();
  outlined init with copy of String(v118, v246);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v562);
  v119 = v273;
  v120 = v296;
  v273[35] = v270;
  v119[32] = v120;
  v247 = v119 + 36;
  v121 = NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor();
  outlined init with copy of String(v121, v247);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v561);
  v122 = v273;
  v123 = v295;
  v273[41] = v259;
  v122[38] = v123;
  v248 = v122 + 42;
  v124 = NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor();
  outlined init with copy of String(v124, v248);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v249, v560);
  v125 = v273;
  v126 = v294;
  v273[47] = v270;
  v125[44] = v126;
  v250 = v125 + 48;
  v127 = NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor();
  outlined init with copy of String(v127, v250);
  v269 = &v568;
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(&v568, &v559);
  v128 = v273;
  v129 = v275;
  v273[53] = v259;
  v128[50] = v129;
  v251 = v128 + 54;
  v130 = NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor();
  outlined init with copy of String(v130, v251);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v558);
  v131 = v252;
  v132 = v273;
  v265 = MEMORY[0x277D83A90];
  v273[59] = MEMORY[0x277D83A90];
  *(v132 + 112) = v131;
  v253 = v132 + 60;
  v133 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor();
  outlined init with copy of String(v133, v253);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v557);
  v134 = v273;
  v135 = v279;
  v273[65] = v259;
  v134[62] = v135;
  v254 = v134 + 66;
  v136 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor();
  outlined init with copy of String(v136, v254);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v556);
  v137 = v273;
  v138 = v278;
  v273[71] = v259;
  v137[68] = v138;
  v255 = v137 + 72;
  v139 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor();
  outlined init with copy of String(v139, v255);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v555);
  v140 = v273;
  v141 = v277;
  v273[77] = v259;
  v140[74] = v141;
  v256 = v140 + 78;
  v142 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor();
  outlined init with copy of String(v142, v256);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v554);
  v143 = v273;
  v144 = v276;
  v273[83] = v259;
  v143[80] = v144;
  v257 = v143 + 84;
  v145 = NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor();
  outlined init with copy of String(v145, v257);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v553);
  v146 = v273;
  v147 = v283;
  v273[89] = v259;
  v146[86] = v147;
  v258 = v146 + 90;
  v148 = NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor();
  outlined init with copy of String(v148, v258);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v552);
  v149 = v273;
  v150 = v282;
  v273[95] = v259;
  v149[92] = v150;
  v260 = v149 + 96;
  v151 = NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor();
  outlined init with copy of String(v151, v260);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v551);
  v152 = v261;
  v153 = v273;
  v272 = MEMORY[0x277D83B88];
  v273[101] = MEMORY[0x277D83B88];
  v153[98] = v152;
  v262 = v153 + 102;
  v154 = NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor();
  outlined init with copy of String(v154, v262);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v550);
  v155 = v263;
  v156 = v273;
  v273[107] = v272;
  v156[104] = v155;
  v264 = v156 + 108;
  v157 = NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor();
  outlined init with copy of String(v157, v264);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v549);
  v158 = v266;
  v159 = v273;
  v273[113] = v265;
  *(v159 + 220) = v158;
  v267 = v159 + 114;
  v160 = NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor();
  outlined init with copy of String(v160, v267);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v548);
  v161 = v273;
  v162 = v280;
  v273[119] = v270;
  v161[116] = v162;
  v268 = v161 + 120;
  v163 = NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor();
  outlined init with copy of String(v163, v268);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v269, &v547);
  v164 = v273;
  v165 = v281;
  v273[125] = v270;
  v164[122] = v165;
  v271 = v164 + 126;
  v166 = NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();
  outlined init with copy of String(v166, v271);
  v167 = v273;
  v273[131] = v272;
  v167[128] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v284 = v168;

  v546 = Dictionary.init(dictionaryLiteral:)();

  v285 = v197;
  v286 = 32;
  MEMORY[0x28223BE20](v197, v169);
  v170 = v491;
  *&v197[-16] = v171;
  *&v197[-8] = v170;
  v287 = v197;
  MEMORY[0x28223BE20](v197, v172);
  v288 = &v197[-32];
  *&v197[-16] = partial apply for closure #5 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:);
  *&v197[-8] = v173;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
  v174 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();
  v175 = v291;
  v177 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any), v288, v289, v290, MEMORY[0x277D84A98], v174, MEMORY[0x277D84AC0], v176);
  v292 = v175;
  v293 = v177;
  if (!v175)
  {
    v240 = v293;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v545 = v240;

    v544[1] = v240;
    v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_yptGMd, &_sSaySS_yptGMR);
    lazy protocol witness table accessor for type [(String, Any)] and conformance [A]();
    v241 = Dictionary.init<A>(uniqueKeysWithValues:)();

    outlined destroy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])();
    outlined destroy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])();
    v384 = v241;
    v385 = v292;
    return v384;
  }

  __break(1u);
  return result;
}

NightingaleTraining::NightingaleDProcessEngine_optional __swiftcall NightingaleDProcessEngine.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "native";
  *(v1 + 8) = 6;
  *(v1 + 16) = 2;
  *(v1 + 24) = "morpheus";
  *(v1 + 32) = 8;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_NightingaleDProcessEngine_native;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_NightingaleDProcessEngine_morpheus;
    goto LABEL_6;
  }

  return 2;
}

uint64_t NightingaleDProcessEngine.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("morpheus", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("native", 6uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::NightingaleDProcessEngine_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingaleDProcessEngine@<W0>(Swift::String *a1@<X0>, NightingaleTraining::NightingaleDProcessEngine_optional *a2@<X8>)
{
  result.value = NightingaleDProcessEngine.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingaleDProcessEngine@<X0>(uint64_t *a1@<X8>)
{
  result = NightingaleDProcessEngine.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for keyMetricsNumberOfPositiveSamples()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPositiveSamples", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPositiveSamples != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfNegativeSamples()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfNegativeSamples", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfNegativeSamples != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsPositiveSamplesRatio()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PositiveSamplesRatio", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsPositiveSamplesRatio != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_TP", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleTP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleTP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleTP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTPR()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_TPR", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleTPR = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTPR != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleTPR;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleTPR.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleFP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_FP", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleFP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleFP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleFP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleFP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleFPR()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_FPR", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleFPR = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleFPR != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleFPR;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleFPR.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfPregnantCycles()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPregnantCycles", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPregnantCycles != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfNonPregnantCycles()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfNonPregnantCycles", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfNonPregnantCycles != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleLatency()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_Latency", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleLatency = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleLatency != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleLatency;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleLatency.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleLatencyBuckets()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_LatencyBuckets", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleLatencyBuckets != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceROCScore()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ROCScore", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceROCScore = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceROCScore != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceROCScore;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceROCScore.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSlicePRScore()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_PRScore", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSlicePRScore = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSlicePRScore != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSlicePRScore;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSlicePRScore.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsTP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsTP", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsTP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsFP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsFP", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsFP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsTN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsTN", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsTN != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsFN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsFN", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsFN != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceTargetTPRs()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_TargetTPRs", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceTargetTPRs != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceTargetPrecisions()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_TargetPrecisions", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceTargetPrecisions != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSlicePositiveSamplesOutputDist()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_PositiveSamplesOutputDist", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSlicePositiveSamplesOutputDist != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceNegativeSamplesOutputDist()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_NegativeSamplesOutputDist", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceNegativeSamplesOutputDist != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsEngine", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsEngine = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsEngine != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsEngine;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsEngine.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t closure #4 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v16 = v7;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v9);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v10);

  outlined destroy of DefaultStringInterpolation();
  v14 = MEMORY[0x25F889320](v15, v16);
  outlined init with copy of Any(a4, a1);
  return v14;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any)@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void *)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a3 + 2, *a1, a1[1], a1 + 2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v318 = a7;
  v326 = a6;
  v319 = a5;
  v320 = a4;
  v321 = a3;
  v322 = a2;
  v323 = a1;
  v324 = a8;
  v325 = 0;
  v450 = 0;
  v445 = 0;
  v444 = 0;
  v443 = 0;
  v441 = 0;
  v440 = 0;
  v439 = 0;
  v433 = 0;
  v432 = 0;
  v431 = 0;
  v430 = 0;
  v429 = 0;
  v428 = 0;
  v427 = 0;
  v426 = 0;
  v425 = 0;
  v424 = 0;
  v420 = 0;
  v419 = 0;
  v414 = 0;
  v413 = 0;
  v412 = 0;
  v404 = 0;
  v399 = 0;
  v394 = 0;
  v393 = 0;
  v391 = 0;
  v388 = 0;
  v381 = 0;
  v363 = 0;
  v362 = 0;
  v361 = 0;
  v342 = 0;
  v341 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v336 = 0;
  v458 = a1;
  v457 = a2;
  v456 = a3;
  v455 = a4;
  v454 = a5;
  v453 = a6;
  v452 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
  if (MEMORY[0x25F8895B0](v326, v8) < 1 || (v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd, &_ss6UInt32V5start_AB3endtMR), MEMORY[0x25F8895B0](v320) < 1) || MEMORY[0x25F8895B0](v322, MEMORY[0x277D83A90]) < 1 || (v314 = MEMORY[0x277D83A90], v315 = MEMORY[0x25F8895B0](v322), v315 != MEMORY[0x25F8895B0](v321, v314)) || (v313 = MEMORY[0x25F8895B0](v322, MEMORY[0x277D83A90]), v313 != MEMORY[0x25F8895B0](v319, MEMORY[0x277D84CC0])))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v98 = 0;
    v99 = swift_allocError();
    *v88 = 63;
    swift_willThrow();
    result = v99;
    v100 = v99;
    return result;
  }

  v309 = v317;
  v451 = v326;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
  v307 = v308;
  v310 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  v311 = v317;
  v312 = Sequence.sorted(by:)();
  if (v317)
  {
    __break(1u);
    __break(1u);
    goto LABEL_119;
  }

  v297 = v312;
  v303 = 0;
  v450 = v312;
  v448 = v321;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v298 = v299;
  v300 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889420](&v449, v299);
  v447 = v449;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
  v301 = v302;
  v304 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v305 = 0;
  v306 = Sequence.filter(_:)();
  v293 = 0;
  v446 = v306;

  v289 = &v93;
  MEMORY[0x28223BE20](&v93, v9);
  v291 = v92;
  v92[2] = v10;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd, &_sSaySi6offset_Sf7elementtGMR);
  v290 = v292;
  v11 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v12 = v293;
  v294 = v11;
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), v291, v292, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v13);
  v295 = v12;
  v296 = v14;
  if (v12)
  {
LABEL_119:

    __break(1u);
    goto LABEL_120;
  }

  v283 = v296;
  v284 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v445 = v283;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
  v444 = Array.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMR);
  v15 = AugmentedIntervalTree.__allocating_init()();
  v16 = v284;
  v286 = v15;
  v285 = v15;
  v443 = v15;
  v442 = v297;

  Sequence.forEach(_:)();
  v287 = v16;
  v288 = v16;
  if (v16)
  {
LABEL_120:
    v97 = v288;

    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v97;
    v100 = v97;
    return result;
  }

  v282 = MEMORY[0x25F8895B0](v320, v316);
  if (v282 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v437 = 0;
  v438 = v282;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v287; ; i = v259)
  {
    v278 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    v279 = v435;
    if (v436)
    {
      break;
    }

    v277 = v279;
    v270 = v279;
    v271 = v278;
    v338 = v279;
    Array.subscript.getter();
    v17 = v271;
    v273 = v337;
    v272 = v337;
    v336 = v337;
    v334 = v297;
    v274 = v92;
    MEMORY[0x28223BE20](v92, v18);
    v90 = __PAIR64__(v19, v273);
    Sequence.first(where:)();
    v275 = v17;
    v276 = v274;
    if (v17)
    {
      __break(1u);
LABEL_122:
      v96 = v266;
      outlined destroy of Pregnancy?(v327);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      result = v96;
      v100 = v96;
      return result;
    }

    v269 = v335[3] == 0;
    v268 = v269;
    outlined destroy of Pregnancy?(v335);
    if (v268)
    {
      result = MEMORY[0x25F8895B0](v320, v316);
      v21 = __OFSUB__(result, 1);
      v267 = result - 1;
      if (v21)
      {
        goto LABEL_137;
      }

      if (v270 == v267)
      {
        v22 = v275;
        v329 = v272;
        v328 = v318;
        memset(v327, 0, sizeof(v327));
        AugmentedIntervalTree.insert(start:end:context:)(&v329, &v328, v327);
        v265 = v22;
        v266 = v22;
        if (v22)
        {
          goto LABEL_122;
        }

        outlined destroy of Pregnancy?(v327);
        v264 = v265;
      }

      else
      {
        v333 = v272;
        result = v270 + 1;
        v23 = __OFADD__(v270, 1);
        v263 = v270 + 1;
        if (v23)
        {
          goto LABEL_138;
        }

        result = Array.subscript.getter();
        v262 = v332 - 1;
        if (!v332)
        {
          goto LABEL_139;
        }

        v24 = v275;
        v331 = v262;
        memset(v330, 0, sizeof(v330));
        AugmentedIntervalTree.insert(start:end:context:)(&v333, &v331, v330);
        v260 = v24;
        v261 = v24;
        if (v24)
        {
          v95 = v261;
          outlined destroy of Pregnancy?(v330);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          result = v95;
          v100 = v95;
          return result;
        }

        outlined destroy of Pregnancy?(v330);
        v264 = v260;
      }

      v259 = v264;
    }

    else
    {
      v259 = v275;
    }
  }

  v256 = v278;
  v434 = v319;

  v253 = v92;
  MEMORY[0x28223BE20](v92, v25);
  v254 = v89;
  v90 = v26;
  v91 = &v444;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v27 = v256;
  Sequence.forEach(_:)();
  v257 = v27;
  v258 = v27;
  if (v27)
  {
    v94 = v258;

    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v94;
    v100 = v94;
    return result;
  }

  v251 = MEMORY[0x277D83B88];
  v433 = Array.init()();
  v250 = MEMORY[0x277D83A90];
  v432 = Array.init()();
  v431 = Array.init()();
  v430 = Array.init()();
  v429 = Array.init()();
  v428 = Array.init()();
  v427 = Array.init()();
  v426 = Array.init()();
  v423 = HyperParams.outputPostProcThresholds.getter();
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v257; ; j = v110)
  {
    v248 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
    IndexingIterator.next()();
    v249 = v421;
    if (v422)
    {
      v109 = v248;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v101 = v433;

      v102 = v432;

      v103 = v431;

      v104 = v430;

      v105 = v429;

      v106 = v428;

      v107 = v427;

      v108 = v426;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      v80 = v102;
      v81 = v103;
      v82 = v104;
      v83 = v105;
      v84 = v106;
      v85 = v107;
      v86 = v324;
      v87 = v108;
      *v324 = v101;
      v86[1] = v80;
      v86[2] = v81;
      v86[3] = v82;
      v86[4] = v83;
      v86[5] = v84;
      v86[6] = v85;
      v86[7] = v87;
      return result;
    }

    v247 = v249;
    v241 = v249;
    v242 = v248;
    v420 = v249;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytMd, &_ss6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytMR);
    v419 = Array.init()();
    v417 = v322;
    MEMORY[0x25F889420](&v418, v298, v300);
    v28 = v242;
    v416 = v418;
    v243 = v92;
    MEMORY[0x28223BE20](v92, v29);
    LODWORD(v90) = v30;
    v31 = Sequence.filter(_:)();
    v244 = v28;
    v245 = v31;
    v246 = v243;
    if (v28)
    {
      __break(1u);

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
      result = 0;
      __break(1u);
      return result;
    }

    v415 = v245;

    v237 = v92;
    MEMORY[0x28223BE20](v92, v32);
    v90 = v33;
    v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), v89, v34, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v36);
    v238 = 0;
    v239 = v37;
    v233 = v37;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v414 = v233;
    v234 = v444;

    v411 = v234;
    v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNys6UInt32VGGMd, &_sSaySNys6UInt32VGGMR);
    lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]();
    Collection<>.makeIterator()();
    for (k = v238; ; k = v199)
    {
      v231 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySNys6UInt32VGGGMd, &_ss16IndexingIteratorVySaySNys6UInt32VGGGMR);
      IndexingIterator.next()();
      v232 = v409;
      if (v410)
      {
        break;
      }

      v230 = v232;
      v227 = HIDWORD(v232);
      v228 = v232;
      v363 = v232;
      v362 = 0;
      v361 = 0;
      v359 = 0;
      v360 = 1;
      v357 = 0;
      v358 = 1;
      v355 = 0;
      v356 = 1;
      v352 = v232;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v233, &v352, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v353);
      v229 = v353;
      if (v354)
      {
        v225 = 0x100000000;
      }

      else
      {
        v226 = v229;
        v225 = v229;
      }

      v224 = v225;
      if ((v225 & 0x100000000) != 0)
      {
        v221 = 0;
        v222 = 0x100000000;
      }

      else
      {
        v223 = v224;
        v220 = v223;
        v339 = v223;
        if (v227 >= v223)
        {
          v361 = 1;
          v357 = v220;
          v358 = 0;
          v221 = 1;
          v222 = v220;
        }

        else
        {
          v221 = 0;
          v222 = 0x100000000;
        }
      }

      v216 = HIDWORD(v222);
      v217 = v222;
      v218 = v221;
      v349 = v228;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v283, &v349, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v350);
      v219 = v350;
      if (v351)
      {
        v214 = 0x100000000;
      }

      else
      {
        v215 = v219;
        v214 = v219;
      }

      v213 = v214;
      if ((v214 & 0x100000000) != 0)
      {
        v210 = 0;
        v211 = 0x100000000;
      }

      else
      {
        v212 = v213;
        v209 = v212;
        v340 = v212;
        if (v227 >= v212)
        {
          v362 = 1;
          v355 = v209;
          v356 = 0;
          v210 = 1;
          v211 = v209;
        }

        else
        {
          v210 = 0;
          v211 = 0x100000000;
        }
      }

      v206 = HIDWORD(v211);
      v207 = v211;
      v208 = v210;
      if (v216)
      {
        v203 = 0;
        v204 = 1;
      }

      else
      {
        v205 = v217;
        v202 = v205;
        v342 = v205;
        if (v206)
        {
          v203 = 0;
          v204 = 1;
        }

        else
        {
          v201 = v207;
          v341 = v207;
          v200 = v202 - v207;
          v359 = v200;
          v360 = 0;
          v203 = v200;
          v204 = 0;
        }
      }

      v199 = v231;
      v343 = v228;
      v344 = v227;
      v345 = v208;
      v346 = v218 & 1;
      v347 = v203;
      v348 = v204 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMd, &_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMR);
      Array.append(_:)();
    }

    v195 = v231;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v192 = v419;
    v191 = v419;

    v407 = v192;
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMd, &_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMR);
    v193 = v194;
    v38 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32, label: Int, detect: Bool, latency: Int?)] and conformance [A]();
    v39 = v195;
    v196 = v38;
    v41 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #9 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v194, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v38, MEMORY[0x277D84AC0], v40);
    v197 = v39;
    v198 = v41;
    if (v39)
    {
      goto LABEL_126;
    }

    v184 = v198;
    v188 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v406 = v184;
    v186 = 0;
    v405 = 0;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v185 = v187;
    v42 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v43 = v188;
    v189 = v42;
    Sequence.reduce<A>(_:_:)();
    v190 = v43;
    if (v43)
    {
      goto LABEL_127;
    }

    v180 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v44 = v180;
    v181 = v408;
    v404 = v408;

    v402 = v191;
    v46 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #10 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v193, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v196, MEMORY[0x277D84AC0], v45);
    v182 = v44;
    v183 = v46;
    if (v44)
    {
      goto LABEL_128;
    }

    v177 = v183;
    v178 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v47 = v178;
    v401 = v177;
    v400 = 0;
    Sequence.reduce<A>(_:_:)();
    v179 = v47;
    if (v47)
    {
      goto LABEL_129;
    }

    v173 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v48 = v173;
    v174 = v403;
    v399 = v403;

    v397 = v191;
    v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #11 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v193, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v196, MEMORY[0x277D84AC0], v49);
    v175 = v48;
    v176 = v50;
    if (v48)
    {
      goto LABEL_130;
    }

    v170 = v176;
    v171 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v51 = v171;
    v396 = v170;
    v395 = 0;
    Sequence.reduce<A>(_:_:)();
    v172 = v51;
    if (v51)
    {
      goto LABEL_131;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v168 = v398;
    v167 = v398;
    v394 = v398;
    result = MEMORY[0x25F8895B0](v191, v240);
    v52 = __OFSUB__(result, v168);
    v169 = result - v168;
    if (v52)
    {
      break;
    }

    v164 = v172;
    v393 = v169;
    v392[3] = v191;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v54 = v164;
    v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #12 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v193, v53, MEMORY[0x277D84A98], v196, MEMORY[0x277D84AC0], v55);
    v165 = v54;
    v166 = v56;
    if (v54)
    {
      goto LABEL_132;
    }

    v159 = v166;
    v161 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v392[2] = v159;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiSgGMd, &_sSaySiSgGMR);
    lazy protocol witness table accessor for type [Int?] and conformance [A]();
    v57 = v161;
    v58 = Sequence.compactMap<A>(_:)();
    v162 = v57;
    v163 = v58;
    if (v57)
    {
      goto LABEL_133;
    }

    v155 = v163;
    v156 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v392[1] = v155;
    v59 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v60 = v156;
    v62 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #14 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v185, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v59, MEMORY[0x277D84AC0], v61);
    v157 = v60;
    v158 = v62;
    if (v60)
    {
      goto LABEL_134;
    }

    v150 = v158;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v392[0] = v150;
    v151 = v392;
    v153 = Sequence<>.sorted()();
    v152 = v153;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v391 = v153;
    v389 = 0.0;
    v390 = 1;
    result = MEMORY[0x25F8895B0]();
    v154 = result;
    v388 = result;
    if (result < 1)
    {
      v144 = 0.0;
      v145 = 1;
    }

    else
    {
      v63 = v154 & 1;
      if (v154 < 0)
      {
        v63 = -v63;
      }

      if (v63)
      {
        Array.subscript.getter();
        v389 = v364;
        v390 = 0;
        v148 = v364;
        v149 = 0;
      }

      else
      {
        v64 = __OFSUB__(v154, 1);
        v147 = v154 - 1;
        if (v64)
        {
          goto LABEL_136;
        }

        Array.subscript.getter();
        v146 = v366;
        Array.subscript.getter();
        v389 = (v146 + v365) * 0.5;
        v390 = 0;
        v148 = v389;
        v149 = 0;
      }

      v144 = v148;
      v145 = v149;
    }

    v142 = v145;
    v143 = v144;
    v386 = 0.0;
    v387 = 1;
    v384 = 0.0;
    v385 = 1;
    if (v167 < 1)
    {
      v140 = 0.0;
      v141 = 1;
    }

    else
    {
      v386 = v181 / v167;
      v387 = 0;
      v140 = v386;
      v141 = 0;
    }

    v138 = v141;
    v139 = v140;
    if (v169 < 1)
    {
      v136 = 0.0;
      v137 = 1;
    }

    else
    {
      v384 = v174 / v169;
      v385 = 0;
      v136 = v384;
      v137 = 0;
    }

    v134 = v137;
    v135 = v136;
    v382 = v143;
    v383 = v142 & 1;
    if (v142)
    {
      v133 = -2000.0;
    }

    else
    {
      v133 = v382;
    }

    v129 = v133;
    v130 = HyperParams.latencyBuckets.getter();
    v132 = static MetricsUtils.bucketize(value:buckets:)(v130, v129);
    v131 = v132;

    v381 = v132;
    v380 = v181;
    Array.append(_:)();
    v378 = v139;
    v379 = v138 & 1;
    v128 = (v138 & 1) != 0;
    if (v138)
    {
      v126 = MEMORY[0x277D83A90];
      _allocateUninitializedArray<A>(_:)();
      *v65 = 0;
      v65[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v127 = v66;
    }

    else
    {
      v124 = _allocateUninitializedArray<A>(_:)();
      v125 = v67;
      if (v138)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/NightingaleDMetricsProcessor.swift", 54, 2, 214, 0);
        __break(1u);
      }

      else
      {
        v123 = v139;
      }

      v68 = v125;
      *v125 = v123;
      v68[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v127 = v69;
    }

    v377 = v127;
    Array.append<A>(contentsOf:)();
    v376 = v174;
    Array.append(_:)();
    v374 = v135;
    v375 = v134 & 1;
    v122 = (v134 & 1) != 0;
    if (v134)
    {
      v120 = MEMORY[0x277D83A90];
      _allocateUninitializedArray<A>(_:)();
      *v70 = 0;
      v70[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v121 = v71;
    }

    else
    {
      v118 = _allocateUninitializedArray<A>(_:)();
      v119 = v72;
      if (v134)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/NightingaleDMetricsProcessor.swift", 54, 2, 216, 0);
        __break(1u);
      }

      else
      {
        v117 = v135;
      }

      v73 = v119;
      *v119 = v117;
      v73[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v121 = v74;
    }

    v373 = v121;
    Array.append<A>(contentsOf:)();
    v372 = v167;
    Array.append(_:)();
    v371 = v169;
    Array.append(_:)();
    v369 = v143;
    v370 = v142 & 1;
    v116 = (v142 & 1) != 0;
    if (v142)
    {
      v114 = MEMORY[0x277D83A90];
      _allocateUninitializedArray<A>(_:)();
      *v75 = 0;
      v75[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v115 = v76;
    }

    else
    {
      v112 = _allocateUninitializedArray<A>(_:)();
      v113 = v77;
      if (v142)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/NightingaleDMetricsProcessor.swift", 54, 2, 219, 0);
        __break(1u);
      }

      else
      {
        v111 = v143;
      }

      v78 = v113;
      *v113 = v111;
      v78[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v115 = v79;
    }

    v110 = v157;
    v368 = v115;
    Array.append<A>(contentsOf:)();

    v367 = v131;
    Array.append<A>(contentsOf:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  __break(1u);
LABEL_136:
  __break(1u);
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v166 = a3;
  v167 = a2;
  v168 = a1;
  v169 = a4;
  v174 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v227 = 0u;
  v226 = 0u;
  v222 = 0;
  v219 = 0;
  v214 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v202 = 0;
  v201 = 0;
  v197 = 0.0;
  v188 = 0;
  v187 = 0;
  v183 = 0.0;
  v182 = 0;
  v253 = a1;
  v252 = a2;
  v251 = a3;
  v172 = static AUC.rocCurve(outputs:labels:)(a2, a3);
  v170 = v172;
  v171 = v4;
  v250 = v172;
  v249 = v4;

  v248 = v172;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v173 = v175;
  v177 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v178 = v176;
  v179 = Sequence.contains(where:)();
  if (v176)
  {
    __break(1u);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v154;
    v53 = v154;
    return result;
  }

  v165 = v179;

  if (v179)
  {
    v163 = 1;
    v164 = v178;
  }

  else
  {
    v247 = v171;
    v161 = v178;
    v162 = Sequence.contains(where:)();
    v163 = v162;
    v164 = 0;
  }

  v159 = v164;
  v160 = v163;

  v246 = v163 & 1;
  v245 = _allocateUninitializedArray<A>(_:)();
  if (v163)
  {
    v146 = HyperParams.maxFPRs.getter();
    v148 = MEMORY[0x25F8895B0](v146, MEMORY[0x277D83A90]);
    v147 = v148;

    if (v148 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v240 = 0;
    v241 = v147;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v159; ; i = v143)
    {
      v143 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
      IndexingIterator.next()();
      if (v239)
      {
        break;
      }

      v142 = v143;
      v190 = 0;
      v141 = &v245;
      Array.append(_:)();
      v189 = 1065353216;
      Array.append(_:)();
    }

    v149 = v143;
  }

  else
  {
    v186 = HyperParams.maxFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v159; ; j = 0)
    {
      v156 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
      IndexingIterator.next()();
      v157 = v184;
      if (v185)
      {
        break;
      }

      v155 = v157;
      v183 = v157;
      static AUC.rocAUCScore(tpr:fpr:maxFPR:)(v170, v171, v157);
      v152 = v156;
      v153 = v5;
      v154 = v156;
      v151 = 0;
      v182 = v5;
      v181 = v5;
      v150 = &v245;
      Array.append(_:)();
      v180 = 0;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v149 = v156;
  }

  v132 = v149;
  v136 = static AUC.precisionRecallCurve(outputs:labels:)(v167, v166);
  v137 = v6;
  v133 = v136;
  v134 = v6;
  v135 = v7;
  v238 = v136;
  v237 = v6;
  v236 = v7;

  static AUC.prAUCScore(precison:recall:)(v136, v137);
  v138 = v8;
  v235 = v8;
  v140 = MEMORY[0x277D83A90];
  v139 = 0;
  v234 = _allocateUninitializedArray<A>(_:)();
  v233 = _allocateUninitializedArray<A>(_:)();
  if (v160)
  {
    v230 = HyperParams.targetFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (k = v132; ; k = v107)
    {
      v107 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
      IndexingIterator.next()();
      v108 = v228;
      if (v229)
      {
        break;
      }

      v106 = v107;
      v103 = 0;
      v206 = 0;
      v102 = &v234;
      Array.append(_:)();
      v105 = 1065353216;
      v205 = 1065353216;
      Array.append(_:)();
      v204 = 0;
      v104 = &v233;
      Array.append(_:)();
      v203 = 1065353216;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v110 = v107;
  }

  else
  {
    v200 = HyperParams.targetFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (m = v132; ; m = 0)
    {
      v129 = m;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
      IndexingIterator.next()();
      v130 = v198;
      if (v199)
      {
        break;
      }

      v128 = v130;
      v124 = v130;
      v197 = v130;
      v125 = v129;
      v126 = static AUC.tpr(at:tpr:fpr:)(v170, v171, v130);
      v127 = v129;
      v115 = 0;
      v196 = v126;
      v114 = &v234;
      Array.append(_:)();
      v195 = 0;
      Array.append(_:)();

      v194 = v133;
      v116 = Sequence.reversed()();
      v117 = v116;

      v193 = v135;
      v118 = Sequence.reversed()();
      v119 = 0;
      v120 = static AUC.tpr(at:tpr:fpr:)(v116, v118, v130);
      v121 = v116;
      v122 = v118;
      v123 = 0;
      v111 = v120;
      v113 = 0;

      v192 = v120;
      v112 = &v233;
      Array.append(_:)();
      v191 = 0;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v110 = v129;
  }

  v96 = v110;
  v9 = HyperParams.confusionMatrixNumThresholds.getter();
  v97 = static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(v167, v166, v9);
  v98 = v10;
  v99 = v11;
  v100 = v12;
  *&v226 = v97;
  *(&v226 + 1) = v10;
  *&v227 = v11;
  *(&v227 + 1) = v12;
  v224 = v166;
  v223 = 0;
  Sequence.reduce<A>(_:_:)();
  v101 = v110;
  v95 = v225;
  if ((LODWORD(v225) >> 23) == 255)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Float value cannot be converted to Int because it is either infinite or NaN", 75, 2, "Swift/IntegerTypes.swift", 24, 2, 8763, 0);
    __break(1u);
  }

  if (v95 <= -9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Float value cannot be converted to Int because the result would be less than Int.min", 84, 2, "Swift/IntegerTypes.swift", 24, 2, 8766, 0);
    __break(1u);
  }

  if (v95 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Float value cannot be converted to Int because the result would be greater than Int.max", 87, 2, "Swift/IntegerTypes.swift", 24, 2, 8769, 0);
    __break(1u);
  }

  v93 = v95;
  v222 = v95;
  v94 = HyperParams.modelOutputNumberOfBuckets.getter();
  if (v94 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v90 = v101;
  v220 = 0;
  v221 = v94;

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v13 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v91 = v101;
  v92 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), v168, v89, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
  v82 = v92;
  v85 = 0;

  v219 = v92;
  v217 = v166;
  MEMORY[0x25F889420](&v218, v173, v177);
  v216 = v218;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
  v83 = v84;
  v86 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v87 = 0;
  v88 = Sequence.filter(_:)();
  v78 = 0;
  v215 = v88;

  v74 = v51;
  MEMORY[0x28223BE20](v51, v15);
  v76 = &v49;
  v50 = v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd, &_sSaySi6offset_Sf7elementtGMR);
  v75 = v77;
  v17 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v18 = v78;
  v79 = v17;
  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), v76, v77, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v19);
  v80 = v18;
  v81 = v20;
  if (v18)
  {

    __break(1u);
    goto LABEL_48;
  }

  v70 = v81;
  v71 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v214 = v70;
  v212 = v166;
  MEMORY[0x25F889420](&v213, v173, v177);
  v21 = v71;
  v211 = v213;
  v22 = Sequence.filter(_:)();
  v72 = v21;
  v73 = v22;
  if (v21)
  {
LABEL_48:
    __break(1u);

    __break(1u);
    return result;
  }

  v210 = v73;

  v67 = &v49;
  MEMORY[0x28223BE20](&v49, v23);
  *(&v49 - 2) = v24;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), (&v49 - 32), v25, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
  v68 = 0;
  v69 = v28;
  v64 = v28;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v209 = v64;
  v63 = MEMORY[0x277D83A90];
  v65 = MEMORY[0x25F8895B0](v70);
  v29 = MEMORY[0x25F8895B0](v64, v63);
  result = v65;
  v31 = v65 + v29;
  v32 = __OFADD__(v65, v29);
  v66 = v31;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x25F8895B0](v167, MEMORY[0x277D83A90]);
    if (v66 != v33)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v51[5] = 0;
      v52 = swift_allocError();
      *v48 = 103;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      result = v52;
      v53 = v52;
      return result;
    }

    v57 = static MetricsUtils.bucketize(values:buckets:)(v70, v82);
    v208 = v57;
    v58 = static MetricsUtils.bucketize(values:buckets:)(v64, v82);
    v207 = v58;
    v59 = v245;

    v60 = v234;

    v61 = v233;

    result = MEMORY[0x25F8895B0](v166, MEMORY[0x277D83A90]);
    v34 = __OFSUB__(result, v93);
    v62 = result - v93;
    if (!v34)
    {
      v56 = v68;
      v54 = v93;
      v35 = MEMORY[0x25F8895B0](v166, MEMORY[0x277D83A90]);
      v55 = v54 / v35;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      v36 = v138;
      result = v60;
      v37 = v61;
      v38 = v97;
      v39 = v98;
      v40 = v99;
      v41 = v100;
      v42 = v93;
      v43 = v62;
      v44 = v55;
      v45 = v58;
      v46 = v169;
      v47 = v57;
      *v169 = v59;
      *(v46 + 2) = v36;
      v46[2] = result;
      v46[3] = v37;
      v46[4] = v38;
      v46[5] = v39;
      v46[6] = v40;
      v46[7] = v41;
      v46[8] = v42;
      v46[9] = v43;
      *(v46 + 20) = v44;
      v46[11] = v45;
      v46[12] = v47;
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL closure #2 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(float *a1)
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v3 <= v1;
}

void *closure #4 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(void *a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v10 = (*(v3 + 40))(v4);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v6 + 16))(v7);
  memset(v8, 0, sizeof(v8));
  AugmentedIntervalTree.insert(start:end:context:)(&v10, &v9, v8);
  return outlined destroy of Pregnancy?(v8);
}

BOOL closure #5 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(void *a1, int a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return a2 == (*(v3 + 40))(v4);
}

void *closure #6 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(int *a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v20 = 0;
  v25 = *a1;
  v24 = a2;
  v23 = a3;
  v22 = v25;
  v21 = v25;
  v16 = v3;
  v17 = AugmentedIntervalTree.search(start:end:)(&v22, &v21);
  v18 = v3;
  if (v3)
  {
    return 0;
  }

  v9[2] = v17;
  v13 = 0;
  v20 = v17;
  v19 = v17;
  v10 = v9;
  MEMORY[0x28223BE20](v9, v4);
  v11 = v8;
  v8[2] = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMd, &_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMR);
  lazy protocol witness table accessor for type [Interval<UInt32, Any>] and conformance [A]();
  v6 = v13;
  Sequence.forEach(_:)();
  v14 = v6;
  if (v6)
  {
    result = v10;
    __break(1u);
  }

  else
  {
    v9[1] = 0;
  }

  return result;
}

uint64_t closure #1 in closure #6 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(unsigned int *a1, void *a2)
{

  if (a1[1] < *a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNys6UInt32VGGMd, &_sSaySNys6UInt32VGGMR);
  lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]();
  lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance ClosedRange<A>();
  v3 = Sequence<>.contains(_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  result = v3;
  if ((v3 & 1) == 0)
  {
    if (a1[1] < *a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
      __break(1u);
    }

    return Array.append(_:)();
  }

  return result;
}

uint64_t closure #9 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 4);
  v10 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  HIDWORD(__b[0]) = v3;
  __b[1] = v10;
  LOBYTE(__b[2]) = v4;
  __b[3] = v5;
  LOBYTE(__b[4]) = v6 & 1;
  v7 = (v4 & 1) != 0 && v10 == 1;
  *a2 = v7;
  return result;
}

void *implicit closure #1 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t closure #10 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 4);
  v10 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  HIDWORD(__b[0]) = v3;
  __b[1] = v10;
  LOBYTE(__b[2]) = v4;
  __b[3] = v5;
  LOBYTE(__b[4]) = v6 & 1;
  v7 = (v4 & 1) != 0 && v10 == 0;
  *a2 = v7;
  return result;
}

uint64_t closure #11 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  *a2 = *(a1 + 8) == 1;
  return result;
}

uint64_t closure #12 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t closure #13 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

float closure #14 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #3 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  result = v3 / HyperParams.modelOutputNumberOfBuckets.getter();
  *a2 = result;
  return result;
}

BOOL closure #6 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)(float *a1)
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v3 <= v1;
}

void outlined destroy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])()
{
}

void *outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v10 = a1[6];

  a2[6] = v10;
  v12 = a1[7];

  result = a2;
  a2[7] = v12;
  return result;
}

uint64_t outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  v4 = a1[2];

  *(a2 + 16) = v4;
  v5 = a1[3];

  *(a2 + 24) = v5;
  v6 = a1[4];

  *(a2 + 32) = v6;
  v7 = a1[5];

  *(a2 + 40) = v7;
  v8 = a1[6];

  *(a2 + 48) = v8;
  v9 = a1[7];

  *(a2 + 56) = v9;
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  *(a2 + 80) = *(a1 + 20);
  v11 = a1[11];

  *(a2 + 88) = v11;
  v13 = a1[12];

  result = a2;
  *(a2 + 96) = v13;
  return result;
}

void outlined destroy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])()
{
}

unint64_t lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySNys6UInt32VGGMd, &_sSaySNys6UInt32VGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySNys6UInt32VGGMd, &_sSaySNys6UInt32VGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Int?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiSgGMd, &_sSaySiSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t Interval.start.setter(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = *(a2 + 16);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v5 = &v3 - v4;
  (*(v7 + 16))();
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t Interval.end.setter(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 44), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

void *Interval.context.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 24);
  v3 = type metadata accessor for Optional();
  return outlined init with copy of B?((v2 + v5), a2, v6, v3);
}

uint64_t Interval.context.setter(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v9 = a2;
  v11 = *(a2 + 24);
  v12 = type metadata accessor for Optional();
  v8 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v13, v3);
  v10 = &v8 - v8;
  outlined init with copy of B?(v4, &v8 - v8, v5, v6);
  outlined assign with take of B?(v10, (v2 + *(v9 + 48)), v11, v12);
  return outlined destroy of B?(v13, v11);
}

uint64_t Interval.init(start:end:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v43 = a1;
  v44 = a2;
  v38 = a3;
  v45 = a4;
  v39 = a5;
  v46 = a6;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v52 = a4;
  v51 = a5;
  v30 = 0;
  v31 = type metadata accessor for Optional();
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](0, v45);
  v33 = v20 - v32;
  v34 = *(v8 - 8);
  v35 = v8 - 8;
  v36 = (v34[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v37 = v20 - v36;
  v40 = type metadata accessor for Interval(v9, v10, v11, v12);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v40, v44);
  v42 = v20 - v41;
  v50 = v20 - v41;
  v49 = v14;
  v48 = v15;
  v47 = v16;
  (*(*(v17 - 8) + 56))(v20 + *(v13 + 48) - v41, 1);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v24 = v34[2];
    v23 = v34 + 2;
    v24(v37, v43, v45);
    v26 = v34[4];
    v25 = v34 + 4;
    v26(v42, v37, v45);
    v24(v37, v44, v45);
    v26(v42 + *(v40 + 44), v37, v45);
    outlined init with copy of B?(v38, v33, v39, v31);
    outlined assign with take of B?(v33, (v42 + *(v40 + 48)), v39, v31);
    outlined init with copy of Interval<A, B>(v42, v29, v45, v39, v31, v40);
    outlined destroy of B?(v38, v39);
    v28 = v34[1];
    v27 = v34 + 1;
    v28(v44, v45);
    v28(v43, v45);
    return outlined destroy of Interval<A, B>(v42, v45, v39, v31, v40);
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v22 = swift_allocError();
    *v19 = 48;
    swift_willThrow();
    outlined destroy of B?(v38, v39);
    v21 = v34[1];
    v20[2] = v34 + 1;
    v21(v44, v45);
    v21(v43, v45);
    return outlined destroy of B?(v42 + *(v40 + 48), v39);
  }
}

uint64_t Interval.overlaps(with:)(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v15 = a2;
  v27 = 0;
  v25 = 0;
  v21 = *(a2 + 16);
  v28 = v21;
  v17 = *(v21 - 8);
  v18 = v21 - 8;
  v10 = v17[8];
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v19 = &v6 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](&v6 - v9, v3);
  v20 = &v6 - v11;
  v27 = v12;
  v26 = *(v4 + 24);
  v25 = v2;
  v14 = v17[2];
  v13 = v17 + 2;
  v14();
  (v14)(v19, v12, v21);
  v16 = *(v15 + 32);
  v24 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v23 = v17[1];
  v22 = v17 + 1;
  v23(v19, v21);
  v23(v20, v21);
  if (v24)
  {
    (v14)(v20, v8, v21);
    (v14)(v19, v12 + *(v15 + 44), v21);
    v6 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v23(v19, v21);
    v23(v20, v21);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t Interval.description.getter(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v33 = 0;
  v21 = *(a1 + 16);
  v34 = v21;
  v12 = *(v21 - 8);
  v13 = v21 - 8;
  v10 = (v12[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v9 - v10;
  v33 = v2;
  v32 = *(MEMORY[0x28223BE20](a1, a2) + 24);
  v14 = 2;
  v3 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = &v30;
  v30 = v3;
  v31 = v4;
  v24 = 1;
  v25 = 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  object = v5._object;
  MEMORY[0x25F889DE0](v5._countAndFlagsBits);

  v19 = v12[2];
  v18 = v12 + 2;
  v19(v20, v17, v21);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v23 = v12[1];
  v22 = v12 + 1;
  v23(v20, v21);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", v14, v25 & 1);
  v15 = v6._object;
  MEMORY[0x25F889DE0](v6._countAndFlagsBits);

  v19(v20, v17 + *(v16 + 44), v21);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v23(v20, v21);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("]", v24, v25 & 1);
  v26 = v7._object;
  MEMORY[0x25F889DE0](v7._countAndFlagsBits);

  v29 = v30;
  v28 = v31;

  outlined destroy of DefaultStringInterpolation();
  return MEMORY[0x25F889320](v29, v28);
}

uint64_t static Interval.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v16 = a2;
  v25 = a3;
  v12 = a4;
  v19 = a5;
  v30 = 0;
  v29 = 0;
  v32 = a3;
  v31 = a4;
  v21 = *(a3 - 8);
  v22 = a3 - 8;
  v14 = v21[8];
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v23 = &v8 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](&v8 - v13, v5);
  v24 = &v8 - v15;
  v30 = v6;
  v29 = v16;
  v18 = v21[2];
  v17 = v21 + 2;
  v18();
  (v18)(v23, v16, v25);
  v20 = *(v19 + 8);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = v21[1];
  v26 = v21 + 1;
  v27(v23, v25);
  v27(v24, v25);
  if (v28)
  {
    v8 = type metadata accessor for Interval(0, v25, v12, v19);
    (v18)(v24, v11 + *(v8 + 44), v25);
    (v18)(v23, v16 + *(v8 + 44), v25);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v23, v25);
    v27(v24, v25);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL static Interval.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v17 = a2;
  v25 = a3;
  v13 = a4;
  v20 = a5;
  v30 = 0;
  v29 = 0;
  v32 = a3;
  v31 = a4;
  v21 = *(a3 - 8);
  v22 = a3 - 8;
  v15 = v21[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v23 = &v8 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](&v8 - v14, v5);
  v24 = &v8 - v16;
  v30 = v6;
  v29 = v17;
  v19 = v21[2];
  v18 = v21 + 2;
  v19();
  (v19)(v23, v17, v25);
  v28 = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = v21[1];
  v26 = v21 + 1;
  v27(v23, v25);
  v27(v24, v25);
  if (v28)
  {
    return 1;
  }

  else
  {
    (v19)(v24, v12, v25);
    (v19)(v23, v17, v25);
    v10 = dispatch thunk of static Comparable.> infix(_:_:)();
    v27(v23, v25);
    v27(v24, v25);
    if (v10)
    {
      return 0;
    }

    else
    {
      v8 = type metadata accessor for Interval(0, v25, v13, v20);
      (v19)(v24, v12 + *(v8 + 44), v25);
      (v19)(v23, v17 + *(v8 + 44), v25);
      v9 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27(v23, v25);
      v27(v24, v25);
      return (v9 & 1) != 0;
    }
  }
}

BOOL static Interval.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v17 = a2;
  v25 = a3;
  v13 = a4;
  v20 = a5;
  v30 = 0;
  v29 = 0;
  v32 = a3;
  v31 = a4;
  v21 = *(a3 - 8);
  v22 = a3 - 8;
  v15 = v21[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v23 = &v8 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](&v8 - v14, v5);
  v24 = &v8 - v16;
  v30 = v6;
  v29 = v17;
  v19 = v21[2];
  v18 = v21 + 2;
  v19();
  (v19)(v23, v17, v25);
  v28 = dispatch thunk of static Comparable.> infix(_:_:)();
  v27 = v21[1];
  v26 = v21 + 1;
  v27(v23, v25);
  v27(v24, v25);
  if (v28)
  {
    return 1;
  }

  else
  {
    (v19)(v24, v12, v25);
    (v19)(v23, v17, v25);
    v10 = dispatch thunk of static Comparable.< infix(_:_:)();
    v27(v23, v25);
    v27(v24, v25);
    if (v10)
    {
      return 0;
    }

    else
    {
      v8 = type metadata accessor for Interval(0, v25, v13, v20);
      (v19)(v24, v12 + *(v8 + 44), v25);
      (v19)(v23, v17 + *(v8 + 44), v25);
      v9 = dispatch thunk of static Comparable.> infix(_:_:)();
      v27(v23, v25);
      v27(v24, v25);
      return (v9 & 1) != 0;
    }
  }
}

uint64_t AVLTreeNode.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v9 = v1 + *(*v1 + 104);
  swift_beginAccess();
  v5 = v4[10];
  v6 = v4[11];
  v7 = type metadata accessor for Optional();
  v2 = type metadata accessor for Interval(0, v5, v6, v4[12]);
  outlined init with copy of Interval<A, B>(v9, a1, v5, v6, v7, v2);
  return swift_endAccess();
}

uint64_t AVLTreeNode.interval.setter(uint64_t a1, __n128 a2)
{
  v10 = a1;
  v5[0] = *v2;
  v11 = *(v5[0] + 80);
  v12 = *(v5[0] + 88);
  v3 = *(v5[0] + 96);
  v5[1] = 0;
  v14 = type metadata accessor for Interval(0, v11, v12, v3);
  v6 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v12);
  v7 = v5 - v6;
  v13 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v10, v7, v11, v12, v13, v14);
  v8 = v2 + *(*v2 + 104);
  v9 = &v15;
  swift_beginAccess();
  outlined assign with take of Interval<A, B>(v7, v8, v11, v12, v13, v14);
  swift_endAccess();
  return outlined destroy of Interval<A, B>(v10, v11, v12, v13, v14);
}

uint64_t AVLTreeNode.maxEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t AVLTreeNode.maxEnd.setter(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 112);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t AVLTreeNode.minStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t AVLTreeNode.minStart.setter(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 120);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t AVLTreeNode.left.getter()
{
  v2 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.left.setter(uint64_t a1)
{

  v3 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t AVLTreeNode.right.getter()
{
  v2 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.right.setter(uint64_t a1)
{

  v3 = (v1 + *(*v1 + 136));
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t AVLTreeNode.height.getter()
{
  v2 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.height.setter(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t AVLTreeNode.init(interval:)(uint64_t a1)
{
  v30 = a1;
  v33 = 0;
  v32 = 0;
  v15 = *v1;
  v26 = v15[10];
  v35 = v26;
  v20 = *(v26 - 8);
  v19 = v26 - 8;
  v14 = (v20[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, v26);
  v23 = &v14 - v14;
  v27 = v15[11];
  v34 = v27;
  v2 = v15[12];
  v16 = 0;
  v29 = type metadata accessor for Interval(0, v3, v27, v2);
  v17 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16, v27);
  v18 = &v14 - v17;
  v33 = v5;
  v32 = v1;
  *(v1 + *(*v1 + 128)) = v4;
  *(v1 + *(*v1 + 136)) = v4;
  v28 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v30, v18, v26, v27, v28, v29);
  outlined init with take of Interval<A, B>(v18, v1 + *(*v1 + 104), v26, v27, v28, v29);
  v6 = *(v29 + 44);
  v22 = v20[2];
  v21 = v20 + 2;
  v22(v23, v30 + v6, v26);
  v7 = *(*v1 + 112);
  v25 = v20[4];
  v24 = v20 + 4;
  v25(v1 + v7, v23, v26);
  v22(v23, v30, v26);
  v25(v1 + *(*v1 + 120), v23, v26);
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  *(v1 + *(*v1 + 144)) = 1;
  outlined destroy of Interval<A, B>(v12, v8, v9, v10, v11);
  return v31;
}

Swift::Void __swiftcall AVLTreeNode.updateMaxEnd()()
{
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v51 = *v0;
  v37 = v0;
  v71 = v51[10];
  v95 = v71;
  v54 = 0;
  v38 = type metadata accessor for Optional();
  v40 = *(*(v38 - 8) + 64);
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0, v71);
  v41 = v15 - v39;
  v42 = v39;
  v3 = MEMORY[0x28223BE20](v1, v2);
  v43 = v15 - v42;
  v68 = *(v4 - 8);
  v69 = v4 - 8;
  v49 = *(v68 + 64);
  v44 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v45 = v15 - v44;
  v94 = v15 - v44;
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v47 = v15 - v46;
  v93 = v15 - v46;
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v64 = v15 - v48;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v70 = v15 - v50;
  v57 = v51[11];
  v92 = v57;
  v52 = v51[12];
  v59 = type metadata accessor for Interval(v11, v12, v57, v52);
  v53 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v13);
  v60 = v15 - v53;
  v91 = v0;
  v55 = v0 + *(*v0 + 104);
  v56 = &v90;
  v74 = 32;
  v75 = 0;
  swift_beginAccess();
  v58 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v55, v60, v71, v57, v58, v59);
  swift_endAccess();
  v14 = *(v59 + 44);
  v62 = *(v68 + 16);
  v61 = v68 + 16;
  v62(v70, v60 + v14, v71);
  outlined destroy of Interval<A, B>(v60, v71, v57, v58, v59);
  v62(v64, v70, v71);
  v63 = v0 + *(*v0 + 112);
  v67 = &v89;
  swift_beginAccess();
  v65 = *(v68 + 40);
  v66 = v68 + 40;
  v65(v63, v64, v71);
  swift_endAccess();
  v72 = *(v68 + 8);
  v73 = v68 + 8;
  v72(v70, v71);
  v76 = (v0 + *(*v0 + 128));
  v77 = &v87;
  swift_beginAccess();
  v78 = *v76;

  swift_endAccess();
  v88 = v78;
  if (v78)
  {
    v32 = &v88;
    v35 = v88;

    outlined destroy of ContiguousArray<A1>();
    v33 = v35 + *(*v35 + 112);
    v34 = &v79;
    swift_beginAccess();
    v62(v43, v33, v71);
    swift_endAccess();

    (*(v68 + 56))(v43, 0, 1, v71);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v68 + 56))(v43, 1, 1, v71);
  }

  v30 = *(v68 + 48);
  v31 = v68 + 48;
  if (v30(v43, 1, v71) == 1)
  {
    outlined destroy of B?(v43, v71);
  }

  else
  {
    (*(v68 + 32))(v47, v43, v71);
    v25 = v36 + *(*v36 + 112);
    v26 = &v81;
    v27 = 0;
    swift_beginAccess();
    v62(v64, v25, v71);
    swift_endAccess();
    max<A>(_:_:)();
    v72(v64, v71);
    v62(v64, v70, v71);
    v28 = v36 + *(*v36 + 112);
    v29 = &v80;
    swift_beginAccess();
    v65(v28, v64, v71);
    swift_endAccess();
    v72(v70, v71);
    v72(v47, v71);
  }

  v22 = (v36 + *(*v36 + 136));
  v23 = &v85;
  swift_beginAccess();
  v24 = *v22;

  swift_endAccess();
  v86 = v24;
  if (v24)
  {
    v18 = &v86;
    v21 = v86;

    outlined destroy of ContiguousArray<A1>();
    v19 = v21 + *(*v21 + 112);
    v20 = &v82;
    swift_beginAccess();
    v62(v41, v19, v71);
    swift_endAccess();

    (*(v68 + 56))(v41, 0, 1, v71);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v68 + 56))(v41, 1, 1, v71);
  }

  if (v30(v41, 1, v71) == 1)
  {
    outlined destroy of B?(v41, v71);
  }

  else
  {
    (*(v68 + 32))(v45, v41, v71);
    v15[0] = v36 + *(*v36 + 112);
    v15[1] = &v84;
    v15[2] = 0;
    swift_beginAccess();
    v62(v64, v15[0], v71);
    swift_endAccess();
    max<A>(_:_:)();
    v72(v64, v71);
    v62(v64, v70, v71);
    v16 = v36 + *(*v36 + 112);
    v17 = &v83;
    swift_beginAccess();
    v65(v16, v64, v71);
    swift_endAccess();
    v72(v70, v71);
    v72(v45, v71);
  }
}

Swift::Void __swiftcall AVLTreeNode.updateMinStart()()
{
  v64 = 0;
  v62 = 0;
  v27 = *v0;
  v18 = v0;
  v47 = v27[10];
  v65 = v47;
  v30 = 0;
  v19 = type metadata accessor for Optional();
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0, v47);
  v21 = v10 - v20;
  v44 = *(v2 - 8);
  v45 = v2 - 8;
  v25 = *(v44 + 64);
  v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1, v2);
  v23 = v10 - v22;
  v64 = v10 - v22;
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v40 = v10 - v24;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v46 = v10 - v26;
  v33 = v27[11];
  v63 = v33;
  v28 = v27[12];
  v35 = type metadata accessor for Interval(v7, v8, v33, v28);
  v29 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v9);
  v36 = v10 - v29;
  v62 = v0;
  v31 = v0 + *(*v0 + 104);
  v32 = &v61;
  v50 = 32;
  v51 = 0;
  swift_beginAccess();
  v34 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v31, v36, v47, v33, v34, v35);
  swift_endAccess();
  v38 = *(v44 + 16);
  v37 = v44 + 16;
  v38(v46, v36, v47);
  outlined destroy of Interval<A, B>(v36, v47, v33, v34, v35);
  v38(v40, v46, v47);
  v39 = v0 + *(*v0 + 120);
  v43 = &v60;
  swift_beginAccess();
  v41 = *(v44 + 40);
  v42 = v44 + 40;
  v41(v39, v40, v47);
  swift_endAccess();
  v48 = *(v44 + 8);
  v49 = v44 + 8;
  v48(v46, v47);
  v52 = (v0 + *(*v0 + 128));
  v53 = &v58;
  swift_beginAccess();
  v54 = *v52;

  swift_endAccess();
  v59 = v54;
  if (v54)
  {
    v13 = &v59;
    v16 = v59;

    outlined destroy of ContiguousArray<A1>();
    v14 = v16 + *(*v16 + 120);
    v15 = &v55;
    swift_beginAccess();
    v38(v21, v14, v47);
    swift_endAccess();

    (*(v44 + 56))(v21, 0, 1, v47);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v44 + 56))(v21, 1, 1, v47);
  }

  if ((*(v44 + 48))(v21, 1, v47) == 1)
  {
    outlined destroy of B?(v21, v47);
  }

  else
  {
    (*(v44 + 32))(v23, v21, v47);
    v10[0] = v17 + *(*v17 + 120);
    v10[1] = &v57;
    v10[2] = 0;
    swift_beginAccess();
    v38(v40, v10[0], v47);
    swift_endAccess();
    min<A>(_:_:)();
    v48(v40, v47);
    v38(v40, v46, v47);
    v11 = v17 + *(*v17 + 120);
    v12 = &v56;
    swift_beginAccess();
    v41(v11, v40, v47);
    swift_endAccess();
    v48(v46, v47);
    v48(v23, v47);
  }
}

uint64_t AVLTreeNode.description.getter(uint64_t a1)
{
  v53 = 0;
  v13 = *v1;
  v31 = v13[10];
  v55 = v31;
  v19 = *(v31 - 8);
  v20 = v31 - 8;
  v12 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, v31);
  v30 = &v12 - v12;
  v26 = v13[11];
  v54 = v26;
  v2 = v13[12];
  v16 = 0;
  v28 = type metadata accessor for Interval(0, v3, v26, v2);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v4);
  v29 = &v12 - v14;
  v53 = v1;
  v5 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v44 = &v51;
  v51 = v5;
  v52 = v6;
  v41 = 1;
  v42 = 1;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  object = v7._object;
  MEMORY[0x25F889DE0](v7._countAndFlagsBits);

  v17 = v35 + *(*v35 + 104);
  v18 = &v50;
  v36 = 32;
  v37 = 0;
  swift_beginAccess();
  v27 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v17, v29, v31, v26, v27, v28);
  swift_endAccess();
  v25 = v19[2];
  v24 = v19 + 2;
  v25(v30, v29, v31);
  outlined destroy of Interval<A, B>(v29, v31, v26, v27, v28);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33 = v19[1];
  v32 = v19 + 1;
  v33(v30, v31);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", v41, v42 & 1);
  v21 = v8._object;
  MEMORY[0x25F889DE0](v8._countAndFlagsBits);

  v22 = v35 + *(*v35 + 104);
  v23 = &v49;
  swift_beginAccess();
  outlined init with copy of Interval<A, B>(v22, v29, v31, v26, v27, v28);
  swift_endAccess();
  v25(v30, v29 + *(v28 + 44), v31);
  outlined destroy of Interval<A, B>(v29, v31, v26, v27, v28);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33(v30, v31);
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("](", 2uLL, v42 & 1);
  v34 = v9._object;
  MEMORY[0x25F889DE0](v9._countAndFlagsBits);

  v38 = (v35 + *(*v35 + 144));
  v39 = &v48;
  swift_beginAccess();
  v40 = *v38;
  swift_endAccess();
  v47 = v40;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")", v41, v42 & 1);
  v43 = v10._object;
  MEMORY[0x25F889DE0](v10._countAndFlagsBits);

  v46 = v51;
  v45 = v52;

  outlined destroy of DefaultStringInterpolation();
  return MEMORY[0x25F889320](v46, v45);
}

BOOL AVLTreeNode.isLeaf.getter()
{
  v6 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  outlined destroy of ContiguousArray<A1>();

  if (v7)
  {
    v2 = 0;
  }

  else
  {
    v3 = (v5 + *(*v5 + 136));
    swift_beginAccess();
    v4 = *v3;

    swift_endAccess();
    outlined destroy of ContiguousArray<A1>();
    v2 = v4 == 0;
  }

  return v2;
}

uint64_t AVLTreeNode.deinit()
{
  v3 = *v0;
  v7 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v4 = *(*v0 + 104);
  v6 = type metadata accessor for Optional();
  v1 = type metadata accessor for Interval(0, v7, v5, *(v3 + 96));
  outlined destroy of Interval<A, B>(&v0[v4], v7, v5, v6, v1);
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[*(*v0 + 112)]);
  (v8)(&v0[*(*v0 + 120)], v7);
  outlined destroy of ContiguousArray<A1>();
  outlined destroy of ContiguousArray<A1>();
  return v9;
}

uint64_t AugmentedIntervalTree.root.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t AugmentedIntervalTree.root.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t AugmentedIntervalTree.numNodes.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t AugmentedIntervalTree.numNodes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t AugmentedIntervalTree.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  swift_beginAccess();
  *(v0 + 16) = 0;

  swift_endAccess();
  return v2;
}

void *outlined assign with take of B?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 48);
  if (v10())
  {
    if ((v10)(a1, 1, a3))
    {
      memcpy(a2, a1, *(*(a4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, a3);
      (*(v9 + 56))(a2, 0, 1, a3);
    }
  }

  else if ((v10)(a1, 1, a3))
  {
    (*(v9 + 8))(a2, a3);
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, a3);
  }

  return a2;
}

uint64_t outlined init with copy of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 16);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(a1 + v14, 1))
  {
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(a2 + v14, 0, 1, a4);
  }

  return a2;
}

uint64_t outlined destroy of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a2 - 8) + 8);
  v7();
  (v7)(a1 + *(a5 + 44), a2);
  v11 = *(a5 + 48);
  v12 = *(a3 - 8);
  if (!(*(v12 + 48))(a1 + v11, 1))
  {
    (*(v12 + 8))(a1 + v11, a3);
  }

  return a1;
}

uint64_t outlined assign with take of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 40);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v14, 1))
  {
    if (v16(a1 + v14, 1, a4))
    {
      memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
    }

    else
    {
      (*(v15 + 32))();
      (*(v15 + 56))(a2 + v14, 0, 1, a4);
    }
  }

  else if (v16(a1 + v14, 1, a4))
  {
    (*(v15 + 8))();
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 40))(a2 + v14, a1 + v14, a4);
  }

  return a2;
}

uint64_t outlined init with take of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 32);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(a1 + v14, 1))
  {
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))();
    (*(v15 + 56))(a2 + v14, 0, 1, a4);
  }

  return a2;
}

uint64_t AugmentedIntervalTree.height.getter()
{
  swift_beginAccess();
  v7 = *(v0 + 16);

  swift_endAccess();
  if (v7)
  {

    outlined destroy of ContiguousArray<A1>();
    v3 = (v7 + *(*v7 + 144));
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AugmentedIntervalTree.insert(start:end:context:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v36 = a1;
  v43 = a2;
  v47 = a3;
  v41 = v3;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v34 = *v3;
  v28 = v3;
  v52 = v34[11];
  v67 = v52;
  v29 = 0;
  v46 = type metadata accessor for Optional();
  v30 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](0, v4);
  v50 = &v21 - v30;
  v51 = v34[10];
  v66 = v51;
  v42 = *(v51 - 8);
  v35 = v51 - 8;
  v32 = *(v42 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5, v51);
  v49 = &v21 - v31;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v55 = &v21 - v33;
  v53 = v34[12];
  v37 = type metadata accessor for Interval(v8, v9, v10, v53);
  v39 = *(*(v37 - 8) + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v55, v36);
  v40 = &v21 - v38;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v48 = &v21 - v14;
  v65 = &v21 - v14;
  v64 = v15;
  v63 = v43;
  v62 = v47;
  v61 = v41;
  v45 = *(v42 + 16);
  v44 = v42 + 16;
  v45(v13);
  (v45)(v49, v43, v51);
  outlined init with copy of B?(v47, v50, v52, v46);
  v16 = v54;
  result = Interval.init(start:end:context:)(v55, v49, v50, v51, v52, v53, v48);
  v56 = v16;
  v57 = v16;
  if (!v16)
  {
    type metadata accessor for AVLTreeNode(0, v51, v52, v53);
    outlined init with copy of Interval<A, B>(v48, v40, v51, v52, v46, v37);
    v26 = AVLTreeNode.__allocating_init(interval:)(v40);
    v60 = v26;
    result = swift_beginAccess();
    v18 = v41[3];
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = v41;
      v41[3] = v27;
      swift_endAccess();
      v21 = &v59;
      v23 = 0;
      swift_beginAccess();
      v22 = v20[2];

      swift_endAccess();
      v25 = AugmentedIntervalTree.insertNode(_:_:)(v22, v26);

      v24 = &v58;
      swift_beginAccess();
      v41[2] = v25;

      swift_endAccess();

      return outlined destroy of Interval<A, B>(v48, v51, v52, v46, v37);
    }
  }

  return result;
}

void AugmentedIntervalTree.delete(interval:)(uint64_t a1)
{
  swift_beginAccess();
  v7 = *(v1 + 16);

  swift_endAccess();
  v8 = AugmentedIntervalTree.deleteInterval(_:_:)(v7, a1);

  swift_beginAccess();
  *(v6 + 16) = v8;

  swift_endAccess();

  swift_beginAccess();
  v9 = *(v6 + 16);

  swift_endAccess();
  outlined destroy of ContiguousArray<A1>();
  if (v9)
  {
    swift_beginAccess();
    v2 = *(v6 + 24);
    v4 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 24) = v4;
      swift_endAccess();
    }
  }
}

uint64_t AugmentedIntervalTree.overlap(start:end:)(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v88 = a2;
  v78 = v2;
  v67 = MEMORY[0x277D83988];
  v68 = MEMORY[0x277D83990];
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v114 = 0;
  v110 = 0;
  v106 = 0;
  v102 = 0;
  v77 = *v2;
  v69 = v2;
  v96 = v77[11];
  v124 = v96;
  v79 = 0;
  v70 = type metadata accessor for Optional();
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](0, v3);
  v94 = &v24 - v71;
  v95 = v77[10];
  v123 = v95;
  v85 = *(v95 - 8);
  v86 = v95 - 8;
  v75 = v85[8];
  v72 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4, v95);
  v73 = &v24 - v72;
  v74 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v93 = &v24 - v74;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v92 = &v24 - v76;
  v97 = v77[12];
  v80 = type metadata accessor for Interval(v9, v10, v11, v97);
  v82 = *(*(v80 - 8) + 64);
  v81 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v79, v95);
  v83 = &v24 - v81;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v91 = &v24 - v15;
  v122 = &v24 - v15;
  v121 = v87;
  v120 = v88;
  v119 = v16;
  v84 = type metadata accessor for AVLTreeNode(v14, v17, v18, v19);
  v118 = Array.init()();
  v90 = v85[2];
  v89 = v85 + 2;
  v90(v92, v87, v95);
  v90(v93, v88, v95);
  (*(*(v96 - 8) + 56))(v94, 1);
  v20 = v98;
  Interval.init(start:end:context:)(v92, v93, v94, v95, v96, v97, v91);
  v99 = v20;
  v100 = v20;
  if (v20)
  {
    v24 = v100;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v23 & 1;
  }

  else
  {
    v65 = &v117;
    swift_beginAccess();
    v66 = v78[2];

    swift_endAccess();
    if (v66)
    {
      v64 = v66;
      v63 = v66;
      v102 = v66;

      v62 = &v101;
      v101 = v63;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    for (i = v99; ; i = v57)
    {
      v57 = i;
      v59 = v118;

      v116 = v59;
      v58 = type metadata accessor for Array();
      swift_getWitnessTable();
      v60 = Collection.isEmpty.getter();

      if (v60)
      {
        break;
      }

      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      v21 = v83;
      v54 = v115;
      v114 = v115;
      v52 = v115 + *(*v115 + 104);
      v53 = &v113;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v52, v21, v95, v96, v70, v80);
      swift_endAccess();
      v55 = Interval.overlaps(with:)(v91, v80);
      outlined destroy of Interval<A, B>(v83, v95, v96, v70, v80);
      v56 = v54;
      if (v55)
      {

        outlined destroy of Interval<A, B>(v91, v95, v96, v70, v80);
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v51 = 1;
        return v51 & 1;
      }

      v48 = (v54 + *(*v54 + 128));
      v49 = &v112;
      swift_beginAccess();
      v50 = *v48;

      swift_endAccess();
      if (v50)
      {
        v47 = v50;
        v41 = v50;
        v106 = v50;
        v42 = v47 + *(*v47 + 112);
        v43 = &v105;
        swift_beginAccess();
        v90(v73, v42, v95);
        swift_endAccess();
        v46 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v44 = v85[1];
        v45 = v85 + 1;
        v44(v73, v95);
        if (v46)
        {
          v38 = v41 + *(*v41 + 120);
          v39 = &v104;
          swift_beginAccess();
          v90(v73, v38, v95);
          swift_endAccess();
          v40 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v44(v73, v95);
          if (v40)
          {

            v103 = v41;
            Array.append(_:)();
          }
        }
      }

      v35 = (v54 + *(*v54 + 136));
      v36 = &v111;
      swift_beginAccess();
      v37 = *v35;

      swift_endAccess();
      if (v37)
      {
        v34 = v37;
        v28 = v37;
        v110 = v37;
        v29 = v34 + *(*v34 + 112);
        v30 = &v109;
        swift_beginAccess();
        v90(v73, v29, v95);
        swift_endAccess();
        v33 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v31 = v85[1];
        v32 = v85 + 1;
        v31(v73, v95);
        if (v33)
        {
          v25 = v28 + *(*v28 + 120);
          v26 = &v108;
          swift_beginAccess();
          v90(v73, v25, v95);
          swift_endAccess();
          v27 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v31(v73, v95);
          if (v27)
          {

            v107 = v28;
            Array.append(_:)();
          }
        }
      }
    }

    outlined destroy of Interval<A, B>(v91, v95, v96, v70, v80);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v51 = 0;
    return v51 & 1;
  }
}

uint64_t AugmentedIntervalTree.search(start:end:)(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v85 = a2;
  v76 = v2;
  v65 = MEMORY[0x277D83988];
  v66 = MEMORY[0x277D83990];
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v111 = 0;
  v107 = 0;
  v103 = 0;
  v99 = 0;
  v75 = *v2;
  v67 = v2;
  v93 = v75[11];
  v122 = v93;
  v77 = 0;
  v68 = type metadata accessor for Optional();
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](0, v3);
  v91 = v19 - v69;
  v92 = v75[10];
  v121 = v92;
  v82 = *(v92 - 8);
  v83 = v92 - 8;
  v73 = v82[8];
  v70 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4, v92);
  v71 = v19 - v70;
  v72 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v90 = v19 - v72;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v89 = v19 - v74;
  v94 = v75[12];
  v78 = type metadata accessor for Interval(v9, v10, v11, v94);
  v80 = *(*(v78 - 8) + 64);
  v79 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v77, v78);
  v81 = v19 - v79;
  MEMORY[0x28223BE20](v12, v13);
  v88 = v19 - v14;
  v120 = v19 - v14;
  v119 = v84;
  v118 = v85;
  v117 = v15;
  v116 = _allocateUninitializedArray<A>(_:)();
  v87 = v82[2];
  v86 = v82 + 2;
  v87(v89, v84, v92);
  v87(v90, v85, v92);
  (*(*(v93 - 8) + 56))(v91, 1);
  v16 = v95;
  Interval.init(start:end:context:)(v89, v90, v91, v92, v93, v94, v88);
  v96 = v16;
  v97 = v16;
  if (v16)
  {
    v19[0] = v97;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v54;
  }

  else
  {
    v62 = type metadata accessor for AVLTreeNode(0, v92, v93, v94);
    v115 = Array.init()();
    v63 = &v114;
    swift_beginAccess();
    v64 = v76[2];

    swift_endAccess();
    if (v64)
    {
      v61 = v64;
      v60 = v64;
      v99 = v64;

      v59 = &v98;
      v98 = v60;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    for (i = v96; ; i = v53)
    {
      v53 = i;
      v56 = v115;

      v113 = v56;
      v55 = type metadata accessor for Array();
      swift_getWitnessTable();
      v57 = Collection.isEmpty.getter();

      if (v57)
      {
        break;
      }

      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      v17 = v81;
      v49 = v112;
      v111 = v112;
      v50 = v112 + *(*v112 + 104);
      v51 = &v110;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v50, v17, v92, v93, v68, v78);
      swift_endAccess();
      v52 = Interval.overlaps(with:)(v88, v78);
      outlined destroy of Interval<A, B>(v81, v92, v93, v68, v78);
      if (v52)
      {
        v47 = v49 + *(*v49 + 104);
        v48 = v100;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v47, v81, v92, v93, v68, v78);
        swift_endAccess();
        type metadata accessor for Array();
        Array.append(_:)();
      }

      v44 = (v49 + *(*v49 + 128));
      v45 = &v109;
      swift_beginAccess();
      v46 = *v44;

      swift_endAccess();
      if (v46)
      {
        v43 = v46;
        v37 = v46;
        v103 = v46;
        v38 = v43 + *(*v43 + 112);
        v39 = &v102;
        swift_beginAccess();
        v87(v71, v38, v92);
        swift_endAccess();
        v42 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v40 = v82[1];
        v41 = v82 + 1;
        v40(v71, v92);
        if (v42)
        {
          v34 = v37 + *(*v37 + 120);
          v35 = &v101;
          swift_beginAccess();
          v87(v71, v34, v92);
          swift_endAccess();
          v36 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v40(v71, v92);
          if (v36)
          {

            v100[3] = v37;
            Array.append(_:)();
          }
        }
      }

      v31 = (v49 + *(*v49 + 136));
      v32 = &v108;
      swift_beginAccess();
      v33 = *v31;

      swift_endAccess();
      if (v33)
      {
        v30 = v33;
        v24 = v33;
        v107 = v33;
        v25 = v30 + *(*v30 + 112);
        v26 = &v106;
        swift_beginAccess();
        v87(v71, v25, v92);
        swift_endAccess();
        v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v27 = v82[1];
        v28 = v82 + 1;
        v27(v71, v92);
        if (v29)
        {
          v21 = v24 + *(*v24 + 120);
          v22 = &v105;
          swift_beginAccess();
          v87(v71, v21, v92);
          swift_endAccess();
          v23 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v27(v71, v92);
          if (v23)
          {

            v104 = v24;
            Array.append(_:)();
          }
        }
      }
    }

    v19[1] = &v116;
    v20 = v116;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of Interval<A, B>(v88, v92, v93, v68, v78);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v20;
  }
}

void AugmentedIntervalTree.description.getter()
{
  v84 = 0;
  v77 = MEMORY[0x277D83988];
  v78 = MEMORY[0x277D83990];
  v79 = &protocol conformance descriptor for Interval<A, B>;
  v117 = 0;
  v115 = 0;
  v114._countAndFlagsBits = 0;
  v114._object = 0;
  v113 = 0;
  v109 = 0;
  v108 = 0;
  v107._countAndFlagsBits = 0;
  v107._object = 0;
  v105 = 0;
  v106 = 0;
  v95 = 0;
  v92 = 0;
  v82 = *v0;
  v80 = v82[10];
  v119 = v80;
  v81 = v82[11];
  v118 = v81;
  v83 = v82[12];
  v85 = type metadata accessor for Interval(0, v80, v81, v83);
  v86 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85, v1);
  v87 = &v20 - v86;
  v117 = v0;
  v88 = &v116;
  swift_beginAccess();
  v89 = v0[2];

  swift_endAccess();
  if (!v89)
  {
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Empty tree", 0xAuLL, 1);
    return;
  }

  v76 = v89;
  v73 = v89;
  v115 = v89;
  v71 = 0;
  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for AVLTreeNode(255, v80, v81, v83);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = _allocateUninitializedArray<A>(_:)();
  v74 = v2;

  v3 = v74;
  *v74 = v73;
  v3[1] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v113 = v4;
  while (1)
  {
    v69 = v113;

    v112 = v69;
    v68 = type metadata accessor for Array();
    swift_getWitnessTable();
    v70 = Collection.isEmpty.getter();

    if (v70)
    {
      v20 = &v114;
      v21 = v114;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of DefaultStringInterpolation();

      v22 = v21;
      return;
    }

    v64 = &v110;
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v65 = v110;
    v66 = v111;
    v109 = v110;
    v108 = v111;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("    ", 4uLL, 1);
    v67 = String.init(repeating:count:)(v5, v66);
    v107 = v67;
    if (AVLTreeNode.isLeaf.getter())
    {
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("└──", 9uLL, 0);
      object = v8._object;
      countAndFlagsBits = v8._countAndFlagsBits;
    }

    else
    {
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("├──", 9uLL, 0);
      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
    }

    v62 = countAndFlagsBits;
    v63 = object;
    v36 = object;
    v35 = countAndFlagsBits;
    v105 = countAndFlagsBits;
    v106 = object;
    v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v52 = &v103;
    v103 = v10;
    v104 = v11;
    v33 = "";
    v41 = 0;
    v50 = 1;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v32 = v12._object;
    MEMORY[0x25F889DE0](v12._countAndFlagsBits);

    v102 = v67;
    v37 = MEMORY[0x277D837D0];
    v38 = MEMORY[0x277D83838];
    v39 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v41, v50 & 1);
    v34 = v13._object;
    MEMORY[0x25F889DE0](v13._countAndFlagsBits);

    v100 = v35;
    v101 = v36;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, v50 & 1);
    v40 = v14._object;
    MEMORY[0x25F889DE0](v14._countAndFlagsBits);

    v42 = v65 + *(*v65 + 104);
    v43 = &v99;
    v57 = 32;
    v58 = 0;
    swift_beginAccess();
    v44 = type metadata accessor for Optional();
    outlined init with copy of Interval<A, B>(v42, v87, v80, v81, v44, v85);
    swift_endAccess();
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of Interval<A, B>(v87, v80, v81, v44, v85);
    v49 = 2;
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" (", 2uLL, v50 & 1);
    v45 = v15._object;
    MEMORY[0x25F889DE0](v15._countAndFlagsBits);

    v46 = (v65 + *(*v65 + 144));
    v47 = &v98;
    swift_beginAccess();
    v48 = *v46;
    swift_endAccess();
    v97[3] = v48;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")\n", v49, v50 & 1);
    v51 = v16._object;
    MEMORY[0x25F889DE0](v16._countAndFlagsBits);

    v54 = v103;
    v53 = v104;

    outlined destroy of DefaultStringInterpolation();
    v55 = MEMORY[0x25F889320](v54, v53);
    v56 = v17;
    static String.+= infix(_:_:)();

    v59 = (v65 + *(*v65 + 128));
    v60 = v97;
    swift_beginAccess();
    v61 = *v59;

    swift_endAccess();
    if (v61)
    {
      v31 = v61;
      v29 = v61;
      v92 = v61;

      v30 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_27;
      }

      v90 = v29;
      v91 = v30;
      Array.append(_:)();
    }

    v26 = (v65 + *(*v65 + 136));
    v27 = &v96;
    swift_beginAccess();
    v28 = *v26;

    swift_endAccess();
    if (v28)
    {
      break;
    }

LABEL_23:
  }

  v25 = v28;
  v23 = v28;
  v95 = v28;

  v24 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    v93 = v23;
    v94 = v24;
    Array.append(_:)();

    goto LABEL_23;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t AugmentedIntervalTree.insertNode(_:_:)(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v109 = a2;
  v102 = "Fatal error";
  v103 = "Unexpectedly found nil while unwrapping an Optional value";
  v104 = "NightingaleTraining/AugmentedTree.swift";
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v142 = 0;
  v132 = 0;
  v107 = *v2;
  v105 = v107[10];
  v148 = v105;
  v106 = v107[11];
  v147 = v106;
  v108 = v107[12];
  v110 = type metadata accessor for Interval(0, v105, v106, v108);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v119, v109);
  v112 = v16 - v111;
  v113 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v114 = v16 - v113;
  v115 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v116 = v16 - v115;
  v117 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v118 = v16 - v117;
  v146 = v12;
  v145 = v13;
  v144 = v2;

  if (!v119)
  {
    v16[0] = v109 + *(*v109 + 144);
    v16[1] = &v143;
    swift_beginAccess();
    *v16[0] = 1;
    swift_endAccess();

    return v109;
  }

  v101 = v119;
  v94 = v119;
  v142 = v119;
  v92 = v109 + *(*v109 + 104);
  v93 = &v141;
  v95 = 32;
  v96 = 0;
  swift_beginAccess();
  v99 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v92, v118, v105, v106, v99, v110);
  swift_endAccess();
  v97 = v94 + *(*v94 + 104);
  v98 = &v140;
  swift_beginAccess();
  outlined init with copy of Interval<A, B>(v97, v116, v105, v106, v99, v110);
  swift_endAccess();
  v100 = static Interval.< infix(_:_:)(v118, v116, v105, v106, v108);
  outlined destroy of Interval<A, B>(v116, v105, v106, v99, v110);
  outlined destroy of Interval<A, B>(v118, v105, v106, v99, v110);
  if (v100)
  {
    v85 = (v94 + *(*v94 + 128));
    v86 = &v121;
    v88 = 0;
    swift_beginAccess();
    v87 = *v85;

    swift_endAccess();
    v91 = AugmentedIntervalTree.insertNode(_:_:)(v87, v109);

    v89 = (v94 + *(*v94 + 128));
    v90 = &v120;
    swift_beginAccess();
    *v89 = v91;
  }

  else
  {
    v78 = (v94 + *(*v94 + 136));
    v79 = &v139;
    v81 = 0;
    swift_beginAccess();
    v80 = *v78;

    swift_endAccess();
    v84 = AugmentedIntervalTree.insertNode(_:_:)(v80, v109);

    v82 = (v94 + *(*v94 + 136));
    v83 = &v138;
    swift_beginAccess();
    *v82 = v84;
  }

  swift_endAccess();

  v66 = (v94 + *(*v94 + 128));
  v67 = &v136;
  v70 = 32;
  v71 = 0;
  swift_beginAccess();
  v68 = *v66;

  swift_endAccess();
  v69 = AugmentedIntervalTree.height(_:)(v68);

  v76 = &v135;
  v135 = v69;
  v72 = (v94 + *(*v94 + 136));
  v73 = &v134;
  swift_beginAccess();
  v74 = *v72;

  swift_endAccess();
  v75 = AugmentedIntervalTree.height(_:)(v74);

  v133[3] = v75;
  result = max<A>(_:_:)();
  v77 = v137 + 1;
  if (!__OFADD__(v137, 1))
  {
    v62 = (v94 + *(*v94 + 144));
    v63 = v133;
    swift_beginAccess();
    *v62 = v77;
    swift_endAccess();
    AVLTreeNode.updateMaxEnd()();
    AVLTreeNode.updateMinStart()();

    v64 = v94;
    v65 = AugmentedIntervalTree.balance(_:)(v94);

    v132 = v65;
    if (v65 <= 1)
    {
      if (v65 < -1)
      {
        v32 = v109 + *(*v109 + 104);
        v33 = &v131;
        v34 = 32;
        v35 = 0;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v32, v112, v105, v106, v99, v110);
        swift_endAccess();
        v36 = (v94 + *(*v94 + 136));
        v37 = &v130;
        swift_beginAccess();
        v38 = *v36;

        swift_endAccess();
        if (v38)
        {
          v31 = v38;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)(v102, 11, 2, v103, 57, 2, v104, 39, 2, 282, 0);
          __break(1u);
        }

        v29 = v31;
        v27 = v31 + *(*v31 + 104);
        v28 = &v129;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v27, v118, v105, v106, v99, v110);
        swift_endAccess();

        v30 = static Interval.< infix(_:_:)(v112, v118, v105, v106, v108);
        outlined destroy of Interval<A, B>(v118, v105, v106, v99, v110);
        outlined destroy of Interval<A, B>(v112, v105, v106, v99, v110);
        if (v30)
        {
          v24 = (v94 + *(*v94 + 136));
          v25 = &v128;
          swift_beginAccess();
          v26 = *v24;

          swift_endAccess();
          if (v26)
          {
            v23 = v26;
          }

          else
          {
            _assertionFailure(_:_:file:line:flags:)(v102, 11, 2, v103, 57, 2, v104, 39, 2, 283, 0);
            __break(1u);
          }

          v18 = v23;
          v21 = AugmentedIntervalTree.rotateRight(_:)(v23);

          v19 = (v94 + *(*v94 + 136));
          v20 = &v127;
          swift_beginAccess();
          *v19 = v21;

          swift_endAccess();

          v22 = AugmentedIntervalTree.rotateLeft(_:)(v94);

          return v22;
        }

        else
        {
          v17 = AugmentedIntervalTree.rotateLeft(_:)(v94);

          return v17;
        }
      }

      else
      {
        return v94;
      }
    }

    else
    {
      v55 = v109 + *(*v109 + 104);
      v56 = &v126;
      v57 = 32;
      v58 = 0;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v55, v114, v105, v106, v99, v110);
      swift_endAccess();
      v59 = (v94 + *(*v94 + 128));
      v60 = &v125;
      swift_beginAccess();
      v61 = *v59;

      swift_endAccess();
      if (v61)
      {
        v54 = v61;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)(v102, 11, 2, v103, 57, 2, v104, 39, 2, 271, 0);
        __break(1u);
      }

      v52 = v54;
      v50 = v54 + *(*v54 + 104);
      v51 = &v124;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v50, v118, v105, v106, v99, v110);
      swift_endAccess();

      v53 = static Interval.< infix(_:_:)(v114, v118, v105, v106, v108);
      outlined destroy of Interval<A, B>(v118, v105, v106, v99, v110);
      outlined destroy of Interval<A, B>(v114, v105, v106, v99, v110);
      if (v53)
      {
        v48 = AugmentedIntervalTree.rotateRight(_:)(v94);

        return v48;
      }

      else
      {
        v45 = (v94 + *(*v94 + 128));
        v46 = &v123;
        swift_beginAccess();
        v47 = *v45;

        swift_endAccess();
        if (v47)
        {
          v44 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)(v102, 11, 2, v103, 57, 2, v104, 39, 2, 275, 0);
          __break(1u);
        }

        v39 = v44;
        v42 = AugmentedIntervalTree.rotateLeft(_:)(v44);

        v40 = (v94 + *(*v94 + 128));
        v41 = &v122;
        swift_beginAccess();
        *v40 = v42;

        swift_endAccess();

        v43 = AugmentedIntervalTree.rotateRight(_:)(v94);

        return v43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.rotateLeft(_:)(uint64_t a1)
{
  v20 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v21 = *v20;

  swift_endAccess();
  if (v21)
  {
    v18 = v21;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/AugmentedTree.swift", 39, 2, 305, 0);
    __break(1u);
  }

  v10 = (v18 + *(*v18 + 128));
  swift_beginAccess();
  v13 = *v10;

  swift_endAccess();

  v11 = (v18 + *(*v18 + 128));
  swift_beginAccess();
  *v11 = a1;

  swift_endAccess();

  v12 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  *v12 = v13;

  swift_endAccess();

  v14 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v15 = *v14;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v15);

  v16 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v17 = *v16;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v17);

  result = max<A>(_:_:)();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    *v5 = v23 + 1;
    swift_endAccess();
    v6 = (v18 + *(*v18 + 128));
    swift_beginAccess();
    v7 = *v6;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v7);

    v8 = (v18 + *(*v18 + 136));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v9);

    result = max<A>(_:_:)();
    if (!__OFADD__(v22, 1))
    {
      v4 = (v18 + *(*v18 + 144));
      swift_beginAccess();
      *v4 = v22 + 1;
      swift_endAccess();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMinStart()();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.rotateRight(_:)(uint64_t a1)
{
  v20 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v21 = *v20;

  swift_endAccess();
  if (v21)
  {
    v18 = v21;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/AugmentedTree.swift", 39, 2, 334, 0);
    __break(1u);
  }

  v10 = (v18 + *(*v18 + 136));
  swift_beginAccess();
  v13 = *v10;

  swift_endAccess();

  v11 = (v18 + *(*v18 + 136));
  swift_beginAccess();
  *v11 = a1;

  swift_endAccess();

  v12 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  *v12 = v13;

  swift_endAccess();

  v14 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v15 = *v14;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v15);

  v16 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v17 = *v16;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v17);

  result = max<A>(_:_:)();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    *v5 = v23 + 1;
    swift_endAccess();
    v6 = (v18 + *(*v18 + 128));
    swift_beginAccess();
    v7 = *v6;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v7);

    v8 = (v18 + *(*v18 + 136));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v9);

    result = max<A>(_:_:)();
    if (!__OFADD__(v22, 1))
    {
      v4 = (v18 + *(*v18 + 144));
      swift_beginAccess();
      *v4 = v22 + 1;
      swift_endAccess();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMinStart()();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.balance(_:)(uint64_t a1)
{

  if (a1)
  {
    v8 = (a1 + *(*a1 + 128));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v7 = AugmentedIntervalTree.height(_:)(v10);

  if (a1)
  {
    v4 = (a1 + *(*a1 + 136));
    swift_beginAccess();
    v5 = *v4;

    swift_endAccess();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = AugmentedIntervalTree.height(_:)(v6);

  result = v3;
  if (!__OFSUB__(v7, v3))
  {
    return v7 - v3;
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.height(_:)(uint64_t a1)
{

  if (a1)
  {
    v3 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AugmentedIntervalTree.deleteInterval(_:_:)(uint64_t a1, uint64_t a2)
{
  v155 = a1;
  v149 = a2;
  v135 = "Fatal error";
  v136 = "Unexpectedly found nil while unwrapping an Optional value";
  v137 = "NightingaleTraining/AugmentedTree.swift";
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v186 = 0;
  v173 = 0;
  v160 = 0;
  v147 = *v2;
  v138 = v147[10];
  v199 = v138;
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v142 = *(v139 + 64);
  v141 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, v138);
  v143 = v12 - v141;
  v144 = v141;
  MEMORY[0x28223BE20](v12 - v141, v3);
  v145 = v12 - v144;
  v146 = v147[11];
  v198 = v146;
  v148 = v147[12];
  v150 = type metadata accessor for Interval(0, v4, v146, v148);
  v151 = (*(*(v150 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v155, v149);
  v152 = v12 - v151;
  v153 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v154 = v12 - v153;
  v197 = v8;
  v196 = v9;
  v195 = v2;

  if (!v155)
  {
    return 0;
  }

  v134 = v155;
  v129 = v155;
  v194 = v155;
  v130 = v134 + *(*v134 + 104);
  v131 = &v193;
  swift_beginAccess();
  v132 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v130, v154, v138, v146, v132, v150);
  swift_endAccess();
  v133 = static Interval.< infix(_:_:)(v149, v154, v138, v146, v148);
  outlined destroy of Interval<A, B>(v154, v138, v146, v132, v150);
  if (v133)
  {
    v122 = (v129 + *(*v129 + 128));
    v123 = &v157;
    v125 = 0;
    swift_beginAccess();
    v124 = *v122;

    swift_endAccess();
    v128 = AugmentedIntervalTree.deleteInterval(_:_:)(v124, v149);

    v126 = (v129 + *(*v129 + 128));
    v127 = &v156;
    swift_beginAccess();
    *v126 = v128;

    swift_endAccess();
  }

  else
  {
    v119 = v129 + *(*v129 + 104);
    v120 = &v192;
    swift_beginAccess();
    outlined init with copy of Interval<A, B>(v119, v154, v138, v146, v132, v150);
    swift_endAccess();
    v121 = static Interval.> infix(_:_:)(v149, v154, v138, v146, v148);
    outlined destroy of Interval<A, B>(v154, v138, v146, v132, v150);
    if (v121)
    {
      v112 = (v129 + *(*v129 + 136));
      v113 = v159;
      v115 = 0;
      swift_beginAccess();
      v114 = *v112;

      swift_endAccess();
      v118 = AugmentedIntervalTree.deleteInterval(_:_:)(v114, v149);

      v116 = (v129 + *(*v129 + 136));
      v117 = &v158;
      swift_beginAccess();
      *v116 = v118;

      swift_endAccess();
    }

    else
    {
      v109 = (v129 + *(*v129 + 128));
      v110 = &v191;
      swift_beginAccess();
      v111 = *v109;

      swift_endAccess();
      v190 = v111;
      v108 = v111 == 0;
      v107 = v108;
      outlined destroy of ContiguousArray<A1>();

      if (v107)
      {
        v106 = 1;
      }

      else
      {
        v103 = (v129 + *(*v129 + 136));
        v104 = &v189;
        swift_beginAccess();
        v105 = *v103;

        swift_endAccess();
        v188 = v105;
        v102 = v105 == 0;
        v101 = v102;
        outlined destroy of ContiguousArray<A1>();
        v106 = v101;
      }

      v100 = v106;

      if (v100)
      {
        v97 = (v129 + *(*v129 + 128));
        v98 = &v163;
        swift_beginAccess();
        v99 = *v97;

        swift_endAccess();
        v162 = v99;

        if (v162)
        {
          v164 = v162;
        }

        else
        {
          v94 = (v129 + *(*v129 + 136));
          v95 = &v161;
          swift_beginAccess();
          v96 = *v94;

          swift_endAccess();
          v164 = v96;
          if (v162)
          {
            outlined destroy of ContiguousArray<A1>();
          }
        }

        v93 = v164;
        v160 = v164;
        v159[3] = v164;
        if (v164 == 0)
        {

          return 0;
        }

        else
        {

          return v93;
        }
      }

      v88 = (v129 + *(*v129 + 136));
      v89 = &v187;
      swift_beginAccess();
      v90 = *v88;

      swift_endAccess();
      if (v90)
      {
        v87 = v90;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)(v135, 11, 2, v136, 57, 2, v137, 39, 2, 385, 0);
        __break(1u);
      }

      v64 = v87;
      v86 = AugmentedIntervalTree.minValueNode(_:)(v87);

      v186 = v86;
      v65 = v186 + *(*v186 + 104);
      v66 = &v185;
      v77 = 32;
      v82 = 0;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v65, v154, v138, v146, v132, v150);
      swift_endAccess();
      outlined init with copy of Interval<A, B>(v154, v152, v138, v146, v132, v150);
      v67 = v129 + *(*v129 + 104);
      v68 = &v184;
      v81 = 33;
      swift_beginAccess();
      outlined assign with take of Interval<A, B>(v152, v67, v138, v146, v132, v150);
      swift_endAccess();
      outlined destroy of Interval<A, B>(v154, v138, v146, v132, v150);
      v69 = v86 + *(*v86 + 112);
      v70 = &v183;
      swift_beginAccess();
      v72 = *(v139 + 16);
      v71 = v139 + 16;
      v72(v145, v69, v138);
      swift_endAccess();
      v72(v143, v145, v138);
      v73 = v129 + *(*v129 + 112);
      v74 = &v182;
      swift_beginAccess();
      (*(v139 + 40))(v73, v143, v138);
      swift_endAccess();
      (*(v139 + 8))(v145, v138);
      v75 = (v129 + *(*v129 + 136));
      v76 = &v181;
      swift_beginAccess();
      v80 = *v75;

      swift_endAccess();
      v78 = v86 + *(*v86 + 104);
      v79 = &v180;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v78, v154, v138, v146, v132, v150);
      swift_endAccess();
      v85 = AugmentedIntervalTree.deleteInterval(_:_:)(v80, v154);
      outlined destroy of Interval<A, B>(v154, v138, v146, v132, v150);

      v83 = (v129 + *(*v129 + 136));
      v84 = &v179;
      swift_beginAccess();
      *v83 = v85;

      swift_endAccess();
    }
  }

  v52 = (v129 + *(*v129 + 128));
  v53 = &v177;
  v56 = 32;
  v57 = 0;
  swift_beginAccess();
  v54 = *v52;

  swift_endAccess();
  v55 = AugmentedIntervalTree.height(_:)(v54);

  v62 = &v176;
  v176 = v55;
  v58 = (v129 + *(*v129 + 136));
  v59 = &v175;
  swift_beginAccess();
  v60 = *v58;

  swift_endAccess();
  v61 = AugmentedIntervalTree.height(_:)(v60);

  v174[3] = v61;
  result = max<A>(_:_:)();
  v63 = v178 + 1;
  if (!__OFADD__(v178, 1))
  {
    v48 = (v129 + *(*v129 + 144));
    v49 = v174;
    swift_beginAccess();
    *v48 = v63;
    swift_endAccess();
    AVLTreeNode.updateMaxEnd()();
    AVLTreeNode.updateMinStart()();

    v50 = v129;
    v51 = AugmentedIntervalTree.balance(_:)(v129);

    v173 = v51;
    if (v51 <= 1 || (v44 = (v129 + *(*v129 + 128)), v45 = &v165, swift_beginAccess(), v46 = *v44, , swift_endAccess(), v47 = AugmentedIntervalTree.balance(_:)(v46), , v47 < 0))
    {
      if (v51 > 1 && (v39 = (v129 + *(*v129 + 128)), v40 = &v168, swift_beginAccess(), v41 = *v39, , swift_endAccess(), v42 = AugmentedIntervalTree.balance(_:)(v41), , v42 < 0))
      {
        v36 = (v129 + *(*v129 + 128));
        v37 = &v167;
        swift_beginAccess();
        v38 = *v36;

        swift_endAccess();
        if (v38)
        {
          v35 = v38;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)(v135, 11, 2, v136, 57, 2, v137, 39, 2, 411, 0);
          __break(1u);
        }

        v30 = v35;
        v33 = AugmentedIntervalTree.rotateLeft(_:)(v35);

        v31 = (v129 + *(*v129 + 128));
        v32 = &v166;
        swift_beginAccess();
        *v31 = v33;

        swift_endAccess();

        v34 = AugmentedIntervalTree.rotateRight(_:)(v129);

        return v34;
      }

      else if (v51 >= -1 || (v26 = (v129 + *(*v129 + 136)), v27 = &v169, swift_beginAccess(), v28 = *v26, , swift_endAccess(), v29 = AugmentedIntervalTree.balance(_:)(v28), , v29 > 0))
      {
        if (v51 >= -1)
        {
          return v129;
        }

        v21 = (v129 + *(*v129 + 136));
        v22 = &v172;
        swift_beginAccess();
        v23 = *v21;

        swift_endAccess();
        v24 = AugmentedIntervalTree.balance(_:)(v23);

        if (v24 <= 0)
        {
          return v129;
        }

        else
        {
          v18 = (v129 + *(*v129 + 136));
          v19 = &v171;
          swift_beginAccess();
          v20 = *v18;

          swift_endAccess();
          if (v20)
          {
            v17 = v20;
          }

          else
          {
            _assertionFailure(_:_:file:line:flags:)(v135, 11, 2, v136, 57, 2, v137, 39, 2, 422, 0);
            __break(1u);
          }

          v12[1] = v17;
          v15 = AugmentedIntervalTree.rotateRight(_:)(v17);

          v13 = (v129 + *(*v129 + 136));
          v14 = &v170;
          swift_beginAccess();
          *v13 = v15;

          swift_endAccess();

          v16 = AugmentedIntervalTree.rotateLeft(_:)(v129);

          return v16;
        }
      }

      else
      {
        v25 = AugmentedIntervalTree.rotateLeft(_:)(v129);

        return v25;
      }
    }

    else
    {
      v43 = AugmentedIntervalTree.rotateRight(_:)(v129);

      return v43;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.minValueNode(_:)(uint64_t a1)
{

  v10 = a1;
  while (1)
  {
    if (v10)
    {

      v6 = (v10 + *(*v10 + 128));
      swift_beginAccess();
      v7 = *v6;

      swift_endAccess();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    outlined destroy of ContiguousArray<A1>();
    if (!v8)
    {
      break;
    }

    if (v10)
    {

      v3 = (v10 + *(*v10 + 128));
      swift_beginAccess();
      v4 = *v3;

      swift_endAccess();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
  }

  if (v10)
  {
    v2 = v10;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/AugmentedTree.swift", 39, 2, 434, 0);
    __break(1u);
  }

  outlined destroy of ContiguousArray<A1>();
  return v2;
}

uint64_t AugmentedIntervalTree.allIntervals()()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  v3 = AugmentedIntervalTree.allIntervals(root:)(v2);

  return v3;
}

uint64_t AugmentedIntervalTree.allIntervals(root:)(uint64_t a1)
{
  v37 = a1;
  v29 = MEMORY[0x277D83970];
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v32 = *v1;
  v30 = v32[10];
  v48 = v30;
  v31 = v32[11];
  v47 = v31;
  v2 = v32[12];
  v33 = 0;
  v34 = type metadata accessor for Interval(0, v30, v31, v2);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v34);
  v36 = v6 - v35;
  v46 = v3;
  v45 = v1;
  v44 = _allocateUninitializedArray<A>(_:)();

  if (v37)
  {
    v28 = v37;
    v24 = v37;
    v43 = v37;
    v8 = (v28 + *(*v28 + 128));
    v9 = &v42;
    v16 = 32;
    v17 = 0;
    swift_beginAccess();
    v10 = *v8;

    swift_endAccess();
    v11 = AugmentedIntervalTree.allIntervals(root:)(v10);

    v12 = &v41;
    v41 = v11;
    v13 = 0;
    v22 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v25 = &v44;
    Array.append<A>(contentsOf:)();
    v14 = v24 + *(*v24 + 104);
    v15 = &v40;
    swift_beginAccess();
    v4 = type metadata accessor for Optional();
    outlined init with copy of Interval<A, B>(v14, v36, v30, v31, v4, v34);
    swift_endAccess();
    Array.append(_:)();
    v18 = (v24 + *(*v24 + 136));
    v19 = &v39;
    swift_beginAccess();
    v20 = *v18;

    swift_endAccess();
    v21 = AugmentedIntervalTree.allIntervals(root:)(v20);

    v38 = v21;
    Array.append<A>(contentsOf:)();
    v26 = v44;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v26;
  }

  else
  {
    v6[1] = &v44;
    v7 = v44;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v7;
  }
}

uint64_t type metadata completion function for Interval(uint64_t a1)
{
  v4 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t type metadata completion function for AVLTreeNode(void *a1)
{
  inited = type metadata accessor for Interval(319, a1[10], a1[11], a1[12]);
  if (v1 <= 0x3F)
  {
    inited = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

uint64_t type metadata completion function for AugmentedIntervalTree(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t HIDPFLError.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 9701;
      break;
    case 2:
      v2 = 9702;
      break;
    case 3:
      v2 = 9703;
      break;
    case 4:
      v2 = 9704;
      break;
    case 5:
      v2 = 9705;
      break;
    case 6:
      v2 = 9706;
      break;
    case 7:
      v2 = 9707;
      break;
    case 8:
      v2 = 9708;
      break;
    case 9:
      v2 = 9712;
      break;
    case 10:
      v2 = 9713;
      break;
    case 11:
      v2 = 9714;
      break;
    case 12:
      v2 = 9715;
      break;
    case 13:
      v2 = 9716;
      break;
    case 14:
      v2 = 9717;
      break;
    case 15:
      v2 = 9718;
      break;
    case 16:
      v2 = 9719;
      break;
    case 17:
      v2 = 9720;
      break;
    case 18:
      v2 = 9721;
      break;
    case 19:
      v2 = 9722;
      break;
    case 20:
      v2 = 9723;
      break;
    case 21:
      v2 = 9724;
      break;
    case 22:
      v2 = 9725;
      break;
    case 23:
      v2 = 9726;
      break;
    case 24:
      v2 = 9727;
      break;
    case 25:
      v2 = 9728;
      break;
    case 26:
      v2 = 9729;
      break;
    case 27:
      v2 = 9730;
      break;
    case 28:
      v2 = 9731;
      break;
    case 29:
      v2 = 9732;
      break;
    case 30:
      v2 = 9733;
      break;
    case 31:
      v2 = 9734;
      break;
    case 32:
      v2 = 9735;
      break;
    case 33:
      v2 = 9736;
      break;
    case 34:
      v2 = 9737;
      break;
    case 35:
      v2 = 9738;
      break;
    case 36:
      v2 = 9739;
      break;
    case 37:
      v2 = 9740;
      break;
    case 38:
      v2 = 9741;
      break;
    case 39:
      v2 = 9742;
      break;
    case 40:
      v2 = 9743;
      break;
    case 41:
      v2 = 9744;
      break;
    case 42:
      v2 = 9745;
      break;
    case 43:
      v2 = 9746;
      break;
    case 44:
      v2 = 9747;
      break;
    case 45:
      v2 = 9748;
      break;
    case 46:
      v2 = 9749;
      break;
    case 47:
      v2 = 9750;
      break;
    case 48:
      v2 = 9751;
      break;
    case 49:
      v2 = 9752;
      break;
    case 50:
      v2 = 9753;
      break;
    case 51:
      v2 = 9754;
      break;
    case 52:
      v2 = 9755;
      break;
    case 53:
      v2 = 9756;
      break;
    case 54:
      v2 = 9757;
      break;
    case 55:
      v2 = 9799;
      break;
    case 56:
      v2 = 9800;
      break;
    case 57:
      v2 = 9801;
      break;
    case 58:
      v2 = 9802;
      break;
    case 59:
      v2 = 9803;
      break;
    case 60:
      v2 = 9804;
      break;
    case 61:
      v2 = 9805;
      break;
    case 62:
      v2 = 9806;
      break;
    case 63:
      v2 = 9807;
      break;
    case 64:
      v2 = 9808;
      break;
    case 65:
      v2 = 9809;
      break;
    case 66:
      v2 = 9810;
      break;
    case 67:
      v2 = 9811;
      break;
    case 68:
      v2 = 9812;
      break;
    case 69:
      v2 = 9813;
      break;
    case 70:
      v2 = 9814;
      break;
    case 71:
      v2 = 9815;
      break;
    case 72:
      v2 = 9816;
      break;
    case 73:
      v2 = 9817;
      break;
    case 74:
      v2 = 9818;
      break;
    case 75:
      v2 = 9819;
      break;
    case 76:
      v2 = 9820;
      break;
    case 77:
      v2 = 9821;
      break;
    case 78:
      v2 = 9822;
      break;
    case 79:
      v2 = 9823;
      break;
    case 80:
      v2 = 9824;
      break;
    case 81:
      v2 = 9825;
      break;
    case 82:
      v2 = 9826;
      break;
    case 83:
      v2 = 9827;
      break;
    case 84:
      v2 = 9828;
      break;
    case 85:
      v2 = 9829;
      break;
    case 86:
      v2 = 9830;
      break;
    case 87:
      v2 = 9831;
      break;
    case 88:
      v2 = 9832;
      break;
    case 89:
      v2 = 9833;
      break;
    case 90:
      v2 = 9834;
      break;
    case 91:
      v2 = 9835;
      break;
    case 92:
      v2 = 9836;
      break;
    case 93:
      v2 = 9837;
      break;
    case 94:
      v2 = 9838;
      break;
    case 95:
      v2 = 9839;
      break;
    case 96:
      v2 = 9840;
      break;
    case 97:
      v2 = 9841;
      break;
    case 98:
      v2 = 9842;
      break;
    case 99:
      v2 = 9843;
      break;
    case 100:
      v2 = 9844;
      break;
    case 101:
      v2 = 9845;
      break;
    case 102:
      v2 = 9846;
      break;
    case 103:
      v2 = 9847;
      break;
    case 104:
      v2 = 9848;
      break;
    case 105:
      v2 = 9849;
      break;
    case 106:
      v2 = 9850;
      break;
    case 107:
      v2 = 9851;
      break;
    case 108:
      v2 = 9852;
      break;
    case 109:
      v2 = 9853;
      break;
    default:
      v2 = 9700;
      break;
  }

  return v2;
}

NightingaleTraining::HIDPFLError_optional __swiftcall HIDPFLError.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 9700:
      return 0;
    case 9701:
      return 1;
    case 9702:
      return 2;
    case 9703:
      return 3;
    case 9704:
      return 4;
    case 9705:
      return 5;
    case 9706:
      return 6;
    case 9707:
      return 7;
    case 9708:
      return 8;
    case 9712:
      return 9;
    case 9713:
      return 10;
    case 9714:
      return 11;
    case 9715:
      return 12;
    case 9716:
      return 13;
    case 9717:
      return 14;
    case 9718:
      return 15;
    case 9719:
      return 16;
    case 9720:
      return 17;
    case 9721:
      return 18;
    case 9722:
      return 19;
    case 9723:
      return 20;
    case 9724:
      return 21;
    case 9725:
      return 22;
    case 9726:
      return 23;
    case 9727:
      return 24;
    case 9728:
      return 25;
    case 9729:
      return 26;
    case 9730:
      return 27;
    case 9731:
      return 28;
    case 9732:
      return 29;
    case 9733:
      return 30;
    case 9734:
      return 31;
    case 9735:
      return 32;
    case 9736:
      return 33;
    case 9737:
      return 34;
    case 9738:
      return 35;
    case 9739:
      return 36;
    case 9740:
      return 37;
    case 9741:
      return 38;
    case 9742:
      return 39;
    case 9743:
      return 40;
    case 9744:
      return 41;
    case 9745:
      return 42;
    case 9746:
      return 43;
    case 9747:
      return 44;
    case 9748:
      return 45;
    case 9749:
      return 46;
    case 9750:
      return 47;
    case 9751:
      return 48;
    case 9752:
      return 49;
    case 9753:
      return 50;
    case 9754:
      return 51;
    case 9755:
      return 52;
    case 9756:
      return 53;
    case 9757:
      return 54;
    case 9799:
      return 55;
    case 9800:
      return 56;
    case 9801:
      return 57;
    case 9802:
      return 58;
    case 9803:
      return 59;
    case 9804:
      return 60;
    case 9805:
      return 61;
    case 9806:
      return 62;
    case 9807:
      return 63;
    case 9808:
      return 64;
    case 9809:
      return 65;
    case 9810:
      return 66;
    case 9811:
      return 67;
    case 9812:
      return 68;
    case 9813:
      return 69;
    case 9814:
      return 70;
    case 9815:
      return 71;
    case 9816:
      return 72;
    case 9817:
      return 73;
    case 9818:
      return 74;
    case 9819:
      return 75;
    case 9820:
      return 76;
    case 9821:
      return 77;
    case 9822:
      return 78;
    case 9823:
      return 79;
    case 9824:
      return 80;
    case 9825:
      return 81;
    case 9826:
      return 82;
    case 9827:
      return 83;
    case 9828:
      return 84;
    case 9829:
      return 85;
    case 9830:
      return 86;
    case 9831:
      return 87;
    case 9832:
      return 88;
    case 9833:
      return 89;
    case 9834:
      return 90;
    case 9835:
      return 91;
    case 9836:
      return 92;
    case 9837:
      return 93;
    case 9838:
      return 94;
    case 9839:
      return 95;
    case 9840:
      return 96;
    case 9841:
      return 97;
    case 9842:
      return 98;
    case 9843:
      return 99;
    case 9844:
      return 100;
    case 9845:
      return 101;
    case 9846:
      return 102;
    case 9847:
      return 103;
    case 9848:
      return 104;
    case 9849:
      return 105;
    case 9850:
      return 106;
    case 9851:
      return 107;
    case 9852:
      return 108;
    case 9853:
      return 109;
  }

  return 110;
}

NightingaleTraining::HIDPFLError_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HIDPFLError@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::HIDPFLError_optional *a2@<X8>)
{
  result.value = HIDPFLError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HIDPFLError@<X0>(uint64_t *a1@<X8>)
{
  result = HIDPFLError.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance HIDPFLError(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  lazy protocol witness table accessor for type Int and conformance Int();
  return Error<>._code.getter();
}

uint64_t getEnumTagSinglePayload for HIDPFLError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0x92)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 109) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 146;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 110;
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

_BYTE *storeEnumTagSinglePayload for HIDPFLError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0x92)
  {
    v5 = ((a3 + 109) >> 8) + 1;
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

  if (a2 > 0x92)
  {
    v4 = ((a2 - 147) >> 8) + 1;
    *result = a2 + 109;
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
      *result = a2 + 109;
    }
  }

  return result;
}

uint64_t calculateAge(components:birthDateRequired:)(uint64_t a1, int a2)
{
  v27 = a1;
  v26 = a2;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0.0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v18 = v13 - v17;
  v24 = 0;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v23 = v13 - v22;
  v40 = v13 - v22;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v5);
  v34 = v13 - v25;
  v33 = type metadata accessor for DateComponents();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v28 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v27, v34);
  v29 = v13 - v28;
  v39 = v13 - v28;
  v38 = v6;
  v32 = 1;
  v37 = v7 & 1;
  outlined init with copy of DateComponents?(v6, v8);
  if ((*(v30 + 48))(v34, v32, v33) == 1)
  {
    outlined destroy of DateComponents?(v34);
  }

  else
  {
    (*(v30 + 32))(v29, v34, v33);
    DateComponents.date.getter();
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v23, v18, v19);
      v9 = Date.timeIntervalSinceNow.getter();
      v35 = v10 / -31557600.0;
      v14 = MEMORY[0x25F8897B0](v9);
      (*(v20 + 8))(v23, v19);
      (*(v30 + 8))(v29, v33);
      v15 = v14;
      v16 = 0;
      goto LABEL_9;
    }

    outlined destroy of Date?(v18);
    (*(v30 + 8))(v29, v33);
  }

  if (v26)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v13[2] = swift_allocError();
    *v11 = 19;
    swift_willThrow();
    return v13[1];
  }

  v15 = 0.0;
  v16 = 1;
LABEL_9:
  *&v36 = v15;
  BYTE4(v36) = v16 & 1;
  return v36;
}

uint64_t NightingalePFLModelType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

NightingaleTraining::NightingalePFLModelType_optional __swiftcall NightingalePFLModelType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
  }

  return 4;
}

Swift::Bool __swiftcall isSleepingWTNeeded(_:)(NightingaleTraining::NightingalePFLModelType a1)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

Swift::Bool __swiftcall isSHRNeeded(_:)(NightingaleTraining::NightingalePFLModelType a1)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

Swift::Double __swiftcall calculateDummyPeriodLength(urCycleLength:urPeriodLength:)(Swift::Double_optional urCycleLength, Swift::Double_optional urPeriodLength)
{
  if (urPeriodLength.is_nil || (v3 & 1) != 0 || v2 >= *&urCycleLength.is_nil)
  {
    return 4.0;
  }

  else
  {
    return v2;
  }
}

Swift::Int __swiftcall NightingalePFLModelType.numFeatures()()
{
  if (!v0 || v0 == 1)
  {
    return 5;
  }

  if (v0 == 2)
  {
    return 1;
  }

  return 4;
}

Swift::Int_optional __swiftcall featureIndex(_:_:)(NightingaleTraining::NightingaleModelFeatureType a1, NightingaleTraining::NightingalePFLModelType a2)
{
  if (a1)
  {
    switch(a1)
    {
      case NightingaleTraining_NightingaleModelFeatureType_SWT:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v9 = 1;
        }

        else
        {
          v9 = == infix<A>(_:_:)();
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 0;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_DaySHR10:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v8 = 1;
        }

        else
        {
          v8 = == infix<A>(_:_:)();
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 0;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_NightSHR10:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v7 = 1;
        }

        else
        {
          v7 = == infix<A>(_:_:)();
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 1;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_PSM:
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
          v10 = 3;
          v11 = 0;
        }

        else
        {
          if ((== infix<A>(_:_:)() & 1) == 0)
          {
            goto LABEL_48;
          }

          v10 = 2;
          v11 = 0;
        }

        break;
      default:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        v2 = == infix<A>(_:_:)();
        if (v2)
        {
          v5 = 1;
        }

        else
        {
          v5 = == infix<A>(_:_:)();
        }

        if (v5)
        {
          v10 = 4;
          v11 = 0;
          break;
        }

        if (== infix<A>(_:_:)())
        {
          v10 = 3;
          v11 = 0;
          break;
        }

LABEL_48:
        v10 = 0;
        v11 = 1;
        break;
    }
  }

  else
  {
    lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
    if (== infix<A>(_:_:)())
    {
      v12 = 1;
    }

    else
    {
      v12 = == infix<A>(_:_:)();
    }

    if (v12)
    {
      v10 = 2;
      v11 = 0;
    }

    else
    {
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        goto LABEL_48;
      }

      v10 = 1;
      v11 = 0;
    }
  }

  v3 = v10;
  v4 = v11 & 1;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

NightingaleTraining::NightingaleModelFeatureType_optional __swiftcall NightingaleModelFeatureType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
  }

  return 6;
}

uint64_t NightingaleModelFeatureType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
  }

  return 6;
}

NightingaleTraining::NightingalePFLTaskType_optional __swiftcall NightingalePFLTaskType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 6;
}

uint64_t NightingalePFLTaskType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 5;
}