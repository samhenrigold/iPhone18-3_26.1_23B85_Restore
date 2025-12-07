uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

SiriPaymentsIntents::DIIdentifier __swiftcall DIIdentifier.init(namespace:id:)(Swift::String a1, Swift::String id)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v9 = 0u;
  v10 = 0;

  *&v9 = countAndFlagsBits;
  *(&v9 + 1) = object;

  v10 = id;

  outlined destroy of DIIdentifier(&v9);
  v2 = object;
  v4 = id._object;
  v3 = id._countAndFlagsBits;
  v5 = countAndFlagsBits;
  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  result.namespace._object = v2;
  result.namespace._countAndFlagsBits = v5;
  return result;
}

uint64_t DIIdentifier.payloadId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v17 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  v16[0] = a1;
  v16[1] = a2;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v16);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v6);

  v15[0] = a3;
  v15[1] = a4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v15);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v7);

  v14 = v17;
  v13 = v18;

  outlined destroy of String.UTF8View(&v17);
  return MEMORY[0x26D620710](v14, v13);
}

uint64_t DirectInvocationCodable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v127 = a1;
  v163 = a2;
  v164 = a3;
  v128 = partial apply for implicit closure #2 in DirectInvocationCodable.init(_:);
  v129 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v130 = partial apply for implicit closure #3 in DirectInvocationCodable.init(_:);
  v131 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v132 = partial apply for closure #1 in OSLogArguments.append(_:);
  v133 = partial apply for closure #1 in OSLogArguments.append(_:);
  v134 = partial apply for closure #1 in OSLogArguments.append(_:);
  v135 = partial apply for closure #1 in OSLogArguments.append(_:);
  v136 = partial apply for closure #1 in OSLogArguments.append(_:);
  v137 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = *MEMORY[0x277D85DE8];
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v138 = 0;
  v181 = 0;
  v182 = 0;
  v173 = a2;
  v146 = 0;
  v139 = type metadata accessor for Parse.DirectInvocation();
  v141 = *(v139 - 8);
  v140 = v139 - 8;
  v142 = v141;
  v143 = *(v141 + 64);
  v144 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5);
  v145 = &v46 - v144;
  v147 = type metadata accessor for Logger();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v146, v163);
  v151 = &v46 - v150;
  v152 = type metadata accessor for Optional();
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152, v163);
  v154 = &v46 - v153;
  v155 = *(v6 - 8);
  v156 = v6 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v46 - v153, v6);
  v158 = &v46 - v157;
  v159 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v46 - v157, v8);
  v160 = &v46 - v159;
  v180 = &v46 - v159;
  v161 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v11);
  v162 = &v46 - v161;
  v179 = &v46 - v161;
  v178 = a1;
  v167 = Parse.DirectInvocation.identifier.getter();
  v170 = v12;
  v13 = (*(v164 + 32))();
  v165 = v14;
  v166 = v15;
  v168 = DIIdentifier.payloadId.getter(v13, v14, v16, v15);
  v169 = v17;

  v171 = MEMORY[0x26D620740](v167, v170, v168, v169);

  if (v171)
  {
    v186 = 0;
    v125 = objc_opt_self();
    v185 = Parse.DirectInvocation.userData.getter();
    if (v185)
    {
      v172 = v185;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      _allocateUninitializedArray<A>(_:)();
      v172 = Dictionary.init(dictionaryLiteral:)();
      if (v185)
      {
        outlined destroy of [SFCardSection](&v185);
      }
    }

    v119 = v172;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v120 = 0;
    type metadata accessor for NSJSONWritingOptions(0);
    v121 = _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v177[0] = v186;
    v124 = [v125 dataWithJSONObject:isa options:v177[1] error:v177];
    v122 = v177[0];
    MEMORY[0x277D82BE0](v177[0]);
    v18 = v186;
    v186 = v122;
    MEMORY[0x277D82BD8](v18);
    swift_unknownObjectRelease();
    if (v124)
    {
      v118 = v124;
      v112 = v124;
      v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v19;
      MEMORY[0x277D82BD8](v112);
      v115 = v113;
      v116 = v114;
      v117 = v138;
    }

    else
    {
      v49 = v186;
      v50 = _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v49);
      swift_willThrow();
      v51 = 0;

      v115 = 0;
      v116 = 0xF000000000000000;
      v117 = v51;
    }

    v109 = v117;
    v110 = v116;
    v111 = v115;
    if ((v116 & 0xF000000000000000) == 0xF000000000000000)
    {
      v106 = v109;
    }

    else
    {
      v107 = v111;
      v108 = v110;
      v20 = v109;
      v102 = v110;
      v101 = v111;
      v181 = v111;
      v182 = v110;
      type metadata accessor for JSONDecoder();
      v103 = JSONDecoder.__allocating_init()();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v104 = v20;
      v105 = v20;
      if (v20)
      {
        v47 = v105;
        v48 = 0;

        (*(v155 + 56))(v154, 1, 1, v163);
        v100 = v48;
      }

      else
      {

        (*(v155 + 56))(v154, 0, 1, v163);
        v100 = v104;
      }

      v99 = v100;
      if ((*(v155 + 48))(v154, 1, v163) != 1)
      {
        v94 = *(v155 + 32);
        v93 = v155 + 32;
        v94(v160, v154, v163);
        v96 = *(v155 + 16);
        v95 = v155 + 16;
        v96(v158, v160, v163);
        v94(v162, v158, v163);
        v98 = *(v155 + 8);
        v97 = v155 + 8;
        v98(v160, v163);
        outlined consume of Data._Representation(v101, v102);
        v96(v126, v162, v163);
        (*(v155 + 56))(v126, 0, 1, v163);
        (*(v141 + 8))(v127, v139);
        return (v98)(v162, v163);
      }

      outlined destroy of A?(v154, v163);
      outlined consume of Data._Representation(v101, v102);
      v106 = v99;
    }

    v22 = v151;
    v65 = v106;
    v23 = Logger.payments.unsafeMutableAddressor();
    (*(v148 + 16))(v22, v23, v147);
    v66 = v142;
    v69 = *(v141 + 16);
    v68 = v141 + 16;
    v69(v145, v127, v139);
    v70 = *(v66 + 80);
    v67 = (v70 + 16) & ~v70;
    v79 = 7;
    v74 = swift_allocObject();
    v73 = *(v141 + 32);
    v72 = v141 + 32;
    v73(v74 + v67, v145, v139);
    v69(v145, v127, v139);
    v71 = (v70 + 16) & ~v70;
    v80 = swift_allocObject();
    v73(v80 + v71, v145, v139);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    v76 = 17;
    v82 = swift_allocObject();
    *(v82 + 16) = 34;
    v83 = swift_allocObject();
    v77 = 8;
    *(v83 + 16) = 8;
    v78 = 32;
    v24 = swift_allocObject();
    v25 = v74;
    v75 = v24;
    *(v24 + 16) = v128;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v75;
    v84 = v26;
    *(v26 + 16) = v129;
    *(v26 + 24) = v27;
    v85 = swift_allocObject();
    *(v85 + 16) = 32;
    v86 = swift_allocObject();
    *(v86 + 16) = v77;
    v28 = swift_allocObject();
    v29 = v80;
    v81 = v28;
    *(v28 + 16) = v130;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v81;
    v88 = v30;
    *(v30 + 16) = v131;
    *(v30 + 24) = v31;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v87 = _allocateUninitializedArray<A>(_:)();
    v89 = v32;

    v33 = v82;
    v34 = v89;
    *v89 = v132;
    v34[1] = v33;

    v35 = v83;
    v36 = v89;
    v89[2] = v133;
    v36[3] = v35;

    v37 = v84;
    v38 = v89;
    v89[4] = v134;
    v38[5] = v37;

    v39 = v85;
    v40 = v89;
    v89[6] = v135;
    v40[7] = v39;

    v41 = v86;
    v42 = v89;
    v89[8] = v136;
    v42[9] = v41;

    v43 = v88;
    v44 = v89;
    v89[10] = v137;
    v44[11] = v43;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v91, v92))
    {
      v45 = v65;
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v58 = createStorage<A>(capacity:type:)(0, v56, v56);
      v59 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v61 = &v176;
      v176 = v57;
      v62 = &v184;
      v184 = v58;
      v63 = &v183;
      v183 = v59;
      v60 = 2;
      serialize(_:at:)(2, &v176);
      serialize(_:at:)(v60, v61);
      v174 = v132;
      v175 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v174, v61, v62, v63);
      v64 = v45;
      if (v45)
      {

        __break(1u);
      }

      else
      {
        v174 = v133;
        v175 = v83;
        closure #1 in osLogInternal(_:log:type:)(&v174, &v176, &v184, &v183);
        v55 = 0;
        v174 = v134;
        v175 = v84;
        closure #1 in osLogInternal(_:log:type:)(&v174, &v176, &v184, &v183);
        v54 = 0;
        v174 = v135;
        v175 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v174, &v176, &v184, &v183);
        v53 = 0;
        v174 = v136;
        v175 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v174, &v176, &v184, &v183);
        v52 = 0;
        v174 = v137;
        v175 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v174, &v176, &v184, &v183);
        _os_log_impl(&dword_2686B1000, v91, v92, "JSON Serializer failed to convert %{public}s with userData of %s to typed object", v57, 0x16u);
        destroyStorage<A>(_:count:)(v58, 0, v56);
        destroyStorage<A>(_:count:)(v59, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v57, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v91);
    (*(v148 + 8))(v151, v147);
  }

  (*(v141 + 8))(v127, v139);
  return (*(v155 + 56))(v126, 1, 1, v163);
}

uint64_t implicit closure #3 in DirectInvocationCodable.init(_:)()
{
  Parse.DirectInvocation.userData.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, "ff");
  return String.init<A>(describing:)();
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v12 = 0;
  v13 = a1;
  v6 = *(a1 - 8);
  v7 = a1 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v4 - v5;
  v12 = v2;
  type metadata accessor for SKIDirectInvocationPayload();
  (*(v6 + 16))(v11, v8, v9);
  return SKIDirectInvocationPayload.init<A>(_:)(v11, v9, v10);
}

id SKIDirectInvocationPayload.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[3] = a1;
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = (*(a3 + 32))();
  v7 = DIIdentifier.payloadId.getter(v3, v4, v5, v6);
  v21 = MEMORY[0x26D620690](v7);

  v22 = [v20 initWithIdentifier_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BE0](v22);
  v30 = 0;
  v23 = objc_opt_self();
  type metadata accessor for JSONEncoder();
  JSONEncoder.__allocating_init()();
  v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v8;

  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v27, v16);
  type metadata accessor for NSJSONReadingOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v28[0] = 0;
  v19 = [v23 JSONObjectWithData:isa options:v28[1] error:v28];
  v17 = v28[0];
  MEMORY[0x277D82BE0](v28[0]);
  v9 = v30;
  v30 = v17;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](isa);
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v30;
    v12 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();

    memset(v31, 0, sizeof(v31));
    v32 = 0;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v14 = v28[2];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    outlined destroy of FlowActivity?(v31);
    v15 = 0;
  }

  v29 = v15;
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (v29)
    {
      outlined destroy of [SFCardSection](&v29);
    }
  }

  _dictionaryUpCast<A, B, C, D>(_:)();
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 setUserData_];
  MEMORY[0x277D82BD8](v13);
  (*(*(a2 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v22);
  return v22;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v9 = [v7 runSiriKitExecutorCommandWithContext:a1 payload:?];
  MEMORY[0x277D82BD8](v8);
  return v9;
}

id DirectInvocationCodable.serializeToStartLocalRequest(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = objc_opt_self();
  MEMORY[0x277D82BE0](v6);
  v5 = [v4 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v5;
}

uint64_t DirectInvocationCodable.serializeToBase64(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  countAndFlagsBits = AceObject.serializeToBase64()().value._countAndFlagsBits;
  MEMORY[0x277D82BD8](v4);
  return countAndFlagsBits;
}

uint64_t sub_268731308()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in DirectInvocationCodable.init(_:)()
{
  type metadata accessor for Parse.DirectInvocation();

  return implicit closure #2 in DirectInvocationCodable.init(_:)();
}

uint64_t sub_268731438()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in DirectInvocationCodable.init(_:)()
{
  type metadata accessor for Parse.DirectInvocation();

  return implicit closure #3 in DirectInvocationCodable.init(_:)();
}

uint64_t Parse.DirectInvocation.is<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = Parse.DirectInvocation.identifier.getter();
  v15 = v3;
  v4 = (*(a3 + 32))(a2);
  v13 = DIIdentifier.payloadId.getter(v4, v5, v6, v7);
  v14 = v8;

  v16 = MEMORY[0x26D620740](v12, v15, v13, v14);

  return v16 & 1;
}

id @nonobjc SKIDirectInvocationPayload.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D620690](a1);
  v5 = [v3 initWithIdentifier_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t outlined destroy of A?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DIIdentifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DIIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSendPaymentIntent();
  v2 = type metadata accessor for INSendPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SendPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentNeedsConfirmationFlowStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INRequestPaymentIntent();
  v2 = type metadata accessor for INRequestPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for RequestPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentNeedsConfirmationFlowStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  BaseStrategy.actionForInput(_:)(a1, a2);
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = v3;
  v4[24] = a3;
  v4[23] = a2;
  v4[22] = a1;
  v4[12] = v4;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v10 = *v3;
  v4[26] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v4[13] = a2;
  v4[14] = a3;
  v4[35] = *(v10 + 216);
  v4[15] = v3;

  return MEMORY[0x2822009F8](PaymentsNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:), 0);
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v1 = v0[34];
  v29 = v0[33];
  v30 = v0[32];
  v0[12] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v29 + 16))(v1, v2, v30);
  v32 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v33 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v32, v31))
  {
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v28 + 144) = v24;
    *(v28 + 152) = v25;
    *(v28 + 160) = v26;
    serialize(_:at:)(0, (v28 + 144));
    serialize(_:at:)(0, (v28 + 144));
    *(v28 + 168) = v33;
    v27 = swift_task_alloc();
    v27[2] = v28 + 144;
    v27[3] = v28 + 152;
    v27[4] = v28 + 160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v32, v31, "#PaymentsNeedsConfirmationFlowStrategy parseConfirmationResponse", v24, 2u);
    destroyStorage<A>(_:count:)(v25, 0, v23);
    destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
  }

  v12 = *(v28 + 272);
  v13 = *(v28 + 256);
  v19 = *(v28 + 248);
  v20 = *(v28 + 224);
  v15 = *(v28 + 200);
  v11 = *(v28 + 264);
  v18 = *(v28 + 232);
  v14 = *(v28 + 208);
  MEMORY[0x277D82BD8](v32);
  (*(v11 + 8))(v12, v13);
  Input.parse.getter();
  type metadata accessor for ParameterResolutionRecord();
  v17 = ParameterResolutionRecord.intent.getter();
  v16 = *(v14 + 240);
  static AceService.currentAsync.getter();

  outlined init with copy of GlobalsProviding(v15 + 64, v28 + 56);

  v22 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v17, v16, v28 + 16, v28 + 56);
  __swift_destroy_boxed_opaque_existential_0((v28 + 56));
  __swift_destroy_boxed_opaque_existential_0((v28 + 16));
  MEMORY[0x277D82BD8](v17);
  v21 = *(v18 + 8);
  v21(v19, v20);
  if (v22)
  {
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      MEMORY[0x277D82BD8](v22);
      v9 = 0;
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v6 = *(v28 + 240);
  v7 = *(v28 + 224);
  v5 = *(v28 + 216);
  *(v28 + 128) = v8;
  Input.parse.getter();
  Parse.confirmationResponse.getter(v5);
  v21(v6, v7);
  MEMORY[0x277D82BE0](v8);
  *(v28 + 136) = v8;
  if (!*(v28 + 136))
  {
    ParameterResolutionRecord.intent.getter();
    if (*(v28 + 136))
    {
      outlined destroy of SFRichText?((v28 + 136));
    }
  }

  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();
  MEMORY[0x277D82BD8](v8);

  v3 = *(*(v28 + 96) + 8);

  return v3();
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = type metadata accessor for Logger();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](PaymentsNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0);
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v1 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  v17 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v18 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v17, v16))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v10 = createStorage<A>(capacity:type:)(0, v8, v8);
    v11 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v13 + 48) = buf;
    *(v13 + 56) = v10;
    *(v13 + 64) = v11;
    serialize(_:at:)(0, (v13 + 48));
    serialize(_:at:)(0, (v13 + 48));
    *(v13 + 72) = v18;
    v12 = swift_task_alloc();
    v12[2] = v13 + 48;
    v12[3] = v13 + 56;
    v12[4] = v13 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v17, v16, "#PaymentsNeedsConfirmationFlowStrategy base makePromptForConfirmation, this should not be called", buf, 2u);
    destroyStorage<A>(_:count:)(v10, 0, v8);
    destroyStorage<A>(_:count:)(v11, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v13 + 104);
  v6 = *(v13 + 88);
  v5 = *(v13 + 96);
  MEMORY[0x277D82BD8](v17);
  (*(v5 + 8))(v7, v6);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v3 = *(*(v13 + 16) + 8);

  return v3();
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v6 = type metadata accessor for Logger();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:), 0);
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  v1 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  v17 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v18 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v17, v16))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v10 = createStorage<A>(capacity:type:)(0, v8, v8);
    v11 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v13 + 56) = buf;
    *(v13 + 64) = v10;
    *(v13 + 72) = v11;
    serialize(_:at:)(0, (v13 + 56));
    serialize(_:at:)(0, (v13 + 56));
    *(v13 + 80) = v18;
    v12 = swift_task_alloc();
    v12[2] = v13 + 56;
    v12[3] = v13 + 64;
    v12[4] = v13 + 72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v17, v16, "#PaymentsNeedsConfirmationFlowStrategy base makeIntentCancelledByParameterRejectionResponse, this should not be called", buf, 2u);
    destroyStorage<A>(_:count:)(v10, 0, v8);
    destroyStorage<A>(_:count:)(v11, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v13 + 112);
  v6 = *(v13 + 96);
  v5 = *(v13 + 104);
  MEMORY[0x277D82BD8](v17);
  (*(v5 + 8))(v7, v6);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v3 = *(*(v13 + 16) + 8);

  return v3();
}

