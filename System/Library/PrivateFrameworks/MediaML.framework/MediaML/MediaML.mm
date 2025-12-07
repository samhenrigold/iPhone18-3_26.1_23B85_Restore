uint64_t sub_2586A65F4(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 1)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2586A6664(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t sub_2586A6F60()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2586A7050()
{
  v6 = type metadata accessor for DispatchTime();
  v4 = *(v6 - 8);
  v1 = *(v4 + 80);
  v2 = (v1 + 16) & ~v1;
  v5 = (v2 + *(v4 + 64) + v1) & ~v1;
  v7 = *(v4 + 8);
  v7(v0 + v2);
  (v7)(v0 + v5, v6);
  return swift_deallocObject();
}

uint64_t sub_2586A7B9C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2586A7C8C()
{
  v6 = type metadata accessor for DispatchTime();
  v4 = *(v6 - 8);
  v1 = *(v4 + 80);
  v2 = (v1 + 16) & ~v1;
  v5 = (v2 + *(v4 + 64) + v1) & ~v1;
  v7 = *(v4 + 8);
  v7(v0 + v2);
  (v7)(v0 + v5, v6);
  return swift_deallocObject();
}

uint64_t sub_2586A7F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  return *(swift_getOpaqueTypeConformance2() + 8);
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelEvaluation", 0xFuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DataValidation", 0xEuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static SQLiteDB.logger);
  __swift_project_value_buffer(v1, static SQLiteDB.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sql", 3uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static WifiModel.logger);
  __swift_project_value_buffer(v1, static WifiModel.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WifiModel", 9uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static CellularModel.logger);
  __swift_project_value_buffer(v1, static CellularModel.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CellularModel", 0xDuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static DataWriter.logger);
  __swift_project_value_buffer(v1, static DataWriter.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DataWriter", 0xAuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MediaML.logger);
  __swift_project_value_buffer(v1, static MediaML.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MediaML", 7uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

Swift::Double __swiftcall meanAbsolutePercentageError(yRealList:yPredList:)(Swift::OpaquePointer yRealList, Swift::OpaquePointer yPredList)
{
  rawValue = yPredList._rawValue;
  v143 = yRealList._rawValue;
  v141 = 0;
  v178 = 0;
  v177 = 0;
  v142 = 0;
  v165 = 0;
  v159 = 0;
  v155 = 0.0;
  v154 = 0.0;
  v144 = type metadata accessor for Logger();
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = *(v145 + 64);
  v2 = MEMORY[0x28223BE20](v143, rawValue);
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = &v47 - v149;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v150 = &v47 - v149;
  v178 = v4;
  v177 = v5;
  v151 = MEMORY[0x277D839F8];
  v153 = MEMORY[0x259C875E0]();
  v6 = MEMORY[0x259C875E0](rawValue, v151);
  if (v153 != v6)
  {
    v22 = v148;
    v23 = logger.unsafeMutableAddressor();
    (*(v146 + 16))(v22, v23, v144);

    v71 = 24;
    v85 = 7;
    v76 = swift_allocObject();
    *(v76 + 16) = v143;

    v86 = swift_allocObject();
    *(v86 + 16) = rawValue;
    v99 = Logger.logObject.getter();
    v72 = v99;
    v98 = static os_log_type_t.error.getter();
    v73 = v98;
    v80 = 17;
    v89 = swift_allocObject();
    v74 = v89;
    v79 = 0;
    *(v89 + 16) = 0;
    v90 = swift_allocObject();
    v75 = v90;
    v82 = 8;
    *(v90 + 16) = 8;
    v84 = 32;
    v24 = swift_allocObject();
    v25 = v76;
    v77 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in meanAbsolutePercentageError(yRealList:yPredList:);
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v77;
    v91 = v26;
    v78 = v26;
    *(v26 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v26 + 24) = v27;
    v92 = swift_allocObject();
    v81 = v92;
    *(v92 + 16) = v79;
    v93 = swift_allocObject();
    v83 = v93;
    *(v93 + 16) = v82;
    v28 = swift_allocObject();
    v29 = v86;
    v87 = v28;
    *(v28 + 16) = partial apply for implicit closure #2 in meanAbsolutePercentageError(yRealList:yPredList:);
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v87;
    v96 = v30;
    v88 = v30;
    *(v30 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v30 + 24) = v31;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v94 = _allocateUninitializedArray<A>(_:)();
    v95 = v32;

    v33 = v89;
    v34 = v95;
    *v95 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34[1] = v33;

    v35 = v90;
    v36 = v95;
    v95[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v36[3] = v35;

    v37 = v91;
    v38 = v95;
    v95[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v38[5] = v37;

    v39 = v92;
    v40 = v95;
    v95[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v40[7] = v39;

    v41 = v93;
    v42 = v95;
    v95[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v42[9] = v41;

    v43 = v95;
    v44 = v96;
    v95[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v43[11] = v44;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v99, v98))
    {
      v45 = v142;
      v65 = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = v65;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = 0;
      v66 = createStorage<A>(capacity:type:)(0, v62, v62);
      v64 = v66;
      v67 = createStorage<A>(capacity:type:)(v63, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v176 = v65;
      v175 = v66;
      v174 = v67;
      v68 = &v176;
      serialize(_:at:)(0, &v176);
      serialize(_:at:)(2, v68);
      v172 = partial apply for closure #1 in OSLogArguments.append(_:);
      v173 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v172, v68, &v175, &v174);
      v69 = v45;
      v70 = v45;
      if (v45)
      {
        v59 = 0;

        __break(1u);
      }

      else
      {
        v172 = closure #1 in OSLogArguments.append(_:)partial apply;
        v173 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
        v57 = 0;
        v58 = 0;
        v172 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v173 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
        v55 = 0;
        v56 = 0;
        v172 = closure #1 in OSLogArguments.append(_:)partial apply;
        v173 = v81;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
        v53 = 0;
        v54 = 0;
        v172 = closure #1 in OSLogArguments.append(_:)partial apply;
        v173 = v83;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
        v51 = 0;
        v52 = 0;
        v172 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v173 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
        v49 = 0;
        v50 = 0;
        _os_log_impl(&dword_2586A4000, v72, v73, "Length mismatch between yRealList(%ld) and yPredList(%ld", v61, 0x16u);
        v48 = 0;
        destroyStorage<A>(_:count:)(v64, 0, v62);
        destroyStorage<A>(_:count:)(v67, v48, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v61, MEMORY[0x277D84B78]);

        v60 = v49;
      }
    }

    else
    {
      v46 = v142;

      v60 = v46;
    }

    v47 = v60;

    (*(v146 + 8))(v148, v144);
    v123 = -1.0;
    v124 = v47;
    return v123;
  }

  v7 = v142;
  v169 = v143;
  v168 = rawValue;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  v133 = v134;
  v135 = lazy protocol witness table accessor for type [Double] and conformance [A]();
  zip<A, B>(_:_:)();
  v166 = v170;
  v167 = v171;
  v136 = &v47;
  MEMORY[0x28223BE20](&v47, v8);
  v137 = &v47 - 4;
  *(&v47 - 2) = closure #1 in meanAbsolutePercentageError(yRealList:yPredList:);
  *(&v47 - 1) = 0;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySdGACGMd, &_ss12Zip2SequenceVySaySdGACGMR);
  lazy protocol witness table accessor for type Zip2Sequence<[Double], [Double]> and conformance Zip2Sequence<A, B>();
  v9 = Sequence.filter(_:)();
  v139 = v7;
  v140 = v9;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v132 = v140;
    v165 = v140;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SdtMd, &_sSd_SdtMR);
    if (MEMORY[0x259C875E0](v132, v11) < 1)
    {
      v17 = v150;
      v18 = logger.unsafeMutableAddressor();
      (*(v146 + 16))(v17, v18, v144);
      v119 = Logger.logObject.getter();
      v116 = v119;
      v118 = static os_log_type_t.error.getter();
      v117 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v120 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v119, v118))
      {
        v19 = v139;
        v107 = static UnsafeMutablePointer.allocate(capacity:)();
        v103 = v107;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v105 = 0;
        v108 = createStorage<A>(capacity:type:)(0, v104, v104);
        v106 = v108;
        v109 = createStorage<A>(capacity:type:)(v105, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v164 = v107;
        v163 = v108;
        v162 = v109;
        v110 = 0;
        v111 = &v164;
        serialize(_:at:)(0, &v164);
        serialize(_:at:)(v110, v111);
        v161 = v120;
        v112 = &v47;
        MEMORY[0x28223BE20](&v47, v20);
        v113 = &v47 - 6;
        *(&v47 - 4) = v21;
        *(&v47 - 3) = &v163;
        *(&v47 - 2) = &v162;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v115 = v19;
        if (v19)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2586A4000, v116, v117, "Length of non-zero yReal & yPred is zero", v103, 2u);
          v101 = 0;
          destroyStorage<A>(_:count:)(v106, 0, v104);
          destroyStorage<A>(_:count:)(v109, v101, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v103, MEMORY[0x277D84B78]);

          v102 = v115;
        }
      }

      else
      {

        v102 = v139;
      }

      v100 = v102;

      (*(v146 + 8))(v150, v144);

      v123 = -1.0;
      v124 = v100;
      return v123;
    }

    v13 = v139;
    v160 = v132;
    v127 = &v47;
    MEMORY[0x28223BE20](&v47, v12);
    v128 = &v47 - 4;
    *(&v47 - 2) = closure #2 in meanAbsolutePercentageError(yRealList:yPredList:);
    *(&v47 - 1) = 0;
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySd_SdtGMd, &_sSaySd_SdtGMR);
    v14 = lazy protocol witness table accessor for type [(Double, Double)] and conformance [A]();
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Double, @unowned Double) -> (@unowned Double), v128, v129, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
    v130 = v13;
    v131 = v16;
    if (!v13)
    {
      v125 = v131;
      v159 = v131;
      v157 = v131;
      v156 = 0;
      Sequence.reduce<A>(_:_:)();
      v126 = 0;
      v121 = Double.init(_:)(v158);
      v155 = v121;
      v154 = MEMORY[0x259C875E0](v125, MEMORY[0x277D839F8]);
      v122 = v121 / v154;

      v123 = v122;
      v124 = v126;
      return v123;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

double closure #2 in meanAbsolutePercentageError(yRealList:yPredList:)(Swift::Double a1, Swift::Double a2)
{
  abs<A>(_:)();
  v3 = Double.init(_:)(v5);
  abs<A>(_:)();
  return v3 / Double.init(_:)(v4);
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
  v71[3] = a3;
  v71[2] = a4;
  v71[1] = a5;
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

  v71[0] = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v69);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v69 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
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
    v18 = v71[0];

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
      _assertionFailure(_:_:file:line:flags:)();
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
      outlined destroy of ContiguousArray<A1>(v71);
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

double implicit closure #3 in meanAbsolutePercentageError(yRealList:yPredList:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x259C87730](v3, a3);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
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

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply@<X0>(uint64_t *a1@<X8>)
{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[Double], [Double]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[Double], [Double]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[Double], [Double]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySdGACGMd, &_ss12Zip2SequenceVySaySdGACGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[Double], [Double]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

Swift::Double __swiftcall getMean(nums:)(Swift::OpaquePointer nums)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  v3 = Double.init(_:)(v4);
  return v3 / MEMORY[0x259C875E0](nums._rawValue, MEMORY[0x277D839F8]);
}

double implicit closure #1 in getMean(nums:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

Swift::Double __swiftcall getMedian(nums:)(Swift::OpaquePointer nums)
{
  v6 = MEMORY[0x259C875E0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence<>.sorted()();
  if (MEMORY[0x259C875E0]() % 2)
  {
    Array.subscript.getter();
    v3 = Double.init(_:)(v9);

    return v3;
  }

  Array.subscript.getter();
  result = v8;
  if (!__OFSUB__(v6 / 2, 1))
  {
    Array.subscript.getter();
    v4 = Double.init(_:)((v8 + v7) / 2.0);

    return v4;
  }

  __break(1u);
  return result;
}

{
  v5 = MEMORY[0x259C875E0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  Sequence<>.sorted()();
  if (MEMORY[0x259C875E0]() % 2)
  {
    Array.subscript.getter();

    return v8;
  }

  Array.subscript.getter();
  if (__OFSUB__(v5 / 2, 1))
  {
    __break(1u);
  }

  else
  {
    Array.subscript.getter();
    if (!__OFADD__(v7, v6))
    {

      return ((v7 + v6) / 2);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *getSteadyList(windowSize:rssiThreshold:rssiList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[5] = a1;
  v30[4] = a2;
  v30[3] = a3;
  v20 = MEMORY[0x259C875E0]();
  v30[2] = v20;
  v18 = a1 / 2;
  v30[1] = a1 / 2;
  v30[0] = _allocateUninitializedArray<A>(_:)();
  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    result = IndexingIterator.next()();
    if (v29)
    {
      v11 = v30[0];

      outlined destroy of [Int](v30);
      return v11;
    }

    if (v18 < v20)
    {
      if (v28 >= v18)
      {
        if (__OFSUB__(v28, v18))
        {
          goto LABEL_50;
        }

        result = max<A>(_:_:)();
        if (__OFADD__(v28, v18))
        {
          goto LABEL_51;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_52;
        }

        min<A>(_:_:)();
        v14 = v22;
        v15 = v23;
      }

      else
      {
        if (__OFADD__(v28, v18))
        {
          goto LABEL_53;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_54;
        }

        min<A>(_:_:)();
        v14 = v21;
        v15 = 0;
      }

      v16 = v14;
      v17 = v15;
    }

    else
    {
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_55;
      }

      v16 = v20 - 1;
      v17 = 0;
    }

    if (v16 < v17)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
    MutableCollection.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
    Sequence<>.max()();
    if (v27)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v13 = v26;
    }

    result = Sequence<>.min()();
    if (v25)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v12 = v24;
    }

    if (__OFSUB__(v13, v12))
    {
      break;
    }

    abs<A>(_:)();
    Array.append(_:)();
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getFlatList(durationThreshold:steadyList:)(uint64_t a1, uint64_t a2)
{
  v52[3] = a1;
  v52[2] = a2;
  v41 = MEMORY[0x259C875E0](a2, MEMORY[0x277D83B88]);
  v52[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  v2 = _allocateUninitializedArray<A>(_:)();
  result = v41;
  v52[0] = v2;
  if (v41 < a1)
  {
LABEL_97:
    v18 = v52[0];

    outlined destroy of [(start: Int, end: Int, count: Int)](v52);
    return v18;
  }

  if (!__OFSUB__(v41, 2))
  {
    if (v41 - 2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    for (i = 0; ; i = v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
      IndexingIterator.next()();
      if (v51)
      {
        break;
      }

      Array.subscript.getter();

      if (v49)
      {
        v35 = 0;
      }

      else
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_111;
        }

        Array.subscript.getter();
        v35 = v42 == 1;
      }

      if (v35)
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_110;
        }

        v31 = v50 + 1;
        v32 = v50 + 1;
        v33 = 0;
        v34 = v50 + 1;
      }

      else
      {
        Array.subscript.getter();

        if (v48 == 1)
        {
          if (__OFADD__(v50, 1))
          {
            goto LABEL_109;
          }

          Array.subscript.getter();
          v30 = v43 == 0;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          if (__OFSUB__(v50, i))
          {
            goto LABEL_106;
          }

          if (v50 - i >= a1)
          {
            if (__OFSUB__(v50, i))
            {
              goto LABEL_107;
            }

            if (__OFADD__(v50 - i, 1))
            {
              goto LABEL_108;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
            result = Array.append(_:)();
          }

          v27 = i;
          v28 = i;
          v29 = 0;
        }

        else
        {
          Array.subscript.getter();

          if (v47 == 1)
          {
            if (__OFADD__(v50, 1))
            {
              goto LABEL_105;
            }

            Array.subscript.getter();
            v26 = v44 == 1;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            v25 = 1;
          }

          else
          {
            Array.subscript.getter();

            if (v46)
            {
              v24 = 0;
            }

            else
            {
              if (__OFADD__(v50, 1))
              {
                goto LABEL_104;
              }

              Array.subscript.getter();
              v24 = v45 == 0;
            }

            if (v24)
            {
              v23 = 0;
            }

            else
            {
              v23 = v38;
            }

            v25 = v23;
          }

          v27 = v36;
          v28 = v37;
          v29 = v25;
        }

        v31 = v27;
        v32 = v28;
        v33 = v29;
        v34 = i;
      }

      if (__OFSUB__(v41, 2))
      {
        goto LABEL_99;
      }

      if (v50 == v41 - 2 && (v33 & 1) == 1)
      {
        v21 = v41 - 1;
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_102;
        }

        if (__OFSUB__(v21, v32))
        {
          goto LABEL_103;
        }

        v19 = v21 - v32 >= a1;
        v20 = v32;
      }

      else
      {
        v19 = 0;
        v20 = v31;
      }

      if (v19)
      {
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_100;
        }

        if (__OFSUB__(v41, v20))
        {
          goto LABEL_101;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
        Array.append(_:)();
      }

      v36 = v20;
      v37 = v32;
      v38 = v33;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42[0] = 0;
  v42[1] = 0;
  v43[9] = a1;
  v43[8] = a2;
  v43[7] = a3;
  v43[6] = a4;
  v43[5] = a5;
  v43[4] = a6;
  v43[3] = a7;
  v43[2] = a8;
  v43[1] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v43[0] = _allocateUninitializedArray<A>(_:)();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  if (MEMORY[0x259C875E0](a1, v9) > 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
    lazy protocol witness table accessor for type [(start: Int, end: Int, count: Int)] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMd, &_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMR);
      IndexingIterator.next()();
      if (v41)
      {
        break;
      }

      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
      lazy protocol witness table accessor for type [Double] and conformance [A]();
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
      lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>();
      nums = Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
      lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
      v29 = Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v28 = Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v27 = Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v26 = Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v40 < v39)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
      lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
      Array.init<A>(_:)();
      v21 = getMedian(nums:)(nums);
      v22 = getMedian(nums:)(v29);
      v23 = getMedian(nums:)(v28);
      v24 = getMedian(nums:)(v27);
      v25 = getMedian(nums:)(v26);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      Sequence<>.min()();
      if (v38)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v20 = v37;
      }

      Sequence<>.min()();
      if (v36)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v19 = v35;
      }

      lazy protocol witness table accessor for type [String] and conformance [A]();
      Sequence<>.min()();
      if (v34)
      {
        v17 = v33;
        v18 = v34;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v15 = MEMORY[0x277D83B88];
      v32 = MEMORY[0x259C875E0](v29);
      _allocateUninitializedArray<A>(_:)();
      v16 = v10;
      v11 = MEMORY[0x277D839F8];
      v12 = MEMORY[0x277D839F8];
      v10[3] = MEMORY[0x277D839F8];
      *v10 = v21;
      v10[7] = v12;
      *(v10 + 4) = v22;
      v10[11] = v11;
      *(v10 + 8) = v23;
      v10[15] = v11;
      *(v10 + 12) = v24;
      v10[19] = v11;
      *(v10 + 16) = v25;
      v10[23] = v15;
      v10[20] = v20;
      v10[27] = v15;
      v10[24] = v19;

      v16[31] = MEMORY[0x277D837D0];
      v16[28] = v17;
      v16[29] = v18;
      v16[35] = v15;
      v16[32] = v32;
      _finalizeUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
      Array.append(_:)();
    }

    outlined destroy of IndexingIterator<[(start: Int, end: Int, count: Int)]>(v42);
  }

  v14 = v43[0];

  outlined destroy of [[Any]](v43);
  return v14;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = getSteadyList(windowSize:rssiThreshold:rssiList:)(7, 5, a1);
  v18 = getFlatList(durationThreshold:steadyList:)(3, v19);
  v17 = getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v18, a1, a2, a3, a4, a5, a6, a7, a8);

  return v17;
}

Swift::Bool __swiftcall checkValidInterfaceType(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v12 = 0;
  v8 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v10 = v8;
  MEMORY[0x259C87380](v11);
  outlined destroy of String(&v10);
  if (v11[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v9;
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
    outlined destroy of Any?(v11);
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4 != *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() && v4 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
    return 0;
  }

  v12 = 1;
  return 1;
}

void *outlined destroy of Any?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

Swift::Bool __swiftcall checkValidThroughputTrue(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v11 = 0;
  v7 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v9 = v7;
  MEMORY[0x259C87380](v10);
  outlined destroy of String(&v9);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      v5 = v8;
      v6 = 0;
    }

    else
    {
      v5 = 0.0;
      v6 = 1;
    }

    v3 = v5;
    v4 = v6;
  }

  else
  {
    outlined destroy of Any?(v10);
    v3 = 0.0;
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v3 <= 0.0)
  {
    return 0;
  }

  v11 = 1;
  return 1;
}

