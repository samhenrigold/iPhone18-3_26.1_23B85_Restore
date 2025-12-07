uint64_t BinaryInteger.formatted<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a1;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v20 - v17;
  (*(v11 + 16))(v13, v7, a2, v16);
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(a5 + 48))(v18, a3, a5);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t BinaryInteger.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[2] = a7;
  v25[3] = a5;
  v25[0] = a8;
  v25[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - v19;
  v21 = *(a6 + 48);
  v26 = a1;
  v21(a1, a4, a6, v18);
  if (v8)
  {
    (*(*(a4 - 8) + 8))(a2, a4);
    v22 = swift_getAssociatedTypeWitness();
    return (*(*(v22 - 8) + 8))(v26, v22);
  }

  else
  {
    (*(v14 + 16))(v16, v20, AssociatedTypeWitness);
    dispatch thunk of BinaryInteger.init<A>(_:)();
    (*(*(a4 - 8) + 8))(a2, a4);
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 8))(v26, v24);
    return (*(v14 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t BinaryInteger.init<A>(_:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 48))(a1, a4, a6);
  (*(*(a4 - 8) + 8))(a2, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

id BinaryInteger.init(_:format:lenient:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle, a7, IntegerFormatStyle.format(_:), closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:), closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:));
}

{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle.Percent, a7, IntegerFormatStyle.Percent.format(_:), closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle.Currency, a7, IntegerFormatStyle.Currency.format(_:), closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

id BinaryInteger.init(_:format:lenient:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, double)@<X6>, uint64_t a9@<X8>, uint64_t (*a10)(char *, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  LODWORD(v185) = a4;
  v189 = a1;
  v178 = a9;
  v200[6] = *MEMORY[0x1E69E9840];
  v177 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v175 = &v170 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v174 = type metadata accessor for Optional();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v30 = (&v170 - v29);
  v179 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v172 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v171 = &v170 - v35;
  v36 = a7(255, a5, a6, v34);
  WitnessTable = swift_getWitnessTable();
  v38 = type metadata accessor for IntegerParseStrategy(0, v36, WitnessTable, a6);
  v183 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v170 - v39;
  v181 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v180 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.n128_f64[0] = MEMORY[0x1EEE9AC00](v43);
  v46 = &v170 - v45;
  v182 = *(v36 - 8);
  v47 = *(v182 + 16);
  v184 = a3;
  v187 = v36;
  v48 = v36;
  v50 = v49;
  v47(v40, a3, v48, v44);
  v51 = v189;
  v52 = *(v50 + 44);
  v190 = v40;
  v40[v52] = v185;
  v53 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v53 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v188 = a2;
  if (v53)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v51, a2);
    v54 = String.init(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xE000000000000000;
  }

  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v54;
  }

  v58 = 7;
  if (((v56 >> 60) & ((v54 & 0x800000000000000) == 0)) != 0)
  {
    v58 = 11;
  }

  v59 = v190;
  v60 = v186;
  IntegerParseStrategy.parse(_:startingAt:in:)(v54, v56, 0xFuLL, v58 | (v57 << 16), v50, v30);
  if (v60)
  {

    (*(v182 + 8))(v184, v187);
    return (*(v183 + 8))(v59, v50);
  }

  v62 = v179;
  if ((*(v179 + 48))(v30, 1, TupleTypeMetadata2) != 1)
  {

    (*(v183 + 8))(v190, v50);
    v74 = *(v62 + 32);
    v190 = 0;
    v75 = v171;
    v74(v171, v30, TupleTypeMetadata2);
    v76 = v172;
    v74(v172, v75, TupleTypeMetadata2);
    v77 = v181;
    (*(v181 + 32))(v46, &v76[*(TupleTypeMetadata2 + 48)], a5);
    (*(v77 + 16))(v180, v46, a5);
    dispatch thunk of BinaryInteger.init<A>(_:)();
    (*(v182 + 8))(v184, v187);
    return (*(v77 + 8))(v46, a5);
  }

  (*(v173 + 8))(v30, v174);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v63 = v180;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v64 = a10(v63, v187);
  v66 = v65;
  (*(v181 + 8))(v63, a5);
  v195 = v64;
  v196 = v66;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v68 = @"NSDebugDescription";
  v69 = v68;
  v186 = v50;
  v185 = v66;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v68);
    switch(TaggedPointerTag)
    {
      case 0:
        v193 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v86)
        {
          v71 = v85;
          v73 = v86;
        }

        else
        {
          [(__CFString *)v69 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v71 = v191;
          v73 = v192;
        }

        goto LABEL_42;
      case 0x16:
        result = [(__CFString *)v69 UTF8String];
        if (result)
        {
          result = String.init(utf8String:)(result);
          v80 = v188;
          if (v84)
          {
            v71 = result;
            v73 = v84;
LABEL_48:

            goto LABEL_52;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_171;
      case 2:
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        *(&v170 - 2) = v69;
        v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v73 = v72;

LABEL_42:
        v80 = v188;
        goto LABEL_52;
    }
  }

  LOBYTE(v191) = 0;
  v197 = 0;
  LOBYTE(v193) = 0;
  v194 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v81 = v69;
    v82 = String.init(_nativeStorage:)();
    v80 = v188;
    if (v83)
    {
      v71 = v82;
      v73 = v83;

      goto LABEL_52;
    }

    v197 = [(__CFString *)v81 length];
    if (v197)
    {
      goto LABEL_50;
    }

LABEL_27:
    v71 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_52;
  }

  v79 = v197;
  v80 = v188;
  if (!v197)
  {

    goto LABEL_27;
  }

  if (v194 == 1)
  {
    if (v191)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v87 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_51;
  }

  if (v193)
  {
    if (v191 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v170 - 4) = v69;
      *(&v170 - 3) = &v197;
      *(&v170 - 4) = 1536;
      *(&v170 - 1) = v79;
    }

    else
    {
      v89 = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v89);
      *(&v170 - 4) = v69;
      *(&v170 - 3) = &v197;
      *(&v170 - 4) = 134217984;
      *(&v170 - 1) = v90;
    }

    v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v73 = v92;
    v93 = HIBYTE(v92) & 0xF;
    if ((v92 & 0x2000000000000000) == 0)
    {
      v93 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v71 = v91;
      goto LABEL_48;
    }
  }

LABEL_50:
  v87 = String.init(_cocoaString:)();
LABEL_51:
  v71 = v87;
  v73 = v88;
LABEL_52:
  v200[0] = v71;
  v200[1] = v73;
  v197 = 0;
  v198 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](v189, v80);
  MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
  v94 = MEMORY[0x1E69E6158];
  _print_unlocked<A, B>(_:_:)();
  v200[5] = v94;
  v200[2] = v197;
  v200[3] = v198;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v95 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v200, &v197);

  outlined destroy of (String, Any)(v200);
  v96 = v197;
  v97 = v198;
  v98 = specialized __RawDictionaryStorage.find<A>(_:)(v197, v198);
  v100 = v99;

  if (v100)
  {
    __break(1u);
    goto LABEL_167;
  }

  v95[(v98 >> 6) + 8] |= 1 << v98;
  v101 = (v95[6] + 16 * v98);
  *v101 = v96;
  v101[1] = v97;
  outlined init with take of Any(&v199, (v95[7] + 32 * v98));
  v102 = v95[2];
  v103 = __OFADD__(v102, 1);
  v104 = v102 + 1;
  if (v103)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v95[2] = v104;
  v105 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v106 = @"NSCocoaErrorDomain";
  v107 = v106;
  v108 = v105;
  if (!v105)
  {
    goto LABEL_59;
  }

  v109 = _objc_getTaggedPointerTag(v106);
  switch(v109)
  {
    case 0:
LABEL_70:
      v193 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v115)
      {
        [(__CFString *)v107 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_87;
      }

      goto LABEL_84;
    case 0x16:
      result = [(__CFString *)v107 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v114)
        {
          goto LABEL_84;
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_171:
      __break(1u);
      goto LABEL_172;
    case 2:
      MEMORY[0x1EEE9AC00](v109);
      *(&v170 - 2) = v107;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_87;
  }

LABEL_59:
  LOBYTE(v191) = 0;
  v197 = 0;
  LOBYTE(v193) = 0;
  v194 = 0;
  v110 = __CFStringIsCF();
  if (!v110)
  {
    v112 = v107;
    String.init(_nativeStorage:)();
    if (v113 || (v197 = [(__CFString *)v112 length]) == 0)
    {

      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v111 = v197;
  if (!v197)
  {
LABEL_84:

    goto LABEL_87;
  }

  if (v194 != 1)
  {
    if (v193)
    {
      if (v191 == 1)
      {
        MEMORY[0x1EEE9AC00](v110);
        *(&v170 - 4) = v107;
        *(&v170 - 3) = &v197;
        *(&v170 - 4) = 1536;
        *(&v170 - 1) = v111;
      }

      else
      {
        v116 = [(__CFString *)v107 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v116);
        *(&v170 - 4) = v107;
        *(&v170 - 3) = &v197;
        *(&v170 - 4) = 134217984;
        *(&v170 - 1) = v117;
      }

      v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v120 = HIBYTE(v119) & 0xF;
      if ((v119 & 0x2000000000000000) == 0)
      {
        v120 = v118 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        goto LABEL_84;
      }
    }

LABEL_86:
    String.init(_cocoaString:)();
    goto LABEL_87;
  }

  if (v191)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_87:
  v121 = objc_allocWithZone(NSError);
  v122 = String._bridgeToObjectiveCImpl()();

  v123 = [v121 initWithDomain:v122 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v189 = v123;
  v124 = [v123 domain];
  if (!v124)
  {
    v130 = 0;
    v132 = 0xE000000000000000;
    goto LABEL_126;
  }

  v125 = v124;
  v126 = _objc_isTaggedPointer(v124);
  v127 = v125;
  v128 = v127;
  if ((v126 & 1) == 0)
  {
LABEL_93:
    LOBYTE(v191) = 0;
    v197 = 0;
    LOBYTE(v193) = 0;
    v194 = 0;
    v133 = __CFStringIsCF();
    if (v133)
    {
      v134 = v197;
      if (v197)
      {
        if (v194 == 1)
        {
          if (v191)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v141 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_124;
        }

        if (v193)
        {
          if (v191 == 1)
          {
            MEMORY[0x1EEE9AC00](v133);
            *(&v170 - 4) = v128;
            *(&v170 - 3) = &v197;
            *(&v170 - 4) = 1536;
            *(&v170 - 1) = v134;
          }

          else
          {
            v143 = [v128 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v143);
            *(&v170 - 4) = v128;
            *(&v170 - 3) = &v197;
            *(&v170 - 4) = 134217984;
            *(&v170 - 1) = v144;
          }

          v139 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v132 = v145;
          v146 = HIBYTE(v145) & 0xF;
          if ((v145 & 0x2000000000000000) == 0)
          {
            v146 = v139 & 0xFFFFFFFFFFFFLL;
          }

          if (v146)
          {
LABEL_120:
            v130 = v139;
            goto LABEL_121;
          }
        }

LABEL_123:
        v141 = String.init(_cocoaString:)();
LABEL_124:
        v130 = v141;
        v132 = v142;
        goto LABEL_125;
      }
    }

    else
    {
      v135 = v128;
      v136 = String.init(_nativeStorage:)();
      if (v137)
      {
        v132 = v137;
        v130 = v136;

        goto LABEL_126;
      }

      v197 = [v135 length];
      if (v197)
      {
        goto LABEL_123;
      }
    }

    v130 = 0;
    v132 = 0xE000000000000000;
    goto LABEL_126;
  }

  v129 = _objc_getTaggedPointerTag(v127);
  if (!v129)
  {
    v193 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v139 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v140)
    {
      [v128 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v130 = v191;
      v132 = v192;
LABEL_125:

LABEL_126:
      v147 = v107;
      v148 = v147;
      if (!v108)
      {
        goto LABEL_131;
      }

      v149 = _objc_getTaggedPointerTag(v147);
      if (!v149)
      {
        v193 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v160 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v161)
        {
          v150 = v160;
          v152 = v161;
        }

        else
        {
          [(__CFString *)v148 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v150 = v191;
          v152 = v192;
        }

        goto LABEL_160;
      }

      if (v149 != 22)
      {
        if (v149 == 2)
        {
          MEMORY[0x1EEE9AC00](v149);
          *(&v170 - 2) = v148;
          v150 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v152 = v151;

          v153 = v186;
          goto LABEL_161;
        }

LABEL_131:
        LOBYTE(v191) = 0;
        v197 = 0;
        LOBYTE(v193) = 0;
        v194 = 0;
        v154 = __CFStringIsCF();
        if (v154)
        {
          v155 = v197;
          if (v197)
          {
            v153 = v186;
            if (v194 == 1)
            {
              if (v191)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v150 = String.init<A>(_immortalCocoaString:count:encoding:)();
              v152 = v162;
              goto LABEL_161;
            }

            if (v193)
            {
              if (v191 == 1)
              {
                MEMORY[0x1EEE9AC00](v154);
                *(&v170 - 4) = v148;
                *(&v170 - 3) = &v197;
                *(&v170 - 4) = 1536;
                *(&v170 - 1) = v155;
              }

              else
              {
                v163 = [(__CFString *)v148 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v163);
                *(&v170 - 4) = v148;
                *(&v170 - 3) = &v197;
                *(&v170 - 4) = 134217984;
                *(&v170 - 1) = v164;
              }

              v165 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v152 = v166;
              v167 = HIBYTE(v166) & 0xF;
              if ((v166 & 0x2000000000000000) == 0)
              {
                v167 = v165 & 0xFFFFFFFFFFFFLL;
              }

              if (v167)
              {
                v150 = v165;

                goto LABEL_160;
              }
            }

LABEL_159:
            v150 = String.init(_cocoaString:)();
            v152 = v168;
            goto LABEL_160;
          }
        }

        else
        {
          v156 = v148;
          v157 = String.init(_nativeStorage:)();
          if (v158)
          {
            v150 = v157;
            v152 = v158;

LABEL_160:
            v153 = v186;
LABEL_161:
            if (v130 == v150 && v132 == v152)
            {

LABEL_165:
              swift_willThrow();

              (*(v182 + 8))(v184, v187);

              return (*(v183 + 8))(v190, v153);
            }

            v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v169)
            {
              goto LABEL_165;
            }

LABEL_168:
            __break(1u);
          }

          v197 = [(__CFString *)v156 length];
          if (v197)
          {
            goto LABEL_159;
          }
        }

        v150 = 0;
        v152 = 0xE000000000000000;
        goto LABEL_160;
      }

      result = [(__CFString *)v148 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        v153 = v186;
        if (v159)
        {
          v150 = result;
          v152 = v159;

          goto LABEL_161;
        }

        goto LABEL_173;
      }

LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v132 = v140;
    goto LABEL_120;
  }

  if (v129 != 22)
  {
    if (v129 == 2)
    {
      MEMORY[0x1EEE9AC00](v129);
      *(&v170 - 2) = v128;
      v130 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v132 = v131;

      goto LABEL_126;
    }

    goto LABEL_93;
  }

  result = [v128 UTF8String];
  if (!result)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  result = String.init(utf8String:)(result);
  if (v138)
  {
    v130 = result;
    v132 = v138;
LABEL_121:

    goto LABEL_125;
  }

LABEL_175:
  __break(1u);
  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall NSDecimal.FormatStyle.format(_:)(NSDecimal *a1)
{
  v92 = v2;
  v4 = v1;
  v104 = *MEMORY[0x1E69E9840];
  type metadata accessor for NSDecimal.FormatStyle(0);
  v5 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 472))(ObjectType, v8);
  v12 = v11;
  if (one-time initialization token for cache != -1)
  {
    v31 = v10;
    swift_once();
    v10 = v31;
  }

  v14 = static ICUNumberFormatter.cache;
  v13 = *algn_1EA7B1D98;
  *&v99 = v5;
  *(&v99 + 1) = v7;
  v94 = v10;
  v100 = v10;
  v101 = v12;
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock((v13 + 24));
  LOBYTE(v15) = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v13 + 16, &v102);
  os_unfair_lock_unlock((v13 + 24));
  v16 = v102;
  if (v102 == 1)
  {
    type metadata accessor for ICUNumberFormatter();
    v16 = swift_allocObject();
    v16[3] = v5;
    v16[4] = v7;
    swift_bridgeObjectRetain_n();
    v17 = MEMORY[0x1865CB200](v5, v7);
    if (v17)
    {
      v18 = v17;
      v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v17, 0);

      v15 = specialized Sequence._copySequenceContents(initializing:)(&v102, (v19 + 4), v18, v5, v7);

      if (v15 != v18)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v102) = 0;
    if (v19[2] >> 31)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    LOBYTE(v15) = String.utf8CString.getter();
    v21 = unumf_openForSkeletonAndLocale();

    if (v21)
    {
      if (v102 < 1)
      {
        v16[2] = v21;
LABEL_14:
        os_unfair_lock_lock((v13 + 24));
        if (v14 < *(*(v13 + 16) + 16))
        {
          *(v13 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v102 = *(v13 + 16);
        v19 = v102;
        *(v13 + 16) = 0x8000000000000000;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v94, v12);
        v24 = v19[2];
        v25 = (v23 & 1) == 0;
        v26 = v24 + v25;
        if (!__OFADD__(v24, v25))
        {
          LOBYTE(v15) = v23;
          if (v19[3] < v26)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v27 = v102;
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v94, v12);
            if ((v15 & 1) != (v29 & 1))
            {
              goto LABEL_94;
            }

            v20 = v28;
LABEL_23:
            if (v15)
            {
LABEL_24:
              v30 = v20;

              *(*(v27 + 56) + 8 * v30) = v16;

LABEL_45:
              *(v13 + 16) = v27;

              os_unfair_lock_unlock((v13 + 24));

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_46;
            }

LABEL_44:
            specialized _NativeDictionary._insert(at:key:value:)(v20, v5, v7, v94, v12, v16, v27);
            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v27 = v19;
            goto LABEL_23;
          }

LABEL_28:
          v82 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
          v32 = static _DictionaryStorage.copy(original:)();
          v27 = v32;
          if (v19[2])
          {
            v33 = (v32 + 64);
            v83 = (v19 + 8);
            v34 = ((1 << *(v27 + 32)) + 63) >> 6;
            if (v27 != v19 || v33 >= &v83[8 * v34])
            {
              memmove(v33, v83, 8 * v34);
            }

            v35 = 0;
            *(v27 + 16) = v19[2];
            v36 = 1 << *(v19 + 32);
            v37 = -1;
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            v38 = v37 & v19[8];
            v39 = (v36 + 63) >> 6;
            v84 = v39;
            if (!v38)
            {
              goto LABEL_36;
            }

            while (1)
            {
              v40 = __clz(__rbit64(v38));
              for (i = (v38 - 1) & v38; ; i = (v42 - 1) & v42)
              {
                v43 = v40 | (v35 << 6);
                v44 = (v19[6] + 32 * v43);
                v45 = v44[1];
                v46 = v44[2];
                v47 = v44[3];
                v48 = *(v19[7] + 8 * v43);
                v49 = (*(v27 + 48) + 32 * v43);
                *v49 = *v44;
                v49[1] = v45;
                v49[2] = v46;
                v49[3] = v47;
                *(*(v27 + 56) + 8 * v43) = v48;

                v39 = v84;
                v38 = i;
                if (i)
                {
                  break;
                }

LABEL_36:
                v41 = v35;
                do
                {
                  v35 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_92;
                  }

                  if (v35 >= v39)
                  {
                    goto LABEL_43;
                  }

                  v42 = *&v83[8 * v35];
                  ++v41;
                }

                while (!v42);
                v40 = __clz(__rbit64(v42));
              }
            }
          }

LABEL_43:

          v20 = v82;
          if (v15)
          {
            goto LABEL_24;
          }

          goto LABEL_44;
        }

        goto LABEL_26;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v16 = 0;
    goto LABEL_14;
  }

LABEL_46:

  if (v16)
  {
    v50 = v16[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v51 = a1;
    v52 = v92;
    v76 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v50, a1, v4, v92);

    v77 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v76);
    v79 = v78;

    if (v79)
    {
      v74 = v79;
      v75 = v77;
      goto LABEL_95;
    }
  }

  else
  {
    v52 = v92;
    v51 = a1;
  }

  *&v102 = v51;
  *(&v102 + 1) = v4;
  v103 = v52;
  if (!_So9NSDecimala__length_getter(&v102))
  {
    *&v102 = v51;
    *(&v102 + 1) = v4;
    v103 = v52;
    if (_So9NSDecimala__isNegative_getter(&v102))
    {
      v74 = 0xE300000000000000;
      v75 = 5136718;
      goto LABEL_95;
    }
  }

  *&v102 = v51;
  *(&v102 + 1) = v4;
  v103 = v52;
  if (!_So9NSDecimala__length_getter(&v102))
  {
    v74 = 0xE100000000000000;
    v75 = 48;
    goto LABEL_95;
  }

  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  *&v102 = v51;
  *(&v102 + 1) = v4;
  v103 = v52;
  v99 = v102;
  LODWORD(v100) = v52;
  if (_So9NSDecimala__exponent_getter(&v99) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v99 = v102;
      LODWORD(v100) = v103;
      v53 = _So9NSDecimala__exponent_getter(&v99);
      _So9NSDecimala__exponent_setter((v53 - 1), &v102);
      v99 = v102;
      LODWORD(v100) = v103;
    }

    while (_So9NSDecimala__exponent_getter(&v99) > 0);
  }

  v99 = v102;
  LODWORD(v100) = v103;
  if (!_So9NSDecimala__exponent_getter(&v99))
  {
    _So9NSDecimala__exponent_setter(1, &v102);
  }

  v99 = v102;
  LODWORD(v100) = v103;
  if (!_So9NSDecimala__length_getter(&v99))
  {
LABEL_81:
    v99 = v102;
    LODWORD(v100) = v103;
    if (_So9NSDecimala__exponent_getter(&v99) <= 0)
    {
      while (1)
      {
        v99 = v102;
        LODWORD(v100) = v103;
        if (!_So9NSDecimala__exponent_getter(&v99))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v99 = v102;
        LODWORD(v100) = v103;
        v80 = _So9NSDecimala__exponent_getter(&v99);
        _So9NSDecimala__exponent_setter((v80 + 1), &v102);
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v99 = v102;
    LODWORD(v100) = v103;
    if (_So9NSDecimala__isNegative_getter(&v99))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v99 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
    v75 = String.init<A>(_:)();
    goto LABEL_95;
  }

  while (1)
  {
    v99 = v102;
    LODWORD(v100) = v103;
    if (!_So9NSDecimala__exponent_getter(&v99))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v99 = v102;
    LODWORD(v100) = v103;
    v54 = _So9NSDecimala__exponent_getter(&v99);
    _So9NSDecimala__exponent_setter((v54 + 1), &v102);
    v55 = v102;
    v56 = WORD2(v102);
    v57 = WORD4(v102);
    v58 = WORD5(v102);
    v59 = WORD6(v102);
    v89 = WORD3(v102);
    v93 = HIWORD(v102);
    v95 = v103;
    v91 = HIWORD(v103);
    NSDecimal.asVariableLengthInteger()(v102 | (WORD2(v102) << 32) | (WORD3(v102) << 48), WORD4(v102) | (WORD5(v102) << 16) | (WORD6(v102) << 32) | (HIWORD(v102) << 48), v103 | (HIWORD(v103) << 16));
    v61 = v60;
    v62 = *(v60 + 16);
    v63 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v62);
    *&v99 = v63;
    if (v62)
    {
      v85 = v59;
      v86 = v58;
      v64 = v56;
      v65 = 0;
      v66 = v62 + 15;
      while ((v66 - 15) <= *(v61 + 16))
      {
        v67 = *(v61 + 2 * v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
        }

        if ((v66 - 15) > v63[1].i64[0])
        {
          goto LABEL_90;
        }

        v68 = v67 | (v65 << 16);
        v63->i16[v66] = v68 / 0xA;
        v65 = v68 % 0xA;
        if (--v66 == 15)
        {

          *&v99 = v63;
          v69 = v65 | 0x30;
          v56 = v64;
          v58 = v86;
          v59 = v85;
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }

    v69 = 48;
LABEL_66:
    v70 = v63[1].i64[0];
    for (j = v69; v70; v70 = *(v99 + 16))
    {
      if (v63[1].i16[v70 + 7])
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v99 + 16) - 1);
      }

      v63 = v99;
    }

    LODWORD(v99) = v55;
    WORD2(v99) = v56;
    WORD3(v99) = v89;
    WORD4(v99) = v57;
    WORD5(v99) = v58;
    WORD6(v99) = v59;
    HIWORD(v99) = v93;
    LOWORD(v100) = v95;
    WORD1(v100) = v91;
    NSDecimal.copyVariableLengthInteger(_:)(v63);
    if (v71)
    {
      break;
    }

    v72 = v63[1].u64[0];

    if (HIDWORD(v72))
    {
      goto LABEL_91;
    }

    _So9NSDecimala__length_setter(v72, &v99);
    v102 = v99;
    v103 = v100;
    *&v97 = j;
    v73 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v73);

    v97 = v102;
    v98 = v103;
    if (!_So9NSDecimala__length_getter(&v97))
    {
      goto LABEL_81;
    }
  }

  swift_unexpectedError();
  __break(1u);