uint64_t PaymentsNeedsConfirmationFlowStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v22 = a5;
  v25 = a6;
  v20 = a7;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v43 = a6;
  v16 = *v7;
  v23 = *(a6 - 8);
  v24 = a6 - 8;
  v15 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1, a2);
  v19 = &v14 - v15;
  v42 = v16[27];
  v41 = v16[28];
  v40 = v16[29];
  v38 = v8;
  v37 = v9;
  v36 = v10;
  v35 = v11;
  v34 = v12;
  v39 = v7;
  v21 = v33;
  outlined init with copy of GlobalsProviding(v8, v33);

  v17 = v32;
  outlined init with copy of GlobalsProviding(v27, v32);
  v18 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  (*(v23 + 16))(v19, v22, v25);
  v30 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v21, v28, v17, v18, v19, v25, v20);

  v39 = v30;
  (*(v23 + 8))(v22, v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);

  __swift_destroy_boxed_opaque_existential_0(v29);

  return v30;
}

uint64_t protocol witness for NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(**v4 + 288) + **(**v4 + 288));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[7] = v4;
  v5 = swift_task_alloc();
  v13[8] = v5;
  v6 = a3[28];
  v7 = a3[29];
  v8 = a3[30];
  v9 = a3[31];
  v13[2] = a3[27];
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v13 + 2));
  *v5 = v13[7];
  v5[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 56) = *v1;

  v2 = *(*(v4 + 56) + 8);

  return v2(a1);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = (*(**v3 + 280) + **(**v3 + 280));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  v5[7] = v5;
  v6 = swift_task_alloc();
  v14[8] = v6;
  v7 = a4[28];
  v8 = a4[29];
  v9 = a4[30];
  v10 = a4[31];
  v14[2] = a4[27];
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v11 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v14 + 2));
  *v6 = v14[7];
  v6[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E28](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>()
{
  v2 = *v1;
  *(v2 + 56) = *v1;
  v5 = v2 + 56;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  v5[7] = v5;
  v6 = swift_task_alloc();
  v14[8] = v6;
  v7 = a4[28];
  v8 = a4[29];
  v9 = a4[30];
  v10 = a4[31];
  v14[2] = a4[27];
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v11 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v14 + 2));
  *v6 = v14[7];
  v6[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E38](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[7] = v4;
  v5 = swift_task_alloc();
  v13[8] = v5;
  v6 = a3[28];
  v7 = a3[29];
  v8 = a3[30];
  v9 = a3[31];
  v13[2] = a3[27];
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v13 + 2));
  *v5 = v13[7];
  v5[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[7] = v4;
  v5 = swift_task_alloc();
  v13[8] = v5;
  v6 = a3[28];
  v7 = a3[29];
  v8 = a3[30];
  v9 = a3[31];
  v13[2] = a3[27];
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v13 + 2));
  *v5 = v13[7];
  v5[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v15 = v6;
  v6[7] = v6;
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a5[28];
  v9 = a5[29];
  v10 = a5[30];
  v11 = a5[31];
  v15[2] = a5[27];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v15 + 2));
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v12, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v15 = v6;
  v6[7] = v6;
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a5[28];
  v9 = a5[29];
  v10 = a5[30];
  v11 = a5[31];
  v15[2] = a5[27];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v15 + 2));
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v12, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v16 = v7;
  v7[7] = v7;
  v8 = swift_task_alloc();
  v16[8] = v8;
  v9 = a6[28];
  v10 = a6[29];
  v11 = a6[30];
  v12 = a6[31];
  v16[2] = a6[27];
  v16[3] = v9;
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v13 = type metadata accessor for PaymentsNeedsConfirmationFlowStrategy(0, (v16 + 2));
  *v8 = v16[7];
  v8[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1040) = v3;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1016) = a1;
  *(v4 + 896) = v4;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0;
  *(v4 + 920) = 0;
  *(v4 + 688) = 0;
  *(v4 + 696) = 0;
  *(v4 + 1272) = 0;
  *(v4 + 928) = 0;
  *(v4 + 784) = 0;
  *(v4 + 792) = 0;
  *(v4 + 936) = 0;
  *(v4 + 952) = 0;
  *(v4 + 960) = 0;
  *(v4 + 976) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  *(v4 + 1056) = v5;
  *(v4 + 1064) = *(v5 - 8);
  *(v4 + 1072) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v4 + 1080) = v6;
  *(v4 + 1088) = *(v6 - 8);
  *(v4 + 1096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v4 + 1104) = swift_task_alloc();
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 1128) = swift_task_alloc();
  v7 = type metadata accessor for ParameterIdentifier();
  *(v4 + 1136) = v7;
  *(v4 + 1144) = *(v7 - 8);
  *(v4 + 1152) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 1160) = v8;
  *(v4 + 1168) = *(v8 - 8);
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 904) = a2;
  *(v4 + 912) = a3;
  *(v4 + 920) = v3;

  return MEMORY[0x2822009F8](RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0);
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v1 = v0[147];
  v130 = v0[146];
  v131 = v0[145];
  v0[112] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v130 + 16))(v1, v2, v131);
  v133 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v134 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v133, v132))
  {
    v125 = static UnsafeMutablePointer.allocate(capacity:)();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v126 = createStorage<A>(capacity:type:)(0, v124, v124);
    v127 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v129 + 984) = v125;
    *(v129 + 992) = v126;
    *(v129 + 1000) = v127;
    serialize(_:at:)(0, (v129 + 984));
    serialize(_:at:)(0, (v129 + 984));
    *(v129 + 1008) = v134;
    v128 = swift_task_alloc();
    v128[2] = v129 + 984;
    v128[3] = v129 + 992;
    v128[4] = v129 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v133, v132, "#RequestPaymentNeedsConfirmationFlowStrategy makePromptForConfirmation", v125, 2u);
    destroyStorage<A>(_:count:)(v126, 0, v124);
    destroyStorage<A>(_:count:)(v127, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v125, MEMORY[0x277D84B78]);
  }

  v117 = *(v129 + 1176);
  v118 = *(v129 + 1160);
  v120 = *(v129 + 1152);
  v121 = *(v129 + 1136);
  v116 = *(v129 + 1168);
  v119 = *(v129 + 1144);
  MEMORY[0x277D82BD8](v133);
  (*(v116 + 8))(v117, v118);
  *(v129 + 1184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  *(v129 + 1192) = v3;
  *(v129 + 688) = rawValue._countAndFlagsBits;
  *(v129 + 696) = v3;
  (*(v119 + 8))(v120, v121);

  v4.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  if (v4.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {

    *(v129 + 704) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v129 + 712) = v51;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v53 = type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v53);
    v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v54);

    v59 = *(v129 + 704);
    v58 = *(v129 + 712);

    outlined destroy of String.UTF8View(v129 + 704);
    v61 = MEMORY[0x26D620710](v59, v58);
    v60 = v55;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v56 = rawValue;
    *(v56 + 16) = v61;
    *(v56 + 24) = v60;
    *(v56 + 32) = 0;
    *(v56 + 40) = 0;
    *(v56 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    *(v129 + 1272) = v4;
    type metadata accessor for PaymentsDialogConcept.Builder(0);
    v115 = PaymentsDialogConcept.Builder.__allocating_init()();
    *(v129 + 1200) = v115;
    *(v129 + 928) = v115;
    if (value)
    {
      if (value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
      {
        outlined init with copy of Any(*(v129 + 1024), v129 + 560);
        type metadata accessor for INCurrencyAmount();
        if (swift_dynamicCast())
        {
          v98 = *(v129 + 944);
        }

        else
        {
          v98 = 0;
        }

        if (v98)
        {
          *(v129 + 952) = v98;
          type metadata accessor for DialogCurrency.Builder();
          DialogCurrency.Builder.__allocating_init()();
          v97 = [v98 currencyCode];
          if (v97)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v17;
            MEMORY[0x277D82BD8](v97);
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          if (v96)
          {
            v94 = *(v129 + 1120);
            String.toSpeakableString.getter();

            v18 = type metadata accessor for SpeakableString();
            (*(*(v18 - 8) + 56))(v94, 0, 1);
          }

          else
          {
            v90 = *(v129 + 1120);
            v19 = type metadata accessor for SpeakableString();
            (*(*(v19 - 8) + 56))(v90, 1);
          }

          v92 = *(v129 + 1120);
          dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
          outlined destroy of SpeakableString?(v92);

          v93 = [v98 amount];
          if (v93)
          {
            [v93 doubleValue];
            MEMORY[0x277D82BD8](v93);
          }

          dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

          v91 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

          *(v129 + 960) = v91;

          PaymentsDialogConcept.Builder.withAmount(_:)(v91);

          MEMORY[0x277D82BD8](v98);
          goto LABEL_34;
        }

        v79 = *(v129 + 1024);
        v84 = RequestPaymentSlots.rawValue.getter(value);
        v85 = v20;
        *(v129 + 800) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 808) = v21;
        v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v22);

        outlined init with copy of Any(v79, v129 + 592);
        *(v129 + 816) = String.init<A>(describing:)();
        *(v129 + 824) = v23;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v129 + 816);
        v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v24);

        v81 = *(v129 + 800);
        v80 = *(v129 + 808);

        outlined destroy of String.UTF8View(v129 + 800);
        v86 = MEMORY[0x26D620710](v81, v80);
        v87 = v25;
        *(v129 + 832) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 840) = v26;
        v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v27);

        v28 = type metadata accessor for INRequestPaymentIntent();
        DefaultStringInterpolation.appendInterpolation(_:)(v28);
        v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v29);

        v83 = *(v129 + 832);
        v82 = *(v129 + 840);

        outlined destroy of String.UTF8View(v129 + 832);
        v89 = MEMORY[0x26D620710](v83, v82);
        v88 = v30;
        lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
        swift_allocError();
        *v31 = v84;
        *(v31 + 8) = v85;
        *(v31 + 16) = v86;
        *(v31 + 24) = v87;
        *(v31 + 32) = v89;
        *(v31 + 40) = v88;
        *(v31 + 48) = 9;
        swift_willThrow();
      }

      else
      {
        outlined init with copy of Any(*(v129 + 1024), v129 + 496);
        v32 = swift_dynamicCast();
        if (v32)
        {
          v77 = *(v129 + 720);
          v78 = *(v129 + 728);
        }

        else
        {
          v77 = 0;
          v78 = 0;
        }

        if (v78)
        {
          v76 = *(v129 + 1112);
          *(v129 + 784) = v77;
          *(v129 + 792) = v78;
          String.toSpeakableString.getter();
          v33 = type metadata accessor for SpeakableString();
          (*(*(v33 - 8) + 56))(v76, 0, 1);
          PaymentsDialogConcept.Builder.withMemo(_:)(v76);
          outlined destroy of SpeakableString?(v76);

          goto LABEL_34;
        }

        v65 = *(v129 + 1024);
        v70 = RequestPaymentSlots.rawValue.getter(value);
        v71 = v34;
        *(v129 + 736) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 744) = v35;
        v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v36);

        outlined init with copy of Any(v65, v129 + 528);
        *(v129 + 752) = String.init<A>(describing:)();
        *(v129 + 760) = v37;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v129 + 752);
        v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v38);

        v67 = *(v129 + 736);
        v66 = *(v129 + 744);

        outlined destroy of String.UTF8View(v129 + 736);
        v72 = MEMORY[0x26D620710](v67, v66);
        v73 = v39;
        *(v129 + 768) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 776) = v40;
        v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v41);

        v42 = type metadata accessor for INRequestPaymentIntent();
        DefaultStringInterpolation.appendInterpolation(_:)(v42);
        v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v43);

        v69 = *(v129 + 768);
        v68 = *(v129 + 776);

        outlined destroy of String.UTF8View(v129 + 768);
        v75 = MEMORY[0x26D620710](v69, v68);
        v74 = v44;
        lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
        swift_allocError();
        *v45 = v70;
        *(v45 + 8) = v71;
        *(v45 + 16) = v72;
        *(v45 + 24) = v73;
        *(v45 + 32) = v75;
        *(v45 + 40) = v74;
        *(v45 + 48) = 9;
        swift_willThrow();
      }
    }

    else
    {
      outlined init with copy of Any(*(v129 + 1024), v129 + 624);
      type metadata accessor for INPerson();
      if (swift_dynamicCast())
      {
        v114 = *(v129 + 968);
      }

      else
      {
        v114 = 0;
      }

      if (v114)
      {
        v110 = *(v129 + 1040);
        *(v129 + 976) = v114;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v114);

        outlined init with copy of GlobalsProviding(v110 + 104, v129 + 416);

        v112 = *(v129 + 440);
        v111 = *(v129 + 448);
        __swift_project_boxed_opaque_existential_1((v129 + 416), v112);
        (*(v111 + 16))(v112);
        __swift_project_boxed_opaque_existential_1((v129 + 456), *(v129 + 480));
        dispatch thunk of DeviceState.siriLocale.getter();
        default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
        v113 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v129 + 456));
        __swift_destroy_boxed_opaque_existential_0((v129 + 416));
        PaymentsDialogConcept.Builder.withPayerName(_:)(v113);

        MEMORY[0x277D82BD8](v114);
LABEL_34:
        v63 = *(v129 + 1104);
        v62 = *(v129 + 1040);

        *(v129 + 1208) = *(v62 + 16);

        RequestPaymentSlots.rawValue.getter(value);
        String.toSpeakableString.getter();

        v46 = type metadata accessor for SpeakableString();
        (*(*(v46 - 8) + 56))(v63, 0, 1);
        v64 = PaymentsDialogConcept.Builder.build()();
        *(v129 + 1216) = v64;
        v47 = swift_task_alloc();
        *(v129 + 1224) = v47;
        *v47 = *(v129 + 896);
        v47[1] = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
        v48 = *(v129 + 1104);
        v49 = *(v129 + 1096);

        return RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:)(v49, v48, v64);
      }

      v99 = *(v129 + 1024);
      v104 = RequestPaymentSlots.rawValue.getter(0);
      v105 = v5;
      *(v129 + 848) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v129 + 856) = v6;
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v7);

      outlined init with copy of Any(v99, v129 + 656);
      *(v129 + 864) = String.init<A>(describing:)();
      *(v129 + 872) = v8;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v129 + 864);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v9);

      v101 = *(v129 + 848);
      v100 = *(v129 + 856);

      outlined destroy of String.UTF8View(v129 + 848);
      v106 = MEMORY[0x26D620710](v101, v100);
      v107 = v10;
      *(v129 + 880) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v129 + 888) = v11;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v12);

      v13 = type metadata accessor for INRequestPaymentIntent();
      DefaultStringInterpolation.appendInterpolation(_:)(v13);
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v14);

      v103 = *(v129 + 880);
      v102 = *(v129 + 888);

      outlined destroy of String.UTF8View(v129 + 880);
      v109 = MEMORY[0x26D620710](v103, v102);
      v108 = v15;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v16 = v104;
      *(v16 + 8) = v105;
      *(v16 + 16) = v106;
      *(v16 + 24) = v107;
      *(v16 + 32) = v109;
      *(v16 + 40) = v108;
      *(v16 + 48) = 9;
      swift_willThrow();
    }
  }

  v57 = *(*(v129 + 896) + 8);

  return v57();
}

{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 896) = *v1;
  *(v6 + 1232) = v0;

  if (v0)
  {
    v2 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v4 = *(v5 + 1088);

    outlined destroy of SpeakableString?(v4);

    v2 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v11 = v0;
  v5 = v0[130];
  v0[112] = v0;

  outlined init with copy of GlobalsProviding(v5 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v5 + 104, (v0 + 22));

  v4 = v0[25];
  v3 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v4);
  (*(v3 + 16))(v4);

  v6 = *(v5 + 16);

  v10[3] = type metadata accessor for RequestPaymentCATs(0);
  v10[4] = &protocol witness table for RequestPaymentCATs;
  v10[0] = v6;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v9, v10, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v8 = ParameterResolutionRecord.app.getter();
  v0[155] = v8;
  v1 = swift_task_alloc();
  *(v7 + 1248) = v1;
  *v1 = *(v7 + 896);
  v1[1] = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(v8);
}

{
  v13 = v0[157];
  v16 = v0[137];
  v14 = v0[136];
  v15 = v0[135];
  v17 = v0[134];
  v11 = v0[133];
  v12 = v0[132];
  v18 = v0[131];
  v6 = v0[130];
  v10 = v0[127];
  v0[112] = v0;
  v0[117] = v13;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v17);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 27));

  v5 = v0[30];
  v4 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v5);
  (*(v4 + 16))(v5);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 37));

  v8 = v0[40];
  v7 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v8);
  (*(v7 + 16))(v8);
  __swift_project_boxed_opaque_existential_1(v0 + 42, v0[45]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v9 = v1;
  MEMORY[0x277D82BE0](v13);
  *v9 = v13;
  _finalizeUninitializedArray<A>(_:)();
  (*(v11 + 16))(v18, v17, v12);
  (*(v11 + 56))(v18, 0, 1, v12);
  v0[47] = 0;
  v0[48] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v10[3] = type metadata accessor for AceOutput();
  v10[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v10);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 47);
  outlined destroy of NLContextUpdate?(v18);

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v11 + 8))(v17, v12);
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v15);

  v2 = *(v0[112] + 8);

  return v2();
}