Swift::Bool __swiftcall validateAppName(text:)(Swift::String text)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v22 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Za-z0-9./]{1,155}$", 0x16uLL, 1);
  type metadata accessor for NSRegularExpressionOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v21);
  v10 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v2;
    v18 = 0;
    v19 = String.count.getter();

    v6 = MEMORY[0x259C87400](text._countAndFlagsBits, text._object);

    type metadata accessor for NSMatchingOptions(0);
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v15 = 0;
    v16 = v19;
    v7 = [v10 matchesInString:v6 options:v17 range:{0, v19}];
    MEMORY[0x277D82BD8](v6);
    type metadata accessor for NSTextCheckingResult();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v7);
    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v11 = v12;
    v5 = v12 != 0;
    outlined destroy of NSTextCheckingResult?(&v11);

    MEMORY[0x277D82BD8](v10);
    return v5;
  }

  return result;
}

unint64_t type metadata accessor for NSRegularExpression()
{
  v2 = lazy cache variable for type metadata for NSRegularExpression;
  if (!lazy cache variable for type metadata for NSRegularExpression)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSRegularExpression);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSRegularExpressionOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSRegularExpressionOptions;
  if (!lazy cache variable for type metadata for NSRegularExpressionOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSRegularExpressionOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions()
{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSRegularExpression.__allocating_init(pattern:options:)(NSRegularExpression *__return_ptr retstr, Swift::String pattern, NSRegularExpressionOptions options)
{
  countAndFlagsBits = pattern._countAndFlagsBits;
  object = pattern._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSRegularExpression.init(pattern:options:)(countAndFlagsBits, object, options);
}

unint64_t type metadata accessor for NSMatchingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSMatchingOptions;
  if (!lazy cache variable for type metadata for NSMatchingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSMatchingOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  v2 = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSTextCheckingResult);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall validateSessionID(text:)(Swift::String text)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v22 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Z0-9]{8}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{12}$", 0x3EuLL, 1);
  type metadata accessor for NSRegularExpressionOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v21);
  v10 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v2;
    v18 = 0;
    v19 = String.count.getter();

    v6 = MEMORY[0x259C87400](text._countAndFlagsBits, text._object);

    type metadata accessor for NSMatchingOptions(0);
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v15 = 0;
    v16 = v19;
    v7 = [v10 matchesInString:v6 options:v17 range:{0, v19}];
    MEMORY[0x277D82BD8](v6);
    type metadata accessor for NSTextCheckingResult();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v7);
    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v11 = v12;
    v5 = v12 != 0;
    outlined destroy of NSTextCheckingResult?(&v11);

    MEMORY[0x277D82BD8](v10);
    return v5;
  }

  return result;
}

Swift::Bool __swiftcall validateSSID(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v36 = 0;
  v31 = 0;
  v38 = text;
  v37 = 0;
  v33 = String.count.getter();
  v34 = *maxSSIDLength.unsafeMutableAddressor();

  if (v34 < v33)
  {
    v29 = 1;
  }

  else
  {
    v28 = String.count.getter();
    v29 = v28 < *minSSIDLength.unsafeMutableAddressor();
  }

  v27 = v29;

  if (v29)
  {
    v25 = 0;
    v26 = v31;
  }

  else
  {
    v1 = v31;
    v18 = MEMORY[0x277D837D0];
    v17 = _allocateUninitializedArray<A>(_:)();
    v16 = v2;
    v14 = 6;
    v15 = 1;
    *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("select", 6uLL, 1);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("delete", 6uLL, 1);
    v4 = v15;
    v16[1] = v3;
    v16[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop table", 0xAuLL, v4);
    _finalizeUninitializedArray<A>(_:)();
    v19 = v5;
    v36 = v5;
    v35 = v5;

    v20 = &v11;
    MEMORY[0x28223BE20](&v11, v6);
    v21 = v10;
    v10[2] = countAndFlagsBits;
    v10[3] = v7;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v8 = Sequence.contains(where:)();
    v23 = v1;
    v24 = v8;
    v12 = v8;

    v13 = v12 ^ 1;
    v37 = (v12 ^ 1) & 1;

    v25 = v13;
    v26 = v23;
  }

  return v25 & 1;
}

uint64_t closure #1 in validateSSID(text:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  v7 = a2;
  v8 = a3;
  v6 = String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = BidirectionalCollection<>.starts<A>(with:)();
  outlined destroy of String(&v6);
  return v5 & 1;
}

Swift::Bool __swiftcall checkValidTextInputs(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v170 = partial apply for implicit closure #1 in checkValidTextInputs(data:);
  v171 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v172 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v173 = closure #1 in OSLogArguments.append(_:)partial apply;
  v174 = partial apply for closure #1 in OSLogArguments.append(_:);
  v175 = partial apply for implicit closure #2 in checkValidTextInputs(data:);
  v176 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v177 = closure #1 in OSLogArguments.append(_:)partial apply;
  v178 = closure #1 in OSLogArguments.append(_:)partial apply;
  v179 = closure #1 in OSLogArguments.append(_:)partial apply;
  v180 = partial apply for implicit closure #3 in checkValidTextInputs(data:);
  v181 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v182 = closure #1 in OSLogArguments.append(_:)partial apply;
  v183 = closure #1 in OSLogArguments.append(_:)partial apply;
  v184 = closure #1 in OSLogArguments.append(_:)partial apply;
  v240 = 0;
  v239 = 0;
  v235 = 0;
  v236 = 0;
  v185 = 0;
  v226 = 0;
  v227 = 0;
  v212 = 0;
  v213 = 0;
  v186 = type metadata accessor for Logger();
  v187 = *(v186 - 8);
  v188 = v186 - 8;
  v189 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](rawValue, v1);
  v190 = &v60 - v189;
  v191 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2, &v60 - v189);
  v192 = &v60 - v191;
  v193 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, &v60 - v191);
  v194 = &v60 - v193;
  v240 = v6;
  v239 = 0;
  v195 = *kMediaML_appName.unsafeMutableAddressor();

  v197 = &v237;
  v237 = v195;
  MEMORY[0x259C87380](v238);
  outlined destroy of String(v197);
  if (v238[3])
  {
    if (swift_dynamicCast())
    {
      v168 = v198;
      v169 = v199;
    }

    else
    {
      v168 = 0;
      v169 = 0;
    }

    v166 = v168;
    v167 = v169;
  }

  else
  {
    outlined destroy of Any?(v238);
    v166 = 0;
    v167 = 0;
  }

  v164 = v167;
  v165 = v166;
  if (!v167)
  {
    return 0;
  }

  v162 = v165;
  v163 = v164;
  v7._countAndFlagsBits = v165;
  v7._object = v164;
  v160 = v164;
  v161 = v165;
  v235 = v165;
  v236 = v164;
  if (validateAppName(text:)(v7))
  {
    v158 = *kMediaML_sessionID.unsafeMutableAddressor();

    v159 = &v228;
    v228 = v158;
    MEMORY[0x259C87380](v229);
    outlined destroy of String(v159);
    if (v229[3])
    {
      if (swift_dynamicCast())
      {
        v156 = v200;
        v157 = v201;
      }

      else
      {
        v156 = 0;
        v157 = 0;
      }

      v154 = v156;
      v155 = v157;
    }

    else
    {
      outlined destroy of Any?(v229);
      v154 = 0;
      v155 = 0;
    }

    v152 = v155;
    v153 = v154;
    if (!v155)
    {

      return 0;
    }

    v150 = v153;
    v151 = v152;
    v8._countAndFlagsBits = v153;
    v8._object = v152;
    v148 = v152;
    v149 = v153;
    v226 = v153;
    v227 = v152;
    if (validateSessionID(text:)(v8))
    {
      v146 = *kMediaML_interfaceType.unsafeMutableAddressor();

      v147 = &v219;
      v219 = v146;
      MEMORY[0x259C87380](v220);
      outlined destroy of String(v147);
      if (v220[3])
      {
        if (swift_dynamicCast())
        {
          v144 = v202;
          v145 = 0;
        }

        else
        {
          v144 = 0;
          v145 = 1;
        }

        v142 = v144;
        v143 = v145;
      }

      else
      {
        outlined destroy of Any?(v220);
        v142 = 0;
        v143 = 1;
      }

      v141 = v143;
      v140 = v142;
      v9 = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
      v215[4] = v140;
      v216 = v141 & 1;
      v217 = v9;
      v218 = 0;
      if (v141)
      {
        v139 = 0;
      }

      else
      {
        v203 = v140;
        v204 = v141 & 1;
        v139 = v140 == v217;
      }

      if (!v139)
      {
        goto LABEL_41;
      }

      v137 = *kMediaML_ssid.unsafeMutableAddressor();

      v138 = &v214;
      v214 = v137;
      MEMORY[0x259C87380](v215);
      outlined destroy of String(v138);
      if (v215[3])
      {
        if (swift_dynamicCast())
        {
          v135 = v205;
          v136 = v206;
        }

        else
        {
          v135 = 0;
          v136 = 0;
        }

        v133 = v135;
        v134 = v136;
      }

      else
      {
        outlined destroy of Any?(v215);
        v133 = 0;
        v134 = 0;
      }

      v131 = v134;
      v132 = v133;
      if (v134)
      {
        v129 = v132;
        v130 = v131;
        v10._countAndFlagsBits = v132;
        v10._object = v131;
        v127 = v131;
        v128 = v132;
        v212 = v132;
        v213 = v131;
        if (validateSSID(text:)(v10))
        {

LABEL_41:
          v239 = 1;

          return 1;
        }

        v11 = v194;
        v12 = logger.unsafeMutableAddressor();
        (*(v187 + 16))(v11, v12, v186);

        v115 = 32;
        v116 = 7;
        v13 = swift_allocObject();
        v14 = v127;
        v117 = v13;
        *(v13 + 16) = v128;
        *(v13 + 24) = v14;
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();
        v114 = 17;
        v119 = swift_allocObject();
        *(v119 + 16) = 32;
        v120 = swift_allocObject();
        *(v120 + 16) = 8;
        v15 = swift_allocObject();
        v16 = v117;
        v118 = v15;
        *(v15 + 16) = v180;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v118;
        v122 = v17;
        *(v17 + 16) = v181;
        *(v17 + 24) = v18;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v121 = _allocateUninitializedArray<A>(_:)();
        v123 = v19;

        v20 = v119;
        v21 = v123;
        *v123 = v182;
        v21[1] = v20;

        v22 = v120;
        v23 = v123;
        v123[2] = v183;
        v23[3] = v22;

        v24 = v122;
        v25 = v123;
        v123[4] = v184;
        v25[5] = v24;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v125, v126))
        {
          v26 = v185;
          v107 = static UnsafeMutablePointer.allocate(capacity:)();
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v108 = createStorage<A>(capacity:type:)(0, v106, v106);
          v109 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v110 = &v211;
          v211 = v107;
          v111 = &v210;
          v210 = v108;
          v112 = &v209;
          v209 = v109;
          serialize(_:at:)(2, &v211);
          serialize(_:at:)(1, v110);
          v207 = v182;
          v208 = v119;
          closure #1 in osLogInternal(_:log:type:)(&v207, v110, v111, v112);
          v113 = v26;
          if (v26)
          {

            __break(1u);
          }

          else
          {
            v207 = v183;
            v208 = v120;
            closure #1 in osLogInternal(_:log:type:)(&v207, &v211, &v210, &v209);
            v105 = 0;
            v207 = v184;
            v208 = v122;
            closure #1 in osLogInternal(_:log:type:)(&v207, &v211, &v210, &v209);
            _os_log_impl(&dword_2586A4000, v125, v126, "ssid in data directory failed validation: %s", v107, 0xCu);
            destroyStorage<A>(_:count:)(v108, 0, v106);
            destroyStorage<A>(_:count:)(v109, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x259C87730](v107, MEMORY[0x277D84B78]);
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v125);
        (*(v187 + 8))(v194, v186);

        return 0;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v27 = v192;
      v28 = logger.unsafeMutableAddressor();
      (*(v187 + 16))(v27, v28, v186);

      v92 = 32;
      v93 = 7;
      v29 = swift_allocObject();
      v30 = v148;
      v94 = v29;
      *(v29 + 16) = v149;
      *(v29 + 24) = v30;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      v91 = 17;
      v96 = swift_allocObject();
      *(v96 + 16) = 32;
      v97 = swift_allocObject();
      *(v97 + 16) = 8;
      v31 = swift_allocObject();
      v32 = v94;
      v95 = v31;
      *(v31 + 16) = v175;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v95;
      v99 = v33;
      *(v33 + 16) = v176;
      *(v33 + 24) = v34;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v98 = _allocateUninitializedArray<A>(_:)();
      v100 = v35;

      v36 = v96;
      v37 = v100;
      *v100 = v177;
      v37[1] = v36;

      v38 = v97;
      v39 = v100;
      v100[2] = v178;
      v39[3] = v38;

      v40 = v99;
      v41 = v100;
      v100[4] = v179;
      v41[5] = v40;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v102, v103))
      {
        v42 = v185;
        v84 = static UnsafeMutablePointer.allocate(capacity:)();
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v85 = createStorage<A>(capacity:type:)(0, v83, v83);
        v86 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v87 = &v225;
        v225 = v84;
        v88 = &v224;
        v224 = v85;
        v89 = &v223;
        v223 = v86;
        serialize(_:at:)(2, &v225);
        serialize(_:at:)(1, v87);
        v221 = v177;
        v222 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v221, v87, v88, v89);
        v90 = v42;
        if (v42)
        {

          __break(1u);
        }

        else
        {
          v221 = v178;
          v222 = v97;
          closure #1 in osLogInternal(_:log:type:)(&v221, &v225, &v224, &v223);
          v82 = 0;
          v221 = v179;
          v222 = v99;
          closure #1 in osLogInternal(_:log:type:)(&v221, &v225, &v224, &v223);
          _os_log_impl(&dword_2586A4000, v102, v103, "sessionID in data directory failed validation: %s", v84, 0xCu);
          destroyStorage<A>(_:count:)(v85, 0, v83);
          destroyStorage<A>(_:count:)(v86, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v84, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v102);
      (*(v187 + 8))(v192, v186);

      return 0;
    }
  }

  else
  {
    v43 = v190;
    v44 = logger.unsafeMutableAddressor();
    (*(v187 + 16))(v43, v44, v186);

    v70 = 32;
    v71 = 7;
    v45 = swift_allocObject();
    v46 = v160;
    v72 = v45;
    *(v45 + 16) = v161;
    *(v45 + 24) = v46;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v69 = 17;
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v47 = swift_allocObject();
    v48 = v72;
    v73 = v47;
    *(v47 + 16) = v170;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v73;
    v77 = v49;
    *(v49 + 16) = v171;
    *(v49 + 24) = v50;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v76 = _allocateUninitializedArray<A>(_:)();
    v78 = v51;

    v52 = v74;
    v53 = v78;
    *v78 = v172;
    v53[1] = v52;

    v54 = v75;
    v55 = v78;
    v78[2] = v173;
    v55[3] = v54;

    v56 = v77;
    v57 = v78;
    v78[4] = v174;
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v80, v81))
    {
      v58 = v185;
      v62 = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = createStorage<A>(capacity:type:)(0, v61, v61);
      v64 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v65 = &v234;
      v234 = v62;
      v66 = &v233;
      v233 = v63;
      v67 = &v232;
      v232 = v64;
      serialize(_:at:)(2, &v234);
      serialize(_:at:)(1, v65);
      v230 = v172;
      v231 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v230, v65, v66, v67);
      v68 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v230 = v173;
        v231 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v230, &v234, &v233, &v232);
        v60 = 0;
        v230 = v174;
        v231 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v230, &v234, &v233, &v232);
        _os_log_impl(&dword_2586A4000, v80, v81, "AppName in data directory failed validation: %s", v62, 0xCu);
        destroyStorage<A>(_:count:)(v63, 0, v61);
        destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v62, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v80);
    (*(v187 + 8))(v190, v186);

    return 0;
  }
}