LABEL_94:
  v75 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_95:
  result._object = v74;
  result._countAndFlagsBits = v75;
  return result;
}

Swift::String __swiftcall NSDecimal.FormatStyle.Currency.format(_:)(NSDecimal *a1)
{
  v97 = v2;
  v95 = v1;
  type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v4 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v6 = v5;
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 472);

  v12 = v11(ObjectType, v9);
  v13 = v12;
  *&v111 = v4;
  *(&v111 + 1) = v6;
  v14 = v6;
  *&v112 = v7;
  *(&v112 + 1) = v8;
  v99 = v8;
  *&v113 = v12;
  *(&v113 + 1) = v15;
  v101 = v15;
  if (one-time initialization token for cache != -1)
  {
    v12 = swift_once();
  }

  v16 = static ICUCurrencyNumberFormatter.cache;
  v17 = qword_1EA7B5100;
  v108 = v111;
  v109 = v112;
  v110 = v113;
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock((v17 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v17 + 16, &v105);
  os_unfair_lock_unlock((v17 + 24));
  v18 = v105;
  if (v105 == 1)
  {
    v19 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v4, v14, v7, v99);
    v21 = v20;
    type metadata accessor for ICUCurrencyNumberFormatter();
    v22 = swift_allocObject();

    v18 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v19, v21, v13, v101);
    os_unfair_lock_lock((v17 + 24));
    if (v16 >= *(*(v17 + 16) + 16))
    {
    }

    else
    {
      *(v17 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v105 = *(v17 + 16);
    v24 = v105;
    *(v17 + 16) = 0x8000000000000000;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(&v111);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
    }

    else
    {
      v22 = v25;
      if (*(v24 + 24) < v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
        v30 = v105;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(&v111);
        if ((v22 & 1) != (v32 & 1))
        {
LABEL_82:
          v80 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_83;
        }

        v26 = v31;
        if ((v22 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v30 = v24;
        if ((v25 & 1) == 0)
        {
LABEL_32:
          specialized _NativeDictionary._insert(at:key:value:)(v26, &v111, v18, v30);
          goto LABEL_33;
        }

LABEL_14:
        v33 = v26;

        *(*(v30 + 56) + 8 * v33) = v18;

LABEL_33:
        *(v17 + 16) = v30;

        os_unfair_lock_unlock((v17 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_34;
      }
    }

    v87 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
    v34 = static _DictionaryStorage.copy(original:)();
    v30 = v34;
    if (*(v24 + 16))
    {
      v35 = (v34 + 64);
      v88 = (v24 + 64);
      v36 = ((1 << *(v30 + 32)) + 63) >> 6;
      if (v30 != v24 || v35 >= &v88[8 * v36])
      {
        memmove(v35, v88, 8 * v36);
      }

      v37 = 0;
      *(v30 + 16) = *(v24 + 16);
      v38 = 1 << *(v24 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v40 = v39 & *(v24 + 64);
      v41 = (v38 + 63) >> 6;
      v89 = v41;
      if (v40)
      {
        do
        {
          v42 = __clz(__rbit64(v40));
          v91 = (v40 - 1) & v40;
LABEL_29:
          v45 = v42 | (v37 << 6);
          v46 = (*(v24 + 48) + 48 * v45);
          v47 = v46[1];
          v48 = v46[2];
          v49 = v46[3];
          v50 = *(*(v24 + 56) + 8 * v45);
          v51 = v46[4];
          v52 = v46[5];
          v53 = (*(v30 + 48) + 48 * v45);
          *v53 = *v46;
          v53[1] = v47;
          v53[2] = v48;
          v53[3] = v49;
          v53[4] = v51;
          v53[5] = v52;
          *(*(v30 + 56) + 8 * v45) = v50;

          v41 = v89;
          v40 = v91;
        }

        while (v91);
      }

      v43 = v37;
      while (1)
      {
        v37 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_80;
        }

        if (v37 >= v41)
        {
          break;
        }

        v44 = *&v88[8 * v37];
        ++v43;
        if (v44)
        {
          v42 = __clz(__rbit64(v44));
          v91 = (v44 - 1) & v44;
          goto LABEL_29;
        }
      }
    }

    v26 = v87;
    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

LABEL_34:

  if (v18)
  {
    v54 = v18[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v55 = a1;
    v56 = v95;
    v57 = v97;
    v81 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v54, a1, v95, v97);

    v82 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v81);
    v84 = v83;

    if (v84)
    {
      v79 = v84;
      v80 = v82;
      goto LABEL_83;
    }
  }

  else
  {
    v57 = v97;
    v56 = v95;
    v55 = a1;
  }

  *&v108 = v55;
  *(&v108 + 1) = v56;
  LODWORD(v109) = v57;
  if (!_So9NSDecimala__length_getter(&v108))
  {
    *&v108 = v55;
    *(&v108 + 1) = v56;
    LODWORD(v109) = v57;
    if (_So9NSDecimala__isNegative_getter(&v108))
    {
      v79 = 0xE300000000000000;
      v80 = 5136718;
      goto LABEL_83;
    }
  }

  *&v108 = v55;
  *(&v108 + 1) = v56;
  LODWORD(v109) = v57;
  if (!_So9NSDecimala__length_getter(&v108))
  {
    v79 = 0xE100000000000000;
    v80 = 48;
    goto LABEL_83;
  }

  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  *&v108 = v55;
  *(&v108 + 1) = v56;
  LODWORD(v109) = v57;
  v105 = v108;
  v106 = v57;
  if (_So9NSDecimala__exponent_getter(&v105) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v105 = v108;
      v106 = v109;
      v58 = _So9NSDecimala__exponent_getter(&v105);
      _So9NSDecimala__exponent_setter((v58 - 1), &v108);
      v105 = v108;
      v106 = v109;
    }

    while (_So9NSDecimala__exponent_getter(&v105) > 0);
  }

  v105 = v108;
  v106 = v109;
  if (!_So9NSDecimala__exponent_getter(&v105))
  {
    _So9NSDecimala__exponent_setter(1, &v108);
  }

  v105 = v108;
  v106 = v109;
  if (_So9NSDecimala__length_getter(&v105))
  {
    while (1)
    {
      v105 = v108;
      v106 = v109;
      if (!_So9NSDecimala__exponent_getter(&v105))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v105 = v108;
      v106 = v109;
      v59 = _So9NSDecimala__exponent_getter(&v105);
      _So9NSDecimala__exponent_setter((v59 + 1), &v108);
      v60 = v108;
      v61 = WORD2(v108);
      v62 = WORD4(v108);
      v63 = WORD5(v108);
      v64 = WORD6(v108);
      v96 = WORD3(v108);
      v100 = HIWORD(v108);
      v102 = v109;
      v98 = WORD1(v109);
      NSDecimal.asVariableLengthInteger()(v108 | (WORD2(v108) << 32) | (WORD3(v108) << 48), WORD4(v108) | (WORD5(v108) << 16) | (WORD6(v108) << 32) | (HIWORD(v108) << 48), v109 | (WORD1(v109) << 16));
      v66 = v65;
      v67 = *(v65 + 16);
      v68 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v67);
      *&v105 = v68;
      if (v67)
      {
        break;
      }

      v74 = 48;
LABEL_54:
      v75 = v68[1].i64[0];
      for (i = v74; v75; v75 = *(v105 + 16))
      {
        if (v68[1].i16[v75 + 7])
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v105 + 16) - 1);
        }

        v68 = v105;
      }

      LODWORD(v105) = v60;
      WORD2(v105) = v61;
      WORD3(v105) = v96;
      WORD4(v105) = v62;
      WORD5(v105) = v63;
      WORD6(v105) = v64;
      HIWORD(v105) = v100;
      LOWORD(v106) = v102;
      HIWORD(v106) = v98;
      NSDecimal.copyVariableLengthInteger(_:)(v68);
      if (v76)
      {
        goto LABEL_81;
      }

      v77 = v68[1].u64[0];

      if (HIDWORD(v77))
      {
        goto LABEL_79;
      }

      _So9NSDecimala__length_setter(v77, &v105);
      v108 = v105;
      LODWORD(v109) = v106;
      *&v103 = i;
      v78 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v78);

      v103 = v108;
      v104 = v109;
      if (!_So9NSDecimala__length_getter(&v103))
      {
        goto LABEL_69;
      }
    }

    v90 = v64;
    v92 = v63;
    v69 = v61;
    v70 = 0;
    v71 = v67 + 15;
    while ((v71 - 15) <= *(v66 + 16))
    {
      v72 = *(v66 + 2 * v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
      }

      if ((v71 - 15) > v68[1].i64[0])
      {
        goto LABEL_78;
      }

      v73 = v72 | (v70 << 16);
      v68->i16[v71] = v73 / 0xA;
      v70 = v73 % 0xA;
      if (--v71 == 15)
      {

        *&v105 = v68;
        v74 = v70 | 0x30;
        v61 = v69;
        v63 = v92;
        v64 = v90;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:

    swift_unexpectedError();
    __break(1u);
    goto LABEL_82;
  }

LABEL_69:
  v105 = v108;
  v106 = v109;
  if (_So9NSDecimala__exponent_getter(&v105) <= 0)
  {
    while (1)
    {
      v105 = v108;
      v106 = v109;
      if (!_So9NSDecimala__exponent_getter(&v105))
      {
        break;
      }

      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v105 = v108;
      v106 = v109;
      v85 = _So9NSDecimala__exponent_getter(&v105);
      _So9NSDecimala__exponent_setter((v85 + 1), &v108);
    }

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](48, 0xE100000000000000);
  }

  v105 = v108;
  v106 = v109;
  if (_So9NSDecimala__isNegative_getter(&v105))
  {
    MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  }

  v105 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
  v80 = String.init<A>(_:)();