{
  v3 = *(v0 + 1104);
  *(v0 + 896) = v0;

  outlined destroy of SpeakableString?(v3);

  v1 = *(*(v0 + 896) + 8);

  return v1();
}

{
  v5 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v0[112] = v0;

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v3 + 8))(v5, v4);

  v1 = *(v0[112] + 8);

  return v1();
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1)
{
  v6 = *v2;
  v5 = (*v2 + 16);
  v6[112] = *v2;
  v6[157] = a1;
  v6[158] = v1;

  if (v1)
  {
    v3 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {

    outlined destroy of ConfirmationViewBuilder(v5);
    v3 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = v4;
  v5[36] = a1;
  v5[27] = v5;
  v5[28] = 0;
  v5[29] = 0;
  v5[30] = 0;
  v5[31] = 0;
  v6 = type metadata accessor for TemplatingResult();
  v5[38] = v6;
  v5[39] = *(v6 - 8);
  v5[40] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = a4;
  v5[31] = v4;

  return MEMORY[0x2822009F8](RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:), 0);
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  v1 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 256) = buf;
    *(v15 + 264) = v12;
    *(v15 + 272) = v13;
    serialize(_:at:)(0, (v15 + 256));
    serialize(_:at:)(0, (v15 + 256));
    *(v15 + 280) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 256;
    v14[3] = v15 + 264;
    v14[4] = v15 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#RequestPaymentNeedsConfirmationFlowStrategy makeIntentCancelledByParameterRejectionResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 344);
  v8 = *(v15 + 328);
  v9 = *(v15 + 296);
  v6 = *(v15 + 336);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 352) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 360) = v3;
  *v3 = *(v15 + 216);
  v3[1] = RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:);
  v4 = *(v15 + 320);

  return RequestPaymentCATs.promptCancelled()(v4);
}

{
  v4 = *v1;
  *(v4 + 216) = *v1;
  *(v4 + 368) = v0;

  if (v0)
  {
    v2 = RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:);
  }

  else
  {

    v2 = RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v11 = v0[40];
  v9 = v0[39];
  v10 = v0[38];
  v5 = v0[37];
  v8 = v0[36];
  v0[27] = v0;

  outlined init with copy of GlobalsProviding(v5 + 104, (v0 + 2));

  v4 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v3 + 16))(v4);

  outlined init with copy of GlobalsProviding(v5 + 104, (v0 + 12));

  v7 = v0[15];
  v6 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
  (*(v6 + 16))(v7);
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v11, v10);

  v1 = *(v0[27] + 8);

  return v1();
}

{
  *(v0 + 216) = v0;

  v1 = *(*(v0 + 216) + 8);

  return v1();
}

uint64_t RequestPaymentNeedsConfirmationFlowStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = PaymentsNeedsConfirmationFlowStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1040) = v3;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1016) = a1;
  *(v4 + 896) = v4;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0;
  *(v4 + 920) = 0;
  *(v4 + 688) = 0;
  *(v4 + 696) = 0;
  *(v4 + 1272) = 0;
  *(v4 + 928) = 0;
  *(v4 + 784) = 0;
  *(v4 + 792) = 0;
  *(v4 + 936) = 0;
  *(v4 + 952) = 0;
  *(v4 + 960) = 0;
  *(v4 + 976) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  *(v4 + 1056) = v5;
  *(v4 + 1064) = *(v5 - 8);
  *(v4 + 1072) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v4 + 1080) = v6;
  *(v4 + 1088) = *(v6 - 8);
  *(v4 + 1096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v4 + 1104) = swift_task_alloc();
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 1128) = swift_task_alloc();
  v7 = type metadata accessor for ParameterIdentifier();
  *(v4 + 1136) = v7;
  *(v4 + 1144) = *(v7 - 8);
  *(v4 + 1152) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 1160) = v8;
  *(v4 + 1168) = *(v8 - 8);
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 904) = a2;
  *(v4 + 912) = a3;
  *(v4 + 920) = v3;

  return MEMORY[0x2822009F8](SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0);
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v1 = v0[147];
  v130 = v0[146];
  v131 = v0[145];
  v0[112] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v130 + 16))(v1, v2, v131);
  v133 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v134 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v133, v132))
  {
    v125 = static UnsafeMutablePointer.allocate(capacity:)();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v126 = createStorage<A>(capacity:type:)(0, v124, v124);
    v127 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v129 + 984) = v125;
    *(v129 + 992) = v126;
    *(v129 + 1000) = v127;
    serialize(_:at:)(0, (v129 + 984));
    serialize(_:at:)(0, (v129 + 984));
    *(v129 + 1008) = v134;
    v128 = swift_task_alloc();
    v128[2] = v129 + 984;
    v128[3] = v129 + 992;
    v128[4] = v129 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v133, v132, "#SendPaymentNeedsConfirmationFlowStrategy makePromptForConfirmation", v125, 2u);
    destroyStorage<A>(_:count:)(v126, 0, v124);
    destroyStorage<A>(_:count:)(v127, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v125, MEMORY[0x277D84B78]);
  }

  v117 = *(v129 + 1176);
  v118 = *(v129 + 1160);
  v120 = *(v129 + 1152);
  v121 = *(v129 + 1136);
  v116 = *(v129 + 1168);
  v119 = *(v129 + 1144);
  MEMORY[0x277D82BD8](v133);
  (*(v116 + 8))(v117, v118);
  *(v129 + 1184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  *(v129 + 1192) = v3;
  *(v129 + 688) = rawValue._countAndFlagsBits;
  *(v129 + 696) = v3;
  (*(v119 + 8))(v120, v121);

  v4.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  if (v4.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {

    *(v129 + 704) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v129 + 712) = v51;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v53 = type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v53);
    v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v54);

    v59 = *(v129 + 704);
    v58 = *(v129 + 712);

    outlined destroy of String.UTF8View(v129 + 704);
    v61 = MEMORY[0x26D620710](v59, v58);
    v60 = v55;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v56 = rawValue;
    *(v56 + 16) = v61;
    *(v56 + 24) = v60;
    *(v56 + 32) = 0;
    *(v56 + 40) = 0;
    *(v56 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    *(v129 + 1272) = v4;
    type metadata accessor for PaymentsDialogConcept.Builder(0);
    v115 = PaymentsDialogConcept.Builder.__allocating_init()();
    *(v129 + 1200) = v115;
    *(v129 + 928) = v115;
    if (value)
    {
      if (value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
      {
        outlined init with copy of Any(*(v129 + 1024), v129 + 560);
        type metadata accessor for INCurrencyAmount();
        if (swift_dynamicCast())
        {
          v98 = *(v129 + 944);
        }

        else
        {
          v98 = 0;
        }

        if (v98)
        {
          *(v129 + 952) = v98;
          type metadata accessor for DialogCurrency.Builder();
          DialogCurrency.Builder.__allocating_init()();
          v97 = [v98 currencyCode];
          if (v97)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v17;
            MEMORY[0x277D82BD8](v97);
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          if (v96)
          {
            v94 = *(v129 + 1120);
            String.toSpeakableString.getter();

            v18 = type metadata accessor for SpeakableString();
            (*(*(v18 - 8) + 56))(v94, 0, 1);
          }

          else
          {
            v90 = *(v129 + 1120);
            v19 = type metadata accessor for SpeakableString();
            (*(*(v19 - 8) + 56))(v90, 1);
          }

          v92 = *(v129 + 1120);
          dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
          outlined destroy of SpeakableString?(v92);

          v93 = [v98 amount];
          if (v93)
          {
            [v93 doubleValue];
            MEMORY[0x277D82BD8](v93);
          }

          dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

          v91 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

          *(v129 + 960) = v91;

          PaymentsDialogConcept.Builder.withAmount(_:)(v91);

          MEMORY[0x277D82BD8](v98);
          goto LABEL_34;
        }

        v79 = *(v129 + 1024);
        v84 = SendPaymentSlots.rawValue.getter(value);
        v85 = v20;
        *(v129 + 800) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 808) = v21;
        v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v22);

        outlined init with copy of Any(v79, v129 + 592);
        *(v129 + 816) = String.init<A>(describing:)();
        *(v129 + 824) = v23;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v129 + 816);
        v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v24);

        v81 = *(v129 + 800);
        v80 = *(v129 + 808);

        outlined destroy of String.UTF8View(v129 + 800);
        v86 = MEMORY[0x26D620710](v81, v80);
        v87 = v25;
        *(v129 + 832) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 840) = v26;
        v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v27);

        v28 = type metadata accessor for INSendPaymentIntent();
        DefaultStringInterpolation.appendInterpolation(_:)(v28);
        v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v29);

        v83 = *(v129 + 832);
        v82 = *(v129 + 840);

        outlined destroy of String.UTF8View(v129 + 832);
        v89 = MEMORY[0x26D620710](v83, v82);
        v88 = v30;
        lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
        swift_allocError();
        *v31 = v84;
        *(v31 + 8) = v85;
        *(v31 + 16) = v86;
        *(v31 + 24) = v87;
        *(v31 + 32) = v89;
        *(v31 + 40) = v88;
        *(v31 + 48) = 9;
        swift_willThrow();
      }

      else
      {
        outlined init with copy of Any(*(v129 + 1024), v129 + 496);
        v32 = swift_dynamicCast();
        if (v32)
        {
          v77 = *(v129 + 720);
          v78 = *(v129 + 728);
        }

        else
        {
          v77 = 0;
          v78 = 0;
        }

        if (v78)
        {
          v76 = *(v129 + 1112);
          *(v129 + 784) = v77;
          *(v129 + 792) = v78;
          String.toSpeakableString.getter();
          v33 = type metadata accessor for SpeakableString();
          (*(*(v33 - 8) + 56))(v76, 0, 1);
          PaymentsDialogConcept.Builder.withMemo(_:)(v76);
          outlined destroy of SpeakableString?(v76);

          goto LABEL_34;
        }

        v65 = *(v129 + 1024);
        v70 = SendPaymentSlots.rawValue.getter(value);
        v71 = v34;
        *(v129 + 736) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 744) = v35;
        v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v36);

        outlined init with copy of Any(v65, v129 + 528);
        *(v129 + 752) = String.init<A>(describing:)();
        *(v129 + 760) = v37;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v129 + 752);
        v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v38);

        v67 = *(v129 + 736);
        v66 = *(v129 + 744);

        outlined destroy of String.UTF8View(v129 + 736);
        v72 = MEMORY[0x26D620710](v67, v66);
        v73 = v39;
        *(v129 + 768) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v129 + 776) = v40;
        v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v41);

        v42 = type metadata accessor for INSendPaymentIntent();
        DefaultStringInterpolation.appendInterpolation(_:)(v42);
        v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v43);

        v69 = *(v129 + 768);
        v68 = *(v129 + 776);

        outlined destroy of String.UTF8View(v129 + 768);
        v75 = MEMORY[0x26D620710](v69, v68);
        v74 = v44;
        lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
        swift_allocError();
        *v45 = v70;
        *(v45 + 8) = v71;
        *(v45 + 16) = v72;
        *(v45 + 24) = v73;
        *(v45 + 32) = v75;
        *(v45 + 40) = v74;
        *(v45 + 48) = 9;
        swift_willThrow();
      }
    }

    else
    {
      outlined init with copy of Any(*(v129 + 1024), v129 + 624);
      type metadata accessor for INPerson();
      if (swift_dynamicCast())
      {
        v114 = *(v129 + 968);
      }

      else
      {
        v114 = 0;
      }

      if (v114)
      {
        v110 = *(v129 + 1040);
        *(v129 + 976) = v114;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v114);

        outlined init with copy of GlobalsProviding(v110 + 104, v129 + 416);

        v112 = *(v129 + 440);
        v111 = *(v129 + 448);
        __swift_project_boxed_opaque_existential_1((v129 + 416), v112);
        (*(v111 + 16))(v112);
        __swift_project_boxed_opaque_existential_1((v129 + 456), *(v129 + 480));
        dispatch thunk of DeviceState.siriLocale.getter();
        default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
        v113 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v129 + 456));
        __swift_destroy_boxed_opaque_existential_0((v129 + 416));
        PaymentsDialogConcept.Builder.withPayeeName(_:)(v113);

        MEMORY[0x277D82BD8](v114);
LABEL_34:
        v63 = *(v129 + 1104);
        v62 = *(v129 + 1040);

        *(v129 + 1208) = *(v62 + 16);

        SendPaymentSlots.rawValue.getter(value);
        String.toSpeakableString.getter();

        v46 = type metadata accessor for SpeakableString();
        (*(*(v46 - 8) + 56))(v63, 0, 1);
        v64 = PaymentsDialogConcept.Builder.build()();
        *(v129 + 1216) = v64;
        v47 = swift_task_alloc();
        *(v129 + 1224) = v47;
        *v47 = *(v129 + 896);
        v47[1] = SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
        v48 = *(v129 + 1104);
        v49 = *(v129 + 1096);

        return SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)(v49, v48, v64);
      }

      v99 = *(v129 + 1024);
      v104 = SendPaymentSlots.rawValue.getter(0);
      v105 = v5;
      *(v129 + 848) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v129 + 856) = v6;
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v7);

      outlined init with copy of Any(v99, v129 + 656);
      *(v129 + 864) = String.init<A>(describing:)();
      *(v129 + 872) = v8;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v129 + 864);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v9);

      v101 = *(v129 + 848);
      v100 = *(v129 + 856);

      outlined destroy of String.UTF8View(v129 + 848);
      v106 = MEMORY[0x26D620710](v101, v100);
      v107 = v10;
      *(v129 + 880) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v129 + 888) = v11;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v12);

      v13 = type metadata accessor for INSendPaymentIntent();
      DefaultStringInterpolation.appendInterpolation(_:)(v13);
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v14);

      v103 = *(v129 + 880);
      v102 = *(v129 + 888);

      outlined destroy of String.UTF8View(v129 + 880);
      v109 = MEMORY[0x26D620710](v103, v102);
      v108 = v15;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v16 = v104;
      *(v16 + 8) = v105;
      *(v16 + 16) = v106;
      *(v16 + 24) = v107;
      *(v16 + 32) = v109;
      *(v16 + 40) = v108;
      *(v16 + 48) = 9;
      swift_willThrow();
    }
  }

  v57 = *(*(v129 + 896) + 8);

  return v57();
}

{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 896) = *v1;
  *(v6 + 1232) = v0;

  if (v0)
  {
    v2 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v4 = *(v5 + 1088);

    outlined destroy of SpeakableString?(v4);

    v2 = SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v11 = v0;
  v5 = v0[130];
  v0[112] = v0;

  outlined init with copy of GlobalsProviding(v5 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v5 + 104, (v0 + 22));

  v4 = v0[25];
  v3 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v4);
  (*(v3 + 16))(v4);

  v6 = *(v5 + 16);

  v10[3] = type metadata accessor for SendPaymentCATs(0);
  v10[4] = &protocol witness table for SendPaymentCATs;
  v10[0] = v6;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v9, v10, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v8 = ParameterResolutionRecord.app.getter();
  v0[155] = v8;
  v1 = swift_task_alloc();
  *(v7 + 1248) = v1;
  *v1 = *(v7 + 896);
  v1[1] = SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(v8);
}

{
  v13 = v0[157];
  v16 = v0[137];
  v14 = v0[136];
  v15 = v0[135];
  v17 = v0[134];
  v11 = v0[133];
  v12 = v0[132];
  v18 = v0[131];
  v6 = v0[130];
  v10 = v0[127];
  v0[112] = v0;
  v0[117] = v13;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(1u, v17);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 27));

  v5 = v0[30];
  v4 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v5);
  (*(v4 + 16))(v5);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 37));

  v8 = v0[40];
  v7 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v8);
  (*(v7 + 16))(v8);
  __swift_project_boxed_opaque_existential_1(v0 + 42, v0[45]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v9 = v1;
  MEMORY[0x277D82BE0](v13);
  *v9 = v13;
  _finalizeUninitializedArray<A>(_:)();
  (*(v11 + 16))(v18, v17, v12);
  (*(v11 + 56))(v18, 0, 1, v12);
  v0[47] = 0;
  v0[48] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v10[3] = type metadata accessor for AceOutput();
  v10[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v10);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 47);
  outlined destroy of NLContextUpdate?(v18);

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v11 + 8))(v17, v12);
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v15);

  v2 = *(v0[112] + 8);

  return v2();
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1)
{
  v6 = *v2;
  v5 = (*v2 + 16);
  v6[112] = *v2;
  v6[157] = a1;
  v6[158] = v1;

  if (v1)
  {
    v3 = RequestPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {

    outlined destroy of ConfirmationViewBuilder(v5);
    v3 = SendPaymentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = v4;
  v5[36] = a1;
  v5[27] = v5;
  v5[28] = 0;
  v5[29] = 0;
  v5[30] = 0;
  v5[31] = 0;
  v6 = type metadata accessor for TemplatingResult();
  v5[38] = v6;
  v5[39] = *(v6 - 8);
  v5[40] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = a4;
  v5[31] = v4;

  return MEMORY[0x2822009F8](SendPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:), 0);
}

uint64_t SendPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  v1 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 256) = buf;
    *(v15 + 264) = v12;
    *(v15 + 272) = v13;
    serialize(_:at:)(0, (v15 + 256));
    serialize(_:at:)(0, (v15 + 256));
    *(v15 + 280) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 256;
    v14[3] = v15 + 264;
    v14[4] = v15 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentNeedsConfirmationFlowStrategy makeIntentCancelledByParameterRejectionResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 344);
  v8 = *(v15 + 328);
  v9 = *(v15 + 296);
  v6 = *(v15 + 336);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 352) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 360) = v3;
  *v3 = *(v15 + 216);
  v3[1] = RequestPaymentNeedsConfirmationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:);
  v4 = *(v15 + 320);

  return SendPaymentCATs.promptCancelled()(v4);
}