Swift::Bool __swiftcall checkValidNumericInputRange(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v443 = partial apply for implicit closure #11 in checkValidNumericInputRange(data:);
  v444 = _sSiIegd_SiIegr_TRTA_0;
  v445 = closure #1 in OSLogArguments.append(_:)partial apply;
  v446 = closure #1 in OSLogArguments.append(_:)partial apply;
  v447 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v448 = partial apply for implicit closure #13 in checkValidNumericInputRange(data:);
  v449 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v450 = closure #1 in OSLogArguments.append(_:)partial apply;
  v451 = closure #1 in OSLogArguments.append(_:)partial apply;
  v452 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v453 = partial apply for implicit closure #15 in checkValidNumericInputRange(data:);
  v454 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v455 = closure #1 in OSLogArguments.append(_:)partial apply;
  v456 = closure #1 in OSLogArguments.append(_:)partial apply;
  v457 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v458 = partial apply for implicit closure #17 in checkValidNumericInputRange(data:);
  v459 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v460 = closure #1 in OSLogArguments.append(_:)partial apply;
  v461 = closure #1 in OSLogArguments.append(_:)partial apply;
  v462 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v463 = partial apply for implicit closure #19 in checkValidNumericInputRange(data:);
  v464 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v465 = closure #1 in OSLogArguments.append(_:)partial apply;
  v466 = closure #1 in OSLogArguments.append(_:)partial apply;
  v467 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v468 = partial apply for implicit closure #21 in checkValidNumericInputRange(data:);
  v469 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v470 = closure #1 in OSLogArguments.append(_:)partial apply;
  v471 = closure #1 in OSLogArguments.append(_:)partial apply;
  v472 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v473 = partial apply for implicit closure #23 in checkValidNumericInputRange(data:);
  v474 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  v475 = closure #1 in OSLogArguments.append(_:)partial apply;
  v476 = closure #1 in OSLogArguments.append(_:)partial apply;
  v477 = partial apply for closure #1 in OSLogArguments.append(_:);
  v478 = partial apply for implicit closure #25 in checkValidNumericInputRange(data:);
  v479 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v480 = closure #1 in OSLogArguments.append(_:)partial apply;
  v481 = closure #1 in OSLogArguments.append(_:)partial apply;
  v482 = closure #1 in OSLogArguments.append(_:)partial apply;
  v483 = partial apply for implicit closure #27 in checkValidNumericInputRange(data:);
  v484 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v485 = closure #1 in OSLogArguments.append(_:)partial apply;
  v486 = closure #1 in OSLogArguments.append(_:)partial apply;
  v487 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v614 = 0;
  v613 = 0;
  v608 = 0;
  v603 = 0;
  v598 = 0;
  v593 = 0;
  v588 = 0;
  v583 = 0;
  v578 = 0.0;
  v573 = 0.0;
  v568 = 0;
  v488 = 0;
  v489 = type metadata accessor for Logger();
  v490 = *(v489 - 8);
  v491 = v489 - 8;
  v492 = *(v490 + 64);
  v493 = (v492 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](rawValue, v1);
  v494 = &v146 - v493;
  v495 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2, &v146 - v493);
  v496 = &v146 - v495;
  v497 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, &v146 - v495);
  v498 = &v146 - v497;
  v499 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6, &v146 - v497);
  v500 = &v146 - v499;
  v501 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, &v146 - v499);
  v502 = &v146 - v501;
  v503 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10, &v146 - v501);
  v504 = &v146 - v503;
  v505 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12, &v146 - v503);
  v506 = &v146 - v505;
  v507 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14, &v146 - v505);
  v508 = &v146 - v507;
  v509 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16, &v146 - v507);
  v510 = &v146 - v509;
  v614 = v18;
  v613 = 0;
  v511 = *kMediaML_rssi.unsafeMutableAddressor();

  v513 = &v611;
  v611 = v511;
  MEMORY[0x259C87380](v612);
  outlined destroy of String(v513);
  if (v612[3])
  {
    if (swift_dynamicCast())
    {
      v441 = v514;
      v442 = 0;
    }

    else
    {
      v441 = 0;
      v442 = 1;
    }

    v439 = v441;
    v440 = v442;
  }

  else
  {
    outlined destroy of Any?(v612);
    v439 = 0;
    v440 = 1;
  }

  v609 = v439;
  v610 = v440 & 1;
  if (v440)
  {
    v438 = 0;
  }

  else
  {
    v438 = v609;
  }

  v435 = v438;
  v608 = v438;
  v436 = *kMediaML_rsrp.unsafeMutableAddressor();

  v437 = &v606;
  v606 = v436;
  MEMORY[0x259C87380](v607);
  outlined destroy of String(v437);
  if (v607[3])
  {
    if (swift_dynamicCast())
    {
      v433 = v515;
      v434 = 0;
    }

    else
    {
      v433 = 0;
      v434 = 1;
    }

    v431 = v433;
    v432 = v434;
  }

  else
  {
    outlined destroy of Any?(v607);
    v431 = 0;
    v432 = 1;
  }

  v604 = v431;
  v605 = v432 & 1;
  if (v432)
  {
    v430 = 0;
  }

  else
  {
    v430 = v604;
  }

  v427 = v430;
  v603 = v430;
  v428 = *kMediaML_rsrq.unsafeMutableAddressor();

  v429 = &v601;
  v601 = v428;
  MEMORY[0x259C87380](v602);
  outlined destroy of String(v429);
  if (v602[3])
  {
    if (swift_dynamicCast())
    {
      v425 = v516;
      v426 = 0;
    }

    else
    {
      v425 = 0;
      v426 = 1;
    }

    v423 = v425;
    v424 = v426;
  }

  else
  {
    outlined destroy of Any?(v602);
    v423 = 0;
    v424 = 1;
  }

  v599 = v423;
  v600 = v424 & 1;
  if (v424)
  {
    v422 = 0;
  }

  else
  {
    v422 = v599;
  }

  v419 = v422;
  v598 = v422;
  v420 = *kMediaML_rscp.unsafeMutableAddressor();

  v421 = &v596;
  v596 = v420;
  MEMORY[0x259C87380](v597);
  outlined destroy of String(v421);
  if (v597[3])
  {
    if (swift_dynamicCast())
    {
      v417 = v517;
      v418 = 0;
    }

    else
    {
      v417 = 0;
      v418 = 1;
    }

    v415 = v417;
    v416 = v418;
  }

  else
  {
    outlined destroy of Any?(v597);
    v415 = 0;
    v416 = 1;
  }

  v594 = v415;
  v595 = v416 & 1;
  if (v416)
  {
    v414 = 0;
  }

  else
  {
    v414 = v594;
  }

  v411 = v414;
  v593 = v414;
  v412 = *kMediaML_noise.unsafeMutableAddressor();

  v413 = &v591;
  v591 = v412;
  MEMORY[0x259C87380](v592);
  outlined destroy of String(v413);
  if (v592[3])
  {
    if (swift_dynamicCast())
    {
      v409 = v518;
      v410 = 0;
    }

    else
    {
      v409 = 0;
      v410 = 1;
    }

    v407 = v409;
    v408 = v410;
  }

  else
  {
    outlined destroy of Any?(v592);
    v407 = 0;
    v408 = 1;
  }

  v589 = v407;
  v590 = v408 & 1;
  if (v408)
  {
    v406 = 0;
  }

  else
  {
    v406 = v589;
  }

  v403 = v406;
  v588 = v406;
  v404 = *kMediaML_bars.unsafeMutableAddressor();

  v405 = &v586;
  v586 = v404;
  MEMORY[0x259C87380](v587);
  outlined destroy of String(v405);
  if (v587[3])
  {
    if (swift_dynamicCast())
    {
      v401 = v519;
      v402 = 0;
    }

    else
    {
      v401 = 0;
      v402 = 1;
    }

    v399 = v401;
    v400 = v402;
  }

  else
  {
    outlined destroy of Any?(v587);
    v399 = 0;
    v400 = 1;
  }

  v584 = v399;
  v585 = v400 & 1;
  if (v400)
  {
    v398 = 0;
  }

  else
  {
    v398 = v584;
  }

  v395 = v398;
  v583 = v398;
  v396 = *kMediaML_rxRate.unsafeMutableAddressor();

  v397 = &v581;
  v581 = v396;
  MEMORY[0x259C87380](v582);
  outlined destroy of String(v397);
  if (v582[3])
  {
    if (swift_dynamicCast())
    {
      v393 = v520;
      v394 = 0;
    }

    else
    {
      v393 = 0.0;
      v394 = 1;
    }

    v391 = v393;
    v392 = v394;
  }

  else
  {
    outlined destroy of Any?(v582);
    v391 = 0.0;
    v392 = 1;
  }

  v579 = v391;
  v580 = v392 & 1;
  if (v392)
  {
    v390 = 0.0;
  }

  else
  {
    v390 = v579;
  }

  v387 = v390;
  v578 = v390;
  v388 = *kMediaML_txRate.unsafeMutableAddressor();

  v389 = &v576;
  v576 = v388;
  MEMORY[0x259C87380](v577);
  outlined destroy of String(v389);
  if (v577[3])
  {
    if (swift_dynamicCast())
    {
      v385 = v521;
      v386 = 0;
    }

    else
    {
      v385 = 0.0;
      v386 = 1;
    }

    v383 = v385;
    v384 = v386;
  }

  else
  {
    outlined destroy of Any?(v577);
    v383 = 0.0;
    v384 = 1;
  }

  v574 = v383;
  v575 = v384 & 1;
  if (v384)
  {
    v382 = 0.0;
  }

  else
  {
    v382 = v574;
  }

  v379 = v382;
  v573 = v382;
  v380 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v381 = &v571;
  v571 = v380;
  MEMORY[0x259C87380](v572);
  outlined destroy of String(v381);
  if (v572[3])
  {
    if (swift_dynamicCast())
    {
      v377 = v522;
      v378 = 0;
    }

    else
    {
      v377 = 0;
      v378 = 1;
    }

    v375 = v377;
    v376 = v378;
  }

  else
  {
    outlined destroy of Any?(v572);
    v375 = 0;
    v376 = 1;
  }

  v569 = v375;
  v570 = v376 & 1;
  if (v376)
  {
    v374 = 0;
  }

  else
  {
    v374 = v569;
  }

  v373 = v374;
  v568 = v374;
  if (v435 <= 0 && v435 >= *minSignalStrength.unsafeMutableAddressor())
  {
    if (v427 <= 0 && v427 >= *minSignalStrength.unsafeMutableAddressor())
    {
      if (v419 <= 0 && v419 >= *minSignalStrength.unsafeMutableAddressor())
      {
        if (v411 <= 0 && v411 >= *minSignalStrength.unsafeMutableAddressor())
        {
          if (v403 <= 0 && v403 >= *minNoise.unsafeMutableAddressor())
          {
            if ((v395 & 0x8000000000000000) == 0 && *maxBars.unsafeMutableAddressor() >= v395)
            {
              if (v387 >= 0.0 && v387 <= *maxRxRate.unsafeMutableAddressor())
              {
                if (v379 >= 0.0 && v379 <= *maxTxRate.unsafeMutableAddressor())
                {
                  if (v373 > 0 && *maxThroughput.unsafeMutableAddressor() >= v373)
                  {
                    v613 = 1;
                    return 1;
                  }

                  else
                  {
                    v19 = v510;
                    v20 = logger.unsafeMutableAddressor();
                    (*(v490 + 16))(v19, v20, v489);
                    v352 = 7;
                    v353 = swift_allocObject();
                    *(v353 + 16) = v373;
                    v361 = Logger.logObject.getter();
                    v362 = static os_log_type_t.error.getter();
                    v350 = 17;
                    v355 = swift_allocObject();
                    *(v355 + 16) = 0;
                    v356 = swift_allocObject();
                    *(v356 + 16) = 8;
                    v351 = 32;
                    v21 = swift_allocObject();
                    v22 = v353;
                    v354 = v21;
                    *(v21 + 16) = v483;
                    *(v21 + 24) = v22;
                    v23 = swift_allocObject();
                    v24 = v354;
                    v358 = v23;
                    *(v23 + 16) = v484;
                    *(v23 + 24) = v24;
                    v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                    v357 = _allocateUninitializedArray<A>(_:)();
                    v359 = v25;

                    v26 = v355;
                    v27 = v359;
                    *v359 = v485;
                    v27[1] = v26;

                    v28 = v356;
                    v29 = v359;
                    v359[2] = v486;
                    v29[3] = v28;

                    v30 = v358;
                    v31 = v359;
                    v359[4] = v487;
                    v31[5] = v30;
                    _finalizeUninitializedArray<A>(_:)();

                    if (os_log_type_enabled(v361, v362))
                    {
                      v32 = v488;
                      v343 = static UnsafeMutablePointer.allocate(capacity:)();
                      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                      v342 = 0;
                      v344 = createStorage<A>(capacity:type:)(0, v341, v341);
                      v345 = createStorage<A>(capacity:type:)(v342, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                      v346 = &v527;
                      v527 = v343;
                      v347 = &v526;
                      v526 = v344;
                      v348 = &v525;
                      v525 = v345;
                      serialize(_:at:)(0, &v527);
                      serialize(_:at:)(1, v346);
                      v523 = v485;
                      v524 = v355;
                      closure #1 in osLogInternal(_:log:type:)(&v523, v346, v347, v348);
                      v349 = v32;
                      if (v32)
                      {

                        __break(1u);
                      }

                      else
                      {
                        v523 = v486;
                        v524 = v356;
                        closure #1 in osLogInternal(_:log:type:)(&v523, &v527, &v526, &v525);
                        v340 = 0;
                        v523 = v487;
                        v524 = v358;
                        closure #1 in osLogInternal(_:log:type:)(&v523, &v527, &v526, &v525);
                        _os_log_impl(&dword_2586A4000, v361, v362, "throughput_true in data directory failed validation: %ld", v343, 0xCu);
                        v339 = 0;
                        destroyStorage<A>(_:count:)(v344, 0, v341);
                        destroyStorage<A>(_:count:)(v345, v339, MEMORY[0x277D84F70] + 8);
                        MEMORY[0x259C87730](v343, MEMORY[0x277D84B78]);
                      }
                    }

                    else
                    {
                    }

                    MEMORY[0x277D82BD8](v361);
                    (*(v490 + 8))(v510, v489);
                    return 0;
                  }
                }

                else
                {
                  v33 = v508;
                  v34 = logger.unsafeMutableAddressor();
                  (*(v490 + 16))(v33, v34, v489);
                  v328 = 7;
                  v329 = swift_allocObject();
                  *(v329 + 16) = v379;
                  v337 = Logger.logObject.getter();
                  v338 = static os_log_type_t.error.getter();
                  v326 = 17;
                  v331 = swift_allocObject();
                  *(v331 + 16) = 0;
                  v332 = swift_allocObject();
                  *(v332 + 16) = 8;
                  v327 = 32;
                  v35 = swift_allocObject();
                  v36 = v329;
                  v330 = v35;
                  *(v35 + 16) = v478;
                  *(v35 + 24) = v36;
                  v37 = swift_allocObject();
                  v38 = v330;
                  v334 = v37;
                  *(v37 + 16) = v479;
                  *(v37 + 24) = v38;
                  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                  v333 = _allocateUninitializedArray<A>(_:)();
                  v335 = v39;

                  v40 = v331;
                  v41 = v335;
                  *v335 = v480;
                  v41[1] = v40;

                  v42 = v332;
                  v43 = v335;
                  v335[2] = v481;
                  v43[3] = v42;

                  v44 = v334;
                  v45 = v335;
                  v335[4] = v482;
                  v45[5] = v44;
                  _finalizeUninitializedArray<A>(_:)();

                  if (os_log_type_enabled(v337, v338))
                  {
                    v46 = v488;
                    v319 = static UnsafeMutablePointer.allocate(capacity:)();
                    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    v318 = 0;
                    v320 = createStorage<A>(capacity:type:)(0, v317, v317);
                    v321 = createStorage<A>(capacity:type:)(v318, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                    v322 = &v532;
                    v532 = v319;
                    v323 = &v531;
                    v531 = v320;
                    v324 = &v530;
                    v530 = v321;
                    serialize(_:at:)(0, &v532);
                    serialize(_:at:)(1, v322);
                    v528 = v480;
                    v529 = v331;
                    closure #1 in osLogInternal(_:log:type:)(&v528, v322, v323, v324);
                    v325 = v46;
                    if (v46)
                    {

                      __break(1u);
                    }

                    else
                    {
                      v528 = v481;
                      v529 = v332;
                      closure #1 in osLogInternal(_:log:type:)(&v528, &v532, &v531, &v530);
                      v316 = 0;
                      v528 = v482;
                      v529 = v334;
                      closure #1 in osLogInternal(_:log:type:)(&v528, &v532, &v531, &v530);
                      _os_log_impl(&dword_2586A4000, v337, v338, "txRate in data directory failed validation: %f", v319, 0xCu);
                      v315 = 0;
                      destroyStorage<A>(_:count:)(v320, 0, v317);
                      destroyStorage<A>(_:count:)(v321, v315, MEMORY[0x277D84F70] + 8);
                      MEMORY[0x259C87730](v319, MEMORY[0x277D84B78]);
                    }
                  }

                  else
                  {
                  }

                  MEMORY[0x277D82BD8](v337);
                  (*(v490 + 8))(v508, v489);
                  return 0;
                }
              }

              else
              {
                v47 = v506;
                v48 = logger.unsafeMutableAddressor();
                (*(v490 + 16))(v47, v48, v489);
                v304 = 7;
                v305 = swift_allocObject();
                *(v305 + 16) = v387;
                v313 = Logger.logObject.getter();
                v314 = static os_log_type_t.error.getter();
                v302 = 17;
                v307 = swift_allocObject();
                *(v307 + 16) = 0;
                v308 = swift_allocObject();
                *(v308 + 16) = 8;
                v303 = 32;
                v49 = swift_allocObject();
                v50 = v305;
                v306 = v49;
                *(v49 + 16) = v473;
                *(v49 + 24) = v50;
                v51 = swift_allocObject();
                v52 = v306;
                v310 = v51;
                *(v51 + 16) = v474;
                *(v51 + 24) = v52;
                v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v309 = _allocateUninitializedArray<A>(_:)();
                v311 = v53;

                v54 = v307;
                v55 = v311;
                *v311 = v475;
                v55[1] = v54;

                v56 = v308;
                v57 = v311;
                v311[2] = v476;
                v57[3] = v56;

                v58 = v310;
                v59 = v311;
                v311[4] = v477;
                v59[5] = v58;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v313, v314))
                {
                  v60 = v488;
                  v295 = static UnsafeMutablePointer.allocate(capacity:)();
                  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v294 = 0;
                  v296 = createStorage<A>(capacity:type:)(0, v293, v293);
                  v297 = createStorage<A>(capacity:type:)(v294, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v298 = &v537;
                  v537 = v295;
                  v299 = &v536;
                  v536 = v296;
                  v300 = &v535;
                  v535 = v297;
                  serialize(_:at:)(0, &v537);
                  serialize(_:at:)(1, v298);
                  v533 = v475;
                  v534 = v307;
                  closure #1 in osLogInternal(_:log:type:)(&v533, v298, v299, v300);
                  v301 = v60;
                  if (v60)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v533 = v476;
                    v534 = v308;
                    closure #1 in osLogInternal(_:log:type:)(&v533, &v537, &v536, &v535);
                    v292 = 0;
                    v533 = v477;
                    v534 = v310;
                    closure #1 in osLogInternal(_:log:type:)(&v533, &v537, &v536, &v535);
                    _os_log_impl(&dword_2586A4000, v313, v314, "rxRate in data directory failed validation: %f", v295, 0xCu);
                    v291 = 0;
                    destroyStorage<A>(_:count:)(v296, 0, v293);
                    destroyStorage<A>(_:count:)(v297, v291, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x259C87730](v295, MEMORY[0x277D84B78]);
                  }
                }

                else
                {
                }

                MEMORY[0x277D82BD8](v313);
                (*(v490 + 8))(v506, v489);
                return 0;
              }
            }

            else
            {
              v61 = v504;
              v62 = logger.unsafeMutableAddressor();
              (*(v490 + 16))(v61, v62, v489);
              v280 = 7;
              v281 = swift_allocObject();
              *(v281 + 16) = v395;
              v289 = Logger.logObject.getter();
              v290 = static os_log_type_t.error.getter();
              v278 = 17;
              v283 = swift_allocObject();
              *(v283 + 16) = 0;
              v284 = swift_allocObject();
              *(v284 + 16) = 8;
              v279 = 32;
              v63 = swift_allocObject();
              v64 = v281;
              v282 = v63;
              *(v63 + 16) = v468;
              *(v63 + 24) = v64;
              v65 = swift_allocObject();
              v66 = v282;
              v286 = v65;
              *(v65 + 16) = v469;
              *(v65 + 24) = v66;
              v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v285 = _allocateUninitializedArray<A>(_:)();
              v287 = v67;

              v68 = v283;
              v69 = v287;
              *v287 = v470;
              v69[1] = v68;

              v70 = v284;
              v71 = v287;
              v287[2] = v471;
              v71[3] = v70;

              v72 = v286;
              v73 = v287;
              v287[4] = v472;
              v73[5] = v72;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v289, v290))
              {
                v74 = v488;
                v271 = static UnsafeMutablePointer.allocate(capacity:)();
                v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v270 = 0;
                v272 = createStorage<A>(capacity:type:)(0, v269, v269);
                v273 = createStorage<A>(capacity:type:)(v270, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v274 = &v542;
                v542 = v271;
                v275 = &v541;
                v541 = v272;
                v276 = &v540;
                v540 = v273;
                serialize(_:at:)(0, &v542);
                serialize(_:at:)(1, v274);
                v538 = v470;
                v539 = v283;
                closure #1 in osLogInternal(_:log:type:)(&v538, v274, v275, v276);
                v277 = v74;
                if (v74)
                {

                  __break(1u);
                }

                else
                {
                  v538 = v471;
                  v539 = v284;
                  closure #1 in osLogInternal(_:log:type:)(&v538, &v542, &v541, &v540);
                  v268 = 0;
                  v538 = v472;
                  v539 = v286;
                  closure #1 in osLogInternal(_:log:type:)(&v538, &v542, &v541, &v540);
                  _os_log_impl(&dword_2586A4000, v289, v290, "bars in data directory failed validation: %ld", v271, 0xCu);
                  v267 = 0;
                  destroyStorage<A>(_:count:)(v272, 0, v269);
                  destroyStorage<A>(_:count:)(v273, v267, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x259C87730](v271, MEMORY[0x277D84B78]);
                }
              }

              else
              {
              }

              MEMORY[0x277D82BD8](v289);
              (*(v490 + 8))(v504, v489);
              return 0;
            }
          }

          else
          {
            v75 = v502;
            v76 = logger.unsafeMutableAddressor();
            (*(v490 + 16))(v75, v76, v489);
            v256 = 7;
            v257 = swift_allocObject();
            *(v257 + 16) = v403;
            v265 = Logger.logObject.getter();
            v266 = static os_log_type_t.error.getter();
            v254 = 17;
            v259 = swift_allocObject();
            *(v259 + 16) = 0;
            v260 = swift_allocObject();
            *(v260 + 16) = 8;
            v255 = 32;
            v77 = swift_allocObject();
            v78 = v257;
            v258 = v77;
            *(v77 + 16) = v463;
            *(v77 + 24) = v78;
            v79 = swift_allocObject();
            v80 = v258;
            v262 = v79;
            *(v79 + 16) = v464;
            *(v79 + 24) = v80;
            v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v261 = _allocateUninitializedArray<A>(_:)();
            v263 = v81;

            v82 = v259;
            v83 = v263;
            *v263 = v465;
            v83[1] = v82;

            v84 = v260;
            v85 = v263;
            v263[2] = v466;
            v85[3] = v84;

            v86 = v262;
            v87 = v263;
            v263[4] = v467;
            v87[5] = v86;
            _finalizeUninitializedArray<A>(_:)();

            if (os_log_type_enabled(v265, v266))
            {
              v88 = v488;
              v247 = static UnsafeMutablePointer.allocate(capacity:)();
              v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v246 = 0;
              v248 = createStorage<A>(capacity:type:)(0, v245, v245);
              v249 = createStorage<A>(capacity:type:)(v246, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v250 = &v547;
              v547 = v247;
              v251 = &v546;
              v546 = v248;
              v252 = &v545;
              v545 = v249;
              serialize(_:at:)(0, &v547);
              serialize(_:at:)(1, v250);
              v543 = v465;
              v544 = v259;
              closure #1 in osLogInternal(_:log:type:)(&v543, v250, v251, v252);
              v253 = v88;
              if (v88)
              {

                __break(1u);
              }

              else
              {
                v543 = v466;
                v544 = v260;
                closure #1 in osLogInternal(_:log:type:)(&v543, &v547, &v546, &v545);
                v244 = 0;
                v543 = v467;
                v544 = v262;
                closure #1 in osLogInternal(_:log:type:)(&v543, &v547, &v546, &v545);
                _os_log_impl(&dword_2586A4000, v265, v266, "noise in data directory failed validation: %ld", v247, 0xCu);
                v243 = 0;
                destroyStorage<A>(_:count:)(v248, 0, v245);
                destroyStorage<A>(_:count:)(v249, v243, MEMORY[0x277D84F70] + 8);
                MEMORY[0x259C87730](v247, MEMORY[0x277D84B78]);
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v265);
            (*(v490 + 8))(v502, v489);
            return 0;
          }
        }

        else
        {
          v89 = v500;
          v90 = logger.unsafeMutableAddressor();
          (*(v490 + 16))(v89, v90, v489);
          v232 = 7;
          v233 = swift_allocObject();
          *(v233 + 16) = v411;
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.error.getter();
          v230 = 17;
          v235 = swift_allocObject();
          *(v235 + 16) = 0;
          v236 = swift_allocObject();
          *(v236 + 16) = 8;
          v231 = 32;
          v91 = swift_allocObject();
          v92 = v233;
          v234 = v91;
          *(v91 + 16) = v458;
          *(v91 + 24) = v92;
          v93 = swift_allocObject();
          v94 = v234;
          v238 = v93;
          *(v93 + 16) = v459;
          *(v93 + 24) = v94;
          v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v237 = _allocateUninitializedArray<A>(_:)();
          v239 = v95;

          v96 = v235;
          v97 = v239;
          *v239 = v460;
          v97[1] = v96;

          v98 = v236;
          v99 = v239;
          v239[2] = v461;
          v99[3] = v98;

          v100 = v238;
          v101 = v239;
          v239[4] = v462;
          v101[5] = v100;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v241, v242))
          {
            v102 = v488;
            v223 = static UnsafeMutablePointer.allocate(capacity:)();
            v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v222 = 0;
            v224 = createStorage<A>(capacity:type:)(0, v221, v221);
            v225 = createStorage<A>(capacity:type:)(v222, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v226 = &v552;
            v552 = v223;
            v227 = &v551;
            v551 = v224;
            v228 = &v550;
            v550 = v225;
            serialize(_:at:)(0, &v552);
            serialize(_:at:)(1, v226);
            v548 = v460;
            v549 = v235;
            closure #1 in osLogInternal(_:log:type:)(&v548, v226, v227, v228);
            v229 = v102;
            if (v102)
            {

              __break(1u);
            }

            else
            {
              v548 = v461;
              v549 = v236;
              closure #1 in osLogInternal(_:log:type:)(&v548, &v552, &v551, &v550);
              v220 = 0;
              v548 = v462;
              v549 = v238;
              closure #1 in osLogInternal(_:log:type:)(&v548, &v552, &v551, &v550);
              _os_log_impl(&dword_2586A4000, v241, v242, "rscp in data directory failed validation: %ld", v223, 0xCu);
              v219 = 0;
              destroyStorage<A>(_:count:)(v224, 0, v221);
              destroyStorage<A>(_:count:)(v225, v219, MEMORY[0x277D84F70] + 8);
              MEMORY[0x259C87730](v223, MEMORY[0x277D84B78]);
            }
          }

          else
          {
          }

          MEMORY[0x277D82BD8](v241);
          (*(v490 + 8))(v500, v489);
          return 0;
        }
      }

      else
      {
        v103 = v498;
        v104 = logger.unsafeMutableAddressor();
        (*(v490 + 16))(v103, v104, v489);
        v208 = 7;
        v209 = swift_allocObject();
        *(v209 + 16) = v419;
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.error.getter();
        v206 = 17;
        v211 = swift_allocObject();
        *(v211 + 16) = 0;
        v212 = swift_allocObject();
        *(v212 + 16) = 8;
        v207 = 32;
        v105 = swift_allocObject();
        v106 = v209;
        v210 = v105;
        *(v105 + 16) = v453;
        *(v105 + 24) = v106;
        v107 = swift_allocObject();
        v108 = v210;
        v214 = v107;
        *(v107 + 16) = v454;
        *(v107 + 24) = v108;
        v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v213 = _allocateUninitializedArray<A>(_:)();
        v215 = v109;

        v110 = v211;
        v111 = v215;
        *v215 = v455;
        v111[1] = v110;

        v112 = v212;
        v113 = v215;
        v215[2] = v456;
        v113[3] = v112;

        v114 = v214;
        v115 = v215;
        v215[4] = v457;
        v115[5] = v114;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v217, v218))
        {
          v116 = v488;
          v199 = static UnsafeMutablePointer.allocate(capacity:)();
          v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v198 = 0;
          v200 = createStorage<A>(capacity:type:)(0, v197, v197);
          v201 = createStorage<A>(capacity:type:)(v198, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v202 = &v557;
          v557 = v199;
          v203 = &v556;
          v556 = v200;
          v204 = &v555;
          v555 = v201;
          serialize(_:at:)(0, &v557);
          serialize(_:at:)(1, v202);
          v553 = v455;
          v554 = v211;
          closure #1 in osLogInternal(_:log:type:)(&v553, v202, v203, v204);
          v205 = v116;
          if (v116)
          {

            __break(1u);
          }

          else
          {
            v553 = v456;
            v554 = v212;
            closure #1 in osLogInternal(_:log:type:)(&v553, &v557, &v556, &v555);
            v196 = 0;
            v553 = v457;
            v554 = v214;
            closure #1 in osLogInternal(_:log:type:)(&v553, &v557, &v556, &v555);
            _os_log_impl(&dword_2586A4000, v217, v218, "rsrq in data directory failed validation: %ld", v199, 0xCu);
            v195 = 0;
            destroyStorage<A>(_:count:)(v200, 0, v197);
            destroyStorage<A>(_:count:)(v201, v195, MEMORY[0x277D84F70] + 8);
            MEMORY[0x259C87730](v199, MEMORY[0x277D84B78]);
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v217);
        (*(v490 + 8))(v498, v489);
        return 0;
      }
    }

    else
    {
      v117 = v496;
      v118 = logger.unsafeMutableAddressor();
      (*(v490 + 16))(v117, v118, v489);
      v184 = 7;
      v185 = swift_allocObject();
      *(v185 + 16) = v427;
      v193 = Logger.logObject.getter();
      v194 = static os_log_type_t.error.getter();
      v182 = 17;
      v187 = swift_allocObject();
      *(v187 + 16) = 0;
      v188 = swift_allocObject();
      *(v188 + 16) = 8;
      v183 = 32;
      v119 = swift_allocObject();
      v120 = v185;
      v186 = v119;
      *(v119 + 16) = v448;
      *(v119 + 24) = v120;
      v121 = swift_allocObject();
      v122 = v186;
      v190 = v121;
      *(v121 + 16) = v449;
      *(v121 + 24) = v122;
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v189 = _allocateUninitializedArray<A>(_:)();
      v191 = v123;

      v124 = v187;
      v125 = v191;
      *v191 = v450;
      v125[1] = v124;

      v126 = v188;
      v127 = v191;
      v191[2] = v451;
      v127[3] = v126;

      v128 = v190;
      v129 = v191;
      v191[4] = v452;
      v129[5] = v128;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v193, v194))
      {
        v130 = v488;
        v175 = static UnsafeMutablePointer.allocate(capacity:)();
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v174 = 0;
        v176 = createStorage<A>(capacity:type:)(0, v173, v173);
        v177 = createStorage<A>(capacity:type:)(v174, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v178 = &v562;
        v562 = v175;
        v179 = &v561;
        v561 = v176;
        v180 = &v560;
        v560 = v177;
        serialize(_:at:)(0, &v562);
        serialize(_:at:)(1, v178);
        v558 = v450;
        v559 = v187;
        closure #1 in osLogInternal(_:log:type:)(&v558, v178, v179, v180);
        v181 = v130;
        if (v130)
        {

          __break(1u);
        }

        else
        {
          v558 = v451;
          v559 = v188;
          closure #1 in osLogInternal(_:log:type:)(&v558, &v562, &v561, &v560);
          v172 = 0;
          v558 = v452;
          v559 = v190;
          closure #1 in osLogInternal(_:log:type:)(&v558, &v562, &v561, &v560);
          _os_log_impl(&dword_2586A4000, v193, v194, "rsrp in data directory failed validation: %ld", v175, 0xCu);
          v171 = 0;
          destroyStorage<A>(_:count:)(v176, 0, v173);
          destroyStorage<A>(_:count:)(v177, v171, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v175, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v193);
      (*(v490 + 8))(v496, v489);
      return 0;
    }
  }

  else
  {
    v131 = v494;
    v132 = logger.unsafeMutableAddressor();
    (*(v490 + 16))(v131, v132, v489);
    v160 = 7;
    v161 = swift_allocObject();
    *(v161 + 16) = v435;
    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    v158 = 17;
    v163 = swift_allocObject();
    *(v163 + 16) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = 8;
    v159 = 32;
    v133 = swift_allocObject();
    v134 = v161;
    v162 = v133;
    *(v133 + 16) = v443;
    *(v133 + 24) = v134;
    v135 = swift_allocObject();
    v136 = v162;
    v166 = v135;
    *(v135 + 16) = v444;
    *(v135 + 24) = v136;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v165 = _allocateUninitializedArray<A>(_:)();
    v167 = v137;

    v138 = v163;
    v139 = v167;
    *v167 = v445;
    v139[1] = v138;

    v140 = v164;
    v141 = v167;
    v167[2] = v446;
    v141[3] = v140;

    v142 = v166;
    v143 = v167;
    v167[4] = v447;
    v143[5] = v142;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v169, v170))
    {
      v144 = v488;
      v151 = static UnsafeMutablePointer.allocate(capacity:)();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v150 = 0;
      v152 = createStorage<A>(capacity:type:)(0, v149, v149);
      v153 = createStorage<A>(capacity:type:)(v150, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v154 = &v567;
      v567 = v151;
      v155 = &v566;
      v566 = v152;
      v156 = &v565;
      v565 = v153;
      serialize(_:at:)(0, &v567);
      serialize(_:at:)(1, v154);
      v563 = v445;
      v564 = v163;
      closure #1 in osLogInternal(_:log:type:)(&v563, v154, v155, v156);
      v157 = v144;
      if (v144)
      {

        __break(1u);
      }

      else
      {
        v563 = v446;
        v564 = v164;
        closure #1 in osLogInternal(_:log:type:)(&v563, &v567, &v566, &v565);
        v148 = 0;
        v563 = v447;
        v564 = v166;
        closure #1 in osLogInternal(_:log:type:)(&v563, &v567, &v566, &v565);
        _os_log_impl(&dword_2586A4000, v169, v170, "rssi in data directory failed validation: %ld", v151, 0xCu);
        v147 = 0;
        destroyStorage<A>(_:count:)(v152, 0, v149);
        destroyStorage<A>(_:count:)(v153, v147, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v151, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v169);
    (*(v490 + 8))(v494, v489);
    return 0;
  }
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x259C87400](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v8 = [v5 initWithPattern:v6 options:a3 error:v9];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v8)
  {
    MEMORY[0x277D82BD8](v6);

    return v8;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    return v4;
  }
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSRegularExpressionOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSMatchingOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

NSRegularExpressionOptions protocol witness for OptionSet.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, NSRegularExpressionOptions *a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSMatchingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, NSMatchingOptions *a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSRegularExpressionOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSMatchingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
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

    __swift_destroy_boxed_opaque_existential_0(v12);
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

    __swift_destroy_boxed_opaque_existential_0(v13);
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
          _assertionFailure(_:_:file:line:flags:)();
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
    result = _assertionFailure(_:_:file:line:flags:)();
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
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
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
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized _finalizeUninitializedArray<A>(_:)()
{
  specialized Array._endMutation()();
}

{
  specialized Array._endMutation()();
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
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

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t specialized Array.count.getter(uint64_t a1)
{
  return specialized Array._getCount()(a1);
}

{
  return specialized Array._getCount()(a1);
}

{
  return specialized Array._getCount()(a1);
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

    if (_swift_stdlib_has_malloc_size())
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
      v9 = MEMORY[0x259C874F0](15, v10, a2, a3);
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

    _assertionFailure(_:_:file:line:flags:)();
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

void specialized Array._endMutation()()
{
  *v0 = *v0;
}

{
  *v0 = *v0;
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

uint64_t specialized Array._getCount()(uint64_t a1)
{
  return *(a1 + 16);
}

{
  return *(a1 + 16);
}

{
  return *(a1 + 16);
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

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
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

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t a3)
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

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t SQLError.description.getter(int a1, uint64_t a2, void *a3)
{
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  v16 = a1;
  v17 = a2;
  v18 = a3;

  v14 = v13;
  if (v13._object)
  {
    v15 = v14;
  }

  else
  {
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SQL Error", 9uLL, 1);
  }

  countAndFlagsBits = v15._countAndFlagsBits;
  object = v15._object;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1)._countAndFlagsBits;
  v9 = MEMORY[0x259C87450](countAndFlagsBits, object, v3);
  v10 = v4;

  if (!sqlite3_errstr(a1))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.init(cString:)();
  v7 = MEMORY[0x259C87450](v9, v10, v5);

  return v7;
}

uint64_t SQLError.desc.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t DBError.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned no rows", 0x1AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned too many rows", 0x20uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned wrong columns count", 0x26uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("closed", 6uLL, 1)._countAndFlagsBits;
  }
}

BOOL static DBError.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type DBError and conformance DBError()
{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

uint64_t SQLiteDB.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static SQLiteDB.logger);
}