LABEL_83:
  result._object = v79;
  result._countAndFlagsBits = v80;
  return result;
}

Swift::String __swiftcall NSDecimal.FormatStyle.Percent.format(_:)(NSDecimal *a1)
{
  v92 = v2;
  v4 = v1;
  type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  v5 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 472))(ObjectType, v8);
  v12 = v11;
  if (one-time initialization token for cache != -1)
  {
    v30 = v10;
    swift_once();
    v10 = v30;
  }

  v13 = static ICUPercentNumberFormatter.cache;
  v14 = *algn_1EA7B0228;
  *&v101 = v5;
  *(&v101 + 1) = v7;
  v94 = v10;
  v102 = v10;
  v103 = v12;
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock((v14 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v14 + 16, &v98);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v98;
  if (v98 == 1)
  {
    *&v98 = 0x746E6563726570;
    *(&v98 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v96 = 32;
      *(&v96 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v5, v7);
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    v16 = v98;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v15 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v16, *(&v16 + 1), v94, v12);
    os_unfair_lock_lock((v14 + 24));
    if (v13 >= *(*(v14 + 16) + 16))
    {
    }

    else
    {
      *(v14 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = *(v14 + 16);
    v18 = v98;
    *(v14 + 16) = 0x8000000000000000;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v94, v12);
    v21 = *(v18 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      if (*(v18 + 24) < v23)
      {
        v24 = v19;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v25 = v98;
        v26 = v94;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v94, v12);
        if ((v24 & 1) != (v28 & 1))
        {
LABEL_84:
          v73 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_85;
        }

        v20 = v27;
        if ((v24 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v18;
        v26 = v94;
        if ((v19 & 1) == 0)
        {
LABEL_34:
          specialized _NativeDictionary._insert(at:key:value:)(v20, v5, v7, v26, v12, v15, v25);
          goto LABEL_35;
        }

LABEL_16:
        v29 = v20;

        *(*(v25 + 56) + 8 * v29) = v15;

LABEL_35:
        *(v14 + 16) = v25;

        os_unfair_lock_unlock((v14 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_36;
      }
    }

    v81 = v20;
    v82 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
    v31 = static _DictionaryStorage.copy(original:)();
    v25 = v31;
    v26 = v94;
    if (*(v18 + 16))
    {
      v32 = (v31 + 64);
      v83 = (v18 + 64);
      v33 = ((1 << *(v25 + 32)) + 63) >> 6;
      if (v25 != v18 || v32 >= &v83[8 * v33])
      {
        memmove(v32, v83, 8 * v33);
      }

      v34 = 0;
      *(v25 + 16) = *(v18 + 16);
      v35 = 1 << *(v18 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v18 + 64);
      v80 = (v35 + 63) >> 6;
      if (v37)
      {
        do
        {
          v86 = (v37 - 1) & v37;
          v88 = v34;
          v38 = __clz(__rbit64(v37)) | (v34 << 6);
LABEL_31:
          v42 = (*(v18 + 48) + 32 * v38);
          v43 = v42[1];
          v44 = v42[2];
          v45 = v42[3];
          v46 = *(*(v18 + 56) + 8 * v38);
          v47 = (*(v25 + 48) + 32 * v38);
          *v47 = *v42;
          v47[1] = v43;
          v47[2] = v44;
          v47[3] = v45;
          *(*(v25 + 56) + 8 * v38) = v46;

          v26 = v94;
          v34 = v88;
          v37 = v86;
        }

        while (v86);
      }

      v39 = v34;
      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_82;
        }

        if (v40 >= v80)
        {
          break;
        }

        v41 = *&v83[8 * v40];
        ++v39;
        if (v41)
        {
          v86 = (v41 - 1) & v41;
          v88 = v40;
          v38 = __clz(__rbit64(v41)) | (v40 << 6);
          goto LABEL_31;
        }
      }
    }

    v20 = v81;
    if ((v82 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_16;
  }

LABEL_36:

  if (v15)
  {
    v48 = v15[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v49 = a1;
    v50 = v92;
    v74 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v48, a1, v4, v92);

    v75 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v74);
    v77 = v76;

    if (v77)
    {
      v72 = v77;
      v73 = v75;
      goto LABEL_85;
    }
  }

  else
  {
    v50 = v92;
    v49 = a1;
  }

  *&v101 = v49;
  *(&v101 + 1) = v4;
  LODWORD(v102) = v50;
  if (!_So9NSDecimala__length_getter(&v101))
  {
    *&v101 = v49;
    *(&v101 + 1) = v4;
    LODWORD(v102) = v50;
    if (_So9NSDecimala__isNegative_getter(&v101))
    {
      v72 = 0xE300000000000000;
      v73 = 5136718;
      goto LABEL_85;
    }
  }

  *&v101 = v49;
  *(&v101 + 1) = v4;
  LODWORD(v102) = v50;
  if (!_So9NSDecimala__length_getter(&v101))
  {
    v72 = 0xE100000000000000;
    v73 = 48;
    goto LABEL_85;
  }

  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  *&v101 = v49;
  *(&v101 + 1) = v4;
  LODWORD(v102) = v50;
  v98 = v101;
  v99 = v50;
  if (_So9NSDecimala__exponent_getter(&v98) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v98 = v101;
      v99 = v102;
      v51 = _So9NSDecimala__exponent_getter(&v98);
      _So9NSDecimala__exponent_setter((v51 - 1), &v101);
      v98 = v101;
      v99 = v102;
    }

    while (_So9NSDecimala__exponent_getter(&v98) > 0);
  }

  v98 = v101;
  v99 = v102;
  if (!_So9NSDecimala__exponent_getter(&v98))
  {
    _So9NSDecimala__exponent_setter(1, &v101);
  }

  v98 = v101;
  v99 = v102;
  if (_So9NSDecimala__length_getter(&v98))
  {
    while (1)
    {
      v98 = v101;
      v99 = v102;
      if (!_So9NSDecimala__exponent_getter(&v98))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v98 = v101;
      v99 = v102;
      v52 = _So9NSDecimala__exponent_getter(&v98);
      _So9NSDecimala__exponent_setter((v52 + 1), &v101);
      v53 = v101;
      v54 = WORD2(v101);
      v55 = WORD4(v101);
      v56 = WORD5(v101);
      v57 = WORD6(v101);
      v89 = WORD3(v101);
      v93 = HIWORD(v101);
      v95 = v102;
      v91 = WORD1(v102);
      NSDecimal.asVariableLengthInteger()(v101 | (WORD2(v101) << 32) | (WORD3(v101) << 48), WORD4(v101) | (WORD5(v101) << 16) | (WORD6(v101) << 32) | (HIWORD(v101) << 48), v102 | (WORD1(v102) << 16));
      v59 = v58;
      v60 = *(v58 + 16);
      v61 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v60);
      *&v98 = v61;
      if (v60)
      {
        break;
      }

      v67 = 48;
LABEL_56:
      v68 = v61[1].i64[0];
      for (i = v67; v68; v68 = *(v98 + 16))
      {
        if (v61[1].i16[v68 + 7])
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v98 + 16) - 1);
        }

        v61 = v98;
      }

      LODWORD(v98) = v53;
      WORD2(v98) = v54;
      WORD3(v98) = v89;
      WORD4(v98) = v55;
      WORD5(v98) = v56;
      WORD6(v98) = v57;
      HIWORD(v98) = v93;
      LOWORD(v99) = v95;
      HIWORD(v99) = v91;
      NSDecimal.copyVariableLengthInteger(_:)(v61);
      if (v69)
      {
        goto LABEL_83;
      }

      v70 = v61[1].u64[0];

      if (HIDWORD(v70))
      {
        goto LABEL_81;
      }

      _So9NSDecimala__length_setter(v70, &v98);
      v101 = v98;
      LODWORD(v102) = v99;
      *&v96 = i;
      v71 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v71);

      v96 = v101;
      v97 = v102;
      if (!_So9NSDecimala__length_getter(&v96))
      {
        goto LABEL_71;
      }
    }

    v84 = v57;
    v85 = v56;
    v62 = v54;
    v63 = 0;
    v64 = v60 + 15;
    while ((v64 - 15) <= *(v59 + 16))
    {
      v65 = *(v59 + 2 * v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew()(v61);
      }

      if ((v64 - 15) > v61[1].i64[0])
      {
        goto LABEL_80;
      }

      v66 = v65 | (v63 << 16);
      v61->i16[v64] = v66 / 0xA;
      v63 = v66 % 0xA;
      if (--v64 == 15)
      {

        *&v98 = v61;
        v67 = v63 | 0x30;
        v54 = v62;
        v56 = v85;
        v57 = v84;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:

    swift_unexpectedError();
    __break(1u);
    goto LABEL_84;
  }

LABEL_71:
  v98 = v101;
  v99 = v102;
  if (_So9NSDecimala__exponent_getter(&v98) <= 0)
  {
    while (1)
    {
      v98 = v101;
      v99 = v102;
      if (!_So9NSDecimala__exponent_getter(&v98))
      {
        break;
      }

      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v98 = v101;
      v99 = v102;
      v78 = _So9NSDecimala__exponent_getter(&v98);
      _So9NSDecimala__exponent_setter((v78 + 1), &v101);
    }

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](48, 0xE100000000000000);
  }

  v98 = v101;
  v99 = v102;
  if (_So9NSDecimala__isNegative_getter(&v98))
  {
    MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  }

  v98 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
  v73 = String.init<A>(_:)();
LABEL_85:
  result._object = v72;
  result._countAndFlagsBits = v73;
  return result;
}

__n128 NSDecimal.FormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, __n128 *a3@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v3, a3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *a3 = v7;
  return result;
}

__n128 NSDecimal.FormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 NSDecimal.FormatStyle.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for NSDecimal.FormatStyle(0) + 20);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    type metadata accessor for NSDecimal.FormatStyle(0);
    LOBYTE(v12) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NSDecimal.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v11 + *(v12 + 28);
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0x1FFFFFFFELL;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  *(v13 + 72) = 131584;
  *(v13 + 76) = 512;
  v14 = v3[9];
  v15 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = v13 + v3[10];
  *v16 = 0;
  *(v16 + 8) = -1;
  *(v13 + v3[11]) = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();
  v17 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
    v21 = v13;
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    v18 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v11 = v26;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v18);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v5, v13);
    outlined init with copy of NSDecimal.FormatStyle(v11, v22, type metadata accessor for NSDecimal.FormatStyle);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    v21 = v11;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

__n128 NSDecimal.FormatStyle.Percent.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Percent(0) + 20);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t NSDecimal.FormatStyle.grouping(_:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  result = a3(0);
  *(a4 + *(result + 20) + 73) = v7;
  return result;
}

__n128 NSDecimal.FormatStyle.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  v8 = a4 + *(a3(0) + 20);
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v8 + 57) = result;
  return result;
}

uint64_t NSDecimal.FormatStyle.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | v7;
  result = a3(0);
  v13 = a4 + *(result + 20);
  *(v13 + 76) = v9 != 0;
  *(v13 + 74) = v11;
  return result;
}

uint64_t NSDecimal.FormatStyle.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  result = a3(0);
  *(a4 + *(result + 20) + 77) = v7;
  return result;
}

uint64_t NSDecimal.FormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  outlined init with copy of NSDecimal.FormatStyle(v8, a6, a4);
  v13 = a6 + *(a5(0) + 20);
  v14 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v15 = *(v14 + 36);
  outlined destroy of TermOfAddress?(v13 + v15, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13 + v15, a1, v16);
  result = (*(v17 + 56))(v13 + v15, 0, 1, v16);
  if ((a3 & 1) == 0)
  {
    v19 = v13 + *(v14 + 40);
    *v19 = a2;
    *(v19 + 8) = 0;
  }

  return result;
}

uint64_t NSDecimal.FormatStyle.scale(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v7, a3, a1);
  result = a2(0);
  v11 = a3 + *(result + 20);
  *v11 = a4;
  *(v11 + 8) = 0;
  return result;
}

uint64_t NSDecimal.FormatStyle.notation(_:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  v8 = a4 + *(a3(0) + 20);
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  *(v8 + *(result + 44)) = v7;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Percent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Percent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Currency.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NSDecimal.FormatStyle.Currency.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.init(code:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v4 = a4 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v5 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0x1FFFFFFFELL;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 512;
  *(v4 + 74) = 2;
  *(v4 + 78) = 2;
  v9 = v4 + v5[10];
  *v9 = 0;
  *(v9 + 8) = -1;
  *(v4 + v5[11]) = 1;
  *(v4 + v5[12]) = 3;
  return result;
}

uint64_t NSDecimal.FormatStyle.attributed.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v3, a3, a1);
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NSDecimal.FormatStyle.Currency.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 73) = v4;
  return result;
}