unint64_t lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INCurrencyAmount()
{
  v2 = lazy cache variable for type metadata for INCurrencyAmount;
  if (!lazy cache variable for type metadata for INCurrencyAmount)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INCurrencyAmount);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INPerson()
{
  v2 = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INPerson);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsNeedsConfirmationFlowStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for RequestPaymentNeedsConfirmationFlowStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentNeedsConfirmationFlowStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentNeedsConfirmationFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for RequestPaymentNeedsConfirmationFlowStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for SendPaymentNeedsConfirmationFlowStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentNeedsConfirmationFlowStrategy;
  if (!type metadata singleton initialization cache for SendPaymentNeedsConfirmationFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t RequestPaymentCATs.confirmButtonLabel(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmButtonLabel", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.confirmButtonLabel()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](RequestPaymentCATs.confirmButtonLabel(), 0);
}

uint64_t RequestPaymentCATs.confirmButtonLabel()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmButtonLabel", 0x21uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmButtonLabel", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSlotValue", 0x1FuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept(0);
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:), 0);
}

uint64_t RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSlotValue", 0x1FuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for PaymentsDialogConcept(0);
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSlotValue", 0x1FuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept(0);
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.confirmSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSnippetHeader", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.confirmSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](RequestPaymentCATs.confirmSnippetHeader(), 0);
}

uint64_t RequestPaymentCATs.confirmSnippetHeader()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSnippetHeader", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#ConfirmSnippetHeader", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.disambiguateSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#DisambiguateSlotValue", 0x24uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.disambiguateSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentCATs.disambiguateSlotValue(slot:), 0);
}

uint64_t RequestPaymentCATs.disambiguateSlotValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#DisambiguateSlotValue", 0x24uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](RequestPaymentCATs.disambiguateSlotValue(slot:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t RequestPaymentCATs.disambiguateSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#DisambiguateSlotValue", 0x24uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.handledSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#HandledSnippetHeader", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.handledSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](RequestPaymentCATs.handledSnippetHeader(), 0);
}

uint64_t RequestPaymentCATs.handledSnippetHeader()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#HandledSnippetHeader", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#HandledSnippetHeader", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:), 0);
}

uint64_t RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.intentHandledResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentHandledResponse", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.intentHandledResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](RequestPaymentCATs.intentHandledResponse(app:), 0);
}

uint64_t RequestPaymentCATs.intentHandledResponse(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentHandledResponse", 0x24uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t RequestPaymentCATs.intentHandledResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentHandledResponse", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.labelForResponseSlot(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#LabelForResponseSlot", 0x23uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.labelForResponseSlot(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentCATs.labelForResponseSlot(slot:), 0);
}

uint64_t RequestPaymentCATs.labelForResponseSlot(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#LabelForResponseSlot", 0x23uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t RequestPaymentCATs.labelForResponseSlot(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#LabelForResponseSlot", 0x23uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.noResultsResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#NoResultsResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.noResultsResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](RequestPaymentCATs.noResultsResponse(app:), 0);
}

uint64_t RequestPaymentCATs.noResultsResponse(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#NoResultsResponse", 0x20uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t RequestPaymentCATs.noResultsResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#NoResultsResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.promptCancelled(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptCancelled", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.promptCancelled()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](RequestPaymentCATs.promptCancelled(), 0);
}

uint64_t RequestPaymentCATs.promptCancelled()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptCancelled", 0x1EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptCancelled", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.promptForSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptForSlotValue", 0x21uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.promptForSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentCATs.promptForSlotValue(slot:), 0);
}

uint64_t RequestPaymentCATs.promptForSlotValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptForSlotValue", 0x21uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t RequestPaymentCATs.promptForSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#PromptForSlotValue", 0x21uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.slotDisplayValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#SlotDisplayValue", 0x1FuLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.slotDisplayValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentCATs.slotDisplayValue(slot:), 0);
}

uint64_t RequestPaymentCATs.slotDisplayValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#SlotDisplayValue", 0x1FuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t RequestPaymentCATs.slotDisplayValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#SlotDisplayValue", 0x1FuLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#UnsupportedSlotValue", 0x23uLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept(0);
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:), 0);
}

uint64_t RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#UnsupportedSlotValue", 0x23uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for PaymentsDialogConcept(0);
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#UnsupportedSlotValue", 0x23uLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept(0);
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t RequestPaymentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t protocol witness for PaymentConfirmationLabelProviding.confirmButtonLabel() in conformance RequestPaymentCATs(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentCATs.confirmButtonLabel()(a1);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.slotDisplayValue(slot:) in conformance RequestPaymentCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentCATs.slotDisplayValue(slot:)(a1, a2);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.labelForResponseSlot(slot:) in conformance RequestPaymentCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentCATs.labelForResponseSlot(slot:)(a1, a2);
}

uint64_t type metadata accessor for RequestPaymentCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentCATs;
  if (!type metadata singleton initialization cache for RequestPaymentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for RequestPaymentCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t RequestPaymentHandleIntentStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INRequestPaymentIntent();
  v2 = type metadata accessor for INRequestPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for RequestPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentHandleIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t RequestPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](RequestPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t RequestPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 48) = buf;
    *(v14 + 56) = v11;
    *(v14 + 64) = v12;
    serialize(_:at:)(0, (v14 + 48));
    serialize(_:at:)(0, (v14 + 48));
    *(v14 + 72) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 48;
    v13[3] = v14 + 56;
    v13[4] = v14 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#RequestPaymentHandleIntentStrategy makeIntentExecutionBehavior", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v14 + 96);
  v6 = *(v14 + 80);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v7, v6);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v8 = static SiriKitIntentExecutionBehavior.standard()();

  v3 = *(*(v14 + 16) + 8);

  return v3(v8);
}

uint64_t RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[52] = v2;
  v3[51] = a2;
  v3[50] = a1;
  v3[41] = v3;
  v3[42] = 0;
  v3[43] = 0;
  v3[44] = 0;
  v3[37] = 0;
  v3[38] = 0;
  v3[49] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v3[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[54] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[55] = v4;
  v3[56] = *(v4 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v3[59] = v5;
  v8 = *(v5 - 8);
  v3[60] = v8;
  v3[61] = *(v8 + 64);
  v3[62] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[63] = v6;
  v3[64] = *(v6 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[68] = swift_task_alloc();
  v3[42] = a2;
  v3[43] = v2;

  return MEMORY[0x2822009F8](RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v76 = v0;
  v49 = v0[68];
  v1 = v0[67];
  v50 = v0[64];
  v51 = v0[63];
  v56 = v0[62];
  v54 = v0[60];
  v57 = v0[59];
  v53 = v0[51];
  v0[41] = v0;
  v2 = SignpostName.makeRequestPaymentIntentHandledResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v49);
  v3 = Logger.payments.unsafeMutableAddressor();
  v52 = *(v50 + 16);
  v0[69] = v52;
  v0[70] = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v1, v3, v51);
  (*(v54 + 16))(v56, v53, v57);
  v55 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v55, v56, v57);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  *(v59 + 24) = v58;
  v62 = swift_allocObject();
  *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v62 + 24) = v59;
  v0[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v63 = v4;

  *v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[1] = v60;

  v63[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[3] = v61;

  v63[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[5] = v62;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v46 = createStorage<A>(capacity:type:)(0, v44, v44);
    v47 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = buf;
    v72 = v46;
    v73 = v47;
    serialize(_:at:)(2, &v71);
    serialize(_:at:)(1, &v71);
    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_2686B1000, v64, v65, "#RequestPaymentHandleIntentStrategy makeIntentHandledResponse response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v46, 0, v44);
    destroyStorage<A>(_:count:)(v47, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v39 = v48[67];
  v40 = v48[63];
  v38 = v48[64];
  MEMORY[0x277D82BD8](v64);
  v41 = *(v38 + 8);
  v48[72] = v41;
  v48[73] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v39, v40);
  v42 = IntentResolutionRecord.intentResponse.getter();
  v43 = [v42 code];
  v48[44] = v43;
  MEMORY[0x277D82BD8](v42);
  if (v43 == 3)
  {
    v36 = v48[52];

    v48[74] = *(v36 + 16);

    IntentResolutionRecord.app.getter();
    v37 = App.sirikitApp.getter();
    v48[75] = v37;

    v5 = swift_task_alloc();
    v48[76] = v5;
    *v5 = v48[41];
    v5[1] = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v6 = v48[58];

    return RequestPaymentCATs.intentHandledResponse(app:)(v6, v37);
  }

  else
  {
    v8 = v48[65];
    v25 = v48[63];
    v26 = static PaymentIntentCATResponseCode.from(_:)(v43);
    v27 = v9;
    v48[78] = v9;
    v48[37] = v26;
    v48[38] = v9;
    v10 = Logger.payments.unsafeMutableAddressor();
    v52(v8, v10, v25);

    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    oslog = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v29 + 24) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v32 + 24) = v29;
    _allocateUninitializedArray<A>(_:)();
    v33 = v11;

    *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33[1] = v30;

    v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v33[3] = v31;

    v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v33[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v35))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0, v21, v21);
      v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v66 = v22;
      v67 = v23;
      v68 = v24;
      serialize(_:at:)(2, &v66);
      serialize(_:at:)(1, &v66);
      v69 = partial apply for closure #1 in OSLogArguments.append(_:);
      v70 = v30;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
      v69 = partial apply for closure #1 in OSLogArguments.append(_:);
      v70 = v31;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
      v69 = partial apply for closure #1 in OSLogArguments.append(_:);
      v70 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
      _os_log_impl(&dword_2686B1000, oslog, v35, "#RequestPaymentHandleIntentStrategy makeIntentHandledResponse error case: %s", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = v48[65];
    v16 = v48[63];
    v17 = v48[52];
    MEMORY[0x277D82BD8](oslog);
    v41(v15, v16);

    outlined init with copy of GlobalsProviding(v17 + 144, (v48 + 2));

    v18 = v48[5];
    v19 = v48[6];
    __swift_project_boxed_opaque_existential_1(v48 + 2, v18);
    v20 = (*(v19 + 48) + **(v19 + 48));
    v12 = swift_task_alloc();
    v48[79] = v12;
    *v12 = v48[41];
    v12[1] = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v13 = v48[53];
    v14 = v48[51];

    return v20(v13, v14, v18, v19);
  }
}

{
  v4 = *v1;
  *(v4 + 328) = *v1;
  *(v4 + 616) = v0;

  if (v0)
  {
    v2 = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {

    v2 = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 328) = v0;
  v40 = IntentResolutionRecord.intentResponse.getter();
  v41 = [v40 paymentRecord];
  if (v41)
  {
    v38 = *(v39 + 544);
    v36 = *(v39 + 464);
    v37 = *(v39 + 440);
    v34 = *(v39 + 432);
    v31 = *(v39 + 416);
    v33 = *(v39 + 400);
    v35 = *(v39 + 448);
    *(v39 + 392) = v41;
    MEMORY[0x277D82BD8](v40);

    outlined init with copy of GlobalsProviding(v31 + 104, v39 + 176);

    v30 = *(v39 + 200);
    v29 = *(v39 + 208);
    __swift_project_boxed_opaque_existential_1((v39 + 176), v30);
    (*(v29 + 16))(v30);

    BaseStrategy.ttsEnabled.getter();

    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();

    v32 = BaseStrategy.ttsEnabled.getter();

    static PaymentsContextProvider.handleRequestPayment(paymentRecord:needsSDA:)(v41, v32 & 1, v34);
    v1 = type metadata accessor for NLContextUpdate();
    (*(*(v1 - 8) + 56))(v34, 0, 1);
    *(v39 + 256) = 0;
    *(v39 + 264) = 0;
    *(v39 + 272) = 0;
    *(v39 + 280) = 0;
    *(v39 + 288) = 0;
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v33[3] = type metadata accessor for AceOutput();
    v33[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v33);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v39 + 256));
    outlined destroy of NLContextUpdate?(v34);

    __swift_destroy_boxed_opaque_existential_0((v39 + 216));
    __swift_destroy_boxed_opaque_existential_0((v39 + 176));
    MEMORY[0x277D82BD8](v41);
    (*(v35 + 8))(v36, v37);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v38);

    v2 = *(*(v39 + 328) + 8);
  }

  else
  {
    v25 = *(v39 + 552);
    v3 = *(v39 + 528);
    v24 = *(v39 + 504);
    MEMORY[0x277D82BD8](v40);
    v4 = Logger.payments.unsafeMutableAddressor();
    v25(v3, v4, v24);
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v28 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v26))
    {
      v5 = *(v39 + 616);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v39 + 360) = buf;
      *(v39 + 368) = v21;
      *(v39 + 376) = v22;
      serialize(_:at:)(0, (v39 + 360));
      serialize(_:at:)(0, (v39 + 360));
      *(v39 + 384) = v28;
      v23 = swift_task_alloc();
      v23[2] = v39 + 360;
      v23[3] = v39 + 368;
      v23[4] = v39 + 376;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v5)
      {
      }

      _os_log_impl(&dword_2686B1000, oslog, v26, "#RequestPaymentHandleIntentStrategy found no paymentRecord in intent response, throwing exception", buf, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v11 = *(v39 + 576);
    v18 = *(v39 + 544);
    v9 = *(v39 + 528);
    v10 = *(v39 + 504);
    v16 = *(v39 + 464);
    v17 = *(v39 + 440);
    v15 = *(v39 + 448);
    MEMORY[0x277D82BD8](oslog);
    v11(v9, v10);
    type metadata accessor for INRequestPaymentIntent();
    v14 = [swift_getObjCClassFromMetadata() description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v7;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v8 = v13;
    *(v8 + 8) = v12;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v14);
    (*(v15 + 8))(v16, v17);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v18);

    v2 = *(*(v39 + 328) + 8);
  }

  return v2();
}

{
  v4 = *v1;
  *(v4 + 328) = *v1;
  *(v4 + 640) = v0;

  if (v0)
  {
    v2 = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v2 = RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[56];
  v2 = v0[55];
  v3 = v0[53];
  v0[41] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[68];
    outlined destroy of TemplatingResult?(v27[53]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[39] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[40] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[39];
    v13 = v27[40];

    outlined destroy of String.UTF8View((v27 + 39));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v5 = *(v27[41] + 8);
  }

  else
  {
    v26 = v27[68];
    v24 = v27[57];
    v25 = v27[55];
    v22 = v27[54];
    v20 = v27[52];
    v21 = v27[50];
    v23 = v27[56];
    (*(v23 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v22, 1);
    v27[17] = 0;
    v27[18] = 0;
    v27[19] = 0;
    v27[20] = 0;
    v27[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21[3] = type metadata accessor for AceOutput();
    v21[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v21);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v22);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v23 + 8))(v24, v25);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v26);

    v5 = *(v27[41] + 8);
  }

  return v5();
}

{
  v3 = *(v0 + 544);
  *(v0 + 328) = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v0 + 328) + 8);

  return v1();
}

{
  v3 = v0[68];
  v0[41] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[41] + 8);

  return v1();
}

uint64_t implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intentResponse.getter();
  type metadata accessor for INRequestPaymentIntentResponse();
  lazy protocol witness table accessor for type INRequestPaymentIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[31] = v2;
  v3[30] = a2;
  v3[29] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[32] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[39] = swift_task_alloc();
  v3[23] = a2;
  v3[24] = v2;

  return MEMORY[0x2822009F8](RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:), 0);
}

uint64_t RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)()
{
  v21 = v0[39];
  v1 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v0[22] = v0;
  v2 = SignpostName.makeRequestPaymentContinueInAppResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v21);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v3, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v20 + 200) = buf;
    *(v20 + 208) = v17;
    *(v20 + 216) = v18;
    serialize(_:at:)(0, (v20 + 200));
    serialize(_:at:)(0, (v20 + 200));
    *(v20 + 224) = v26;
    v19 = swift_task_alloc();
    v19[2] = v20 + 200;
    v19[3] = v20 + 208;
    v19[4] = v20 + 216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#RequestPaymentHandleIntentStrategy makeContinueInAppResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v17, 0, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v20 + 304);
  v9 = *(v20 + 288);
  v10 = *(v20 + 248);
  v7 = *(v20 + 296);
  MEMORY[0x277D82BD8](v25);
  (*(v7 + 8))(v8, v9);

  outlined init with copy of GlobalsProviding(v10 + 144, v20 + 16);

  v12 = *(v20 + 40);
  v13 = *(v20 + 48);
  __swift_project_boxed_opaque_existential_1((v20 + 16), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v11 = IntentResolutionRecord.app.getter();
  *(v20 + 320) = v11;
  v14 = (*(v13 + 40) + **(v13 + 40));
  v4 = swift_task_alloc();
  *(v20 + 328) = v4;
  *v4 = *(v20 + 176);
  v4[1] = RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:);
  v5 = *(v20 + 280);

  return v14(v5, 0, v11, v12, v13);
}

{
  v4 = *v1;
  *(v4 + 176) = *v1;
  *(v4 + 336) = v0;

  if (v0)
  {
    v2 = RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:);
  }

  else
  {

    v2 = RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[39];
  v11 = v0[35];
  v8 = v0[34];
  v9 = v0[33];
  v12 = v0[32];
  v6 = v0[31];
  v7 = v0[29];
  v0[22] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 7));

  v5 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v12, 1);
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 17);
  outlined destroy of NLContextUpdate?(v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v8 + 8))(v11, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v10);

  v2 = *(v0[22] + 8);

  return v2();
}

{
  v3 = v0[39];
  v0[22] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v4 + 176) + 8);

  return v1();
}