uint64_t static SQLiteDB.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = SQLiteDB.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SQLiteDB.handle.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t SQLiteDB.Location.path.getter()
{
  v19 = 0;
  v20 = 0;
  v10 = 0;
  v17 = type metadata accessor for URL();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0, v0);
  v12 = &v7 - v11;
  v20 = &v7 - v11;
  v14 = (*(*(type metadata accessor for SQLiteDB.Location(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13, v2);
  v18 = &v7 - v14;
  v19 = v3;
  outlined init with copy of SQLiteDB.Location(v3, &v7 - v14);
  if ((*(v15 + 48))(v18, 1, v17) == 1)
  {
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":memory:", 8uLL, 1);
  }

  else
  {
    v4 = v12;
    (*(v15 + 32))(v12, v18, v17);
    v20 = v4;
    v8._countAndFlagsBits = URL.path.getter();
    v8._object = v5;
    (*(v15 + 8))(v12, v17);
    v9 = v8;
  }

  return v9._countAndFlagsBits;
}

uint64_t type metadata accessor for SQLiteDB.Location(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SQLiteDB.Location;
  if (!type metadata singleton initialization cache for SQLiteDB.Location)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *outlined init with copy of SQLiteDB.Location(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = type metadata accessor for SQLiteDB.Location(0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SQLiteDB.DBHandle.closed.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.DBHandle.closed.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t *SQLiteDB.DBHandle.__allocating_init(location:)(uint64_t a1)
{
  swift_allocObject();
  v5 = SQLiteDB.DBHandle.init(location:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t *SQLiteDB.DBHandle.init(location:)(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(v1 + 24) = 0;
  v14[0] = 0;
  SQLiteDB.Location.path.getter();
  v12 = String.utf8CString.getter();

  v13 = sqlite3_open_v2((v12 + 32), v14, 32774, 0);
  swift_unknownObjectRelease();

  if (!v14[0] || v13)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to open database", 0x17uLL, 1);
    SQLError.init(code:desc:)();
    v10 = v3;
    v8 = v4;
    v9 = v5;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v6 = v10;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    outlined destroy of SQLiteDB.Location(a1);
    return v7;
  }

  else
  {
    *(v1 + 16) = v14[0];
    outlined destroy of SQLiteDB.Location(a1);
    return v1;
  }
}

unint64_t lazy protocol witness table accessor for type SQLError and conformance SQLError()
{
  v2 = lazy protocol witness table cache variable for type SQLError and conformance SQLError;
  if (!lazy protocol witness table cache variable for type SQLError and conformance SQLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SQLError and conformance SQLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of SQLiteDB.Location(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SQLiteDB.DBHandle.close()()
{
  swift_beginAccess();
  v3 = *(v0 + 24);
  result = swift_endAccess();
  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    *(v2 + 24) = 1;
    swift_endAccess();
    return sqlite3_close_v2(*(v2 + 16));
  }

  return result;
}

uint64_t SQLiteDB.Statement.sqlString.getter()
{
  v4 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v4)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  v2 = String.init(cString:)();
  $defer #1 () in SQLiteDB.Statement.sqlString.getter(v4);
  return v2;
}

uint64_t key path getter for SQLiteDB.Statement.finished : SQLiteDB.Statement@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 104))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Statement.finished : SQLiteDB.Statement(char *a1, void *a2)
{
  v3 = *a1;

  SQLiteDB.Statement.finished.setter(v3 & 1);
}

uint64_t SQLiteDB.Statement.finished.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Statement.finished.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Statement.init(handle:)(uint64_t a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

uint64_t SQLiteDB.Statement.step()()
{
  v24 = 0;
  v25 = v0;
  v20 = sqlite3_step(*(v0 + 16));
  v24 = v20;
  if (v20 == 100)
  {

    SQLiteDB.Row.init(statement:)();
    return v1;
  }

  else
  {
    if (v20 != 101)
    {
      v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v23 = v2;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Statement ((", 0xCuLL, 1)._countAndFlagsBits;
      MEMORY[0x259C879F0](countAndFlagsBits);

      v21[0] = (*(*v19 + 96))(v4);
      v21[1] = v5;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v21);
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")) could not be executed", 0x18uLL, 1)._countAndFlagsBits;
      MEMORY[0x259C879F0](v6);

      v13 = v22;
      v12 = v23;

      outlined destroy of DefaultStringInterpolation(&v22);
      MEMORY[0x259C87440](v13, v12);
      SQLError.init(code:desc:)();
      v16 = v7;
      v14 = v8;
      v15 = v9;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v10 = v16;
      *(v10 + 8) = v14;
      *(v10 + 16) = v15;
      swift_willThrow();
      return v17;
    }

    swift_beginAccess();
    v19[24] = 1;
    swift_endAccess();
    return 0;
  }
}

uint64_t SQLiteDB.Statement.forEach(handler:)(void (*a1)(void))
{
  while (1)
  {
    result = SQLiteDB.Statement.step()();
    if (v3 || !result)
    {
      break;
    }

    a1();

    v3 = 0;
  }

  return result;
}

uint64_t SQLiteDB.Statement.queryOneRow<A>(handler:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v50 = a3;
  v36 = *(a3 - 8);
  v37 = a3 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v14 - v38;
  v49 = v14 - v38;
  v47 = MEMORY[0x28223BE20](a1, a2);
  v48 = v6;
  v46 = v4;
  result = SQLiteDB.Statement.step()();
  v40 = v5;
  v41 = result;
  v42 = v5;
  if (v5)
  {
    v17 = v42;
  }

  else
  {
    v31 = v41;
    if (v41)
    {
      v30 = v31;
      v8 = v40;
      v27 = v31;
      v45 = v31;
      v33();
      v28 = v8;
      v29 = v8;
      v9 = SQLiteDB.Statement.step()();
      *&v24[8] = 0;
      v25 = v9;
      v26 = 0;
      v44 = v9;
      *v24 = v9 != 0;
      v23 = v9 != 0;
      outlined destroy of SQLiteDB.Row?(&v44);
      if (v23)
      {
        for (i = *&v24[4]; ; i = *&v19[4])
        {
          v10 = i;
          v11 = SQLiteDB.Statement.step()();
          *&v19[4] = v10;
          v20 = v11;
          v21 = v10;
          if (v10)
          {
            break;
          }

          v43 = v20;
          *v19 = v20 != 0;
          v18 = v20 != 0;
          outlined destroy of SQLiteDB.Row?(&v43);
          if (!v18)
          {
            lazy protocol witness table accessor for type DBError and conformance DBError();
            v16 = swift_allocError();
            *v12 = 1;
            swift_willThrow();
            (*(v36 + 8))(v39, v35);

            result = v16;
            v17 = v16;
            return result;
          }
        }

        v14[1] = v21;
        (*(v36 + 8))(v39, v35);
      }

      else
      {
        (*(v36 + 16))(v32, v39, v35);
        (*(v36 + 8))(v39, v35);
      }
    }

    else
    {
      lazy protocol witness table accessor for type DBError and conformance DBError();
      v15 = swift_allocError();
      *v13 = 0;
      swift_willThrow();
      result = v15;
      v17 = v15;
    }
  }

  return result;
}

uint64_t SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = v2;
  v5 = a1;
  v6 = a2;
  return (*(*v2 + 152))(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v4);
}

{
  v10 = a1;
  v9 = v2;
  v7 = a1;
  v8 = a2;
  v5 = *(*v2 + 152);
  v3 = type metadata accessor for Optional();
  return v5(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v6, v3);
}

uint64_t closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

uint64_t partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1)
{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t SQLiteDB.Row.count.getter(uint64_t a1)
{

  pStmt = *(a1 + 16);

  return sqlite3_column_count(pStmt);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Statement.execute()()
{
  v3[1] = 0;
  while (1)
  {
    *&v0[8] = HIDWORD(v2);
    v1 = SQLiteDB.Statement.step()();
    if (v2)
    {
      break;
    }

    v3[0] = v1;
    outlined destroy of SQLiteDB.Row?(v3);
    if (!v1)
    {
      break;
    }

    *v0 = 1;
    v2 = *&v0[4];
  }
}

uint64_t SQLiteDB.Statement.bind(at:to:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(v6, a1, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

void SQLiteDB.Statement.bind(values:)(uint64_t a1)
{
  memset(v12, 0, 32);
  v12[4] = a1;
  __dst[7] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7MediaML11SQLBindable_pGMd, &_sSay7MediaML11SQLBindable_pGMR);
  v1 = lazy protocol witness table accessor for type [SQLBindable] and conformance [A]();
  MEMORY[0x259C87530](&v11, v5, v1);
  __dst[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay7MediaML11SQLBindable_pGGMd, &_ss18EnumeratedSequenceVySay7MediaML11SQLBindable_pGGMR);
  EnumeratedSequence.makeIterator()();
  for (i = v6; ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySay7MediaML11SQLBindable_pG_GMd, &_ss18EnumeratedSequenceV8IteratorVySay7MediaML11SQLBindable_pG_GMR);
    EnumeratedSequence.Iterator.next()();
    memcpy(__dst, v9, 0x30uLL);
    if (!__dst[4])
    {
      outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v12);
      return;
    }

    v3 = __dst[0];
    outlined init with take of SQLBindable(&__dst[1], v8);
    if (__OFADD__(v3, 1))
    {
      break;
    }

    (*(*v4 + 184))(v3 + 1, v8);
    if (i)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
      outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v12);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type [SQLBindable] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SQLBindable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SQLBindable] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7MediaML11SQLBindable_pGMd, &_sSay7MediaML11SQLBindable_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SQLBindable] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t SQLiteDB.Row.get<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return (*(a4 + 8))(a2, a1);
}

{

  return (*(a4 + 8))(a2, a1);
}

uint64_t SQLiteDB.Transaction.db.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t key path getter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 96))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 104))(v4 & 1);
}