__n128 NSDecimal.FormatStyle.Currency.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v5 + 57) = result;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  if (v5)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v4;
  if (v6)
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 74) = v12;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 78) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v5, a4, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v10 = a4 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v11 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v12 = *(v11 + 36);
  outlined destroy of TermOfAddress?(v10 + v12, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10 + v12, a1, v13);
  result = (*(v14 + 56))(v10 + v12, 0, 1, v13);
  if ((a3 & 1) == 0)
  {
    v16 = v10 + *(v11 + 40);
    *v16 = a2;
    *(v16 + 8) = 0;
  }

  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.scale(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  outlined init with copy of NSDecimal.FormatStyle(v2, a1, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v6 = a1 + *(result + 24);
  *v6 = a2;
  *(v6 + 8) = 0;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.presentation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v5 + *(result + 44)) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v5 + *(result + 48)) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.encode(to:)(void *a1)
{
  v36 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v31 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of NSDecimal.FormatStyle(v39, v14, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v38 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      outlined init with take of NSDecimal.FormatStyle.Percent(v14, v35, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v43 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v32;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
      v24 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    }

    else
    {
      v21 = v37;
      outlined init with take of NSDecimal.FormatStyle.Percent(v14, v37, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v44 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v33;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
      v30 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v30);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    }

    outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v25);
    return (*v20)(v17, v23);
  }

  else
  {
    outlined init with take of NSDecimal.FormatStyle.Percent(v14, v11, type metadata accessor for NSDecimal.FormatStyle);
    v42 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle, &protocol conformance descriptor for NSDecimal.FormatStyle);
    v27 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of NumberFormatStyleConfiguration.Collection(v11, type metadata accessor for NSDecimal.FormatStyle);
    return (*v20)(v17, v26);
  }
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.hash(into:)(Swift::Int a1)
{
  v194 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v193);
  v5 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v198 = *(v6 - 8);
  v199 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v196 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v184 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v184 - v14;
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v1, v21, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v21, v5, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v36 = v198;
        v35 = v199;
        v37 = v193;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v200, ObjectType, v23);
      v213 = v206;
      v214[0] = v207[0];
      *(v214 + 12) = *(v207 + 12);
      *v210 = v202;
      *&v210[16] = v203;
      v211 = v204;
      v212 = v205;
      v208 = v200;
      v209 = v201;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v41 = v200;
      v42 = *(&v200 + 1);
      v43 = *(&v201 + 1);
      v184 = v201;
      v44 = *(&v202 + 1);
      v185 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v45 = *&v207[0];
      *&v190[8] = v206;
      v186 = *(&v207[0] + 1);
      v191 = *&v207[1];
      v192 = BYTE8(v207[1]);
      v194 = BYTE9(v207[1]);
      v46 = BYTE10(v207[1]);
      LODWORD(v197) = BYTE11(v207[1]);
      Hasher._combine(_:)(1u);
      if (v41 == 2)
      {
        v47 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v47 = v41 & 1;
      }

      *&v190[24] = v45;
      Hasher._combine(_:)(v47);
      if (v42)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v42 + 16));
        v59 = *(v42 + 16);
        if (v59)
        {
          v60 = v42 + 40;
          do
          {

            String.hash(into:)();

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v43)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v36 = v198;
      v35 = v199;
      *v190 = v46;
      if (v44)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v65 = v188;
      v66 = v187;
      if (v187)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v66, v67, v68, v69, v70, v71, v72);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = v193;
      v73 = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v73, v74, v75, v76, v77, v78, v79);
        if (v65)
        {
          goto LABEL_54;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_54:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v188 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }
      }

      Hasher._combine(_:)(0);
      if (*(&v188 + 1))
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v189)
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      }

LABEL_62:
      Hasher._combine(_:)(0);
      if (v189)
      {
LABEL_56:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v189 + 1))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }

LABEL_63:
      Hasher._combine(_:)(0);
      if (*(&v189 + 1))
      {
LABEL_57:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v190[8])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

LABEL_64:
      Hasher._combine(_:)(0);
      if (*&v190[8])
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v80 = *&v190[16];
        if (*&v190[16])
        {
LABEL_59:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v80);
          goto LABEL_67;
        }

LABEL_66:
        Hasher._combine(_:)(0);
LABEL_67:
        v81 = v192;
        v82 = *&v190[24];
        if (*&v190[24])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v82);
          if (v191)
          {
LABEL_69:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v83 = *v190;
            if (v81 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v81 & 1);
            }

            v84 = v194;
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v84 & 1);
            }

            v85 = v197;
            if (v83 == 2)
            {
              v86 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v86 = v83 & 1;
            }

            Hasher._combine(_:)(v86);
            if (v85 == 2)
            {
              v87 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v87 = v85 & 1;
            }

            Hasher._combine(_:)(v87);
            outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
            String.hash(into:)();
            v88 = &v5[*(v37 + 24)];
            if (v88[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v89 = *v88;
              Hasher._combine(_:)(1u);
              if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v90 = v89;
              }

              else
              {
                v90 = 0;
              }

              MEMORY[0x1865CD090](v90);
            }

            v91 = *(v88 + 2);
            v208 = *(v88 + 1);
            v209 = v91;
            *v210 = *(v88 + 3);
            *&v210[9] = *(v88 + 57);
            specialized Optional<A>.hash(into:)();
            v92 = v88[73];
            if (v92 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v92 & 1);
            }

            v93 = *(v88 + 74);
            if (*(v88 + 74) == 2)
            {
              LOBYTE(v94) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v93 & 1);
              MEMORY[0x1865CD060]((v93 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v93) & 1);
              v94 = BYTE3(v93) & 1;
            }

            Hasher._combine(_:)(v94);
            v95 = v88[78];
            if (v95 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v95 & 1);
            }

            v96 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v97 = v195;
            outlined init with copy of FloatingPointRoundingRule?(&v88[v96[9]], v195);
            if ((*(v36 + 48))(v97, 1, v35) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v98 = v196;
              (*(v36 + 32))(v196, v97, v35);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v36 + 8))(v98, v35);
            }

            v99 = &v88[v96[10]];
            v100 = v99[8];
            if (v100 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v101 = *v99;
              Hasher._combine(_:)(1u);
              if (v100)
              {
                MEMORY[0x1865CD060](1);
                if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = 0;
                }

                MEMORY[0x1865CD090](v102);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v101);
              }
            }

            MEMORY[0x1865CD060](v88[v96[11]]);
            v103 = v88[v96[12]];
            if (v103 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v103);
            }

            v104 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            v105 = v5;
            return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v191)
          {
            goto LABEL_69;
          }
        }

        Hasher._combine(_:)(0);
        goto LABEL_72;
      }

LABEL_65:
      Hasher._combine(_:)(0);
      v80 = *&v190[16];
      if (*&v190[16])
      {
        goto LABEL_59;
      }

      goto LABEL_66;
    }

    v30 = v197;
    outlined init with take of NSDecimal.FormatStyle.Percent(v21, v197, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v30 + 8);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      Hasher._combine(_:)(1u);
      v34 = v198;
      v33 = v199;
LABEL_16:
      v39 = v10;
      v40 = v194;
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v200, v32, v31);
    v213 = v206;
    v214[0] = v207[0];
    *(v214 + 12) = *(v207 + 12);
    *v210 = v202;
    *&v210[16] = v203;
    v211 = v204;
    v212 = v205;
    v208 = v200;
    v209 = v201;
    v38 = _s10Foundation17LocalePreferencesVSgWOg(&v208);
    v34 = v198;
    v33 = v199;
    if (v38 == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v53 = v200;
    v54 = *(&v200 + 1);
    v55 = *(&v201 + 1);
    v56 = *(&v202 + 1);
    v185 = v202;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    *v190 = v206;
    *&v190[8] = v201;
    *&v190[16] = *(&v206 + 1);
    v186 = *(&v207[0] + 1);
    *&v190[24] = *&v207[0];
    v191 = *&v207[1];
    v192 = BYTE8(v207[1]);
    v193 = BYTE9(v207[1]);
    v57 = BYTE10(v207[1]);
    LODWORD(v195) = BYTE11(v207[1]);
    Hasher._combine(_:)(1u);
    if (v53 == 2)
    {
      v58 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v58 = v53 & 1;
    }

    Hasher._combine(_:)(v58);
    if (v54)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v54 + 16));
      v63 = *(v54 + 16);
      if (v63)
      {
        v64 = v54 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }

      if (v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v55)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_185;
      }
    }

    Hasher._combine(_:)(0);
LABEL_185:
    v39 = v10;
    *&v190[8] = v57;
    v143 = *(&v187 + 1);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v34 = v198;
    v33 = v199;
    v144 = *(&v188 + 1);
    v145 = v189;
    v146 = v187;
    if (v187)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v146, v147, v148, v149, v150, v151, v152);
      v40 = v194;
      if (v143)
      {
        goto LABEL_190;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v40 = v194;
      if (v143)
      {
LABEL_190:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v143, v153, v154, v155, v156, v157, v158);
        if (v188)
        {
          goto LABEL_191;
        }

        goto LABEL_196;
      }
    }

    Hasher._combine(_:)(0);
    if (v188)
    {
LABEL_191:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v144)
      {
        goto LABEL_192;
      }

      goto LABEL_197;
    }

LABEL_196:
    Hasher._combine(_:)(0);
    if (v144)
    {
LABEL_192:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v145)
      {
LABEL_193:
        v159 = *&v190[24];
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      v159 = *&v190[24];
      Hasher._combine(_:)(0);
LABEL_199:
      if (*(&v189 + 1))
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v160 = v159;
      if (*v190)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v161 = *&v190[16];
        if (*&v190[16])
        {
          goto LABEL_204;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v161 = *&v190[16];
        if (*&v190[16])
        {
LABEL_204:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v161);
          v162 = v192;
          if (v160)
          {
            goto LABEL_205;
          }

          goto LABEL_209;
        }
      }

      Hasher._combine(_:)(0);
      v162 = v192;
      if (v160)
      {
LABEL_205:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v160);
        if (v191)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_211:
          v163 = v195;
          if (v162 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v162 & 1);
          }

          v164 = v193;
          if (v193 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v164 & 1);
          }

          v165 = v190[8];
          if (*&v190[8] == 2)
          {
            v166 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v166 = v165 & 1;
          }

          Hasher._combine(_:)(v166);
          if (v163 == 2)
          {
            v167 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v167 = v163 & 1;
          }

          Hasher._combine(_:)(v167);
          outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_224:
          v168 = (v197 + *(v40 + 20));
          if (*(v168 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v169 = *v168;
            Hasher._combine(_:)(1u);
            if ((v169 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v170 = v169;
            }

            else
            {
              v170 = 0;
            }

            MEMORY[0x1865CD090](v170);
          }

          v171 = *(v168 + 2);
          v208 = *(v168 + 1);
          v209 = v171;
          *v210 = *(v168 + 3);
          *&v210[9] = *(v168 + 57);
          specialized Optional<A>.hash(into:)();
          v172 = *(v168 + 73);
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
          }

          v173 = *(v168 + 37);
          v174 = v173 | (*(v168 + 76) << 16);
          if (v173 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v174 & 1);
            MEMORY[0x1865CD060]((v174 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v174) & 1);
          }

          v175 = *(v168 + 77);
          if (v175 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v175 & 1);
          }

          v176 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          outlined init with copy of FloatingPointRoundingRule?(v168 + v176[9], v39);
          if ((*(v34 + 48))(v39, 1, v33) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v177 = v196;
            (*(v34 + 32))(v196, v39, v33);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v34 + 8))(v177, v33);
          }

          v178 = (v168 + v176[10]);
          v179 = *(v178 + 8);
          if (v179 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v180 = *v178;
            Hasher._combine(_:)(1u);
            if (v179)
            {
              MEMORY[0x1865CD060](1);
              if ((v180 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v181 = v180;
              }

              else
              {
                v181 = 0;
              }

              MEMORY[0x1865CD090](v181);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v180);
            }
          }

          v182 = *(v168 + v176[11]);
          if (v182 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v182);
          }

          v104 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v105 = v197;
          return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
        }

LABEL_210:
        Hasher._combine(_:)(0);
        goto LABEL_211;
      }

LABEL_209:
      Hasher._combine(_:)(0);
      if (v191)
      {
        goto LABEL_206;
      }

      goto LABEL_210;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    if (v145)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  outlined init with take of NSDecimal.FormatStyle.Percent(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v26 = *(v18 + 1);
  v27 = swift_getObjectType();
  if ((*(v26 + 48))(v27, v26))
  {
    Hasher._combine(_:)(1u);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  Hasher._combine(_:)(0);
  (*(v26 + 64))(v27, v26);
  String.hash(into:)();

  (*(v26 + 464))(&v200, v27, v26);
  v213 = v206;
  v214[0] = v207[0];
  *(v214 + 12) = *(v207 + 12);
  *v210 = v202;
  *&v210[16] = v203;
  v211 = v204;
  v212 = v205;
  v208 = v200;
  v209 = v201;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
  {
    Hasher._combine(_:)(0);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  v48 = v200;
  v49 = *(&v200 + 1);
  v50 = *(&v201 + 1);
  v185 = v201;
  v51 = *(&v202 + 1);
  v186 = v202;
  v188 = v203;
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  *&v187 = *(&v207[0] + 1);
  v191 = *&v207[0];
  v192 = *&v207[1];
  v193 = BYTE8(v207[1]);
  v194 = BYTE9(v207[1]);
  LODWORD(v195) = BYTE10(v207[1]);
  LODWORD(v197) = BYTE11(v207[1]);
  Hasher._combine(_:)(1u);
  if (v48 == 2)
  {
    v52 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v52 = v48 & 1;
  }

  *(&v187 + 1) = v51;
  Hasher._combine(_:)(v52);
  if (v49)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v49 + 16));
    v61 = *(v49 + 16);
    if (v61)
    {
      v62 = v49 + 40;
      do
      {

        String.hash(into:)();

        v62 += 16;
        --v61;
      }

      while (v61);
    }

    if (v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v50)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v29 = v198;
  v28 = v199;
  v106 = *(&v188 + 1);
  if (*(&v187 + 1))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v107 = v188;
    if (v188)
    {
      goto LABEL_119;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v107 = v188;
    if (v188)
    {
LABEL_119:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v107, v108, v109, v110, v111, v112, v113);
      if (v106)
      {
        goto LABEL_120;
      }

      goto LABEL_131;
    }
  }

  Hasher._combine(_:)(0);
  if (v106)
  {
LABEL_120:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v106, v114, v115, v116, v117, v118, v119);
    if (v189)
    {
      goto LABEL_121;
    }

    goto LABEL_132;
  }

LABEL_131:
  Hasher._combine(_:)(0);
  if (v189)
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v189 + 1))
    {
      goto LABEL_122;
    }

    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
  if (*(&v189 + 1))
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v190)
    {
      goto LABEL_123;
    }

    goto LABEL_134;
  }

LABEL_133:
  Hasher._combine(_:)(0);
  if (*v190)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[8])
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_134:
  Hasher._combine(_:)(0);
  if (*&v190[8])
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[16])
    {
      goto LABEL_125;
    }

    goto LABEL_136;
  }

LABEL_135:
  Hasher._combine(_:)(0);
  if (*&v190[16])
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v120 = *&v190[24];
    if (*&v190[24])
    {
      goto LABEL_126;
    }

    goto LABEL_137;
  }

LABEL_136:
  Hasher._combine(_:)(0);
  v120 = *&v190[24];
  if (*&v190[24])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v120);
    v121 = v191;
    if (v191)
    {
      goto LABEL_127;
    }

LABEL_138:
    Hasher._combine(_:)(0);
    if (v192)
    {
      goto LABEL_128;
    }

LABEL_139:
    Hasher._combine(_:)(0);
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(0);
  v121 = v191;
  if (!v191)
  {
    goto LABEL_138;
  }

LABEL_127:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v121);
  if (!v192)
  {
    goto LABEL_139;
  }