uint64_t RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[33] = v2;
  v3[32] = a2;
  v3[31] = a1;
  v3[24] = v3;
  v3[25] = 0;
  v3[26] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v3[35] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[42] = swift_task_alloc();
  v3[25] = a2;
  v3[26] = v2;

  return MEMORY[0x2822009F8](RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v21 = v0[42];
  v1 = v0[41];
  v22 = v0[40];
  v23 = v0[39];
  v0[24] = v0;
  v2 = SignpostName.makeRequestPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v21);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v3, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v20 + 216) = buf;
    *(v20 + 224) = v17;
    *(v20 + 232) = v18;
    serialize(_:at:)(0, (v20 + 216));
    serialize(_:at:)(0, (v20 + 216));
    *(v20 + 240) = v26;
    v19 = swift_task_alloc();
    v19[2] = v20 + 216;
    v19[3] = v20 + 224;
    v19[4] = v20 + 232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#RequestPaymentHandleIntentStrategy makeFailureHandlingIntentResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v17, 0, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v20 + 328);
  v10 = *(v20 + 312);
  v11 = *(v20 + 264);
  v8 = *(v20 + 320);
  MEMORY[0x277D82BD8](v25);
  (*(v8 + 8))(v9, v10);

  outlined init with copy of GlobalsProviding(v11 + 144, v20 + 16);

  v12 = *(v20 + 40);
  v13 = *(v20 + 48);
  __swift_project_boxed_opaque_existential_1((v20 + 16), v12);
  v14 = (*(v13 + 48) + **(v13 + 48));
  v4 = swift_task_alloc();
  *(v20 + 344) = v4;
  *v4 = *(v20 + 192);
  v4[1] = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v5 = *(v20 + 280);
  v6 = *(v20 + 256);

  return v14(v5, v6, v12, v13);
}

{
  v4 = *v1;
  *(v4 + 192) = *v1;
  *(v4 + 352) = v0;

  if (v0)
  {
    v2 = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v2 = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[35];
  v0[24] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[42];
    outlined destroy of TemplatingResult?(v27[35]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[22] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[23] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[22];
    v13 = v27[23];

    outlined destroy of String.UTF8View((v27 + 22));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v5 = *(v27[24] + 8);
  }

  else
  {
    v24 = v27[42];
    v25 = v27[38];
    v23 = v27[36];
    v26 = v27[34];
    v20 = v27[33];
    v21 = v27[31];
    v22 = v27[37];
    (*(v22 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
    v27[17] = 0;
    v27[18] = 0;
    v27[19] = 0;
    v27[20] = 0;
    v27[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21[3] = type metadata accessor for AceOutput();
    v21[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v21);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v22 + 8))(v25, v23);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v24);

    v5 = *(v27[24] + 8);
  }

  return v5();
}

{
  v3 = v0[42];
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[24] + 8);

  return v1();
}

uint64_t RequestPaymentHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t INRequestPaymentIntentResponseCode.speakable.getter(uint64_t a1)
{
  v9 = a1;
  v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  INBalanceType.rawValue.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v3);

  v6 = v7;
  v5 = v8;

  outlined destroy of String.UTF8View(&v7);
  MEMORY[0x26D620710](v6, v5);
  return SpeakableString.init(print:speak:)();
}

uint64_t sub_268745EA8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);

  return implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for SABaseCommand();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for RequestPaymentHandleIntentStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentHandleIntentStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata accessor for SABaseCommand()
{
  v2 = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SABaseCommand);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INRequestPaymentIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject)
  {
    type metadata accessor for INRequestPaymentIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentAccountInformation.description.getter(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v39 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v40 = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType: ", 0xDuLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  v38 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(a1, 0);
  if (v38 == 4)
  {
    v6 = Constants.PaymentAccountBalanceType.rawValue.getter(3);
  }

  else
  {
    v6 = Constants.PaymentAccountBalanceType.rawValue.getter(v38);
  }

  v37[0] = v6;
  v37[1] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v37);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\nnickname: ", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v8);

  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v22 = [a2 spokenPhrase];
    v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23._object = v9;
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v35 = v24;
  if (v24._object)
  {
    v36 = v35;
  }

  else
  {
    v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  }

  v34 = v36;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v34);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\norganizationName: ", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v10);

  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v19 = [a3 spokenPhrase];
    v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20._object = v11;
    MEMORY[0x277D82BD8](a3);
    MEMORY[0x277D82BD8](v19);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v32 = v21;
  if (v21._object)
  {
    v33 = v32;
  }

  else
  {
    v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  }

  v31 = v33;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v31);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\ntype: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v12);

  v30 = static Constants.PaymentAccountType.fromINAccountType(_:)(a4);
  if (v30 == 9)
  {
    v13 = Constants.PaymentAccountType.rawValue.getter(0);
  }

  else
  {
    v13 = Constants.PaymentAccountType.rawValue.getter(v30);
  }

  v29[0] = v13;
  v29[1] = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v29);
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v15);

  v18 = v39;
  v17 = v40;

  outlined destroy of String.UTF8View(&v39);
  return MEMORY[0x26D620710](v18, v17);
}

NSJSONWritingOptions static PaymentAccountInformation.from(_:)(uint64_t a1)
{
  v158 = a1;
  v173 = 0;
  v199 = 0;
  v157 = 0;
  v194 = 0;
  v191 = 0u;
  v190 = 0u;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v168 = type metadata accessor for Logger();
  v159 = v168;
  v160 = *(v168 - 8);
  v167 = v160;
  v161 = v160;
  v163 = *(v160 + 64);
  v1 = MEMORY[0x28223BE20](v158, v168);
  v165 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v49 - v165;
  v2 = MEMORY[0x28223BE20](v1, &v49 - v165);
  v164 = &v49 - v165;
  v3 = MEMORY[0x28223BE20](v2, &v49 - v165);
  v4 = &v49 - v165;
  v166 = &v49 - v165;
  v199 = v3;
  v5 = Logger.payments.unsafeMutableAddressor();
  v169 = *(v167 + 16);
  v170 = (v167 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v169(v4, v5, v168);
  v176 = Logger.logObject.getter();
  v171 = v176;
  v175 = static os_log_type_t.debug.getter();
  v172 = v175;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v177 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v176, v175))
  {
    v6 = v157;
    v148 = static UnsafeMutablePointer.allocate(capacity:)();
    v144 = v148;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v146 = 0;
    v149 = createStorage<A>(capacity:type:)(0, v145, v145);
    v147 = v149;
    v150 = createStorage<A>(capacity:type:)(v146, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v181 = v148;
    v180 = v149;
    v179 = v150;
    v151 = 0;
    v152 = &v181;
    serialize(_:at:)(0, &v181);
    serialize(_:at:)(v151, v152);
    v178 = v177;
    v153 = &v49;
    MEMORY[0x28223BE20](&v49, v7);
    v154 = &v49 - 6;
    *(&v49 - 4) = v8;
    *(&v49 - 3) = &v180;
    *(&v49 - 2) = &v179;
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v156 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v171, v172, "#PaymentAccountInformation attempting to extract account search parameters", v144, 2u);
      v142 = 0;
      destroyStorage<A>(_:count:)(v147, 0, v145);
      destroyStorage<A>(_:count:)(v150, v142, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v144, MEMORY[0x277D84B78]);

      v143 = v156;
    }
  }

  else
  {

    v143 = v157;
  }

  v139 = v143;

  v140 = *(v161 + 8);
  v141 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v140(v166, v159);

  if (v158)
  {
    v138 = v158;
    v136 = v158;
    v194 = v158;
    isa = 0;
    v137._countAndFlagsBits = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
    v137._object = v9;
    if (v9)
    {
      v135 = v137;
      v134 = v137;
      v182 = v137;
      type metadata accessor for INSpeakableString();

      v10.super.isa = INSpeakableString.__allocating_init(spokenPhrase:)(v134).super.isa;
      v11 = isa;
      isa = v10.super.isa;
    }

    v192 = 0;
    v133 = dispatch thunk of UsoEntity_common_PaymentAccount.bank.getter();
    if (v133)
    {
      v132 = v133;
      v127 = v133;
      v128 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v129 = v12;

      v130 = v128;
      v131 = v129;
    }

    else
    {
      v130 = 0;
      v131 = 0;
    }

    v125 = v131;
    v126 = v130;
    if (v131)
    {
      v123 = v126;
      v124 = v125;
      v122._object = v125;
      v122._countAndFlagsBits = v126;
      v183 = v126;
      v184 = v125;
      type metadata accessor for INSpeakableString();

      v13.super.isa = INSpeakableString.__allocating_init(spokenPhrase:)(v122).super.isa;
      v14 = v192;
      v192 = v13.super.isa;
    }

    v94 = UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter();
    v92 = isa;
    v15 = isa;
    v93 = v192;
    v16 = v192;
    UsoEntity_common_PaymentAccount.accountAsINType.getter();
    v17 = v164;
    v99 = NSJSONWritingOptions.init(rawValue:)(v94);
    v100 = v18;
    v101 = v19;
    v102 = v20;
    v95 = v99;
    v96 = v18;
    v97 = v19;
    v98 = v20;
    *&v190 = v99;
    *(&v190 + 1) = v18;
    *&v191 = v19;
    *(&v191 + 1) = v20;
    v21 = Logger.payments.unsafeMutableAddressor();
    v169(v17, v21, v159);
    v22 = v100;
    v23 = v101;
    v111 = 7;
    v24 = swift_allocObject();
    v25 = v100;
    v26 = v101;
    v27 = v102;
    v103 = v24;
    v24[2] = v99;
    v24[3] = v25;
    v24[4] = v26;
    v24[5] = v27;

    v106 = 32;
    v110 = 32;
    v28 = swift_allocObject();
    v29 = v103;
    v112 = v28;
    *(v28 + 16) = partial apply for implicit closure #1 in static PaymentAccountInformation.from(_:);
    *(v28 + 24) = v29;

    v121 = Logger.logObject.getter();
    v104 = v121;
    v120 = static os_log_type_t.debug.getter();
    v105 = v120;
    v107 = 17;
    v115 = swift_allocObject();
    v108 = v115;
    *(v115 + 16) = v106;
    v116 = swift_allocObject();
    v109 = v116;
    *(v116 + 16) = 8;
    v30 = swift_allocObject();
    v31 = v112;
    v113 = v30;
    *(v30 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v113;
    v119 = v32;
    v114 = v32;
    *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v32 + 24) = v33;
    v117 = _allocateUninitializedArray<A>(_:)();
    v118 = v34;

    v35 = v115;
    v36 = v118;
    *v118 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[1] = v35;

    v37 = v116;
    v38 = v118;
    v118[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[3] = v37;

    v39 = v118;
    v40 = v119;
    v118[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[5] = v40;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v121, v120))
    {
      v41 = v139;
      v85 = static UnsafeMutablePointer.allocate(capacity:)();
      v82 = v85;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v86 = createStorage<A>(capacity:type:)(0, v83, v83);
      v84 = v86;
      v88 = 1;
      v87 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v189 = v85;
      v188 = v86;
      v187 = v87;
      v89 = &v189;
      serialize(_:at:)(2, &v189);
      serialize(_:at:)(v88, v89);
      v185 = partial apply for closure #1 in OSLogArguments.append(_:);
      v186 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v185, v89, &v188, &v187);
      v90 = v41;
      v91 = v41;
      if (v41)
      {
        v80 = 0;

        __break(1u);
      }

      else
      {
        v185 = partial apply for closure #1 in OSLogArguments.append(_:);
        v186 = v109;
        closure #1 in osLogInternal(_:log:type:)(&v185, &v189, &v188, &v187);
        v78 = 0;
        v79 = 0;
        v185 = partial apply for closure #1 in OSLogArguments.append(_:);
        v186 = v114;
        closure #1 in osLogInternal(_:log:type:)(&v185, &v189, &v188, &v187);
        v76 = 0;
        v77 = 0;
        _os_log_impl(&dword_2686B1000, v104, v105, "#PaymentAccountInformation obtained the following parameters from the provided entity:\n%s", v82, 0xCu);
        destroyStorage<A>(_:count:)(v84, 0, v83);
        destroyStorage<A>(_:count:)(v87, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v82, MEMORY[0x277D84B78]);

        v81 = v76;
      }
    }

    else
    {
      v42 = v139;

      v81 = v42;
    }

    v70 = v81;

    v140(v164, v159);
    outlined destroy of SFRichText?(&v192);
    outlined destroy of SFRichText?(&isa);

    v71 = v95;
    v72 = v96;
    v73 = v97;
    v74 = v98;
    v75 = v70;
  }

  else
  {
    v43 = v162;
    v44 = Logger.payments.unsafeMutableAddressor();
    v169(v43, v44, v159);
    v68 = Logger.logObject.getter();
    v65 = v68;
    v67 = static os_log_type_t.debug.getter();
    v66 = v67;
    v69 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v68, v67))
    {
      v45 = v139;
      v56 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = v56;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = 0;
      v57 = createStorage<A>(capacity:type:)(0, v53, v53);
      v55 = v57;
      v58 = createStorage<A>(capacity:type:)(v54, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v198 = v56;
      v197 = v57;
      v196 = v58;
      v59 = 0;
      v60 = &v198;
      serialize(_:at:)(0, &v198);
      serialize(_:at:)(v59, v60);
      v195 = v69;
      v61 = &v49;
      MEMORY[0x28223BE20](&v49, v46);
      v62 = &v49 - 6;
      *(&v49 - 4) = v47;
      *(&v49 - 3) = &v197;
      *(&v49 - 2) = &v196;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v64 = v45;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v65, v66, "#PaymentAccountInformation entity provided was nil, early returning", v52, 2u);
        v50 = 0;
        destroyStorage<A>(_:count:)(v55, 0, v53);
        destroyStorage<A>(_:count:)(v58, v50, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v52, MEMORY[0x277D84B78]);

        v51 = v64;
      }
    }

    else
    {

      v51 = v139;
    }

    v49 = v51;

    v140(v162, v159);
    v71 = 0;
    v72 = 1;
    v73 = 0;
    v74 = 0;
    v75 = v49;
  }

  return v71;
}

INSpeakableString __swiftcall INSpeakableString.__allocating_init(spokenPhrase:)(Swift::String spokenPhrase)
{
  countAndFlagsBits = spokenPhrase._countAndFlagsBits;
  object = spokenPhrase._object;
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INSpeakableString.init(spokenPhrase:)(countAndFlagsBits, object);
}