uint64_t SQLiteDB.Transaction.finalized.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Transaction.finalized.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Transaction.init(_:)(uint64_t a1)
{
  *(v1 + 24) = 0;

  *(v1 + 16) = a1;

  return v4;
}

uint64_t SQLiteDB.Transaction.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if ((*(*v4 + 96))())
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    SQLError.init(code:desc:)();
    v12 = v6;
    v10 = v7;
    v11 = v8;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v13 = swift_allocError();
    *v9 = v12;
    *(v9 + 8) = v10;
    *(v9 + 16) = v11;
    swift_willThrow();
    return v13;
  }

  else
  {

    v14 = SQLiteDB.makeStatement(with:)(a1, a2);
    if (!v18)
    {

      a3(v14);
    }
  }
}

uint64_t SQLiteDB.makeStatement(with:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v41 = 0;
  v51 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v52 = a1;
  v53 = a2;
  v43 = *(v2 + 112);

  v42 = v50;
  swift_beginAccess();
  v44 = *(v43 + 24);
  swift_endAccess();

  if (v44)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v18 = 0;
    v19 = swift_allocError();
    *v16 = 3;
    swift_willThrow();
    result = v19;
    v26 = v19;
  }

  else
  {
    v33 = v38;
    v49 = 0;
    v3 = v38;
    v35 = String.utf8CString.getter();
    v34 = v35;
    v48 = v35;

    v36 = &v18;
    MEMORY[0x28223BE20](&v18, v4);
    v17[2] = v5;
    v17[3] = v6;
    v17[4] = &v49;
    _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SQLiteDB.makeStatement(with:), v17, v6, MEMORY[0x277D84900], MEMORY[0x277D849A8], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v7);
    v37 = v3;
    if (v3)
    {

      __break(1u);
    }

    else
    {

      v31 = v47;
      v46 = v47;
      v32 = v49;
      if (!v49 || (v30 = v32, v29 = v30, v45 = v30, v31))
      {
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to prepare statement", 0x1BuLL, 1)._countAndFlagsBits;
        SQLError.init(code:desc:)();
        v23 = v9;
        v21 = v10;
        v22 = v11;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v24 = 0;
        v12 = swift_allocError();
        v13 = v21;
        v14 = v22;
        v25 = v12;
        *v15 = v23;
        *(v15 + 8) = v13;
        *(v15 + 16) = v14;
        swift_willThrow();

        result = v25;
        v26 = v25;
      }

      else
      {
        v28 = v37;
        type metadata accessor for SQLiteDB.Statement();
        v27 = SQLiteDB.Statement.__allocating_init(handle:)(v29);

        return v27;
      }
    }
  }

  return result;
}