LABEL_128:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_140:
  v122 = v193;
  if (v193 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v122 & 1);
  }

  v123 = v194;
  if (v194 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v123 & 1);
  }

  v124 = v195;
  if (v195 == 2)
  {
    v125 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v125 = v124 & 1;
  }

  v126 = v197;
  Hasher._combine(_:)(v125);
  if (v126 == 2)
  {
    v127 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v127 = v126 & 1;
  }

  Hasher._combine(_:)(v127);
  outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_153:
  v128 = &v18[*(v16 + 20)];
  if (v128[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v129 = *v128;
    Hasher._combine(_:)(1u);
    if ((v129 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    MEMORY[0x1865CD090](v130);
  }

  v131 = *(v128 + 2);
  v208 = *(v128 + 1);
  v209 = v131;
  *v210 = *(v128 + 3);
  *&v210[9] = *(v128 + 57);
  specialized Optional<A>.hash(into:)();
  v132 = v128[73];
  if (v132 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v132 & 1);
  }

  v133 = *(v128 + 37);
  v134 = v133 | (v128[76] << 16);
  if (v133 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v134 & 1);
    MEMORY[0x1865CD060]((v134 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v134) & 1);
  }

  v135 = v128[77];
  if (v135 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v135 & 1);
  }

  v136 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v128[v136[9]], v15);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v137 = v196;
    (*(v29 + 32))(v196, v15, v28);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v137, v28);
  }

  v138 = &v128[v136[10]];
  v139 = v138[8];
  if (v139 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v140 = *v138;
    Hasher._combine(_:)(1u);
    if (v139)
    {
      MEMORY[0x1865CD060](1);
      if ((v140 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v141 = v140;
      }

      else
      {
        v141 = 0;
      }

      MEMORY[0x1865CD090](v141);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v140);
    }
  }

  v142 = v128[v136[11]];
  if (v142 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142);
  }

  v104 = type metadata accessor for NSDecimal.FormatStyle;
  v105 = v18;
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v47 - v10;
  v12 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();
  v25 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v47 = v17;
  v48 = v20;
  v49 = v14;
  v50 = v12;
  v26 = v53;
  v27 = v54;
  v29 = v55;
  v28 = v56;
  v59 = v23;
  v30 = v57;
  v31 = KeyedDecodingContainer.allKeys.getter();
  v32 = (2 * *(v31 + 16)) | 1;
  v61 = v31;
  v62 = v31 + 32;
  v63 = 0;
  v64 = v32;
  v33 = specialized Collection<>.popFirst()();
  if (v33 == 3 || v63 != v64 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v40 = v50;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v65 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v58;
      v35 = v30;
      type metadata accessor for NSDecimal.FormatStyle.Currency(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
      v36 = v47;
      v37 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v27, v37);
      (*(v34 + 8))(v11, v28);
    }

    else
    {
      v65 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v30;
      v43 = v58;
      type metadata accessor for NSDecimal.FormatStyle.Percent(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
      v36 = v49;
      v44 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v42, v44);
      (*(v43 + 8))(v11, v28);
    }

    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle, &protocol conformance descriptor for NSDecimal.FormatStyle);
    v36 = v48;
    v45 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v26, v45);
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v35 = v30;
  }

  v46 = v59;
  outlined init with take of NSDecimal.FormatStyle.Percent(v36, v59, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  outlined init with take of NSDecimal.FormatStyle.Percent(v46, v35, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys()
{
  v1 = 0x79636E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x697463656C6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Currency.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys()
{
  v1 = 0x79636E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x746E6563726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D69636564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NSDecimal.FormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v185 = a3;
  v186 = a1;
  v184 = a4;
  v199 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v4, v17, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = a2;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v17, v11, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v19 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
      v21 = v20;
      v23 = v11[2];
      v22 = v11[3];
      v24 = v11[1];
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 472);

      v27 = v26(ObjectType, v24);
      v28 = v27;
      *&v196 = v19;
      *(&v196 + 1) = v21;
      v180 = v21;
      *&v197 = v23;
      *(&v197 + 1) = v22;
      v182 = v22;
      *&v198 = v27;
      *(&v198 + 1) = v29;
      i = v29;
      if (one-time initialization token for cache != -1)
      {
        v27 = swift_once();
      }

      v31 = static ICUCurrencyNumberFormatter.cache;
      v30 = qword_1EA7B5100;
      v193 = v196;
      v194 = v197;
      v195 = v198;
      MEMORY[0x1EEE9AC00](v27);
      *(&v175 - 2) = &v193;
      os_unfair_lock_lock((v30 + 24));
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v30 + 16, &v191);
      v183 = 0;
      os_unfair_lock_unlock((v30 + 24));
      v8 = v191;
      v32 = v180;
      if (v191 != 1)
      {
        goto LABEL_110;
      }

      v33 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v19, v180, v23, v182);
      v35 = v34;
      type metadata accessor for ICUCurrencyNumberFormatter();
      swift_allocObject();
      v36 = i;

      v8 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v33, v35, v28, v36);
      os_unfair_lock_lock((v30 + 24));
      v37 = *(v30 + 16);
      if (v31 >= v37[2])
      {
      }

      else
      {
        *(v30 + 16) = MEMORY[0x1E69E7CC8];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = *(v30 + 16);
      v47 = v191;
      *(v30 + 16) = 0x8000000000000000;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v196);
      v59 = *(v47 + 16);
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      LOBYTE(v28) = v58;
      if (*(v47 + 24) >= v62)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_62;
        }

        v63 = v47;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
        v63 = v191;
        v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v196);
        if ((v28 & 1) != (v64 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_26;
        }
      }

      if ((v28 & 1) == 0)
      {
LABEL_108:
        specialized _NativeDictionary._insert(at:key:value:)(v49, &v196, v8, v63);
        goto LABEL_109;
      }

LABEL_34:
      v73 = v49;

      *(v63[7] + 8 * v73) = v8;

LABEL_109:
      *(v30 + 16) = v63;

      os_unfair_lock_unlock((v30 + 24));

      outlined consume of ICUNumberFormatter??(1);
LABEL_110:

      if (v8)
      {
        ICUCurrencyNumberFormatter.attributedFormat(_:)(v186, v187, v185 | 0x200000000, v184);

        v146 = type metadata accessor for NSDecimal.FormatStyle.Currency;
        v147 = v11;
        return outlined destroy of NumberFormatStyleConfiguration.Collection(v147, v146);
      }

      outlined destroy of NumberFormatStyleConfiguration.Collection(v11, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v148 = v187;
      v149 = v186;
LABEL_127:
      v153 = v185;
      *&v193 = v149;
      *(&v193 + 1) = v148;
      LODWORD(v194) = v185;
      if (_So9NSDecimala__length_getter(&v193) || (*&v193 = v149, *(&v193 + 1) = v148, LODWORD(v194) = v153, !_So9NSDecimala__isNegative_getter(&v193)))
      {
        *&v193 = v149;
        *(&v193 + 1) = v148;
        LODWORD(v194) = v153;
        if (_So9NSDecimala__length_getter(&v193))
        {
          *&v188 = 0;
          *(&v188 + 1) = 0xE000000000000000;
          *&v193 = v149;
          *(&v193 + 1) = v148;
          LODWORD(v194) = v153;
          v191 = v193;
          v192 = v153;
          if (_So9NSDecimala__exponent_getter(&v191) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v191 = v193;
              v192 = v194;
              v154 = _So9NSDecimala__exponent_getter(&v191);
              _So9NSDecimala__exponent_setter((v154 - 1), &v193);
              v191 = v193;
              v192 = v194;
            }

            while (_So9NSDecimala__exponent_getter(&v191) > 0);
          }

          v191 = v193;
          v192 = v194;
          if (!_So9NSDecimala__exponent_getter(&v191))
          {
            _So9NSDecimala__exponent_setter(1, &v193);
          }

          v191 = v193;
          v192 = v194;
          if (_So9NSDecimala__length_getter(&v191))
          {
            do
            {
              v191 = v193;
              v192 = v194;
              if (!_So9NSDecimala__exponent_getter(&v191))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v191 = v193;
              v192 = v194;
              v155 = _So9NSDecimala__exponent_getter(&v191);
              _So9NSDecimala__exponent_setter((v155 + 1), &v193);
              v156 = v193;
              v157 = WORD2(v193);
              v158 = WORD4(v193);
              v159 = WORD5(v193);
              v160 = WORD6(v193);
              v182 = WORD3(v193);
              v186 = HIWORD(v193);
              LODWORD(v187) = v194;
              v185 = WORD1(v194);
              NSDecimal.asVariableLengthInteger()(v193 | (WORD2(v193) << 32) | (WORD3(v193) << 48), WORD4(v193) | (WORD5(v193) << 16) | (WORD6(v193) << 32) | (HIWORD(v193) << 48), v194 | (WORD1(v194) << 16));
              v162 = v161;
              v163 = *(v161 + 16);
              v164 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v163);
              *&v191 = v164;
              if (v163)
              {
                v179 = v160;
                v180 = v159;
                i = v158;
                v165 = v157;
                LODWORD(v160) = 0;
                v166 = v163 + 15;
                while ((v166 - 15) <= *(v162 + 16))
                {
                  v167 = *(v162 + 2 * v166);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v164 = specialized _ArrayBuffer._consumeAndCreateNew()(v164);
                  }

                  if ((v166 - 15) > v164[1].i64[0])
                  {
                    goto LABEL_167;
                  }

                  v168 = v167 | (v160 << 16);
                  v164->i16[v166] = v168 / 0xA;
                  LODWORD(v160) = v168 % 0xA;
                  if (--v166 == 15)
                  {

                    *&v191 = v164;
                    v169 = v160 | 0x30;
                    v157 = v165;
                    LOWORD(v158) = i;
                    LOWORD(v159) = v180;
                    LOWORD(v160) = v179;
                    goto LABEL_144;
                  }
                }

                __break(1u);
LABEL_167:
                __break(1u);
LABEL_168:
                __break(1u);
              }

              v169 = 48;
LABEL_144:
              v170 = v164[1].i64[0];
              for (i = v169; v170; v170 = *(v191 + 16))
              {
                if (v164[1].i16[v170 + 7])
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v191 + 16) - 1);
                }

                v164 = v191;
              }

              LODWORD(v191) = v156;
              WORD2(v191) = v157;
              WORD3(v191) = v182;
              WORD4(v191) = v158;
              WORD5(v191) = v159;
              WORD6(v191) = v160;
              HIWORD(v191) = v186;
              LOWORD(v192) = v187;
              HIWORD(v192) = v185;
              NSDecimal.copyVariableLengthInteger(_:)(v164);
              v183 = v171;
              if (v171)
              {
                goto LABEL_172;
              }

              v172 = v164[1].u64[0];

              if (HIDWORD(v172))
              {
                goto LABEL_168;
              }

              _So9NSDecimala__length_setter(v172, &v191);
              v193 = v191;
              LODWORD(v194) = v192;
              *&v189 = i;
              v173 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v173);

              v189 = v193;
              v190 = v194;
            }

            while (_So9NSDecimala__length_getter(&v189));
          }

          v191 = v193;
          v192 = v194;
          if (_So9NSDecimala__exponent_getter(&v191) <= 0)
          {
            while (1)
            {
              v191 = v193;
              v192 = v194;
              if (!_So9NSDecimala__exponent_getter(&v191))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v191 = v193;
              v192 = v194;
              v174 = _So9NSDecimala__exponent_getter(&v191);
              _So9NSDecimala__exponent_setter((v174 + 1), &v193);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          v191 = v193;
          v192 = v194;
          if (_So9NSDecimala__isNegative_getter(&v191))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v191 = v188;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
          String.init<A>(_:)();
        }
      }

      BigString.init(_:)();
      result = AttributedString.init(_:attributes:)(&v193, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v191);
      *v184 = v191;
      return result;
    }

    outlined init with take of NSDecimal.FormatStyle.Percent(v17, v8, type metadata accessor for NSDecimal.FormatStyle.Percent);
    v31 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v30 = v50;
    v51 = v8[1];
    v52 = swift_getObjectType();
    v53 = (*(v51 + 472))(v52, v51);
    v32 = v54;
    if (one-time initialization token for cache != -1)
    {
      v88 = v53;
      swift_once();
      v53 = v88;
    }

    v11 = static ICUPercentNumberFormatter.cache;
    isUniquelyReferenced_nonNull_native = *algn_1EA7B0228;
    *&v196 = v31;
    *(&v196 + 1) = v30;
    v182 = v53;
    *&v197 = v53;
    *(&v197 + 1) = v32;
    MEMORY[0x1EEE9AC00](v53);
    *(&v175 - 2) = &v196;
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(isUniquelyReferenced_nonNull_native + 16, &v193);
    v183 = 0;
    os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));
    v37 = v193;
    if (v193 != 1)
    {
      goto LABEL_116;
    }

    *&v193 = 0x746E6563726570;
    *(&v193 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v191 = 32;
      *(&v191 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v31, v30);
      MEMORY[0x1865CB0E0](v191, *(&v191 + 1));
    }

    v56 = v193;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v37 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v56, *(&v56 + 1), v182, v32);
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    v57 = *(*(isUniquelyReferenced_nonNull_native + 16) + 16);
    i = *(isUniquelyReferenced_nonNull_native + 16);
    if (v11 < v57)
    {
      *(isUniquelyReferenced_nonNull_native + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

LABEL_27:

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v193 = *(isUniquelyReferenced_nonNull_native + 16);
    v47 = v193;
    *(isUniquelyReferenced_nonNull_native + 16) = 0x8000000000000000;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30, v182, v32);
    v66 = *(v47 + 16);
    v67 = (v65 & 1) == 0;
    v61 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (!v61)
    {
      if (*(v47 + 24) < v68)
      {
        v69 = v65;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v28);
        v70 = v193;
        v71 = v182;
        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30, v182, v32);
        if ((v69 & 1) != (v72 & 1))
        {
LABEL_173:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_174;
        }

        LOBYTE(v65) = v69;
LABEL_37:
        if (v65)
        {
LABEL_38:
          v74 = v49;

          *(*(v70 + 56) + 8 * v74) = v37;

LABEL_115:
          *(isUniquelyReferenced_nonNull_native + 16) = v70;

          os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));

          outlined consume of ICUNumberFormatter??(1);
LABEL_116:

          v149 = v186;
          if (v37)
          {
            ICUCurrencyNumberFormatter.attributedFormat(_:)(v186, v187, v185 | 0x200000000, v184);

            v146 = type metadata accessor for NSDecimal.FormatStyle.Percent;
            v147 = v8;
            return outlined destroy of NumberFormatStyleConfiguration.Collection(v147, v146);
          }

          v150 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v151 = v8;
          goto LABEL_126;
        }