uint64_t implicit closure #1 in static PaymentAccountInformation.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  result = a1;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id @nonobjc INSpeakableString.init(spokenPhrase:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D620690](a1);
  v5 = [v3 initWithSpokenPhrase_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t sub_268747E84()
{
  MEMORY[0x277D82BD8](*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = lazy protocol witness table accessor for type PaymentAccountInformation and conformance PaymentAccountInformation();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v4, v3, &type metadata for PaymentAccountInformation, v1);
}

unint64_t lazy protocol witness table accessor for type PaymentAccountInformation and conformance PaymentAccountInformation()
{
  v2 = lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation;
  if (!lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INSpeakableString()
{
  v2 = lazy cache variable for type metadata for INSpeakableString;
  if (!lazy cache variable for type metadata for INSpeakableString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSpeakableString);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PaymentAccountInformation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PaymentAccountInformation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TemplatingResult.resultSectionsAsString.getter()
{
  v6 = v0;
  v5 = TemplatingResult.sections.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow17TemplatingSectionVGMd, &_sSay11SiriKitFlow17TemplatingSectionVGMR);
  lazy protocol witness table accessor for type [TemplatingSection] and conformance [A]();
  v2 = Sequence.compactMap<A>(_:)();
  outlined destroy of [SFCardSection](&v5);
  v4 = v2;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v3 = BidirectionalCollection<>.joined(separator:)();

  outlined destroy of [SFCardSection](&v4);
  return v3;
}

uint64_t closure #1 in TemplatingResult.resultSectionsAsString.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  v16 = 0;
  v12 = type metadata accessor for TemplatingText();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v3);
  v11 = &v8 - v8;
  v16 = a1;
  TemplatingSection.content.getter();
  v13 = TemplatingText.text.getter();
  v15 = v4;
  (*(v9 + 8))(v11, v12);
  result = v13;
  v6 = v14;
  v7 = v15;
  *v14 = v13;
  v6[1] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type [TemplatingSection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow17TemplatingSectionVGMd, &_sSay11SiriKitFlow17TemplatingSectionVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A]);
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

id static SKIDirectInvocation.makeButtonPressDirectInvocation(buttonPress:deviceState:)(char a1, void *a2)
{
  v18[3] = 0;
  v19 = a1 & 1;
  v18[4] = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  v16 = static SKIDirectInvocationPayload.from(_:)(0);
  v18[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v9 = v2;
  v18[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(0);
  v18[1] = v3;
  v8 = MEMORY[0x277D837D0];
  _convertToAnyHashable<A>(_:)();
  v4 = Constants.DirectInvocationButtonType.rawValue.getter(a1 & 1);
  v9[8] = v8;
  v9[5] = v4;
  v9[6] = v5;
  _finalizeUninitializedArray<A>(_:)();
  outlined destroy of String.UTF8View(v18);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 setUserData_];
  MEMORY[0x277D82BD8](isa);
  v14 = objc_opt_self();
  v12 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = DeviceState.asInvocationContext.getter();
  v15 = [v12 runSiriKitExecutorCommandWithContext_payload_];
  MEMORY[0x277D82BD8](v13);
  v17 = [v14 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v16);
  return v17;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.catFamily.getter()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.ttsEnabled.getter()
{
  v3[5] = 0;
  outlined init with copy of GlobalsProviding(v0 + 104, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v2 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v2 & 1;
}

void *SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(void *a1, uint64_t a2, void *a3)
{
  v15 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v4 + 24))(v5);
  outlined init with take of CommonLabelsProviding(v14, v11 + 7);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v6 + 16))(v7);
  outlined init with take of CommonLabelsProviding(v13, v11 + 13);

  v11[12] = a2;
  outlined init with copy of GlobalsProviding(a3, v12);
  outlined init with take of CommonLabelsProviding(v12, v11 + 2);
  __swift_destroy_boxed_opaque_existential_0(a3);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v8 = a1;
  v9 = a2;
  v11 = v3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v12 = 0;
  v17 = type metadata accessor for Parse();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v9);
  v16 = &v7 - v10;
  v20 = v8;
  v19 = v4;
  v18 = v3;
  Input.parse.getter();
  v5 = type metadata accessor for INSearchForAccountsIntent();
  static FlowUtil.actionForInput(parse:intentType:)(v16, v5, &protocol witness table for INSearchForAccountsIntent, v13);
  return (*(v14 + 8))(v16, v17);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 776) = v3;
  *(v4 + 768) = a3;
  *(v4 + 760) = a2;
  *(v4 + 752) = a1;
  *(v4 + 632) = v4;
  *(v4 + 640) = 0;
  *(v4 + 648) = 0;
  *(v4 + 656) = 0;
  *(v4 + 520) = 0;
  *(v4 + 528) = 0;
  *(v4 + 968) = 0;
  *(v4 + 584) = 0;
  *(v4 + 592) = 0;
  *(v4 + 672) = 0;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0;
  *(v4 + 600) = 0;
  *(v4 + 608) = 0;
  *(v4 + 704) = 0;
  *(v4 + 720) = 0;
  *(v4 + 728) = 0;
  *(v4 + 616) = 0;
  *(v4 + 624) = 0;
  *(v4 + 744) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v4 + 784) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v4 + 808) = v5;
  *(v4 + 816) = *(v5 - 8);
  *(v4 + 824) = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  *(v4 + 832) = v6;
  *(v4 + 840) = *(v6 - 8);
  *(v4 + 848) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 856) = v7;
  *(v4 + 864) = *(v7 - 8);
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 640) = a2;
  *(v4 + 648) = a3;
  *(v4 + 656) = v3;

  return MEMORY[0x2822009F8](SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v121 = v0;
  v1 = v0[110];
  v99 = v0[108];
  v100 = v0[107];
  v102 = v0[95];
  v0[79] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v101 = *(v99 + 16);
  v101(v1, v2, v100);
  outlined init with copy of Any(v102, (v0 + 37));
  v103 = swift_allocObject();
  outlined init with take of Any((v0 + 37), v103 + 16);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  v105 = swift_allocObject();
  *(v105 + 16) = 32;
  v106 = swift_allocObject();
  *(v106 + 16) = 8;
  v104 = swift_allocObject();
  *(v104 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
  *(v104 + 24) = v103;
  v107 = swift_allocObject();
  *(v107 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v107 + 24) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v108 = v3;

  *v108 = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[1] = v105;

  v108[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[3] = v106;

  v108[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[5] = v107;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v109, v110))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(0, v94, v94);
    v97 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v116 = buf;
    v117 = v96;
    v118 = v97;
    serialize(_:at:)(2, &v116);
    serialize(_:at:)(1, &v116);
    v119 = partial apply for closure #1 in OSLogArguments.append(_:);
    v120 = v105;
    closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
    v119 = partial apply for closure #1 in OSLogArguments.append(_:);
    v120 = v106;
    closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
    v119 = partial apply for closure #1 in OSLogArguments.append(_:);
    v120 = v107;
    closure #1 in osLogInternal(_:log:type:)(&v119, &v116, &v117, &v118);
    _os_log_impl(&dword_2686B1000, v109, v110, "#SearchForAccountsNeedsConfirmationStrategy makePromptForConfirmation, itemToConfirm %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v96, 0, v94);
    destroyStorage<A>(_:count:)(v97, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v86 = *(v98 + 880);
  v87 = *(v98 + 856);
  v90 = *(v98 + 848);
  v91 = *(v98 + 832);
  v85 = *(v98 + 864);
  v89 = *(v98 + 840);
  MEMORY[0x277D82BD8](v109);
  v88 = *(v85 + 8);
  v88(v86, v87);
  *(v98 + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  *(v98 + 896) = v4;
  *(v98 + 520) = rawValue._countAndFlagsBits;
  *(v98 + 528) = v4;
  (*(v89 + 8))(v90, v91);

  v5.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {

    *(v98 + 536) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v98 + 544) = v31;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v33 = type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v33);
    v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v34);

    v39 = *(v98 + 536);
    v38 = *(v98 + 544);

    outlined destroy of String.UTF8View(v98 + 536);
    v41 = MEMORY[0x26D620710](v39, v38);
    v40 = v35;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v36 = rawValue;
    *(v36 + 16) = v41;
    *(v36 + 24) = v40;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0;
    *(v36 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    *(v98 + 968) = v5;
    *(v98 + 552) = 0;
    *(v98 + 560) = 0;
    if (v5.value)
    {
      if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_accountType)
      {
        outlined init with copy of Any(*(v98 + 760), v98 + 456);
        if (swift_dynamicCast())
        {
          v81 = *(v98 + 712);
          v82 = 0;
        }

        else
        {
          v81 = 0;
          v82 = 1;
        }

        if ((v82 & 1) == 0)
        {
          *(v98 + 720) = v81;
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v8 & 1) == 0)
          {
            *(v98 + 728) = v7;
            v80 = static Constants.PaymentAccountType.fromINAccountType(_:)(v7);
            if (v80 == 9)
            {
              v78 = 0;
              v79 = 0;
            }

            else
            {
              v78 = Constants.PaymentAccountType.rawValue.getter(v80);
              v79 = v9;
            }

            if (v79)
            {
              *(v98 + 616) = v78;
              *(v98 + 624) = v79;

              *(v98 + 552) = v78;
              *(v98 + 560) = v79;
            }
          }
        }
      }

      else if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_organizationName)
      {
        outlined init with copy of Any(*(v98 + 760), v98 + 424);
        type metadata accessor for INSpeakableString();
        if (swift_dynamicCast())
        {
          v77 = *(v98 + 696);
        }

        else
        {
          v77 = 0;
        }

        if (v77)
        {
          *(v98 + 704) = v77;
          v76 = [v77 spokenPhrase];
          *(v98 + 552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v98 + 560) = v10;

          MEMORY[0x277D82BD8](v76);
          MEMORY[0x277D82BD8](v77);
        }
      }

      else
      {
        outlined init with copy of Any(*(v98 + 760), v98 + 328);
        v11 = swift_dynamicCast();
        if (v11)
        {
          v74 = *(v98 + 664);
          v75 = 0;
        }

        else
        {
          v74 = 0;
          v75 = 1;
        }

        if ((v75 & 1) == 0)
        {
          *(v98 + 680) = v74;
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v13 & 1) == 0)
          {
            *(v98 + 688) = v12;
            v73 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(v12, 0);
            if (v73 == 4)
            {
              v71 = 0;
              v72 = 0;
            }

            else
            {
              v71 = Constants.PaymentAccountBalanceType.rawValue.getter(v73);
              v72 = v14;
            }

            if (v72)
            {
              *(v98 + 600) = v71;
              *(v98 + 608) = v72;

              *(v98 + 552) = v71;
              *(v98 + 560) = v72;
            }
          }
        }
      }
    }

    else
    {
      outlined init with copy of Any(*(v98 + 760), v98 + 488);
      type metadata accessor for INSpeakableString();
      if (swift_dynamicCast())
      {
        v84 = *(v98 + 736);
      }

      else
      {
        v84 = 0;
      }

      if (v84)
      {
        *(v98 + 744) = v84;
        v83 = [v84 spokenPhrase];
        *(v98 + 552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v98 + 560) = v6;

        MEMORY[0x277D82BD8](v83);
        MEMORY[0x277D82BD8](v84);
      }
    }

    v69 = *(v98 + 552);
    v70 = *(v98 + 560);
    *(v98 + 904) = v70;

    if (v70)
    {
      v65 = *(v98 + 800);
      v66 = *(v98 + 792);
      v15 = *(v98 + 776);
      *(v98 + 584) = v69;
      *(v98 + 592) = v70;
      *(v98 + 912) = *(v15 + 96);

      SearchForAccountsSlots.rawValue.getter(value);
      SpeakableString.init(print:speak:)();
      v67 = type metadata accessor for SpeakableString();
      v68 = *(*(v67 - 8) + 56);
      v68(v65);

      SpeakableString.init(print:speak:)();
      (v68)(v66, 0, 1, v67);
      v16 = swift_task_alloc();
      *(v98 + 920) = v16;
      *v16 = *(v98 + 632);
      v16[1] = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
      v17 = *(v98 + 824);
      v18 = *(v98 + 800);
      v19 = *(v98 + 792);

      return SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)(v17, v18, v19);
    }

    v21 = *(v98 + 872);
    v55 = *(v98 + 856);
    v56 = *(v98 + 760);
    v22 = Logger.payments.unsafeMutableAddressor();
    v101(v21, v22, v55);
    outlined init with copy of Any(v56, v98 + 360);
    v57 = swift_allocObject();
    outlined init with take of Any(v98 + 360, v57 + 16);
    oslog = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
    *(v58 + 24) = v57;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v61 + 24) = v58;
    _allocateUninitializedArray<A>(_:)();
    v62 = v23;

    *v62 = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[1] = v59;

    v62[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[3] = v60;

    v62[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[5] = v61;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v64))
    {
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v53 = createStorage<A>(capacity:type:)(0, v51, v51);
      v54 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v111 = v52;
      v112 = v53;
      v113 = v54;
      serialize(_:at:)(2, &v111);
      serialize(_:at:)(1, &v111);
      v114 = partial apply for closure #1 in OSLogArguments.append(_:);
      v115 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
      v114 = partial apply for closure #1 in OSLogArguments.append(_:);
      v115 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
      v114 = partial apply for closure #1 in OSLogArguments.append(_:);
      v115 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
      _os_log_impl(&dword_2686B1000, oslog, v64, "#SearchForAccountsNeedsConfirmationStrategy failed to convert itemToConfirm %s into a valid slot value", v52, 0xCu);
      destroyStorage<A>(_:count:)(v53, 0, v51);
      destroyStorage<A>(_:count:)(v54, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v52, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v42 = *(v98 + 872);
    v43 = *(v98 + 856);
    v44 = *(v98 + 760);
    MEMORY[0x277D82BD8](oslog);
    v88(v42, v43);

    outlined init with copy of Any(v44, v98 + 392);
    v47 = String.init<A>(describing:)();
    v48 = v24;
    *(v98 + 568) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v98 + 576) = v25;
    v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v26);

    v27 = type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v27);
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v28);

    v46 = *(v98 + 568);
    v45 = *(v98 + 576);

    outlined destroy of String.UTF8View(v98 + 568);
    v50 = MEMORY[0x26D620710](v46, v45);
    v49 = v29;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v30 = rawValue;
    *(v30 + 16) = v47;
    *(v30 + 24) = v48;
    *(v30 + 32) = v50;
    *(v30 + 40) = v49;
    *(v30 + 48) = 9;
    swift_willThrow();
    outlined destroy of String.UTF8View(v98 + 552);
  }

  v37 = *(*(v98 + 632) + 8);

  return v37();
}

{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 632) = *v1;
  *(v6 + 928) = v0;

  if (v0)
  {
    v2 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v4 = *(v5 + 784);
    outlined destroy of SpeakableString?(*(v5 + 776));
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0;
  v3 = v0[97];
  v0[79] = v0;
  outlined init with copy of GlobalsProviding(v3 + 16, (v0 + 17));
  outlined init with copy of GlobalsProviding(v3 + 104, (v0 + 22));
  v4 = *(v3 + 96);

  v7[3] = type metadata accessor for SearchForAccountsCATs(0);
  v7[4] = &protocol witness table for SearchForAccountsCATs;
  v7[0] = v4;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v0 + 22, v7, v0 + 2);
  v6 = ParameterResolutionRecord.app.getter();
  v0[117] = v6;
  v1 = swift_task_alloc();
  *(v5 + 944) = v1;
  *v1 = *(v5 + 632);
  v1[1] = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(v6);
}

{
  v9 = v0[119];
  v12 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v13 = v0[98];
  v1 = v0[97];
  v8 = v0[94];
  v0[79] = v0;
  v0[84] = v9;
  outlined init with copy of GlobalsProviding(v1 + 104, (v0 + 27));
  SearchForAccountsNeedsConfirmationStrategy.ttsEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  MEMORY[0x277D82BE0](v9);
  *v7 = v9;
  _finalizeUninitializedArray<A>(_:)();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v13);
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v13, 0, 1);
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 32);
  outlined destroy of NLContextUpdate?(v13);

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v12, v11);

  outlined destroy of String.UTF8View((v0 + 69));

  v5 = *(v0[79] + 8);

  return v5();
}

{
  v4 = v0[100];
  v1 = v0[99];
  v0[79] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  outlined destroy of String.UTF8View((v0 + 69));

  v2 = *(v0[79] + 8);

  return v2();
}

{
  v5 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v0[79] = v0;

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v3 + 8))(v5, v4);

  outlined destroy of String.UTF8View((v0 + 69));

  v1 = *(v0[79] + 8);

  return v1();
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1)
{
  v6 = *v2;
  v5 = (*v2 + 16);
  v6[79] = *v2;
  v6[119] = a1;
  v6[120] = v1;

  if (v1)
  {
    v3 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {

    outlined destroy of ConfirmationViewBuilder(v5);
    v3 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  v4[13] = v6;
  v9 = *(v6 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v38 = v0;
  v1 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v23 = v0[16];
  v21 = v0[14];
  v24 = v0[13];
  v20 = v0[8];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  (*(v21 + 16))(v23, v20, v24);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = swift_allocObject();
  (*(v21 + 32))(v25 + v22, v23, v24);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v3;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_2686B1000, v31, v32, "#SearchForAccountsNeedsConfirmationStrategy parseConfirmationResponse for intent %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v17[19];
  v7 = v17[17];
  v11 = v17[12];
  v9 = v17[10];
  v12 = v17[9];
  v6 = v17[18];
  v8 = v17[11];
  MEMORY[0x277D82BD8](v31);
  (*(v6 + 8))(v10, v7);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v12);
  (*(v8 + 8))(v11, v9);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSearchForAccountsIntent();
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  v4 = *(v17[2] + 8);

  return v4();
}

uint64_t implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSearchForAccountsIntent();
  lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v2;
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy;

  return MEMORY[0x2821B9E10](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E28](a1, a2, a3, v7, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E38](a1, a2, a3, v7, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E30](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E40](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v9, a7);
}

uint64_t sub_26874CDB0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);

  return implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)();
}