Swift::Int64 __swiftcall SQLiteDB.Transaction.changes()()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 112);

  v4 = *(v3 + 16);

  return sqlite3_changes64(v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.commit()()
{
  if ((*(*v0 + 96))())
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    SQLError.init(code:desc:)();
    v8 = v2;
    v6 = v3;
    v7 = v4;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = v6;
    *(v5 + 16) = v7;
    swift_willThrow();
  }

  else
  {

    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
    SQLiteDB.executeRaw(_:)(v1._countAndFlagsBits, v1._object);

    if (!v10)
    {
      (*(*v9 + 104))(1);
    }
  }
}

uint64_t SQLiteDB.executeRaw(_:)(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + 112);

  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_endAccess();

  if (v20)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v9 = swift_allocError();
    *v8 = 3;
    swift_willThrow();
    return v9;
  }

  else
  {
    v14 = *(v18 + 112);

    v15 = *(v14 + 16);

    v16 = String.utf8CString.getter();

    v17 = sqlite3_exec(v15, (v16 + 32), 0, 0, 0);
    swift_unknownObjectRelease();

    result = v17;
    if (v17)
    {
      default argument 1 of SQLError.init(code:desc:)();
      SQLError.init(code:desc:)();
      v12 = v4;
      v10 = v5;
      v11 = v6;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v13 = swift_allocError();
      *v7 = v12;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      swift_willThrow();
      return v13;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.rollback()()
{
  if ((*(*v0 + 96))())
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    SQLError.init(code:desc:)();
    v8 = v2;
    v6 = v3;
    v7 = v4;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = v6;
    *(v5 + 16) = v7;
    swift_willThrow();
  }

  else
  {

    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ROLLBACK", 8uLL, 1);
    SQLiteDB.executeRaw(_:)(v1._countAndFlagsBits, v1._object);

    if (!v10)
    {
      (*(*v9 + 104))(1);
    }
  }
}

void *SQLiteDB.__allocating_init(_:)(const void *a1)
{
  swift_allocObject();
  v5 = SQLiteDB.init(_:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void *SQLiteDB.init(_:)(const void *a1)
{
  v50 = a1;
  v47 = v1;
  v46 = *v1;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v49 = 0;
  v48 = (*(*(type metadata accessor for SQLiteDB.Location(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1, v2);
  v52 = v22 - v48;
  v60 = v4;
  v59 = v3;
  swift_defaultActor_initialize();
  type metadata accessor for SQLiteDB.DBHandle();
  outlined init with copy of SQLiteDB.Location(v50, v52);
  v5 = v51;
  v6 = SQLiteDB.DBHandle.__allocating_init(location:)(v52);
  v53 = v5;
  v54 = v6;
  v55 = v5;
  if (v5)
  {
    v33 = v55;
    v34 = v47;
  }

  else
  {
    v40 = v54;
    v58 = v54;
    v42 = v54[2];
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA journal_mode=WAL;", 0x18uLL, 1)._object;
    v43 = String.utf8CString.getter();

    v41 = (v43 + 32);

    v45 = sqlite3_exec(v42, v41, 0, 0, 0);
    swift_unknownObjectRelease();

    v57 = v45;
    if (v45)
    {
      v22[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable WAL", 0x14uLL, 1)._countAndFlagsBits;
      SQLError.init(code:desc:)();
      v25 = v15;
      v23 = v16;
      v24 = v17;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v18 = swift_allocError();
      v19 = v23;
      v20 = v24;
      v26 = v18;
      *v21 = v25;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
      swift_willThrow();

      v33 = v26;
      v34 = v47;
    }

    else
    {
      v36 = v40[2];
      v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA foreign_keys=ON;", 0x17uLL, 1)._object;
      v37 = String.utf8CString.getter();

      v35 = (v37 + 32);

      v39 = sqlite3_exec(v36, v35, 0, 0, 0);
      swift_unknownObjectRelease();

      v56 = v39;
      if (!v39)
      {

        v47[14] = v40;

        outlined destroy of SQLiteDB.Location(v50);
        return v47;
      }

      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable FK", 0x13uLL, 1)._countAndFlagsBits;
      SQLError.init(code:desc:)();
      v31 = v8;
      v29 = v9;
      v30 = v10;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v11 = swift_allocError();
      v12 = v29;
      v13 = v30;
      v32 = v11;
      *v14 = v31;
      *(v14 + 8) = v12;
      *(v14 + 16) = v13;
      swift_willThrow();

      v33 = v32;
      v34 = v47;
    }
  }

  v22[1] = v34;
  v22[2] = v33;
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  outlined destroy of SQLiteDB.Location(v50);
  return v27;
}

uint64_t closure #1 in SQLiteDB.makeStatement(with:)@<X0>(uint64_t a3@<X2>, sqlite3_stmt **a5@<X4>, _DWORD *a6@<X8>)
{
  v10 = *(a3 + 112);

  v11 = *(v10 + 16);

  v12 = UnsafeBufferPointer.baseAddress.getter();
  if (!v12)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  nByte = ContiguousArray.count.getter();
  if (nByte < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (nByte > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_prepare_v2(v11, v12, nByte, a5, 0);
  *a6 = result;
  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a3;
  v13 = a6;
  v14 = a8;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v15 = *(a6 - 8);
  v16 = a6 - 8;
  MEMORY[0x28223BE20](a1, a2);
  v19 = &v12 - v9;
  result = v18(v17 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), *(v17 + 16));
  v20 = v8;
  if (v8)
  {
    return (*(v15 + 32))(v14, v19, v13);
  }

  return result;
}

uint64_t SQLiteDB.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = SQLiteDB.makeStatement(with:)(a1, a2);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t SQLiteDB.withTransaction<A>(handler:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v43 = a3;
  v28 = *(a3 - 8);
  v29 = a3 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v13 - v30;
  v42 = v13 - v30;
  v40 = MEMORY[0x28223BE20](a1, a2);
  v41 = v5;
  v39 = v4;
  type metadata accessor for SQLiteDB.Transaction();

  v33 = SQLiteDB.Transaction.__allocating_init(_:)(v32);
  v38 = v33;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BEGIN TRANSACTION", 0x11uLL, 1);
  v7 = v34;
  object = v6._object;
  SQLiteDB.executeRaw(_:)(v6._countAndFlagsBits, v6._object);
  v36 = v7;
  v37 = v7;
  if (v7)
  {
    v15 = v37;

    v16 = v15;
  }

  else
  {

    v8 = v36;
    v9 = v25(v33);
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      v14 = v23;

      v16 = v14;
    }

    else
    {
      if ((*(*v33 + 96))(v9))
      {
        v18 = v22;
        goto LABEL_7;
      }

      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
      v11 = v22;
      v19 = v10._object;
      SQLiteDB.executeRaw(_:)(v10._countAndFlagsBits, v10._object);
      v20 = v11;
      v21 = v11;
      if (!v11)
      {

        v18 = v20;
LABEL_7:
        v17 = v18;
        (*(v28 + 16))(v24, v31, v27);
        (*(v28 + 8))(v31, v27);
      }

      v13[1] = v21;

      (*(v28 + 8))(v31, v27);
    }
  }

  return result;
}

Swift::Void __swiftcall SQLiteDB.close()()
{

  SQLiteDB.DBHandle.close()();
}

uint64_t SQLiteDB.deinit()
{

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SQLNullableType<>.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = a5;
  v24 = a1;
  v26 = a2;
  v12 = a3;
  v13 = a4;
  v14 = "Fatal error";
  v15 = "Not enough bits to represent the passed value";
  v16 = "Swift/Integers.swift";
  v17 = "Not enough bits to represent a signed value";
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v18 = *(a3 - 8);
  v19 = a3 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v21 = &v11 - v20;
  v22 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v23 = &v11 - v22;
  v29 = &v11 - v22;
  v28 = v8;
  v27 = v9;

  v25 = *(v24 + 16);

  if (v26 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v26 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_type(v25, v26) == 5)
  {

    return (*(v18 + 56))(v11, 1, 1, v12);
  }

  else
  {
    (*(v13 + 8))(v24, v26);
    (*(v18 + 32))(v23, v21, v12);
    (*(v18 + 16))(v11, v23, v12);
    (*(v18 + 56))(v11, 0, 1, v12);
    return (*(v18 + 8))(v23, v12);
  }
}

uint64_t Int.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = sqlite3_column_int(v5, a2);

  return v3;
}

uint64_t Int.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int(v13, a2, a3);
  if (result)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int", 0x12uLL, 1);
    SQLError.init(code:desc:)();
    v10 = v4;
    v8 = v5;
    v9 = v6;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = v10;
    *(v7 + 8) = v8;
    *(v7 + 16) = v9;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SQLType.init(with:column:) in conformance Int@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Int.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

sqlite3_int64 Int64.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = sqlite3_column_int64(v4, a2);

  return v6;
}

uint64_t Int64.bind(to:at:)(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v13 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int64(v13, a2, a3);
  if (result)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int64", 0x14uLL, 1);
    SQLError.init(code:desc:)();
    v10 = v4;
    v8 = v5;
    v9 = v6;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = v10;
    *(v7 + 8) = v8;
    *(v7 + 16) = v9;
    return swift_willThrow();
  }

  return result;
}

sqlite3_int64 protocol witness for SQLType.init(with:column:) in conformance Int64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = Int64.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

double Double.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v2 = sqlite3_column_double(v5, a2);
  v7 = Double.init(_:)(v2);

  return v7;
}

uint64_t Double.bind(to:at:)(uint64_t a1, uint64_t a2, double a3)
{
  v13 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_double(v13, a2, a3);
  if (result)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Double", 0x15uLL, 1);
    SQLError.init(code:desc:)();
    v10 = v4;
    v8 = v5;
    v9 = v6;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = v10;
    *(v7 + 8) = v8;
    *(v7 + 16) = v9;
    return swift_willThrow();
  }

  return result;
}

uint64_t String.init(with:column:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;

  v8 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_text(v8, a2))
  {
    v5 = String.init(cString:)();
    v4 = v2;

    v10 = v5;
    v11 = v4;

    outlined destroy of String(&v10);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t String.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v26 = a1;
  v25 = a2;
  v23 = a3;
  v24 = a4;
  v22 = String.utf8CString.getter();

  v17 = a1;
  v18 = a2;
  v19 = v22;
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in String.bind(to:at:), v16, v22, MEMORY[0x277D84900], MEMORY[0x277D849A8], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v15);
  if (v12)
  {

    __break(1u);
  }

  else
  {

    v20 = v21;
    if (v21)
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind String", 0x15uLL, 1);
      SQLError.init(code:desc:)();
      v11 = v5;
      v9 = v6;
      v10 = v7;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v8 = v11;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t closure #1 in String.bind(to:at:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a6@<X8>)
{
  v12 = *(a3 + 16);
  if (a4 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = UnsafeBufferPointer.baseAddress.getter();
  v9 = ContiguousArray.count.getter();
  if (v9 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v9 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = SQLITE_TRANSIENT.unsafeMutableAddressor();
  result = sqlite3_bind_text(v12, a4, v8, v9, *v6);
  *a6 = result;
  return result;
}

uint64_t *SQLITE_TRANSIENT.unsafeMutableAddressor()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return &SQLITE_TRANSIENT;
}

uint64_t protocol witness for SQLNullableType.init(with:column:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = String.init(with:column:)(a1, a2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *storeEnumTagSinglePayload for DBError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t type metadata completion function for SQLiteDB.Location(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t one-time initialization function for kMediaML_rssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rssi", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rssi = v1;
  return result;
}

Swift::String *kMediaML_rssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rssi != -1)
  {
    swift_once();
  }

  return &kMediaML_rssi;
}

uint64_t one-time initialization function for kMediaML_cca()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cca", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_cca = v1;
  return result;
}

Swift::String *kMediaML_cca.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_cca != -1)
  {
    swift_once();
  }

  return &kMediaML_cca;
}

uint64_t one-time initialization function for kMediaML_snr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("snr", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_snr = v1;
  return result;
}

Swift::String *kMediaML_snr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_snr != -1)
  {
    swift_once();
  }

  return &kMediaML_snr;
}

uint64_t one-time initialization function for kMediaML_noise()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noise", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_noise = v1;
  return result;
}

Swift::String *kMediaML_noise.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_noise != -1)
  {
    swift_once();
  }

  return &kMediaML_noise;
}

uint64_t one-time initialization function for kMediaML_throughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("throughput_true", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputTrue = v1;
  return result;
}

Swift::String *kMediaML_throughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputTrue;
}

uint64_t one-time initialization function for kMediaML_txRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_txRate = v1;
  return result;
}

Swift::String *kMediaML_txRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_txRate != -1)
  {
    swift_once();
  }

  return &kMediaML_txRate;
}

uint64_t one-time initialization function for kMediaML_rxRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rxRate = v1;
  return result;
}

Swift::String *kMediaML_rxRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rxRate != -1)
  {
    swift_once();
  }

  return &kMediaML_rxRate;
}

uint64_t one-time initialization function for kMediaML_dayOfWeek()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dow", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_dayOfWeek = v1;
  return result;
}

Swift::String *kMediaML_dayOfWeek.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_dayOfWeek != -1)
  {
    swift_once();
  }

  return &kMediaML_dayOfWeek;
}