LABEL_114:
        specialized _NativeDictionary._insert(at:key:value:)(v49, v31, v30, v71, v32, v37, v70);
        goto LABEL_115;
      }

      if (v28)
      {
        v70 = v47;
        v71 = v182;
        goto LABEL_37;
      }

      LODWORD(v176) = v65;
      v177 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v108 = static _DictionaryStorage.copy(original:)();
      v70 = v108;
      if (!*(v47 + 16))
      {
LABEL_113:

        v49 = v177;
        v71 = v182;
        if (v176)
        {
          goto LABEL_38;
        }

        goto LABEL_114;
      }

      v109 = (v108 + 64);
      v110 = 1 << *(v70 + 32);
      v178 = (v47 + 64);
      v111 = (v110 + 63) >> 6;
      if (v70 != v47 || v109 >= &v178[8 * v111])
      {
        memmove(v109, v178, 8 * v111);
      }

      v112 = 0;
      *(v70 + 16) = *(v47 + 16);
      v113 = 1 << *(v47 + 32);
      v114 = -1;
      if (v113 < 64)
      {
        v114 = ~(-1 << v113);
      }

      v180 = v114 & *(v47 + 64);
      v175 = (v113 + 63) >> 6;
      while (v180)
      {
        v115 = __clz(__rbit64(v180));
        v180 &= v180 - 1;
LABEL_91:
        v118 = v115 | (v112 << 6);
        v119 = *(v47 + 56);
        v120 = (*(v47 + 48) + 32 * v118);
        v121 = *v120;
        v179 = v120[1];
        v122 = v179;
        v123 = v120[2];
        v124 = v120[3];
        v125 = *(v119 + 8 * v118);
        v126 = (*(v70 + 48) + 32 * v118);
        *v126 = v121;
        v126[1] = v122;
        v126[2] = v123;
        v126[3] = v124;
        *(*(v70 + 56) + 8 * v118) = v125;
      }

      v116 = v112;
      while (1)
      {
        v112 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_170;
        }

        if (v112 >= v175)
        {
          goto LABEL_113;
        }

        v117 = *&v178[8 * v112];
        ++v116;
        if (v117)
        {
          v115 = __clz(__rbit64(v117));
          v180 = (v117 - 1) & v117;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of NSDecimal.FormatStyle.Percent(v17, v14, type metadata accessor for NSDecimal.FormatStyle);
  v38 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v8 = v39;
  v40 = *(v14 + 1);
  v41 = swift_getObjectType();
  v42 = (*(v40 + 472))(v41, v40);
  v11 = v43;
  if (one-time initialization token for cache != -1)
  {
    v87 = v42;
    swift_once();
    v42 = v87;
  }

  v28 = &v175;
  v44 = static ICUNumberFormatter.cache;
  v30 = *algn_1EA7B1D98;
  *&v193 = v38;
  *(&v193 + 1) = v8;
  v182 = v42;
  *&v194 = v42;
  *(&v194 + 1) = v11;
  MEMORY[0x1EEE9AC00](v42);
  *(&v175 - 2) = &v193;
  os_unfair_lock_lock((v30 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v30 + 16, &v196);
  v183 = 0;
  os_unfair_lock_unlock((v30 + 24));
  v45 = v196;
  if (v196 != 1)
  {
LABEL_122:

    v149 = v186;
    if (v45)
    {
      ICUNumberFormatter.attributedFormat(_:)(v186, v187, v185 | 0x200000000, v184);

      v146 = type metadata accessor for NSDecimal.FormatStyle;
      v147 = v14;
      return outlined destroy of NumberFormatStyleConfiguration.Collection(v147, v146);
    }

    v150 = type metadata accessor for NSDecimal.FormatStyle;
    v151 = v14;
LABEL_126:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v151, v150);
    v148 = v187;
    goto LABEL_127;
  }

  type metadata accessor for ICUNumberFormatter();
  v45 = swift_allocObject();
  v45[3] = v38;
  v45[4] = v8;
  swift_bridgeObjectRetain_n();
  v46 = MEMORY[0x1865CB200](v38, v8);
  if (v46)
  {
    v47 = v46;
    v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v46, 0);

    v28 = specialized Sequence._copySequenceContents(initializing:)(&v196, (v48 + 4), v47, v38, v8);

    if (v28 != v47)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v176 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v178 = static _DictionaryStorage.copy(original:)();
      if (*(v47 + 16))
      {
        v89 = v178 + 64;
        v90 = 1 << v178[32];
        v177 = (v47 + 64);
        v91 = (v90 + 63) >> 6;
        if (v178 != v47 || v89 >= &v177[8 * v91])
        {
          memmove(v89, v177, 8 * v91);
        }

        v92 = 0;
        *(v178 + 2) = *(v47 + 16);
        v93 = 1 << *(v47 + 32);
        v94 = -1;
        if (v93 < 64)
        {
          v94 = ~(-1 << v93);
        }

        v179 = v94 & *(v47 + 64);
        v175 = (v93 + 63) >> 6;
        while (v179)
        {
          v95 = __clz(__rbit64(v179));
          v179 &= v179 - 1;
LABEL_76:
          v98 = v95 | (v92 << 6);
          v99 = (*(v47 + 48) + 48 * v98);
          v100 = v99[1];
          v101 = v99[2];
          v102 = v99[3];
          v103 = *(*(v47 + 56) + 8 * v98);
          v104 = v99[4];
          v105 = v99[5];
          v106 = v178;
          v107 = (*(v178 + 6) + 48 * v98);
          *v107 = *v99;
          v107[1] = v100;
          v107[2] = v101;
          v107[3] = v102;
          v107[4] = v104;
          v107[5] = v105;
          *(*(v106 + 7) + 8 * v98) = v103;
        }

        v96 = v92;
        while (1)
        {
          v92 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          if (v92 >= v175)
          {
            goto LABEL_107;
          }

          v97 = *&v177[8 * v92];
          ++v96;
          if (v97)
          {
            v95 = __clz(__rbit64(v97));
            v179 = (v97 - 1) & v97;
            goto LABEL_76;
          }
        }

        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:

        swift_unexpectedError();
        __break(1u);
        goto LABEL_173;
      }

LABEL_107:

      v49 = v176;
      v63 = v178;
      if ((v28 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_34;
    }
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v196) = 0;
  v47 = v48[2];
  if (v47 >> 31)
  {
    goto LABEL_59;
  }

  String.utf8CString.getter();
  v75 = unumf_openForSkeletonAndLocale();

  if (!v75)
  {
    goto LABEL_44;
  }

  if (v196 >= 1)
  {
    unumf_close();
LABEL_44:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v45 = 0;
    goto LABEL_46;
  }

  v45[2] = v75;
LABEL_46:
  os_unfair_lock_lock((v30 + 24));
  v76 = *(*(v30 + 16) + 16);
  i = *(v30 + 16);
  if (v44 < v76)
  {
    *(v30 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v196 = *(v30 + 16);
  v47 = v196;
  *(v30 + 16) = 0x8000000000000000;
  v78 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v8, v182, v11);
  v79 = *(v47 + 16);
  v80 = (v77 & 1) == 0;
  v49 = (v79 + v80);
  if (__OFADD__(v79, v80))
  {
    goto LABEL_60;
  }

  v81 = v77;
  if (*(v47 + 24) >= v49)
  {
    if (v28)
    {
      v82 = v47;
      v83 = v182;
      if ((v77 & 1) == 0)
      {
LABEL_120:
        specialized _NativeDictionary._insert(at:key:value:)(v78, v38, v8, v83, v11, v45, v82);
        goto LABEL_121;
      }
    }

    else
    {
      v176 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v127 = static _DictionaryStorage.copy(original:)();
      v82 = v127;
      if (*(v47 + 16))
      {
        v128 = (v127 + 64);
        v129 = 1 << *(v82 + 32);
        v177 = (v47 + 64);
        v130 = (v129 + 63) >> 6;
        if (v82 != v47 || v128 >= &v177[8 * v130])
        {
          memmove(v128, v177, 8 * v130);
        }

        v131 = 0;
        *(v82 + 16) = *(v47 + 16);
        v132 = 1 << *(v47 + 32);
        v133 = -1;
        if (v132 < 64)
        {
          v133 = ~(-1 << v132);
        }

        v180 = v133 & *(v47 + 64);
        v175 = (v132 + 63) >> 6;
        while (v180)
        {
          v134 = __clz(__rbit64(v180));
          v180 &= v180 - 1;
LABEL_106:
          v137 = v134 | (v131 << 6);
          v138 = *(v47 + 56);
          v139 = (*(v47 + 48) + 32 * v137);
          v140 = *v139;
          v178 = v139[1];
          v141 = v178;
          v142 = v139[2];
          v179 = v139[3];
          v143 = v179;
          v144 = *(v138 + 8 * v137);
          v145 = (*(v82 + 48) + 32 * v137);
          *v145 = v140;
          v145[1] = v141;
          v145[2] = v142;
          v145[3] = v143;
          *(*(v82 + 56) + 8 * v137) = v144;
        }

        v135 = v131;
        while (1)
        {
          v131 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
            goto LABEL_171;
          }

          if (v131 >= v175)
          {
            break;
          }

          v136 = *&v177[8 * v131];
          ++v135;
          if (v136)
          {
            v134 = __clz(__rbit64(v136));
            v180 = (v136 - 1) & v136;
            goto LABEL_106;
          }
        }
      }

      v83 = v182;
      v78 = v176;
      if ((v81 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_56:
    v86 = v78;

    *(*(v82 + 56) + 8 * v86) = v45;

LABEL_121:
    *(v30 + 16) = v82;

    os_unfair_lock_unlock((v30 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_122;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v28);
  v82 = v196;
  v83 = v182;
  v84 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v8, v182, v11);
  if ((v81 & 1) == (v85 & 1))
  {
    v78 = v84;
    if ((v81 & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_56;
  }

LABEL_174:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t NSDecimal.FormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  outlined init with copy of NSDecimal.FormatStyle(v2, v16, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      outlined init with copy of NSDecimal.FormatStyle(v10, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
      swift_storeEnumTagMultiPayload();
      v20 = type metadata accessor for NSDecimal.FormatStyle.Currency;
      v21 = v10;
    }

    else
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v16, v7, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      outlined init with copy of NSDecimal.FormatStyle(v7, a2, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_storeEnumTagMultiPayload();
      v20 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      v21 = v7;
    }
  }

  else
  {
    outlined init with take of NSDecimal.FormatStyle.Percent(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    outlined init with copy of NSDecimal.FormatStyle(v13, a2, type metadata accessor for NSDecimal.FormatStyle);
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    v21 = v13;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Attributed.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static NSDecimal.FormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t (*a3)(void))
{
  v6 = *a1;
  v10 = *a2;
  v11 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v11, &v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 20);

  return specialized static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t NSDecimal.FormatStyle.Percent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    type metadata accessor for NSDecimal.FormatStyle.Percent(0);
    LOBYTE(v12) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NSDecimal.FormatStyle.hash(into:)(Swift::Int a1, uint64_t (*a2)(void))
{
  v72 = a2;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v74, ObjectType, v9);
    v87 = v80;
    v88[0] = v81[0];
    *(v88 + 12) = *(v81 + 12);
    *v84 = v76;
    *&v84[16] = v77;
    v85 = v78;
    v86 = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      v11 = 0;
      goto LABEL_5;
    }

    v14 = v74;
    v15 = *(&v74 + 1);
    v16 = *(&v75 + 1);
    v59[0] = v75;
    v60 = *(&v76 + 1);
    v59[1] = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v59[2] = *(&v81[0] + 1);
    v65 = *&v81[0];
    v66 = *&v81[1];
    v67 = BYTE8(v81[1]);
    v68 = BYTE9(v81[1]);
    v69 = BYTE10(v81[1]);
    v70 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v14 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v14 & 1;
    }

    Hasher._combine(_:)(v17);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v15 + 16));
      v18 = *(v15 + 16);
      if (v18)
      {
        v19 = v15 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v4;
    v20 = *(&v62 + 1);
    v21 = *(&v61 + 1);
    v13 = v73;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v22 = v61;
      if (v61)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v22 = v61;
      if (v61)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v22, v23, v24, v25, v26, v27, v28);
        v29 = v20;
        if (v21)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v21, v30, v31, v32, v33, v34, v35);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v62)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v29)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v29)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v63)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v63)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v63 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v63 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v64)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v64)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v36 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v36 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v36);
          v37 = v65;
          if (v65)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v37 = v65;
        if (v65)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          if (v66)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v38 = v67;
            if (v67 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v39 = v68;
            if (v68 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v69;
            if (v69 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v40 & 1;
            }

            v42 = v70;
            Hasher._combine(_:)(v41);
            if (v42 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v42 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v66)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v29 = v20;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v11 = 1;
LABEL_5:
  Hasher._combine(_:)(v11);
  v12 = v4;
  v13 = v73;
LABEL_54:
  v44 = (v2 + *(v72(0) + 20));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  *v84 = *(v44 + 3);
  *&v84[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v8);
  if ((*(v12 + 48))(v8, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v12 + 32))(v71, v8, v13);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v53, v13);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

uint64_t NSDecimal.FormatStyle.Percent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v11 + *(v12 + 28);
  v14 = v3[9];
  v15 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *v13 = 0x4059000000000000;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0x1FFFFFFFELL;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  *(v13 + 72) = 131584;
  *(v13 + 76) = 512;
  v16 = v13 + v3[10];
  *v16 = 0;
  *(v16 + 8) = -1;
  *(v13 + v3[11]) = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();
  v17 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
    v21 = v13;
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    v18 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v11 = v26;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v18);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v5, v13);
    outlined init with copy of NSDecimal.FormatStyle(v11, v22, type metadata accessor for NSDecimal.FormatStyle.Percent);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    v21 = v11;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v60 - v8;
  Hasher.init(_seed:)();
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v74, ObjectType, v10);
    v84[4] = v80;
    v85[0] = v81[0];
    *(v85 + 12) = *(v81 + 12);
    v84[0] = v76;
    v84[1] = v77;
    v84[2] = v78;
    v84[3] = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v13 = v74;
    v14 = *(&v74 + 1);
    v60[1] = v75;
    v60[2] = v76;
    v61 = *(&v75 + 1);
    v62 = *(&v76 + 1);
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v60[3] = *(&v81[0] + 1);
    v67 = *&v81[0];
    v68 = *&v81[1];
    v69 = BYTE8(v81[1]);
    v70 = BYTE9(v81[1]);
    v71 = BYTE10(v81[1]);
    v15 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v16 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v16 = v13 & 1;
    }

    v72 = v15;
    Hasher._combine(_:)(v16);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v17 = *(v14 + 16);
      if (v17)
      {
        v18 = v14 + 40;
        do
        {

          String.hash(into:)();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v61)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v61)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v9;
    v19 = *(&v64 + 1);
    v20 = *(&v63 + 1);
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v21 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v21 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v21, v22, v23, v24, v25, v26, v27);
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v86, v20, v28, v29, v30, v31, v32, v33);
      if (v64)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v64)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v19)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v34 = v66;
      if (v65)
      {
        v35 = v67;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v65 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v67;
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v36 = v35;
      if (v34)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v37);
        v38 = v69;
        if (v36)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v38 = v69;
        if (v36)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v86, v36);
          if (v68)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v39 = v71;
            if (v38 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v72;
            if (v39 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v39 & 1;
            }

            Hasher._combine(_:)(v42);
            if (v41 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v41 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v12 = v9;
LABEL_56:
  v44 = (v2 + *(a2 + 20));
  if (*(v44 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  v84[0] = *(v44 + 3);
  *(v84 + 9) = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v73;
    (*(v5 + 32))(v73, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v53, v4);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSDecimal.FormatStyle(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v10 = *a2;
  v11 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v11, &v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t NSDecimal.FormatStyle.Currency.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle.Currency(0);
    LOBYTE(v12) = 2;
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection, &protocol conformance descriptor for CurrencyFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NSDecimal.FormatStyle.Currency.hash(into:)(Swift::Int a1)
{
  v72 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v59 - v6;
  v8 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v8 + 48))(ObjectType, v8) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v8 + 64))(ObjectType, v8);
    String.hash(into:)();

    (*(v8 + 464))(&v73, ObjectType, v8);
    v86 = v79;
    v87[0] = v80[0];
    *(v87 + 12) = *(v80 + 12);
    *v83 = v75;
    *&v83[16] = v76;
    v84 = v77;
    v85 = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      v10 = 0;
      goto LABEL_5;
    }

    v13 = v73;
    v14 = *(&v73 + 1);
    v15 = *(&v74 + 1);
    v59[1] = v74;
    v16 = *(&v75 + 1);
    v59[2] = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v64 = v79;
    v59[3] = *(&v80[0] + 1);
    v65 = *&v80[0];
    v66 = *&v80[1];
    v67 = BYTE8(v80[1]);
    v68 = BYTE9(v80[1]);
    v69 = BYTE10(v80[1]);
    v70 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v13 & 1;
    }

    v60 = v16;
    Hasher._combine(_:)(v17);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v18 = *(v14 + 16);
      if (v18)
      {
        v19 = v14 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v15)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v3;
    v20 = v62;
    v21 = v61;
    v12 = v72;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v21)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v21, v22, v23, v24, v25, v26, v27);
        v28 = *(&v61 + 1);
        if (*(&v61 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }
    }

    Hasher._combine(_:)(0);
    v28 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v28, v29, v30, v31, v32, v33, v34);
      if (v20)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_27:
    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v62 + 1))
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_28:
    Hasher._combine(_:)(0);
    if (*(&v62 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v63)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_23:
      v35 = v65;
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v63 + 1))
      {
LABEL_24:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_32;
      }

LABEL_31:
      Hasher._combine(_:)(0);
LABEL_32:
      v36 = v35;
      if (v64)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v37 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_34:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          v38 = v67;
          if (v36)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      Hasher._combine(_:)(0);
      v38 = v67;
      if (v36)
      {
LABEL_35:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v36);
        if (v66)
        {
LABEL_36:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_41:
          v39 = v69;
          if (v38 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v38 & 1);
          }

          v40 = v68;
          if (v68 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v40 & 1);
          }

          v41 = v70;
          if (v39 == 2)
          {
            v42 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v42 = v39 & 1;
          }

          Hasher._combine(_:)(v42);
          if (v41 == 2)
          {
            v43 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v43 = v41 & 1;
          }

          Hasher._combine(_:)(v43);
          outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          goto LABEL_54;
        }

LABEL_40:
        Hasher._combine(_:)(0);
        goto LABEL_41;
      }