unint64_t lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject)
  {
    type metadata accessor for INSearchForAccountsIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsViewBuilder.catFamily.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SearchForAccountsViewBuilder.init(catFamily:deviceState:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v9 = a1;
  v8 = a2;

  __b[0] = a1;
  outlined init with copy of GlobalsProviding(a2, v7);
  outlined init with take of CommonLabelsProviding(v7, &__b[1]);
  outlined init with copy of SearchForAccountsViewBuilder(__b, a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return outlined destroy of SearchForAccountsViewBuilder(__b);
}

void *outlined init with copy of SearchForAccountsViewBuilder(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v2 = a1[4];
  a2[4] = v2;
  a2[5] = a1[5];
  (**(v2 - 8))(a2 + 1, a1 + 1);
  return a2;
}

uint64_t outlined destroy of SearchForAccountsViewBuilder(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0((a1 + 8));
  return a1;
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildSnippets(for:app:intent:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)()
{
  v1 = v0[15];
  v0[7] = v0;
  outlined init with copy of GlobalsProviding(v1 + 8, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v11)
  {
    v2 = swift_task_alloc();
    v10[16] = v2;
    *v2 = v10[7];
    v2[1] = SearchForAccountsViewBuilder.buildSnippets(for:app:intent:);
    v3 = v10[14];
    v4 = v10[13];
    v5 = v10[12];

    return SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(v5, v4, v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v10[17] = v7;
    *v7 = v10[7];
    v7[1] = SearchForAccountsViewBuilder.buildSnippets(for:app:intent:);
    v8 = v10[13];
    v9 = v10[12];

    return SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(v9, v8);
  }
}

{
  *(v0 + 56) = v0;
  type metadata accessor for SACardSnippet();
  type metadata accessor for SAAceView();
  v3 = _arrayForceCast<A, B>(_:)();

  v1 = *(*(v0 + 56) + 8);

  return v1(v3);
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 56) = *v2;
  v8 = v7 + 56;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

{
  v6 = *v2;
  *(v6 + 56) = *v2;
  *(v6 + 144) = a1;

  if (v1)
  {
    v4 = *(*(v6 + 56) + 8);

    return v4(v3);
  }

  else
  {

    return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildSnippets(for:app:intent:), 0);
  }
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = v3;
  v4[42] = a3;
  v4[41] = a2;
  v4[40] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[32] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v5 = type metadata accessor for Logger();
  v4[44] = v5;
  v4[45] = *(v5 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)()
{
  v163 = v0;
  v1 = v0[40];
  v0[14] = v0;
  v0[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    type metadata accessor for SAAceView();
    v86 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v2 = *(v146 + 392);
    v134 = *(v146 + 352);
    v136 = *(v146 + 320);
    v133 = *(v146 + 360);
    v3 = Logger.payments.unsafeMutableAddressor();
    v135 = *(v133 + 16);
    *(v146 + 400) = v135;
    *(v146 + 408) = (v133 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v135(v2, v3, v134);

    v137 = swift_allocObject();
    *(v137 + 16) = v136;

    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v138 + 24) = v137;

    oslog = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    v140 = swift_allocObject();
    *(v140 + 16) = 32;
    v141 = swift_allocObject();
    *(v141 + 16) = 8;
    v139 = swift_allocObject();
    *(v139 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
    *(v139 + 24) = v138;
    v142 = swift_allocObject();
    *(v142 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v142 + 24) = v139;
    *(v146 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v143 = v4;

    *v143 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[1] = v140;

    v143[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[3] = v141;

    v143[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[5] = v142;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v145))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v131 = createStorage<A>(capacity:type:)(0, v129, v129);
      v132 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v158 = buf;
      v159 = v131;
      v160 = v132;
      serialize(_:at:)(2, &v158);
      serialize(_:at:)(1, &v158);
      v161 = partial apply for closure #1 in OSLogArguments.append(_:);
      v162 = v140;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = partial apply for closure #1 in OSLogArguments.append(_:);
      v162 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = partial apply for closure #1 in OSLogArguments.append(_:);
      v162 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      _os_log_impl(&dword_2686B1000, oslog, v145, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for accounts %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v131, 0, v129);
      destroyStorage<A>(_:count:)(v132, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v124 = *(v146 + 392);
    v125 = *(v146 + 352);
    v123 = *(v146 + 360);
    MEMORY[0x277D82BD8](oslog);
    v126 = *(v123 + 8);
    *(v146 + 424) = v126;
    *(v146 + 432) = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v126(v124, v125);
    type metadata accessor for SASTItemGroup();
    v127 = SAUIAppPunchOut.__allocating_init()();
    *(v146 + 440) = v127;
    *(v146 + 160) = v127;
    *(v146 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    _allocateUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v127 setTemplateItems_];
    v5 = MEMORY[0x277D82BD8](isa);
    if (App.isFirstParty.getter(v5))
    {
      v6 = *(v146 + 384);
      v119 = *(v146 + 352);
      v7 = Logger.payments.unsafeMutableAddressor();
      v135(v6, v7, v119);
      log = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();
      v122 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v120))
      {
        v115 = static UnsafeMutablePointer.allocate(capacity:)();
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v116 = createStorage<A>(capacity:type:)(0, v114, v114);
        v117 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v146 + 288) = v115;
        *(v146 + 296) = v116;
        *(v146 + 304) = v117;
        serialize(_:at:)(0, (v146 + 288));
        serialize(_:at:)(0, (v146 + 288));
        *(v146 + 312) = v122;
        v118 = swift_task_alloc();
        v118[2] = v146 + 288;
        v118[3] = v146 + 296;
        v118[4] = v146 + 304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v120, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet", v115, 2u);
        destroyStorage<A>(_:count:)(v116, 0, v114);
        destroyStorage<A>(_:count:)(v117, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v115, MEMORY[0x277D84B78]);
      }

      v110 = *(v146 + 384);
      v111 = *(v146 + 352);
      MEMORY[0x277D82BD8](log);
      v126(v110, v111);
      v112 = App.appIdentifier.getter();
      v113 = v8;
      if (v8)
      {
        v108 = *(v146 + 336);
        *(v146 + 96) = v112;
        *(v146 + 104) = v8;
        type metadata accessor for SASTApplicationBannerItem();
        MEMORY[0x277D82BE0](v108);

        *(v146 + 280) = SASTApplicationBannerItem.init(intent:appId:)(v108, v112, v113);
        v109 = [v127 templateItems];
        if (v109)
        {
          v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          MEMORY[0x277D82BD8](v109);
          v107 = v106;
        }

        else
        {
          v107 = 0;
        }

        v157 = v107;
        if (!v107)
        {
          return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/SearchForAccountsViewBuilder.swift", 54, 2, 290, 0);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
        Array.append(_:)();
        v105 = Array._bridgeToObjectiveC()().super.isa;

        [v127 setTemplateItems_];
        MEMORY[0x277D82BD8](v105);
      }

      v103 = *(v146 + 320);

      *(v146 + 216) = v103;
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
      IndexingIterator.next()();
      v104 = *(v146 + 224);
      *(v146 + 456) = v104;
      if (v104)
      {
        *(v146 + 232) = v104;
        v10 = swift_task_alloc();
        v11 = v104;
        *(v146 + 464) = v10;
        *v10 = *(v146 + 112);
        v10[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v12 = *(v146 + 328);

        return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v11, v12);
      }

      v93 = *(v146 + 440);
      v92 = *(v146 + 400);
      v13 = *(v146 + 376);
      v91 = *(v146 + 352);
      outlined destroy of [SFCardSection]((v146 + 80));
      v14 = Logger.payments.unsafeMutableAddressor();
      v92(v13, v14, v91);
      MEMORY[0x277D82BE0](v93);
      v94 = swift_allocObject();
      *(v94 + 16) = v93;

      v95 = swift_allocObject();
      *(v95 + 16) = partial apply for implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      *(v95 + 24) = v94;

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      v97 = swift_allocObject();
      *(v97 + 16) = 32;
      v98 = swift_allocObject();
      *(v98 + 16) = 8;
      v96 = swift_allocObject();
      *(v96 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
      *(v96 + 24) = v95;
      v99 = swift_allocObject();
      *(v99 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v99 + 24) = v96;
      _allocateUninitializedArray<A>(_:)();
      v100 = v15;

      *v100 = partial apply for closure #1 in OSLogArguments.append(_:);
      v100[1] = v97;

      v100[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v100[3] = v98;

      v100[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v100[5] = v99;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v101, v102))
      {
        v88 = static UnsafeMutablePointer.allocate(capacity:)();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v89 = createStorage<A>(capacity:type:)(0, v87, v87);
        v90 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v152 = v88;
        v153 = v89;
        v154 = v90;
        serialize(_:at:)(2, &v152);
        serialize(_:at:)(1, &v152);
        v155 = partial apply for closure #1 in OSLogArguments.append(_:);
        v156 = v97;
        closure #1 in osLogInternal(_:log:type:)(&v155, &v152, &v153, &v154);
        v155 = partial apply for closure #1 in OSLogArguments.append(_:);
        v156 = v98;
        closure #1 in osLogInternal(_:log:type:)(&v155, &v152, &v153, &v154);
        v155 = partial apply for closure #1 in OSLogArguments.append(_:);
        v156 = v99;
        closure #1 in osLogInternal(_:log:type:)(&v155, &v152, &v153, &v154);
        _os_log_impl(&dword_2686B1000, v101, v102, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet items %s", v88, 0xCu);
        destroyStorage<A>(_:count:)(v89, 0, v87);
        destroyStorage<A>(_:count:)(v90, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v88, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v84 = *(v146 + 440);
      v82 = *(v146 + 424);
      v80 = *(v146 + 376);
      v81 = *(v146 + 352);
      MEMORY[0x277D82BD8](v101);
      v82(v80, v81);
      type metadata accessor for SAAceView();
      _allocateUninitializedArray<A>(_:)();
      v83 = v16;
      MEMORY[0x277D82BE0](v84);
      *v83 = v84;
      _finalizeUninitializedArray<A>(_:)();
      v85 = v17;
      MEMORY[0x277D82BD8](v84);
      v86 = v85;
      goto LABEL_60;
    }

    v78 = *(v146 + 320);

    *(v146 + 168) = v78;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v79 = *(v146 + 176);
    *(v146 + 488) = v79;
    if (v79)
    {
      *(v146 + 184) = v79;
      type metadata accessor for SASTColumnDataListItem();
      v18 = SAUIAppPunchOut.__allocating_init()();
      *(v146 + 496) = v18;
      *(v146 + 192) = v18;
      *(v146 + 504) = type metadata accessor for SAUIDecoratedText();
      v76 = SAUIAppPunchOut.__allocating_init()();
      *(v146 + 512) = v76;
      *(v146 + 200) = v76;
      *(v146 + 208) = SAUIAppPunchOut.__allocating_init()();
      v19 = [v79 organizationName];
      v77 = v19;
      if (v19)
      {
        v71 = [v19 spokenPhrase];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v20;
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v71);
        v74 = v72;
        v75 = v73;
      }

      else
      {
        v74 = 0;
        v75 = 0;
      }

      *(v146 + 520) = v75;
      if (v75)
      {
        *(v146 + 64) = v74;
        *(v146 + 72) = v75;
        if ((String.isEmpty.getter() & 1) == 0)
        {

          v70 = MEMORY[0x26D620690](v74, v75);

          [v76 setText_];
          MEMORY[0x277D82BD8](v70);
          v21 = swift_task_alloc();
          v22 = v79;
          *(v146 + 528) = v21;
          *v21 = *(v146 + 112);
          v21[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
          v23 = v146 + 208;

          return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v22, v23);
        }
      }

      v69 = [v79 nickname];
      if (v69)
      {
        v64 = [v69 spokenPhrase];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v24;
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v64);
        v67 = v65;
        v68 = v66;
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      *(v146 + 544) = v68;
      if (!v68)
      {
        goto LABEL_45;
      }

      *(v146 + 48) = v67;
      *(v146 + 56) = v68;
      if (String.isEmpty.getter())
      {

LABEL_45:
        v62 = [v79 accountNumber];
        if (v62)
        {
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v26;
          MEMORY[0x277D82BD8](v62);
          v60 = v58;
          v61 = v59;
        }

        else
        {
          v60 = 0;
          v61 = 0;
        }

        if (v61)
        {
          *(v146 + 32) = v60;
          *(v146 + 40) = v61;
          if ((String.isEmpty.getter() & 1) == 0)
          {

            v57 = MEMORY[0x26D620690](v60, v61);

            [v76 setText_];
            MEMORY[0x277D82BD8](v57);
          }
        }

        v56 = *(v146 + 488);
        v27 = swift_task_alloc();
        v11 = v56;
        *(v146 + 568) = v27;
        *v27 = *(v146 + 112);
        v27[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v12 = *(v146 + 328);

        return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v11, v12);
      }

      v63 = MEMORY[0x26D620690](v67, v68);

      [v76 setText_];
      MEMORY[0x277D82BD8](v63);
      v25 = swift_task_alloc();
      v22 = v79;
      *(v146 + 552) = v25;
      *v25 = *(v146 + 112);
      v25[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      v23 = v146 + 208;

      return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v22, v23);
    }

    v46 = *(v146 + 440);
    v45 = *(v146 + 400);
    v28 = *(v146 + 368);
    v44 = *(v146 + 352);
    outlined destroy of [SFCardSection]((v146 + 16));
    v29 = Logger.payments.unsafeMutableAddressor();
    v45(v28, v29, v44);
    MEMORY[0x277D82BE0](v46);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;

    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v48 + 24) = v47;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v49 + 24) = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v52 + 24) = v49;
    _allocateUninitializedArray<A>(_:)();
    v53 = v30;

    *v53 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[1] = v50;

    v53[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[3] = v51;

    v53[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[5] = v52;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v54, v55))
    {
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(0, v40, v40);
      v43 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v147 = v41;
      v148 = v42;
      v149 = v43;
      serialize(_:at:)(2, &v147);
      serialize(_:at:)(1, &v147);
      v150 = partial apply for closure #1 in OSLogArguments.append(_:);
      v151 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v150, &v147, &v148, &v149);
      v150 = partial apply for closure #1 in OSLogArguments.append(_:);
      v151 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v150, &v147, &v148, &v149);
      v150 = partial apply for closure #1 in OSLogArguments.append(_:);
      v151 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v150, &v147, &v148, &v149);
      _os_log_impl(&dword_2686B1000, v54, v55, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets itemGroup items %s", v41, 0xCu);
      destroyStorage<A>(_:count:)(v42, 0, v40);
      destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v41, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v38 = *(v146 + 440);
    v36 = *(v146 + 424);
    v34 = *(v146 + 368);
    v35 = *(v146 + 352);
    MEMORY[0x277D82BD8](v54);
    v36(v34, v35);
    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();
    v37 = v31;
    MEMORY[0x277D82BE0](v38);
    *v37 = v38;
    _finalizeUninitializedArray<A>(_:)();
    v39 = v32;
    MEMORY[0x277D82BD8](v38);
    v86 = v39;
  }

LABEL_60:

  v33 = *(*(v146 + 112) + 8);

  return v33(v86);
}

{
  v55 = v0;
  v1 = v0[59];
  v0[14] = v0;
  v0[30] = v1;
  v0[31] = [v1 itemGroupView];
  if (v0[31])
  {
    v46 = *(v49 + 248);
    MEMORY[0x277D82BE0](v46);
    outlined destroy of SFRichText?((v49 + 248));
    v47 = [v46 templateItems];
    if (v47)
    {
      v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v47);
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    MEMORY[0x277D82BD8](v46);
    v43 = v45;
  }

  else
  {
    outlined destroy of SFRichText?((v49 + 248));
    v43 = 0;
  }

  if (v43)
  {
    v41 = *(v49 + 440);
    *(v49 + 256) = v43;

    *(v49 + 264) = v43;
    v42 = [v41 templateItems];
    if (v42)
    {
      v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v42);
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    *(v49 + 272) = v40;
    if (!*(v49 + 272))
    {
      return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/SearchForAccountsViewBuilder.swift", 54, 2, 299, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();
    Array.append<A>(contentsOf:)();
    if (*(v49 + 272))
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      v38 = isa;
    }

    else
    {
      v38 = 0;
    }

    v35 = *(v49 + 472);
    v36 = *(v49 + 456);
    [*(v49 + 440) setTemplateItems_];
    MEMORY[0x277D82BD8](v38);

    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
  }

  else
  {
    v34 = *(v49 + 456);
    MEMORY[0x277D82BD8](*(v49 + 472));
    MEMORY[0x277D82BD8](v34);
  }

  v33 = *(v49 + 480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v48 = *(v49 + 224);
  *(v49 + 456) = v48;
  if (v48)
  {
    *(v49 + 232) = v48;
    v2 = swift_task_alloc();
    *(v49 + 464) = v2;
    *v2 = *(v49 + 112);
    v2[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    v3 = *(v49 + 328);

    return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v48, v3);
  }

  else
  {
    v23 = *(v49 + 440);
    v22 = *(v49 + 400);
    v5 = *(v49 + 376);
    v21 = *(v49 + 352);
    outlined destroy of [SFCardSection]((v49 + 80));
    v6 = Logger.payments.unsafeMutableAddressor();
    v22(v5, v6, v21);
    MEMORY[0x277D82BE0](v23);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v25 + 24) = v24;

    oslog = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v26 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v29 + 24) = v26;
    _allocateUninitializedArray<A>(_:)();
    v30 = v7;

    *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[1] = v27;

    v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v28;

    v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v32))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v50 = buf;
      v51 = v19;
      v52 = v20;
      serialize(_:at:)(2, &v50);
      serialize(_:at:)(1, &v50);
      v53 = partial apply for closure #1 in OSLogArguments.append(_:);
      v54 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
      if (v33)
      {
      }

      v53 = partial apply for closure #1 in OSLogArguments.append(_:);
      v54 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
      v53 = partial apply for closure #1 in OSLogArguments.append(_:);
      v54 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
      _os_log_impl(&dword_2686B1000, oslog, v32, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet items %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v49 + 440);
    v13 = *(v49 + 424);
    v11 = *(v49 + 376);
    v12 = *(v49 + 352);
    MEMORY[0x277D82BD8](oslog);
    v13(v11, v12);
    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();
    v14 = v8;
    MEMORY[0x277D82BE0](v15);
    *v14 = v15;
    _finalizeUninitializedArray<A>(_:)();
    v16 = v9;
    MEMORY[0x277D82BD8](v15);

    v10 = *(*(v49 + 112) + 8);

    return v10(v16);
  }
}

{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 536) = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v2 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 112) = v0;

  v5 = *(v0 + 488);
  v1 = swift_task_alloc();
  v4[71] = v1;
  *v1 = v4[14];
  v1[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v2 = v4[41];

  return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v5, v2);
}

{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 560) = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v2 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 112) = v0;

  v5 = *(v0 + 488);
  v1 = swift_task_alloc();
  v4[71] = v1;
  *v1 = v4[14];
  v1[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v2 = v4[41];

  return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v5, v2);
}