uint64_t one-time initialization function for kMediaML_hourOfDay()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_hourOfDay = v1;
  return result;
}

Swift::String *kMediaML_hourOfDay.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_hourOfDay != -1)
  {
    swift_once();
  }

  return &kMediaML_hourOfDay;
}

uint64_t one-time initialization function for kMediaML_ssid()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssid = v1;
  return result;
}

Swift::String *kMediaML_ssid.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssid != -1)
  {
    swift_once();
  }

  return &kMediaML_ssid;
}

uint64_t one-time initialization function for kMediaML_interfaceType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ifty", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_interfaceType = v1;
  return result;
}

Swift::String *kMediaML_interfaceType.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_interfaceType != -1)
  {
    swift_once();
  }

  return &kMediaML_interfaceType;
}

uint64_t one-time initialization function for kMediaML_nData()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ndata", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_nData = v1;
  return result;
}

Swift::String *kMediaML_nData.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_nData != -1)
  {
    swift_once();
  }

  return &kMediaML_nData;
}

uint64_t one-time initialization function for kMediaML_appName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name", 8uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appName = v1;
  return result;
}

Swift::String *kMediaML_appName.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appName != -1)
  {
    swift_once();
  }

  return &kMediaML_appName;
}

uint64_t one-time initialization function for kMediaML_sessionID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionID = v1;
  return result;
}

Swift::String *kMediaML_sessionID.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionID != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionID;
}

uint64_t one-time initialization function for kMediaML_carrier()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_carrier = v1;
  return result;
}

Swift::String *kMediaML_carrier.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_carrier != -1)
  {
    swift_once();
  }

  return &kMediaML_carrier;
}

uint64_t one-time initialization function for kMediaML_rsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrp = v1;
  return result;
}

Swift::String *kMediaML_rsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrp;
}

uint64_t one-time initialization function for kMediaML_rscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rscp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rscp = v1;
  return result;
}

Swift::String *kMediaML_rscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rscp != -1)
  {
    swift_once();
  }

  return &kMediaML_rscp;
}

uint64_t one-time initialization function for kMediaML_rsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrq", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrq = v1;
  return result;
}

Swift::String *kMediaML_rsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrq;
}

uint64_t one-time initialization function for kMediaML_bars()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bars", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_bars = v1;
  return result;
}

Swift::String *kMediaML_bars.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_bars != -1)
  {
    swift_once();
  }

  return &kMediaML_bars;
}

uint64_t one-time initialization function for kMediaML_count()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("count", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_count = v1;
  return result;
}

Swift::String *kMediaML_count.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_count != -1)
  {
    swift_once();
  }

  return &kMediaML_count;
}

uint64_t one-time initialization function for kMediaML_medianThroughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("quantile(throughput_true)", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_medianThroughputTrue = v1;
  return result;
}

Swift::String *kMediaML_medianThroughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_medianThroughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_medianThroughputTrue;
}

uint64_t one-time initialization function for kMediaML_binnedRssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rssi", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRssi = v1;
  return result;
}

Swift::String *kMediaML_binnedRssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRssi != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRssi;
}

uint64_t one-time initialization function for kMediaML_binnedRsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrp = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrp;
}

uint64_t one-time initialization function for kMediaML_binnedRsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrq", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrq = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrq;
}

uint64_t one-time initialization function for kMediaML_binnedRscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rscp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRscp = v1;
  return result;
}

Swift::String *kMediaML_binnedRscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRscp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRscp;
}

uint64_t one-time initialization function for kMediaML_binnedSnr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_snr", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedSnr = v1;
  return result;
}

Swift::String *kMediaML_binnedSnr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedSnr != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedSnr;
}

uint64_t one-time initialization function for kMediaML_throughputStdDev()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predStdDev", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputStdDev = v1;
  return result;
}

Swift::String *kMediaML_throughputStdDev.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputStdDev != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputStdDev;
}

uint64_t one-time initialization function for kMediaML_throughputPrediction()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predVal", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputPrediction = v1;
  return result;
}

Swift::String *kMediaML_throughputPrediction.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputPrediction != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputPrediction;
}

uint64_t one-time initialization function for rssiBucket_low()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("low", 3uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_low = v1;
  return result;
}

Swift::String *rssiBucket_low.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_low != -1)
  {
    swift_once();
  }

  return &rssiBucket_low;
}

uint64_t one-time initialization function for rssiBucket_medium()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_medium = v1;
  return result;
}

Swift::String *rssiBucket_medium.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_medium != -1)
  {
    swift_once();
  }

  return &rssiBucket_medium;
}

uint64_t one-time initialization function for rssiBucket_high()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("high", 4uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_high = v1;
  return result;
}

Swift::String *rssiBucket_high.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_high != -1)
  {
    swift_once();
  }

  return &rssiBucket_high;
}

uint64_t one-time initialization function for kMediaML_trainingRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingRowCount", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingRowCount = v1;
  return result;
}

Swift::String *kMediaML_trainingRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingRowCount;
}

uint64_t one-time initialization function for kMediaML_validationRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationRowCount", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationRowCount = v1;
  return result;
}

Swift::String *kMediaML_validationRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_validationRowCount;
}

uint64_t one-time initialization function for kMediaML_ssidCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssidCount", 9uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssidCount = v1;
  return result;
}

Swift::String *kMediaML_ssidCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssidCount != -1)
  {
    swift_once();
  }

  return &kMediaML_ssidCount;
}

uint64_t one-time initialization function for kMediaML_appNameCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appNameCount", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appNameCount = v1;
  return result;
}

Swift::String *kMediaML_appNameCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appNameCount != -1)
  {
    swift_once();
  }

  return &kMediaML_appNameCount;
}

uint64_t one-time initialization function for kMediaML_sessionIDCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sessionIDCount", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionIDCount = v1;
  return result;
}

Swift::String *kMediaML_sessionIDCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionIDCount != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionIDCount;
}

uint64_t one-time initialization function for kMediaML_trainingMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingMAPE", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingMAPE = v1;
  return result;
}

Swift::String *kMediaML_trainingMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingMAPE;
}

uint64_t one-time initialization function for kMediaML_validationMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationMAPE", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationMAPE = v1;
  return result;
}

Swift::String *kMediaML_validationMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_validationMAPE;
}

uint64_t one-time initialization function for mediaMLBaseDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLBaseDirectory);
  __swift_project_value_buffer(v1, mediaMLBaseDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/", 0x24uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLBaseDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLBaseDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLBaseDirectory);
}

uint64_t one-time initialization function for mediaMLModelDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLModelDirectory);
  __swift_project_value_buffer(v1, mediaMLModelDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/model/", 0x2AuLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLModelDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLModelDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLModelDirectory);
}

uint64_t one-time initialization function for mediaMLDataDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLDataDirectory);
  __swift_project_value_buffer(v1, mediaMLDataDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/data/", 0x29uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLDataDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLDataDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLDataDirectory);
}

void __swiftcall ModelStats.init()(MediaML::ModelStats *__return_ptr retstr)
{
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __b, sizeof(__dst));
  memcpy(retstr, __dst, sizeof(MediaML::ModelStats));
}

void __swiftcall ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)(MediaML::ModelStats *__return_ptr retstr, Swift::Int interfaceType, Swift::Int trainingRowCount, Swift::Int validationRowCount, Swift::Int carrierCount, Swift::Int ssidCount, Swift::Int appNameCount, Swift::Int sessionIDCount, Swift::Double trainingMAPE, Swift::Double validationMAPE, Swift::Int trainingDate)
{
  __src[0] = interfaceType;
  __src[1] = trainingRowCount;
  __src[2] = validationRowCount;
  __src[3] = carrierCount;
  __src[4] = ssidCount;
  __src[5] = appNameCount;
  __src[6] = sessionIDCount;
  *&__src[7] = trainingMAPE;
  *&__src[8] = validationMAPE;
  __src[9] = trainingDate;
  memcpy(retstr, __src, sizeof(MediaML::ModelStats));
}

Swift::Int __swiftcall getDateInEpoch()()
{
  v3[0] = "Fatal error";
  v3[1] = "Double value cannot be converted to Int because it is either infinite or NaN";
  v3[2] = "Swift/IntegerTypes.swift";
  v3[3] = "Double value cannot be converted to Int because the result would be less than Int.min";
  v3[4] = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v10 = 0;
  v8 = type metadata accessor for Date();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = v3 - v4;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v9 = v1;
  (*(v5 + 8))(v7, v8);
  if (((*&v9 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v9 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v9 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return v9;
}

uint64_t WiFiModelGuts.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v22 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v1);
  v42 = &v22 - v22;
  v54 = &v22 - v22;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderVySSGMd, &_s18CreateMLComponents13OneHotEncoderVySSGMR);
  v23 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v22 - v23;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v24 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v3);
  v46 = &v22 - v24;
  v53 = &v22 - v24;
  v51 = type metadata accessor for BoostedTreeConfiguration();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v25 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v4);
  v37 = &v22 - v25;
  v26 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v22 - v25, v6);
  v50 = &v22 - v26;
  v52 = &v22 - v26;
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.randomSeed.setter();
  BoostedTreeConfiguration.maximumIterations.setter();
  BoostedTreeConfiguration.maximumDepth.setter();
  v33 = MEMORY[0x277D837D0];
  v28 = _allocateUninitializedArray<A>(_:)();
  v27 = v7;
  v8 = kMediaML_ssid.unsafeMutableAddressor();
  outlined init with copy of String(v8, v27);
  v9 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v9, v27 + 2);
  _finalizeUninitializedArray<A>(_:)();
  v31 = v10;
  OneHotEncoder.init()();
  lazy protocol witness table accessor for type OneHotEncoder<String> and conformance OneHotEncoder<A>();
  ColumnSelector.init(columns:estimator:)();
  v35 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v34 = _allocateUninitializedArray<A>(_:)();
  v32 = v11;
  v12 = kMediaML_rssi.unsafeMutableAddressor();
  outlined init with copy of String(v12, v32);
  v13 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v13, v32 + 2);
  v14 = kMediaML_ssid.unsafeMutableAddressor();
  outlined init with copy of String(v14, v32 + 4);
  v15 = kMediaML_hourOfDay.unsafeMutableAddressor();
  outlined init with copy of String(v15, v32 + 6);
  v16 = kMediaML_dayOfWeek.unsafeMutableAddressor();
  outlined init with copy of String(v16, v32 + 8);
  v17 = kMediaML_noise.unsafeMutableAddressor();
  outlined init with copy of String(v17, v32 + 10);
  v18 = kMediaML_txRate.unsafeMutableAddressor();
  outlined init with copy of String(v18, v32 + 12);
  v19 = kMediaML_rxRate.unsafeMutableAddressor();
  outlined init with copy of String(v19, v32 + 14);
  _finalizeUninitializedArray<A>(_:)();
  v36 = v20;
  BoostedTreeConfiguration.init()();
  BoostedTreeRegressor.init(annotationColumnName:featureColumnNames:configuration:)();
  v39 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  UpdatableTabularEstimator.appending<A>(_:)();
  (*(v40 + 8))(v42, v43);
  (*(v44 + 8))(v46, v47);
  return (*(v48 + 8))(v50, v51);
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type OneHotEncoder<String> and conformance OneHotEncoder<A>()
{
  v2 = lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>;
  if (!lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents13OneHotEncoderVySSGMd, &_s18CreateMLComponents13OneHotEncoderVySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>;
  if (!lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents13OneHotEncoderVySSGMd, &_s18CreateMLComponents13OneHotEncoderVySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OneHotEncoder<String> and conformance OneHotEncoder<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>;
  if (!lazy protocol witness table cache variable for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    lazy protocol witness table accessor for type OneHotEncoder<String> and conformance OneHotEncoder<A>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>()
{
  v2 = lazy protocol witness table cache variable for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>;
  if (!lazy protocol witness table cache variable for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t CellModelGuts.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v21 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v1);
  v42 = &v21 - v21;
  v54 = &v21 - v21;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents13OneHotEncoderVySSGMd, &_s18CreateMLComponents13OneHotEncoderVySSGMR);
  v22 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v2);
  v28 = &v21 - v22;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v23 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v3);
  v46 = &v21 - v23;
  v53 = &v21 - v23;
  v51 = type metadata accessor for BoostedTreeConfiguration();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v24 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v4);
  v36 = &v21 - v24;
  v25 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v24, v6);
  v50 = &v21 - v25;
  v52 = &v21 - v25;
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.randomSeed.setter();
  v32 = MEMORY[0x277D837D0];
  v27 = _allocateUninitializedArray<A>(_:)();
  v26 = v7;
  v8 = kMediaML_carrier.unsafeMutableAddressor();
  outlined init with copy of String(v8, v26);
  v9 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v9, v26 + 2);
  _finalizeUninitializedArray<A>(_:)();
  v30 = v10;
  OneHotEncoder.init()();
  lazy protocol witness table accessor for type OneHotEncoder<String> and conformance OneHotEncoder<A>();
  ColumnSelector.init(columns:estimator:)();
  v11 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v11->_countAndFlagsBits;
  object = v11->_object;

  v33 = _allocateUninitializedArray<A>(_:)();
  v31 = v12;
  v13 = kMediaML_binnedRssi.unsafeMutableAddressor();
  outlined init with copy of String(v13, v31);
  v14 = kMediaML_binnedRsrp.unsafeMutableAddressor();
  outlined init with copy of String(v14, v31 + 2);
  v15 = kMediaML_binnedRsrq.unsafeMutableAddressor();
  outlined init with copy of String(v15, v31 + 4);
  v16 = kMediaML_binnedRscp.unsafeMutableAddressor();
  outlined init with copy of String(v16, v31 + 6);
  v17 = kMediaML_binnedSnr.unsafeMutableAddressor();
  outlined init with copy of String(v17, v31 + 8);
  v18 = kMediaML_bars.unsafeMutableAddressor();
  outlined init with copy of String(v18, v31 + 10);
  _finalizeUninitializedArray<A>(_:)();
  v35 = v19;
  (*(v48 + 16))(v36, v50, v51);
  BoostedTreeRegressor.init(annotationColumnName:featureColumnNames:configuration:)();
  v39 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  UpdatableTabularEstimator.appending<A>(_:)();
  (*(v40 + 8))(v42, v43);
  (*(v44 + 8))(v46, v47);
  return (*(v48 + 8))(v50, v51);
}

uint64_t WifiModel.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static WifiModel.logger);
}

uint64_t static WifiModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = WifiModel.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void variable initialization expression of WifiModel.model(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t key path getter for WifiModel.model : WifiModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  v7 = v4;
  (*(*v4 + 120))(v2);
  memcpy(a2, v6, 0x28uLL);
}

uint64_t key path setter for WifiModel.model : WifiModel(void *a1, uint64_t *a2)
{
  outlined init with copy of Transformer?(a1, v5);
  v4 = *a2;

  (*(*v4 + 128))(v5);
}

uint64_t WifiModel.model.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of Transformer?((v1 + 112), a1);
  return swift_endAccess();
}

void *outlined init with copy of Transformer?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void *WifiModel.model.setter(void *a1)
{
  outlined init with copy of Transformer?(a1, v4);
  swift_beginAccess();
  outlined assign with take of Transformer?(v4, (v1 + 112));
  swift_endAccess();
  return outlined destroy of Transformer?(a1);
}

void *outlined assign with take of Transformer?(const void *a1, void *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void *outlined destroy of Transformer?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t variable initialization expression of WifiModel.parametersURL@<X0>(uint64_t a1@<X8>)
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
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wifiParameters.pkg", 0x12uLL, 1)._object;
  URL.appendingPathComponent(_:)();

  return (*(v9 + 8))(v11, v12);
}

uint64_t WifiModel.parametersURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t variable initialization expression of WifiModel.targetColumnID()
{
  kMediaML_throughputTrue.unsafeMutableAddressor();

  return ColumnID.init(_:_:)();
}

uint64_t WifiModel.targetColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t WifiModel.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t WifiModel.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = WifiModel.__allocating_init();

  return WifiModel.init()();
}

uint64_t WifiModel.__allocating_init()(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t WifiModel.init()()
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

  return MEMORY[0x2822009F8](WifiModel.init(), 0);
}

{
  v1 = v0[14];
  v4 = v0[13];
  v5 = v0[12];
  v7 = v0[8];
  v0[2] = v0;
  v0[3] = v7;
  swift_defaultActor_initialize();
  v7[14] = 0;
  v7[15] = 0;
  v7[16] = 0;
  v7[17] = 0;
  v7[18] = 0;
  v2 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v4 + 16))(v1, v2, v5);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wifiParameters.pkg", 0x12uLL, 1);
  URL.appendingPathComponent(_:)();

  (*(v4 + 8))(v1, v5);
  kMediaML_throughputTrue.unsafeMutableAddressor();

  ColumnID.init(_:_:)();
  v6 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  WiFiModelGuts.init()();
  WiFiModelGuts.estimator.getter(v7 + v6);

  return MEMORY[0x2822009F8](WifiModel.init(), v7);
}