LABEL_39:
      Hasher._combine(_:)(0);
      if (v66)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_30:
    v35 = v65;
    Hasher._combine(_:)(0);
    if (*(&v63 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v10 = 1;
LABEL_5:
  Hasher._combine(_:)(v10);
  v11 = v3;
  v12 = v72;
LABEL_54:
  String.hash(into:)();
  v44 = (v1 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v81 = *(v44 + 1);
  v82 = v47;
  *v83 = *(v44 + 3);
  *&v83[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 74);
  if (*(v44 + 74) == 2)
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v49) & 1);
    v50 = BYTE3(v49) & 1;
  }

  Hasher._combine(_:)(v50);
  v51 = *(v44 + 78);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v7);
  if ((*(v11 + 48))(v7, 1, v12) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v11 + 32))(v71, v7, v12);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v53, v12);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  MEMORY[0x1865CD060](*(v44 + v52[11]));
  v58 = *(v44 + v52[12]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

uint64_t NSDecimal.FormatStyle.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(a2, a3, a4);

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t NSDecimal.FormatStyle.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v14 = v21;
  v19[1] = v4;
  v15 = v12;
  v25 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  v16 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v24;
  LOBYTE(v24) = 1;
  *(v15 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 24) = v17;
  LOBYTE(v24) = 2;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection, &protocol conformance descriptor for CurrencyFormatStyleConfiguration.Collection);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v9, v16);
  outlined init with take of NSDecimal.FormatStyle.Percent(v6, v15 + *(v10 + 24), type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  outlined init with copy of NSDecimal.FormatStyle(v15, v20, type metadata accessor for NSDecimal.FormatStyle.Currency);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance NSDecimal.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance NSDecimal.FormatStyle@<Q0>(__n128 *a1@<X0>, uint64_t (*a2)(void)@<X3>, __n128 *a3@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v3, a3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *a3 = v7;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle.Currency(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v60 - v8;
  Hasher.init(_seed:)();
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v74, ObjectType, v10);
    v84[4] = v80;
    v85[0] = v81[0];
    *(v85 + 12) = *(v81 + 12);
    v84[0] = v76;
    v84[1] = v77;
    v84[2] = v78;
    v84[3] = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v13 = v74;
    v14 = *(&v74 + 1);
    v60[1] = v75;
    v60[2] = v76;
    v61 = *(&v75 + 1);
    v62 = *(&v76 + 1);
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v60[3] = *(&v81[0] + 1);
    v67 = *&v81[0];
    v68 = *&v81[1];
    v69 = BYTE8(v81[1]);
    v70 = BYTE9(v81[1]);
    v71 = BYTE10(v81[1]);
    v15 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v16 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v16 = v13 & 1;
    }

    v72 = v15;
    Hasher._combine(_:)(v16);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v17 = *(v14 + 16);
      if (v17)
      {
        v18 = v14 + 40;
        do
        {

          String.hash(into:)();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v61)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v61)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v9;
    v19 = *(&v64 + 1);
    v20 = *(&v63 + 1);
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v21 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v21 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v21, v22, v23, v24, v25, v26, v27);
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v86, v20, v28, v29, v30, v31, v32, v33);
      if (v64)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v64)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v19)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v34 = v66;
      if (v65)
      {
        v35 = v67;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v65 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v67;
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v36 = v35;
      if (v34)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v37);
        v38 = v69;
        if (v36)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v38 = v69;
        if (v36)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v86, v36);
          if (v68)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v39 = v71;
            if (v38 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v72;
            if (v39 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v39 & 1;
            }

            Hasher._combine(_:)(v42);
            if (v41 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v41 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v12 = v9;
LABEL_56:
  String.hash(into:)();
  v44 = (v2 + *(a2 + 24));
  if (*(v44 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  v84[0] = *(v44 + 3);
  *(v84 + 9) = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 74);
  if (*(v44 + 74) == 2)
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v49) & 1);
    v50 = BYTE3(v49) & 1;
  }

  Hasher._combine(_:)(v50);
  v51 = *(v44 + 78);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v73;
    (*(v5 + 32))(v73, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v53, v4);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  MEMORY[0x1865CD060](*(v44 + v52[11]));
  v58 = *(v44 + v52[12]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }

  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.Attributed.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed.Style);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t NSDecimal.FormatStyle.Attributed.hash(into:)(Swift::Int a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v213 = *(v3 - 8);
  v214 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v212 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v198 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v198 - v10;
  v208 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v208);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v209);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v1, v21, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v21, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v34 = v214;
        v35 = v209;
        v36 = v210;
        goto LABEL_84;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v215, ObjectType, v23);
      v228 = v221;
      v229[0] = v222[0];
      *(v229 + 12) = *(v222 + 12);
      *v225 = v217;
      *&v225[16] = v218;
      v226 = v219;
      v227 = v220;
      v223 = v215;
      v224 = v216;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v43 = v215;
      v44 = *(&v215 + 1);
      v45 = *(&v216 + 1);
      v198 = v216;
      v46 = *(&v217 + 1);
      v199 = v217;
      v201 = v218;
      v202 = v219;
      v203 = v220;
      *&v204[8] = v221;
      v200 = *(&v222[0] + 1);
      v205 = *&v222[0];
      v206 = *&v222[1];
      v47 = BYTE8(v222[1]);
      v208 = BYTE9(v222[1]);
      LODWORD(v207) = BYTE10(v222[1]);
      LODWORD(v211) = BYTE11(v222[1]);
      Hasher._combine(_:)(1u);
      if (v43 == 2)
      {
        v48 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v48 = v43 & 1;
      }

      Hasher._combine(_:)(v48);
      if (v44)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v44 + 16));
        v61 = *(v44 + 16);
        if (v61)
        {
          v62 = v44 + 40;
          do
          {

            String.hash(into:)();

            v62 += 16;
            --v61;
          }

          while (v61);
        }

        *v204 = v47;
        if (v45)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        *v204 = v47;
        if (v45)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v34 = v214;
      v35 = v209;
      v36 = v210;
      v67 = *(&v202 + 1);
      v68 = *(&v201 + 1);
      if (v46)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v69 = v201;
        if (v201)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v69 = v201;
        if (v201)
        {
LABEL_49:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v69, v70, v71, v72, v73, v74, v75);
          if (v68)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
LABEL_50:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v68, v76, v77, v78, v79, v80, v81);
        if (v202)
        {
          goto LABEL_51;
        }

        goto LABEL_56;
      }

LABEL_55:
      Hasher._combine(_:)(0);
      if (v202)
      {
LABEL_51:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v67)
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_58;
        }

LABEL_57:
        Hasher._combine(_:)(0);
LABEL_58:
        v82 = v205;
        if (v203)
        {
          v83 = v208;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v203 + 1))
          {
LABEL_60:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_63;
          }
        }

        else
        {
          v83 = v208;
          Hasher._combine(_:)(0);
          if (*(&v203 + 1))
          {
            goto LABEL_60;
          }
        }

        Hasher._combine(_:)(0);
LABEL_63:
        v84 = v83;
        if (*&v204[8])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v85 = v82;
        v86 = *&v204[16];
        if (*&v204[16])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v86);
          v87 = *v204;
          if (v85)
          {
            goto LABEL_68;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v87 = *v204;
          if (v85)
          {
LABEL_68:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v85);
            if (v206)
            {
LABEL_69:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v88 = v207;
            if (v87 == 2)
            {
              Hasher._combine(_:)(0);
              if (v84 != 2)
              {
                goto LABEL_75;
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v87 & 1);
              if (v84 != 2)
              {
LABEL_75:
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v84 & 1);
                if (v88 != 2)
                {
LABEL_76:
                  Hasher._combine(_:)(1u);
                  v89 = v88 & 1;
LABEL_80:
                  Hasher._combine(_:)(v89);
                  v90 = v211;
                  if (v211 == 2)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v91 = v90 & 1;
                  }

                  Hasher._combine(_:)(v91);
                  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_84:
                  String.hash(into:)();
                  v92 = &v15[*(v35 + 24)];
                  if (v92[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v93 = *v92;
                    Hasher._combine(_:)(1u);
                    if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    MEMORY[0x1865CD090](v94);
                  }

                  v95 = v213;
                  v96 = *(v92 + 2);
                  v223 = *(v92 + 1);
                  v224 = v96;
                  *v225 = *(v92 + 3);
                  *&v225[9] = *(v92 + 57);
                  specialized Optional<A>.hash(into:)();
                  v97 = v92[73];
                  if (v97 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v97 & 1);
                  }

                  v98 = *(v92 + 74);
                  if (*(v92 + 74) == 2)
                  {
                    LOBYTE(v99) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v98 & 1);
                    MEMORY[0x1865CD060]((v98 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v98) & 1);
                    v99 = BYTE3(v98) & 1;
                  }

                  Hasher._combine(_:)(v99);
                  v100 = v92[78];
                  if (v100 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v100 & 1);
                  }

                  v101 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  outlined init with copy of FloatingPointRoundingRule?(&v92[v101[9]], v36);
                  if ((*(v95 + 48))(v36, 1, v34) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v102 = v212;
                    (*(v95 + 32))(v212, v36, v34);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v95 + 8))(v102, v34);
                  }

                  v103 = &v92[v101[10]];
                  v104 = v103[8];
                  if (v104 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v105 = *v103;
                    Hasher._combine(_:)(1u);
                    if (v104)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      MEMORY[0x1865CD090](v106);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v105);
                    }
                  }

                  MEMORY[0x1865CD060](v92[v101[11]]);
                  v107 = v92[v101[12]];
                  if (v107 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v107);
                  }

                  v108 = type metadata accessor for NSDecimal.FormatStyle.Currency;
                  v109 = v15;
                  return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
                }

LABEL_79:
                v89 = 0;
                goto LABEL_80;
              }
            }

            Hasher._combine(_:)(0);
            if (v88 != 2)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }

        Hasher._combine(_:)(0);
        if (v206)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

LABEL_56:
      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v30 = v13;
    outlined init with take of NSDecimal.FormatStyle.Percent(v21, v13, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v13 + 1);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      v33 = 1;
LABEL_17:
      Hasher._combine(_:)(v33);
      v40 = v213;
      v41 = v214;
      v42 = v208;
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v215, v32, v31);
    v228 = v221;
    v229[0] = v222[0];
    *(v229 + 12) = *(v222 + 12);
    *v225 = v217;
    *&v225[16] = v218;
    v226 = v219;
    v227 = v220;
    v223 = v215;
    v224 = v216;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
    {
      v33 = 0;
      goto LABEL_17;
    }

    v55 = v215;
    v56 = *(&v215 + 1);
    v57 = *(&v216 + 1);
    v198 = v216;
    v58 = *(&v217 + 1);
    v199 = v217;
    v201 = v218;
    v202 = v219;
    v203 = v220;
    *&v204[16] = *(&v221 + 1);
    *v204 = v221;
    v200 = *(&v222[0] + 1);
    v205 = *&v222[0];
    v206 = *&v222[1];
    v207 = BYTE8(v222[1]);
    v209 = BYTE9(v222[1]);
    v59 = BYTE10(v222[1]);
    LODWORD(v210) = BYTE11(v222[1]);
    Hasher._combine(_:)(1u);
    if (v55 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v55 & 1;
    }

    Hasher._combine(_:)(v60);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v56 + 16));
      v65 = *(v56 + 16);
      if (v65)
      {
        v66 = v56 + 40;
        do
        {

          String.hash(into:)();

          v66 += 16;
          --v65;
        }

        while (v65);
      }

      *&v204[8] = v59;
      if (v57)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      *&v204[8] = v59;
      if (v57)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_186;
      }
    }

    Hasher._combine(_:)(0);
LABEL_186:
    v40 = v213;
    v42 = v208;
    v153 = v203;
    v154 = v202;
    if (v58)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v30 = v13;
    v155 = v201;
    if (v201)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v155, v156, v157, v158, v159, v160, v161);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v41 = v214;
    v162 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v162, v163, v164, v165, v166, v167, v168);
      if (v154)
      {
        goto LABEL_194;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v154)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v202 + 1))
        {
          goto LABEL_195;
        }

        goto LABEL_199;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v202 + 1))
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v169 = v206;
      if (v153)
      {
LABEL_196:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_201;
      }

LABEL_200:
      Hasher._combine(_:)(0);
LABEL_201:
      v170 = v169;
      if (*(&v203 + 1))
      {
        v171 = v209;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*v204)
        {
LABEL_203:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_206;
        }
      }

      else
      {
        v171 = v209;
        Hasher._combine(_:)(0);
        if (*v204)
        {
          goto LABEL_203;
        }
      }

      Hasher._combine(_:)(0);
LABEL_206:
      v172 = v171;
      v173 = v170;
      v174 = *&v204[16];
      if (*&v204[16])
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v174);
        v175 = v205;
        if (v205)
        {
          goto LABEL_208;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v175 = v205;
        if (v205)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v175);
          v176 = v210;
          if (v173)
          {
LABEL_209:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_213;
          }

LABEL_212:
          Hasher._combine(_:)(0);
LABEL_213:
          v177 = v207;
          if (v207 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v177 & 1);
          }

          v178 = *&v204[8];
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
            if (v178 != 2)
            {
LABEL_218:
              Hasher._combine(_:)(1u);
              v179 = v178 & 1;
LABEL_221:
              Hasher._combine(_:)(v179);
              if (v176 == 2)
              {
                v180 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v180 = v176 & 1;
              }

              Hasher._combine(_:)(v180);
              outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_225:
              v181 = &v30[*(v42 + 20)];
              if (v181[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v182 = *v181;
                Hasher._combine(_:)(1u);
                if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v183 = v182;
                }

                else
                {
                  v183 = 0;
                }

                MEMORY[0x1865CD090](v183);
              }

              v184 = *(v181 + 2);
              v223 = *(v181 + 1);
              v224 = v184;
              *v225 = *(v181 + 3);
              *&v225[9] = *(v181 + 57);
              specialized Optional<A>.hash(into:)();
              v185 = v181[73];
              if (v185 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v185 & 1);
              }

              v186 = *(v181 + 37);
              v187 = v186 | (v181[76] << 16);
              if (v186 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v187 & 1);
                MEMORY[0x1865CD060]((v187 >> 8) & 1);
                MEMORY[0x1865CD060](HIWORD(v187) & 1);
              }

              v188 = v181[77];
              if (v188 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v188 & 1);
              }

              v189 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
              v190 = v211;
              outlined init with copy of FloatingPointRoundingRule?(&v181[v189[9]], v211);
              if ((*(v40 + 48))(v190, 1, v41) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v191 = v212;
                (*(v40 + 32))(v212, v190, v41);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v40 + 8))(v191, v41);
              }

              v192 = &v181[v189[10]];
              v193 = v192[8];
              if (v193 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v194 = *v192;
                Hasher._combine(_:)(1u);
                if (v193)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v194 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v195 = v194;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  MEMORY[0x1865CD090](v195);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v194);
                }
              }

              v196 = v181[v189[11]];
              if (v196 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v196);
              }

              v108 = type metadata accessor for NSDecimal.FormatStyle.Percent;
              v109 = v30;
              return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
            if (v178 != 2)
            {
              goto LABEL_218;
            }
          }

          v179 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      v176 = v210;
      if (v173)
      {
        goto LABEL_209;
      }

      goto LABEL_212;
    }

LABEL_199:
    Hasher._combine(_:)(0);
    v169 = v206;
    if (v153)
    {
      goto LABEL_196;
    }

    goto LABEL_200;
  }

  v26 = v16;
  v211 = v11;
  outlined init with take of NSDecimal.FormatStyle.Percent(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v27 = *(v18 + 1);
  v28 = swift_getObjectType();
  if ((*(v27 + 48))(v28, v27))
  {
    v29 = 1;
LABEL_14:
    Hasher._combine(_:)(v29);
    v38 = v213;
    v37 = v214;
    v39 = v26;
    goto LABEL_154;
  }

  Hasher._combine(_:)(0);
  (*(v27 + 64))(v28, v27);
  String.hash(into:)();

  (*(v27 + 464))(&v215, v28, v27);
  v228 = v221;
  v229[0] = v222[0];
  *(v229 + 12) = *(v222 + 12);
  *v225 = v217;
  *&v225[16] = v218;
  v226 = v219;
  v227 = v220;
  v223 = v215;
  v224 = v216;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v210 = v18;
  v49 = v215;
  v50 = *(&v215 + 1);
  v51 = *(&v216 + 1);
  v198 = v216;
  v52 = *(&v217 + 1);
  v199 = v217;
  v201 = v218;
  v202 = v219;
  v203 = v220;
  *v204 = v221;
  v200 = *(&v222[0] + 1);
  v205 = *&v222[0];
  v206 = *&v222[1];
  v207 = BYTE8(v222[1]);
  v208 = BYTE9(v222[1]);
  LODWORD(v209) = BYTE10(v222[1]);
  v53 = BYTE11(v222[1]);
  Hasher._combine(_:)(1u);
  if (v49 == 2)
  {
    v54 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v54 = v49 & 1;
  }

  Hasher._combine(_:)(v54);
  if (v50)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v50 + 16));
    v63 = *(v50 + 16);
    if (v63)
    {
      v64 = v50 + 40;
      do
      {

        String.hash(into:)();

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    *&v204[16] = v53;
    if (v51)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *&v204[16] = v53;
    if (v51)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_116;
    }
  }

  Hasher._combine(_:)(0);
LABEL_116:
  v37 = v214;
  v39 = v26;
  v110 = v202;
  v18 = v210;
  v111 = v203;
  if (v52)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v213;
  v112 = v201;
  if (v201)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v112, v113, v114, v115, v116, v117, v118);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      goto LABEL_121;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
LABEL_121:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v119, v120, v121, v122, v123, v124, v125);
      if (v110)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  Hasher._combine(_:)(0);
  if (v110)
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v202 + 1))
    {
      goto LABEL_123;
    }

LABEL_128:
    Hasher._combine(_:)(0);
    if (v111)
    {
      goto LABEL_124;
    }

    goto LABEL_129;
  }

LABEL_127:
  Hasher._combine(_:)(0);
  if (!*(&v202 + 1))
  {
    goto LABEL_128;
  }

LABEL_123:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v111)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
LABEL_130:
  v126 = v206;
  if (*(&v203 + 1))
  {
    v127 = v208;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v204)
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_135;
    }
  }

  else
  {
    v127 = v208;
    Hasher._combine(_:)(0);
    if (*v204)
    {
      goto LABEL_132;
    }
  }

  Hasher._combine(_:)(0);