{
  v90 = v0;
  v1 = v0[62];
  v0[14] = v0;
  [v1 setAction_];
  swift_unknownObjectRelease();
  v83 = v0[26];
  MEMORY[0x277D82BE0](v83);
  v84 = [v83 text];
  if (v84)
  {
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v14;
    MEMORY[0x277D82BD8](v84);
    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  MEMORY[0x277D82BD8](v83);
  v54 = Optional<A>.isNilOrEmpty.getter(v57, v58);

  if (v54)
  {
    v53 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    _allocateUninitializedArray<A>(_:)();
    v51 = v15;
    v52 = v82[26];
    MEMORY[0x277D82BE0](v52);
    *v51 = v52;
    _finalizeUninitializedArray<A>(_:)();
    v53 = v16;
  }

  if (v53)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v50 = isa;
  }

  else
  {
    v50 = 0;
  }

  v45 = v82[64];
  v46 = v82[62];
  v47 = v82[61];
  [v46 setDecoratedRows_];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BE0](v45);
  [v46 setTitle_];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BE0](v46);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v46, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v82[26]);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  v48 = v82[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v79 = v82[22];
  v82[61] = v79;
  if (v79)
  {
    v82[23] = v79;
    type metadata accessor for SASTColumnDataListItem();
    v2 = SAUIAppPunchOut.__allocating_init()();
    v82[62] = v2;
    v82[24] = v2;
    v82[63] = type metadata accessor for SAUIDecoratedText();
    v80 = SAUIAppPunchOut.__allocating_init()();
    v82[64] = v80;
    v82[25] = v80;
    v82[26] = SAUIAppPunchOut.__allocating_init()();
    v3 = [v79 organizationName];
    v81 = v3;
    if (v3)
    {
      v74 = [v3 spokenPhrase];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v4;
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v74);
      v77 = v75;
      v78 = v76;
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v82[65] = v78;
    if (v78)
    {
      v82[8] = v77;
      v82[9] = v78;
      if ((String.isEmpty.getter() & 1) == 0)
      {

        v73 = MEMORY[0x26D620690](v77, v78);

        [v80 setText_];
        MEMORY[0x277D82BD8](v73);
        v5 = swift_task_alloc();
        v6 = v79;
        v82[66] = v5;
        *v5 = v82[14];
        v5[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v7 = (v82 + 26);

        return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v6, v7);
      }
    }

    v72 = [v79 nickname];
    if (v72)
    {
      v67 = [v72 spokenPhrase];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v9;
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v67);
      v70 = v68;
      v71 = v69;
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    v82[68] = v71;
    if (!v71)
    {
      goto LABEL_23;
    }

    v82[6] = v70;
    v82[7] = v71;
    if (String.isEmpty.getter())
    {

LABEL_23:
      v65 = [v79 accountNumber];
      if (v65)
      {
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v11;
        MEMORY[0x277D82BD8](v65);
        v63 = v61;
        v64 = v62;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      if (v64)
      {
        v82[4] = v63;
        v82[5] = v64;
        if ((String.isEmpty.getter() & 1) == 0)
        {

          v60 = MEMORY[0x26D620690](v63, v64);

          [v80 setText_];
          MEMORY[0x277D82BD8](v60);
        }
      }

      v59 = v82[61];
      v12 = swift_task_alloc();
      v82[71] = v12;
      *v12 = v82[14];
      v12[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      v13 = v82[41];

      return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v59, v13);
    }

    v66 = MEMORY[0x26D620690](v70, v71);

    [v80 setText_];
    MEMORY[0x277D82BD8](v66);
    v10 = swift_task_alloc();
    v6 = v79;
    v82[69] = v10;
    *v10 = v82[14];
    v10[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    v7 = (v82 + 26);

    return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v6, v7);
  }

  v35 = v82[55];
  v34 = v82[50];
  v17 = v82[46];
  v33 = v82[44];
  outlined destroy of [SFCardSection](v82 + 2);
  v18 = Logger.payments.unsafeMutableAddressor();
  v34(v17, v18, v33);
  MEMORY[0x277D82BE0](v35);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;

  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  *(v37 + 24) = v36;

  oslog = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v38 + 24) = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v41 + 24) = v38;
  _allocateUninitializedArray<A>(_:)();
  v42 = v19;

  *v42 = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[1] = v39;

  v42[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[3] = v40;

  v42[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[5] = v41;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0, v29, v29);
    v32 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v85 = buf;
    v86 = v31;
    v87 = v32;
    serialize(_:at:)(2, &v85);
    serialize(_:at:)(1, &v85);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    if (v48)
    {
    }

    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_2686B1000, oslog, v44, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets itemGroup items %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v27 = v82[55];
  v25 = v82[53];
  v23 = v82[46];
  v24 = v82[44];
  MEMORY[0x277D82BD8](oslog);
  v25(v23, v24);
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v26 = v20;
  MEMORY[0x277D82BE0](v27);
  *v26 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v28 = v21;
  MEMORY[0x277D82BD8](v27);

  v22 = *(v82[14] + 8);

  return v22(v28);
}

{
  v1 = v0[57];
  v4 = v0[55];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of [SFCardSection](v0 + 10);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[14] + 8);

  return v2();
}

{
  v3 = v0[64];
  v4 = v0[62];
  v5 = v0[61];
  v6 = v0[55];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[14] + 8);

  return v1();
}

{
  v3 = v0[64];
  v4 = v0[62];
  v5 = v0[61];
  v6 = v0[55];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[14] + 8);

  return v1();
}

{
  v3 = v0[64];
  v4 = v0[62];
  v5 = v0[61];
  v6 = v0[55];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[59] = a1;
  v5[60] = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v3 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  v5[14] = *v2;
  v5[72] = a1;
  v5[73] = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v3 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 304) = v2;
  *(v3 + 296) = a2;
  *(v3 + 288) = a1;
  *(v3 + 144) = v3;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 544) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)()
{
  v46 = v0;
  v1 = v0[36];
  v0[18] = v0;
  v0[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    type metadata accessor for SACardSnippet();
    v17 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v2 = v40[49];
    v29 = v40[47];
    v30 = v40[36];
    v28 = v40[48];
    v3 = Logger.payments.unsafeMutableAddressor();
    (*(v28 + 16))(v2, v3, v29);

    v31 = swift_allocObject();
    *(v31 + 16) = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v32 + 24) = v31;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
    *(v33 + 24) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v36 + 24) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v37 = v4;

    *v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[1] = v34;

    v37[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v35;

    v37[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[5] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v38, v39))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v41 = buf;
      v42 = v26;
      v43 = v27;
      serialize(_:at:)(2, &v41);
      serialize(_:at:)(1, &v41);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      _os_log_impl(&dword_2686B1000, v38, v39, "#SearchForAccountsHandleIntentStrategy buildSnippet for accounts %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = v40[49];
    v22 = v40[47];
    v23 = v40[36];
    v20 = v40[48];
    MEMORY[0x277D82BD8](v38);
    (*(v20 + 8))(v21, v22);
    type metadata accessor for INPaymentAccount();
    if (MEMORY[0x26D620910](v23) <= 1)
    {
      Array.subscript.getter();
      v13 = v40[23];
      v40[64] = v13;
      v11 = swift_task_alloc();
      v6 = v13;
      v40[65] = v11;
      *v11 = v40[18];
      v11[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v7 = v40[37];

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v6, v7);
    }

    v18 = v40[36];
    v40[50] = type metadata accessor for SFCardSection();
    v40[25] = Array.init()();

    v40[26] = v18;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v19 = v40[27];
    v40[51] = v19;
    if (v19)
    {
      v40[28] = v19;
      v5 = swift_task_alloc();
      v6 = v19;
      v40[52] = v5;
      *v5 = v40[18];
      v5[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v7 = v40[37];

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v6, v7);
    }

    outlined destroy of [SFCardSection](v40 + 6);
    type metadata accessor for SACardSnippet();
    _allocateUninitializedArray<A>(_:)();
    v15 = v9;

    App.appIdentifier.getter();
    default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
    v14 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

    *v15 = v14;
    _finalizeUninitializedArray<A>(_:)();
    v16 = v10;
    outlined destroy of [SFCardSection](v40 + 25);
    v17 = v16;
  }

  v12 = *(v40[18] + 8);

  return v12(v17);
}

{
  v1 = v0[53];
  v75 = v0[51];
  v71 = v0[46];
  v69 = v0[45];
  v70 = v0[44];
  v0[18] = v0;
  v0[29] = v1;
  type metadata accessor for SFCard();
  v73 = SAUIAppPunchOut.__allocating_init()();
  v0[55] = v73;
  v0[30] = v73;
  UUID.init()();
  v2 = UUID.uuidString.getter();
  v72 = MEMORY[0x26D620690](v2);
  (*(v69 + 8))(v71, v70);

  [v73 setCardId_];
  MEMORY[0x277D82BD8](v72);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v73 setCardSections_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SFRowCardSection();
  v76 = SAUIAppPunchOut.__allocating_init()();
  v0[56] = v76;
  v0[31] = v76;
  v0[32] = 0;
  v3 = [v75 organizationName];
  v77 = v3;
  if (v3)
  {
    v62 = [v3 spokenPhrase];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v7;
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v62);
    v65 = v63;
    v66 = v64;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  if (v66)
  {
    *(v68 + 112) = v65;
    *(v68 + 120) = v66;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v8 = @nonobjc SFRichText.__allocating_init(string:)(v65, v66);
      v9 = *(v68 + 256);
      *(v68 + 256) = v8;
      MEMORY[0x277D82BD8](v9);

      v61 = MEMORY[0x26D620690](v65, v66);

      [v73 setTitle_];
      MEMORY[0x277D82BD8](v61);

      goto LABEL_27;
    }
  }

  v60 = [*(v68 + 408) nickname];
  if (v60)
  {
    v55 = [v60 spokenPhrase];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v10;
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v55);
    v58 = v56;
    v59 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  if (v59)
  {
    *(v68 + 96) = v58;
    *(v68 + 104) = v59;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v11 = @nonobjc SFRichText.__allocating_init(string:)(v58, v59);
      v12 = *(v68 + 256);
      *(v68 + 256) = v11;
      MEMORY[0x277D82BD8](v12);

      v54 = MEMORY[0x26D620690](v58, v59);

      [v73 setTitle_];
      MEMORY[0x277D82BD8](v54);

      goto LABEL_27;
    }
  }

  v53 = [*(v68 + 408) accountNumber];
  if (v53)
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v13;
    MEMORY[0x277D82BD8](v53);
    v51 = v49;
    v52 = v50;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  if (v52)
  {
    *(v68 + 80) = v51;
    *(v68 + 88) = v52;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v14 = @nonobjc SFRichText.__allocating_init(string:)(v51, v52);
      v15 = *(v68 + 256);
      *(v68 + 256) = v14;
      MEMORY[0x277D82BD8](v15);

      v48 = MEMORY[0x26D620690](v51, v52);

      [v73 setTitle_];
      MEMORY[0x277D82BD8](v48);
    }
  }

LABEL_27:
  v46 = *(v68 + 408);
  v45 = *(v68 + 256);
  MEMORY[0x277D82BE0](v45);
  [v76 setLeadingText_];
  MEMORY[0x277D82BD8](v45);
  v47 = [v46 balance];
  if (v47)
  {
    v42 = [v47 balanceType];
    MEMORY[0x277D82BD8](v47);
    v43 = v42;
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  *(v68 + 16) = v43;
  *(v68 + 24) = v44 & 1;
  *(v68 + 32) = 1;
  *(v68 + 40) = 0;
  if (*(v68 + 24))
  {
    if ((*(v68 + 40) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(v68 + 128) = v43;
    *(v68 + 136) = v44 & 1;
    if ((*(v68 + 40) & 1) != 0 || (*(v68 + 272) = *(v68 + 128), *(v68 + 280) = *(v68 + 32), type metadata accessor for INBalanceType(0), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v16 = dispatch thunk of static Equatable.== infix(_:_:)(), (v16 & 1) == 0))
    {
LABEL_40:
      v18 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v68 + 408) accountType]);
      v40 = v18;
      if (v18 == 9)
      {
        v37 = *(v68 + 448);
        v38 = *(v68 + 440);
        v39 = *(v68 + 408);
        MEMORY[0x277D82BE0](v37);
        MEMORY[0x277D82BE0](v38);
        [v37 setNextCard_];
        MEMORY[0x277D82BD8](v38);
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BE0](v37);
        *(v68 + 264) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
        Array.append(_:)();
        outlined destroy of SFRichText?((v68 + 256));
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v38);

        MEMORY[0x277D82BD8](v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
        IndexingIterator.next()();
        v67 = *(v68 + 216);
        *(v68 + 408) = v67;
        if (v67)
        {
          *(v68 + 224) = v67;
          v4 = swift_task_alloc();
          *(v68 + 416) = v4;
          *v4 = *(v68 + 144);
          v4[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
          v5 = *(v68 + 296);

          return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v67, v5);
        }

        else
        {
          outlined destroy of [SFCardSection]((v68 + 48));
          type metadata accessor for SACardSnippet();
          _allocateUninitializedArray<A>(_:)();
          v32 = v28;

          App.appIdentifier.getter();
          default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
          v31 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

          *v32 = v31;
          _finalizeUninitializedArray<A>(_:)();
          v33 = v29;
          outlined destroy of [SFCardSection]((v68 + 200));

          v30 = *(*(v68 + 144) + 8);

          return v30(v33);
        }
      }

      else
      {
        v19 = *(v68 + 304);
        *(v68 + 544) = v18;
        *(v68 + 488) = *v19;

        Constants.PaymentAccountType.asCATIDForLoc.getter(v40);
        if (v20)
        {
          v36 = *(v68 + 320);
          String.toSpeakableString.getter();

          v21 = type metadata accessor for SpeakableString();
          (*(*(v21 - 8) + 56))(v36, 0, 1);
        }

        else
        {
          v34 = *(v68 + 320);
          v27 = type metadata accessor for SpeakableString();
          (*(*(v27 - 8) + 56))(v34, 1);
        }

        v35 = *(v68 + 312);
        v22 = type metadata accessor for SpeakableString();
        (*(*(v22 - 8) + 56))(v35, 1);
        v23 = swift_task_alloc();
        *(v68 + 496) = v23;
        *v23 = *(v68 + 144);
        v23[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
        v24 = *(v68 + 344);
        v25 = *(v68 + 320);
        v26 = *(v68 + 312);

        return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v24, v25, v26);
      }
    }
  }

  v41 = [*(v68 + 408) balance];
  *(v68 + 456) = v41;
  v17 = swift_task_alloc();
  *(v68 + 464) = v17;
  *v17 = *(v68 + 144);
  v17[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v41);
}

{
  v29 = *(v0 + 472);
  v1 = *(v0 + 448);
  *(v0 + 144) = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v29);
  v2 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v0 + 408) accountType]);
  v30 = v2;
  if (v2 == 9)
  {
    v24 = *(v28 + 448);
    v25 = *(v28 + 440);
    v26 = *(v28 + 408);
    MEMORY[0x277D82BE0](v24);
    MEMORY[0x277D82BE0](v25);
    [v24 setNextCard_];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BE0](v24);
    *(v28 + 264) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
    Array.append(_:)();
    outlined destroy of SFRichText?((v28 + 256));
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);

    MEMORY[0x277D82BD8](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v27 = *(v28 + 216);
    *(v28 + 408) = v27;
    if (v27)
    {
      *(v28 + 224) = v27;
      v3 = swift_task_alloc();
      *(v28 + 416) = v3;
      *v3 = *(v28 + 144);
      v3[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v4 = *(v28 + 296);

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v27, v4);
    }

    else
    {
      outlined destroy of [SFCardSection]((v28 + 48));
      type metadata accessor for SACardSnippet();
      _allocateUninitializedArray<A>(_:)();
      v19 = v15;

      App.appIdentifier.getter();
      default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
      v18 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

      *v19 = v18;
      _finalizeUninitializedArray<A>(_:)();
      v20 = v16;
      outlined destroy of [SFCardSection]((v28 + 200));

      v17 = *(*(v28 + 144) + 8);

      return v17(v20);
    }
  }

  else
  {
    v6 = *(v28 + 304);
    *(v28 + 544) = v2;
    *(v28 + 488) = *v6;

    Constants.PaymentAccountType.asCATIDForLoc.getter(v30);
    if (v7)
    {
      v23 = *(v28 + 320);
      String.toSpeakableString.getter();

      v8 = type metadata accessor for SpeakableString();
      (*(*(v8 - 8) + 56))(v23, 0, 1);
    }

    else
    {
      v21 = *(v28 + 320);
      v14 = type metadata accessor for SpeakableString();
      (*(*(v14 - 8) + 56))(v21, 1);
    }

    v22 = *(v28 + 312);
    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 56))(v22, 1);
    v10 = swift_task_alloc();
    *(v28 + 496) = v10;
    *v10 = *(v28 + 144);
    v10[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
    v11 = *(v28 + 344);
    v12 = *(v28 + 320);
    v13 = *(v28 + 312);

    return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v11, v12, v13);
  }
}

{
  v5 = *v1;
  v5[18] = *v1;
  v5[63] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {
    v4 = v5[40];
    outlined destroy of SpeakableString?(v5[39]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = v0[56];
  v13 = v0[43];
  v12 = v0[42];
  v14 = v0[41];
  v0[18] = v0;
  v15 = TemplatingResult.resultSectionsAsString.getter();
  v18 = v1;
  v0[8] = v15;
  v0[9] = v1;
  (*(v12 + 8))(v13, v14);
  type metadata accessor for SFRichText();

  v17 = @nonobjc SFRichText.__allocating_init(string:)(v15, v18);
  [v16 setLeadingSubtitle_];
  MEMORY[0x277D82BD8](v17);

  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[51];
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v20);
  [v19 setNextCard_];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BE0](v19);
  v0[33] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);

  MEMORY[0x277D82BD8](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v22 = v0[27];
  v0[51] = v22;
  if (v22)
  {
    v11[28] = v22;
    v2 = swift_task_alloc();
    v11[52] = v2;
    *v2 = v11[18];
    v2[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
    v3 = v11[37];

    return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v22, v3);
  }

  else
  {
    outlined destroy of [SFCardSection](v11 + 6);
    type metadata accessor for SACardSnippet();
    _allocateUninitializedArray<A>(_:)();
    v9 = v5;

    App.appIdentifier.getter();
    default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
    v8 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

    *v9 = v8;
    _finalizeUninitializedArray<A>(_:)();
    v10 = v6;
    outlined destroy of [SFCardSection](v11 + 25);

    v7 = *(v11[18] + 8);

    return v7(v10);
  }
}

{
  v1 = v0[66];
  v0[18] = v0;
  v0[24] = v1;
  type metadata accessor for SACardSnippet();
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  App.appIdentifier.getter();
  default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
  v6 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

  *v7 = v6;
  _finalizeUninitializedArray<A>(_:)();
  v8 = v3;

  v4 = *(v0[18] + 8);

  return v4(v8);
}

{
  v1 = v0[51];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);

  v2 = *(v0[18] + 8);

  return v2();
}

{
  v1 = v0[57];
  v4 = v0[56];
  v5 = v0[55];
  v6 = v0[51];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);

  v2 = *(v0[18] + 8);

  return v2();
}

{
  v5 = v0[56];
  v6 = v0[55];
  v7 = v0[51];
  v4 = v0[40];
  v1 = v0[39];
  v0[18] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);

  v2 = *(v0[18] + 8);

  return v2();
}

{
  v1 = *(v0 + 512);
  *(v0 + 144) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 144) + 8);

  return v2();
}