{
  v1 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v0[2] = v0;
  v2 = WifiModel.logger.unsafeMutableAddressor();
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

    _os_log_impl(&dword_2586A4000, v18, v17, "New WiFi Model created", buf, 2u);
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

uint64_t WifiModel.train(traindata_url:)(uint64_t a1, uint64_t a2)
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

  return (MEMORY[0x2822009F8])(WifiModel.train(traindata_url:));
}

uint64_t WifiModel.train(traindata_url:)()
{
  v1 = v0[21];
  v7 = v0[19];
  v0[13] = v0;
  (*(v1 + 16))();
  default argument 3 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v7);
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  v5 = (*(**(v6 + 144) + 160) + **(**(v6 + 144) + 160));
  v2 = swift_task_alloc();
  *(v6 + 208) = v2;
  *v2 = *(v6 + 104);
  v2[1] = WifiModel.train(traindata_url:);
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
    v3 = WifiModel.train(traindata_url:);
  }

  else
  {
    v2 = v5[18];
    v3 = WifiModel.train(traindata_url:);
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

uint64_t default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v7 = type metadata accessor for CSVType();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v1);
  v13 = &v3 - v4;
  v15 = default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  v11 = default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  v12 = default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  (*(v5 + 104))(v13, *MEMORY[0x277CE1918], v7);
  v8 = 1;
  v14 = 1;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\"", v8, v14 & 1);
  return CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
}

uint64_t WifiModel.train(dataFrame:)(uint64_t a1, uint64_t a2)
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
  v3[65] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame.Rows();
  v3[66] = v7;
  v3[67] = *(v7 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B5FrameVSgMd, &_s11TabularData0B5FrameVSgMR);
  v3[70] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v3[71] = v8;
  v3[72] = *(v8 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v3[75] = v9;
  v3[76] = *(v9 - 8);
  v3[77] = swift_task_alloc();
  v10 = type metadata accessor for DataFrame();
  v3[78] = v10;
  v3[79] = *(v10 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v11 = type metadata accessor for DataFrame.Slice();
  v3[82] = v11;
  v3[83] = *(v11 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[39] = a2;
  v3[40] = v2;

  return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v2);
}

uint64_t WifiModel.train(dataFrame:)()
{
  v58 = v0;
  v51 = v0[86];
  v53 = v0[85];
  v56 = v0[84];
  v52 = v0[83];
  v54 = v0[82];
  v0[38] = v0;
  DataFrameProtocol.randomSplit(by:seed:)();
  v55 = *(v52 + 16);
  v55(v56, v51, v54);
  DataFrame.init(_:)();
  v55(v56, v53, v54);
  DataFrame.init(_:)();
  if (DataFrame.Slice.shape.getter() > 0 && DataFrame.Slice.shape.getter() > 0)
  {
    v41 = *(v50 + 640);
    v42 = *(v50 + 624);
    v1 = *(v50 + 592);
    v2 = *(v50 + 568);
    v43 = *(v50 + 560);
    v40 = *(v50 + 632);
    v44 = *(v50 + 400);
    v3 = *(v50 + 392) + OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
    v4 = *(v50 + 576) + 16;
    v5 = *v4;
    *(v50 + 696) = *v4;
    *(v50 + 704) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v1, v3, v2);
    (*(v40 + 16))(v43, v41, v42);
    (*(v40 + 56))(v43, 0, 1, v42);
    v6 = swift_allocObject();
    *(v50 + 712) = v6;
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
    *(v50 + 720) = v49;
    v8 = swift_task_alloc();
    *(v50 + 728) = v8;
    *v8 = *(v50 + 304);
    v8[1] = WifiModel.train(dataFrame:);
    v9 = *(v50 + 648);
    v10 = *(v50 + 616);
    v11 = *(v50 + 568);
    v12 = *(v50 + 560);

    return MEMORY[0x2821152A0](v10, v9, v12, partial apply for closure #1 in WifiModel.train(dataFrame:), v48, v11, v49);
  }

  else
  {
    v13 = *(v50 + 448);
    v36 = *(v50 + 432);
    v35 = *(v50 + 440);
    v14 = WifiModel.logger.unsafeMutableAddressor();
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

      _os_log_impl(&dword_2586A4000, oslog, v37, "Wifi: Training or validation data is empty", buf, 2u);
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v27 = *(v50 + 688);
    v26 = *(v50 + 680);
    v28 = *(v50 + 656);
    v22 = *(v50 + 648);
    v21 = *(v50 + 640);
    v23 = *(v50 + 624);
    v18 = *(v50 + 448);
    v19 = *(v50 + 432);
    v25 = *(v50 + 664);
    v20 = *(v50 + 632);
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
  *(v17 + 736) = v0;

  if (v0)
  {
    v8 = v15[47];

    return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v8);
  }

  else
  {
    v12 = v15[72];
    v10 = v15[70];
    v11 = v15[69];
    v9 = v15[68];
    v13 = v15[47];
    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in WifiModel.train(dataFrame:), v15[87]);
    outlined destroy of DataFrame?(v9);
    v2 = *(v10 + 8);
    v15[91] = v2;
    v15[92] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v12, v11);
    v14 = (*(*v13 + 168) + **(*v13 + 168));
    v3 = swift_task_alloc();
    v15[93] = v3;
    v15[94] = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
    *v3 = *v16;
    v3[1] = WifiModel.train(dataFrame:);
    v4 = v15[79];
    v5 = v15[75];
    v6 = v15[73];

    return v14(v4, v5, v6);
  }
}

{
  v168 = v0;
  validationMAPE = *(v0 + 800);
  trainingMAPE = *(v0 + 776);
  v100 = *(v0 + 552);
  v103 = *(v0 + 544);
  v99 = *(v0 + 536);
  v101 = *(v0 + 528);
  v107 = *(v0 + 520);
  v109 = *(v0 + 512);
  v116 = *(v0 + 504);
  v111 = *(v0 + 496);
  v105 = *(v0 + 488);
  v114 = *(v0 + 480);
  v113 = *(v0 + 472);
  v126 = *(v0 + 440);
  v127 = *(v0 + 432);
  *(v0 + 304) = v0;
  *(v0 + 368) = validationMAPE;
  interfaceType = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
  DataFrame.Slice.rows.getter();
  trainingRowCount = DataFrame.Rows.count.getter();
  v102 = *(v99 + 8);
  v102(v100, v101);
  DataFrame.Slice.rows.getter();
  validationRowCount = DataFrame.Rows.count.getter();
  v102(v103, v101);
  v1 = kMediaML_ssid.unsafeMutableAddressor();
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;

  MEMORY[0x259C87130](countAndFlagsBits, object);
  AnyColumnSlice.distinct()();
  v115 = *(v105 + 8);
  v115(v109, v114);

  ssidCount = AnyColumnSlice.count.getter();
  v115(v107, v114);
  v108 = *kMediaML_appName.unsafeMutableAddressor();

  MEMORY[0x259C87130](v108._countAndFlagsBits, v108._object);
  AnyColumnSlice.distinct()();
  v115(v116, v114);

  appNameCount = AnyColumnSlice.count.getter();
  v115(v109, v114);
  v2 = kMediaML_sessionID.unsafeMutableAddressor();
  v110 = v2->_countAndFlagsBits;
  v112 = v2->_object;

  MEMORY[0x259C87130](v110, v112);
  AnyColumnSlice.distinct()();
  v115(v111, v114);

  sessionIDCount = AnyColumnSlice.count.getter();
  v115(v116, v114);
  trainingDate = getDateInEpoch()();
  v3 = default argument 3 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)((v0 + 104), interfaceType, trainingRowCount, validationRowCount, v3, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate);
  memcpy((v0 + 184), (v0 + 104), 0x50uLL);
  v4 = WifiModel.logger.unsafeMutableAddressor();
  v128 = *(v126 + 16);
  v128(v113, v4, v127);
  v129 = swift_allocObject();
  memcpy((v129 + 16), (v0 + 104), 0x50uLL);
  v131 = swift_allocObject();
  memcpy((v131 + 16), (v0 + 104), 0x50uLL);
  v133 = swift_allocObject();
  memcpy((v133 + 16), (v0 + 104), 0x50uLL);
  v135 = swift_allocObject();
  memcpy((v135 + 16), (v0 + 104), 0x50uLL);
  oslog = Logger.logObject.getter();
  v151 = static os_log_type_t.info.getter();
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  v130 = swift_allocObject();
  *(v130 + 16) = partial apply for implicit closure #2 in WifiModel.train(dataFrame:);
  *(v130 + 24) = v129;
  v139 = swift_allocObject();
  *(v139 + 16) = _sSiIegd_SiIegr_TRTA_1;
  *(v139 + 24) = v130;
  v140 = swift_allocObject();
  *(v140 + 16) = 0;
  v141 = swift_allocObject();
  *(v141 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = partial apply for implicit closure #3 in WifiModel.train(dataFrame:);
  *(v132 + 24) = v131;
  v142 = swift_allocObject();
  *(v142 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v142 + 24) = v132;
  v143 = swift_allocObject();
  *(v143 + 16) = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = 8;
  v134 = swift_allocObject();
  *(v134 + 16) = partial apply for implicit closure #4 in WifiModel.train(dataFrame:);
  *(v134 + 24) = v133;
  v145 = swift_allocObject();
  *(v145 + 16) = _s2os18OSLogInterpolationV06appendC0_6format5align7privacyySdyXA_AA0B15FloatFormattingVAA0B15StringAlignmentVAA0B7PrivacyVtFSdycfu_TA_0;
  *(v145 + 24) = v134;
  v146 = swift_allocObject();
  *(v146 + 16) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = 8;
  v136 = swift_allocObject();
  *(v136 + 16) = partial apply for implicit closure #5 in WifiModel.train(dataFrame:);
  *(v136 + 24) = v135;
  v148 = swift_allocObject();
  *(v148 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v148 + 24) = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v149 = v5;

  *v149 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v149[1] = v137;

  v149[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[3] = v138;

  v149[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v149[5] = v139;

  v149[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[7] = v140;

  v149[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[9] = v141;

  v149[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v149[11] = v142;

  v149[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[13] = v143;

  v149[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[15] = v144;

  v149[16] = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v149[17] = v145;

  v149[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[19] = v146;

  v149[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[21] = v147;

  v149[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v149[23] = v148;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v151))
  {
    v6 = *(v98 + 808);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(0, v94, v94);
    v97 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v163 = buf;
    v164 = v96;
    v165 = v97;
    serialize(_:at:)(0, &v163);
    serialize(_:at:)(4, &v163);
    v166 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v167 = v137;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    if (v6)
    {
    }

    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v138;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v167 = v139;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v140;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v141;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v167 = v142;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v143;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v144;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v167 = v145;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v146;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v147;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    v166 = closure #1 in OSLogArguments.append(_:)partial apply;
    v167 = v148;
    closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
    _os_log_impl(&dword_2586A4000, oslog, v151, "Wifi model stats: trainingRowCount: %ld validationRowCount: %ld trainingMAPE:%f, validationMAPE: %f", buf, 0x2Au);
    destroyStorage<A>(_:count:)(v96, 0, v94);
    destroyStorage<A>(_:count:)(v97, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

    v93 = 0;
  }

  else
  {

    v93 = *(v98 + 808);
  }

  v92 = *(v98 + 800);
  v89 = *(v98 + 472);
  v90 = *(v98 + 432);
  v88 = *(v98 + 440);
  MEMORY[0x277D82BD8](oslog);
  v91 = *(v88 + 8);
  v91(v89, v90);
  if (v92 >= 0.7)
  {
    v52 = *(v98 + 800);
    v11 = *(v98 + 456);
    v51 = *(v98 + 432);
    v12 = WifiModel.logger.unsafeMutableAddressor();
    v128(v11, v12, v51);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #7 in WifiModel.train(dataFrame:);
    *(v54 + 24) = v53;
    v58 = swift_allocObject();
    *(v58 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v58 + 24) = v54;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = implicit closure #8 in WifiModel.train(dataFrame:);
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
      v153 = v48;
      v154 = v49;
      v155 = v50;
      serialize(_:at:)(0, &v153);
      serialize(_:at:)(2, &v153);
      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      if (v93)
      {
      }

      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      v156 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v156, &v153, &v154, &v155);
      _os_log_impl(&dword_2586A4000, v63, v64, "Wifi model not updated. Validation MAPE %f exceeds modelMAPEThreshold %f. ", v48, 0x16u);
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
  (*(v98 + 696))(*(v98 + 584), v84 + OBJC_IVAR____TtC7MediaML9WifiModel_estimator, v92);
  (*(v85 + 16))(v87, v84 + OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL, v86);
  default argument 2 of SupervisedTabularEstimator.write(_:to:overwrite:)();
  SupervisedTabularEstimator.write(_:to:overwrite:)();
  if (!v93)
  {
    v73 = *(v98 + 744);
    v71 = *(v98 + 584);
    v72 = *(v98 + 568);
    v8 = *(v98 + 464);
    v74 = *(v98 + 432);
    v75 = *(v98 + 392);
    (*(*(v98 + 416) + 8))(*(v98 + 424), *(v98 + 408));
    v73(v71, v72);
    v9 = WifiModel.logger.unsafeMutableAddressor();
    v128(v8, v9, v74);

    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for implicit closure #6 in WifiModel.train(dataFrame:);
    *(v76 + 24) = v75;

    log = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    v78 = swift_allocObject();
    *(v78 + 16) = 32;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v77 = swift_allocObject();
    *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v77 + 24) = v76;
    v80 = swift_allocObject();
    *(v80 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
    *(v80 + 24) = v77;
    _allocateUninitializedArray<A>(_:)();
    v81 = v10;

    *v81 = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[1] = v78;

    v81[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[3] = v79;

    v81[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v81[5] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v83))
    {
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v69 = createStorage<A>(capacity:type:)(0, v67, v67);
      v70 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v158 = v68;
      v159 = v69;
      v160 = v70;
      serialize(_:at:)(2, &v158);
      serialize(_:at:)(1, &v158);
      v161 = closure #1 in OSLogArguments.append(_:)partial apply;
      v162 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = closure #1 in OSLogArguments.append(_:)partial apply;
      v162 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v162 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      _os_log_impl(&dword_2586A4000, log, v83, "Updated wifi model written to: %s", v68, 0xCu);
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
    v42 = *(v98 + 688);
    v41 = *(v98 + 680);
    v43 = *(v98 + 656);
    v37 = *(v98 + 648);
    v36 = *(v98 + 640);
    v38 = *(v98 + 624);
    v32 = *(v98 + 616);
    v34 = *(v98 + 600);
    v40 = *(v98 + 664);
    v35 = *(v98 + 632);
    v33 = *(v98 + 608);
    memcpy(v152, (v98 + 184), 0x50uLL);
    v152[80] = 0;
    (*(v33 + 8))(v32, v34);
    v39 = *(v35 + 8);
    v39(v36, v38);
    v39(v37, v38);
    v44 = *(v40 + 8);
    v44(v41, v43);
    v44(v42, v43);
    memcpy((v98 + 16), v152, 0x51uLL);
    memcpy(*(v98 + 376), (v98 + 16), 0x51uLL);

    v14 = *(*(v98 + 304) + 8);

    return v14();
  }

  v18 = *(v98 + 744);
  v29 = *(v98 + 688);
  v28 = *(v98 + 680);
  v30 = *(v98 + 656);
  v24 = *(v98 + 648);
  v23 = *(v98 + 640);
  v25 = *(v98 + 624);
  v20 = *(v98 + 616);
  v21 = *(v98 + 600);
  v16 = *(v98 + 584);
  v17 = *(v98 + 568);
  v27 = *(v98 + 664);
  v22 = *(v98 + 632);
  v19 = *(v98 + 608);
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
  v1 = v0[89];
  v15 = v0[86];
  v14 = v0[85];
  v13 = v0[83];
  v16 = v0[82];
  v10 = v0[81];
  v9 = v0[80];
  v8 = v0[79];
  v11 = v0[78];
  v7 = v0[74];
  v5 = v0[72];
  v6 = v0[71];
  v4 = v0[70];
  v0[38] = v0;
  outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in WifiModel.train(dataFrame:), v1);
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
  v13 = v0[86];
  v12 = v0[85];
  v11 = v0[83];
  v14 = v0[82];
  v8 = v0[81];
  v7 = v0[80];
  v6 = v0[79];
  v9 = v0[78];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
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
  v13 = v0[86];
  v12 = v0[85];
  v11 = v0[83];
  v14 = v0[82];
  v8 = v0[81];
  v7 = v0[80];
  v6 = v0[79];
  v9 = v0[78];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
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