LABEL_135:
  v128 = v127;
  v129 = v126;
  v130 = *&v204[8];
  if (*&v204[8])
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v130);
    v131 = v205;
    if (v205)
    {
      goto LABEL_137;
    }

LABEL_140:
    Hasher._combine(_:)(0);
    v132 = v209;
    if (v129)
    {
      goto LABEL_138;
    }

    goto LABEL_141;
  }

  Hasher._combine(_:)(0);
  v131 = v205;
  if (!v205)
  {
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v131);
  v132 = v209;
  if (v129)
  {
LABEL_138:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_142;
  }

LABEL_141:
  Hasher._combine(_:)(0);
LABEL_142:
  v133 = v207;
  if (v207 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v133 & 1);
  }

  v134 = *&v204[16];
  if (v128 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v128 & 1);
    if (v132 != 2)
    {
      goto LABEL_147;
    }

LABEL_149:
    v135 = 0;
    goto LABEL_150;
  }

  Hasher._combine(_:)(0);
  if (v132 == 2)
  {
    goto LABEL_149;
  }

LABEL_147:
  Hasher._combine(_:)(1u);
  v135 = v132 & 1;
LABEL_150:
  Hasher._combine(_:)(v135);
  if (v134 == 2)
  {
    v136 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v136 = v134 & 1;
  }

  Hasher._combine(_:)(v136);
  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_154:
  v137 = &v18[*(v39 + 20)];
  if (v137[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v138 = *v137;
    Hasher._combine(_:)(1u);
    if ((v138 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    MEMORY[0x1865CD090](v139);
  }

  v140 = v211;
  v141 = *(v137 + 2);
  v223 = *(v137 + 1);
  v224 = v141;
  *v225 = *(v137 + 3);
  *&v225[9] = *(v137 + 57);
  specialized Optional<A>.hash(into:)();
  v142 = v137[73];
  if (v142 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142 & 1);
  }

  v143 = *(v137 + 37);
  v144 = v143 | (v137[76] << 16);
  if (v143 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v144 & 1);
    MEMORY[0x1865CD060]((v144 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v144) & 1);
  }

  v145 = v137[77];
  if (v145 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v145 & 1);
  }

  v146 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v137[v146[9]], v140);
  if ((*(v38 + 48))(v140, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v147 = v212;
    (*(v38 + 32))(v212, v140, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v38 + 8))(v147, v37);
  }

  v148 = &v137[v146[10]];
  v149 = v148[8];
  if (v149 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v150 = *v148;
    Hasher._combine(_:)(1u);
    if (v149)
    {
      MEMORY[0x1865CD060](1);
      if ((v150 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x1865CD090](v151);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v150);
    }
  }

  v152 = v137[v146[11]];
  if (v152 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v152);
  }

  v108 = type metadata accessor for NSDecimal.FormatStyle;
  v109 = v18;
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
}

Swift::Int NSDecimal.FormatStyle.Attributed.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSDecimal.FormatStyle.Attributed.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle.Attributed(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed.Style);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of NSDecimal.FormatStyle.Percent(v13, v11, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    outlined init with take of NSDecimal.FormatStyle.Percent(v11, v12, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NSDecimal.FormatStyle.Attributed(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd, &_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed.Style);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSDecimal.FormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.parseStrategy.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v8, a4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *(a4 + *(result + 36)) = 1;
  return result;
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance NSDecimal.FormatStyle@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v7, a4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *(a4 + *(result + 36)) = 1;
  return result;
}

uint64_t static FormatStyle<>.number.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  v4 = a1 + *(type metadata accessor for NSDecimal.FormatStyle(0) + 20);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v9 = &v4[v5[10]];
  *v9 = 0;
  v9[8] = -1;
  v4[v5[11]] = 3;
  *a1 = inited;
  a1[1] = v3;
  return result;
}

uint64_t static FormatStyle<>.percent.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  v4 = a1 + *(type metadata accessor for NSDecimal.FormatStyle.Percent(0) + 20);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v9 = &v4[v5[10]];
  *v9 = 0;
  v9[8] = -1;
  v4[v5[11]] = 3;
  *a1 = inited;
  a1[1] = v3;
  return result;
}

uint64_t static FormatStyle<>.currency(code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v7 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  *a3 = inited;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  v8 = a3 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v9 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v10 = v9[9];
  v11 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0x1FFFFFFFELL;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  *(v8 + 36) = 512;
  *(v8 + 74) = 2;
  v8[78] = 2;
  v12 = &v8[v9[10]];
  *v12 = 0;
  v12[8] = -1;
  v8[v9[11]] = 1;
  v8[v9[12]] = 3;
}

Swift::String __swiftcall NSDecimal.formatted()()
{
  LODWORD(v112) = v2;
  v3 = v1;
  v111 = v0;
  v123 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NSDecimal.FormatStyle(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v9 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  v10 = v7 + *(v5 + 28);
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0x1FFFFFFFELL;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = 0;
  *(v10 + 18) = 131584;
  *(v10 + 38) = 512;
  v11 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v12 = v11[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  v14 = &v10[v11[10]];
  *v14 = 0;
  v14[8] = -1;
  v10[v11[11]] = 3;
  *v7 = inited;
  v7[1] = v9;
  v110 = v7;
  v15 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v17 = v16;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v121 = static LocaleCache.cache;
  v122 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v19 = v18;
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 472))(ObjectType, v19);
  v23 = v22;
  v24 = swift_unknownObjectRelease();
  if (one-time initialization token for cache != -1)
  {
    v24 = swift_once();
  }

  v25 = &v103;
  v27 = static ICUNumberFormatter.cache;
  v26 = *algn_1EA7B1D98;
  *&v118 = v15;
  *(&v118 + 1) = v17;
  v113 = v21;
  v119 = v21;
  v120 = v23;
  MEMORY[0x1EEE9AC00](v24);
  *(&v103 - 2) = &v118;
  os_unfair_lock_lock((v26 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v26 + 16, &v121);
  v114 = 0;
  os_unfair_lock_unlock((v26 + 24));
  v28 = v121;
  if (v121 == 1)
  {
    type metadata accessor for ICUNumberFormatter();
    v28 = swift_allocObject();
    v28[3] = v15;
    v28[4] = v17;
    swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1865CB200](v15, v17);
    if (v29)
    {
      v30 = v29;
      v31 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v29, 0);

      v25 = specialized Sequence._copySequenceContents(initializing:)(&v121, (v31 + 4), v30, v15, v17);

      if (v25 != v30)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v121) = 0;
    if (v31[2] >> 31)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    LOBYTE(v25) = String.utf8CString.getter();
    v33 = unumf_openForSkeletonAndLocale();

    if (v33)
    {
      if (v121 < 1)
      {
        v28[2] = v33;
LABEL_16:
        os_unfair_lock_lock((v26 + 24));
        v34 = *(*(v26 + 16) + 16);
        v109 = *(v26 + 16);
        if (v27 < v34)
        {
          *(v26 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v121 = *(v26 + 16);
        v27 = v121;
        *(v26 + 16) = 0x8000000000000000;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v113, v23);
        v37 = *(v27 + 16);
        v38 = (v36 & 1) == 0;
        v39 = v37 + v38;
        if (!__OFADD__(v37, v38))
        {
          LOBYTE(v25) = v36;
          if (*(v27 + 24) < v39)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
            v40 = v121;
            v41 = v113;
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v113, v23);
            if ((v25 & 1) != (v43 & 1))
            {
              goto LABEL_98;
            }

            v32 = v42;
            if ((v25 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_26;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v40 = v27;
            v41 = v113;
            if ((v36 & 1) == 0)
            {
LABEL_46:
              specialized _NativeDictionary._insert(at:key:value:)(v32, v15, v17, v41, v23, v28, v40);
              goto LABEL_47;
            }

LABEL_26:
            v44 = v32;

            *(*(v40 + 56) + 8 * v44) = v28;

LABEL_47:
            *(v26 + 16) = v40;

            os_unfair_lock_unlock((v26 + 24));

            outlined consume of ICUNumberFormatter??(1);
            goto LABEL_48;
          }

LABEL_30:
          v103 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
          v45 = static _DictionaryStorage.copy(original:)();
          v40 = v45;
          if (*(v27 + 16))
          {
            v46 = (v45 + 64);
            v47 = 1 << *(v40 + 32);
            v104 = (v27 + 64);
            v48 = (v47 + 63) >> 6;
            if (v40 != v27 || v46 >= &v104[8 * v48])
            {
              memmove(v46, v104, 8 * v48);
            }

            v49 = 0;
            *(v40 + 16) = *(v27 + 16);
            v50 = 1 << *(v27 + 32);
            v51 = -1;
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            v52 = v51 & *(v27 + 64);
            v53 = (v50 + 63) >> 6;
            v105 = v53;
            if (!v52)
            {
              goto LABEL_38;
            }

            while (1)
            {
              v54 = __clz(__rbit64(v52));
              for (i = (v52 - 1) & v52; ; i = (v56 - 1) & v56)
              {
                v57 = v54 | (v49 << 6);
                v58 = *(v27 + 56);
                v59 = (*(v27 + 48) + 32 * v57);
                v60 = *v59;
                v106 = v59[1];
                v61 = v106;
                v62 = v59[2];
                v107 = v59[3];
                v63 = v107;
                v64 = *(v58 + 8 * v57);
                v65 = (*(v40 + 48) + 32 * v57);
                *v65 = v60;
                v65[1] = v61;
                v65[2] = v62;
                v65[3] = v63;
                *(*(v40 + 56) + 8 * v57) = v64;

                v53 = v105;
                v52 = i;
                if (i)
                {
                  break;
                }

LABEL_38:
                v55 = v49;
                do
                {
                  v49 = v55 + 1;
                  if (__OFADD__(v55, 1))
                  {
                    goto LABEL_96;
                  }

                  if (v49 >= v53)
                  {
                    goto LABEL_45;
                  }

                  v56 = *&v104[8 * v49];
                  ++v55;
                }

                while (!v56);
                v54 = __clz(__rbit64(v56));
              }
            }
          }

LABEL_45:

          v41 = v113;
          v32 = v103;
          if ((v25 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_26;
        }

        goto LABEL_28;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v28 = 0;
    goto LABEL_16;
  }

LABEL_48:

  if (v28)
  {
    v66 = v28[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v67 = v111;
    v68 = v112;
    v69 = v114;
    v70 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v66, v111, v3, v112);
    if (v69)
    {

      v114 = 0;
    }

    else
    {
      v114 = 0;
      v93 = v70;

      v92 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v93);
      v91 = v94;

      if (v91)
      {
        goto LABEL_83;
      }
    }
  }

  else
  {
    v68 = v112;
    v67 = v111;
  }

  *&v121 = v67;
  *(&v121 + 1) = v3;
  LODWORD(v122) = v68;
  if (!_So9NSDecimala__length_getter(&v121))
  {
    *&v121 = v67;
    *(&v121 + 1) = v3;
    LODWORD(v122) = v68;
    if (_So9NSDecimala__isNegative_getter(&v121))
    {
      v91 = 0xE300000000000000;
      v92 = 5136718;
LABEL_83:
      v95 = v110;
LABEL_92:
      outlined destroy of NumberFormatStyleConfiguration.Collection(v95, type metadata accessor for NSDecimal.FormatStyle);
      v100 = v92;
      v101 = v91;
      goto LABEL_99;
    }
  }

  *&v121 = v67;
  *(&v121 + 1) = v3;
  LODWORD(v122) = v68;
  if (!_So9NSDecimala__length_getter(&v121))
  {
    v91 = 0xE100000000000000;
    v92 = 48;
    goto LABEL_83;
  }

  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  *&v121 = v67;
  *(&v121 + 1) = v3;
  LODWORD(v122) = v68;
  v118 = v121;
  LODWORD(v119) = v68;
  if (_So9NSDecimala__exponent_getter(&v118) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v118 = v121;
      LODWORD(v119) = v122;
      v71 = _So9NSDecimala__exponent_getter(&v118);
      _So9NSDecimala__exponent_setter((v71 - 1), &v121);
      v118 = v121;
      LODWORD(v119) = v122;
    }

    while (_So9NSDecimala__exponent_getter(&v118) > 0);
  }

  v118 = v121;
  LODWORD(v119) = v122;
  if (!_So9NSDecimala__exponent_getter(&v118))
  {
    _So9NSDecimala__exponent_setter(1, &v121);
  }

  v118 = v121;
  LODWORD(v119) = v122;
  if (!_So9NSDecimala__length_getter(&v118))
  {
LABEL_84:
    v118 = v121;
    LODWORD(v119) = v122;
    v96 = _So9NSDecimala__exponent_getter(&v118);
    v97 = v110;
    if (v96 <= 0)
    {
      while (1)
      {
        v118 = v121;
        LODWORD(v119) = v122;
        if (!_So9NSDecimala__exponent_getter(&v118))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v118 = v121;
        LODWORD(v119) = v122;
        v98 = _So9NSDecimala__exponent_getter(&v118);
        _So9NSDecimala__exponent_setter((v98 + 1), &v121);
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v118 = v121;
    LODWORD(v119) = v122;
    if (_So9NSDecimala__isNegative_getter(&v118))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v118 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
    v92 = String.init<A>(_:)();
    v91 = v99;
    v95 = v97;
    goto LABEL_92;
  }

  while (1)
  {
    v118 = v121;
    LODWORD(v119) = v122;
    if (!_So9NSDecimala__exponent_getter(&v118))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v118 = v121;
    LODWORD(v119) = v122;
    v72 = _So9NSDecimala__exponent_getter(&v118);
    _So9NSDecimala__exponent_setter((v72 + 1), &v121);
    v73 = v121;
    v74 = WORD2(v121);
    v75 = WORD4(v121);
    v76 = WORD5(v121);
    v77 = WORD6(v121);
    v109 = WORD3(v121);
    v112 = HIWORD(v121);
    LODWORD(v113) = v122;
    LODWORD(v111) = WORD1(v122);
    NSDecimal.asVariableLengthInteger()(v121 | (WORD2(v121) << 32) | (WORD3(v121) << 48), WORD4(v121) | (WORD5(v121) << 16) | (WORD6(v121) << 32) | (HIWORD(v121) << 48), v122 | (WORD1(v122) << 16));
    v79 = v78;
    v80 = *(v78 + 16);
    v81 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v80);
    *&v118 = v81;
    if (v80)
    {
      v106 = v77;
      v107 = v76;
      i = v75;
      v82 = v74;
      LODWORD(v77) = 0;
      v83 = v80 + 15;
      while ((v83 - 15) <= *(v79 + 16))
      {
        v84 = *(v79 + 2 * v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        }

        if ((v83 - 15) > v81[1].i64[0])
        {
          goto LABEL_94;
        }

        v85 = v84 | (v77 << 16);
        v81->i16[v83] = v85 / 0xA;
        LODWORD(v77) = v85 % 0xA;
        if (--v83 == 15)
        {

          *&v118 = v81;
          v86 = v77 | 0x30;
          v74 = v82;
          LOWORD(v75) = i;
          LOWORD(v76) = v107;
          LOWORD(v77) = v106;
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
    }

    v86 = 48;
LABEL_69:
    v87 = v81[1].i64[0];
    for (i = v86; v87; v87 = *(v118 + 16))
    {
      if (v81[1].i16[v87 + 7])
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v118 + 16) - 1);
      }

      v81 = v118;
    }

    LODWORD(v118) = v73;
    WORD2(v118) = v74;
    WORD3(v118) = v109;
    WORD4(v118) = v75;
    WORD5(v118) = v76;
    WORD6(v118) = v77;
    HIWORD(v118) = v112;
    LOWORD(v119) = v113;
    WORD1(v119) = v111;
    NSDecimal.copyVariableLengthInteger(_:)(v81);
    v114 = v88;
    if (v88)
    {
      break;
    }

    v89 = v81[1].u64[0];

    if (HIDWORD(v89))
    {
      goto LABEL_95;
    }

    _So9NSDecimala__length_setter(v89, &v118);
    v121 = v118;
    LODWORD(v122) = v119;
    *&v116 = i;
    v90 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v90);

    v116 = v121;
    v117 = v122;
    if (!_So9NSDecimala__length_getter(&v116))
    {
      goto LABEL_84;
    }
  }

  swift_unexpectedError();
  __break(1u);
LABEL_98:
  v100 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_99:
  result._object = v101;
  result._countAndFlagsBits = v100;
  return result;
}