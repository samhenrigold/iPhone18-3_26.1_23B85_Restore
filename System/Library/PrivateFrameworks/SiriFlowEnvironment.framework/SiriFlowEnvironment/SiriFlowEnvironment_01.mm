void CurrentRequest.$refId.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = OUTLINED_FUNCTION_169();
    v10(v9);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_273(a1, a2, a3, a4, a5, a6, a7, a8);
  v47 = OUTLINED_FUNCTION_41();
  v48 = v26;
  OUTLINED_FUNCTION_54();
  v27 = swift_allocObject();
  LOBYTE(v45) = a24;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_237();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, a18, a19, a20, a21, a22, a23, v45, a25, a26, v46, a20, a21, a18, a19, a16, a17, a13, a14, v47.n128_u8[0], v47.n128_i64[1], v48);
  return v27;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_171();
  v281 = v40;
  v283 = v41;
  v278 = v42;
  v279 = v43;
  v273 = v44;
  v276 = v45;
  v269 = v46;
  v271 = v47;
  OUTLINED_FUNCTION_200(a37);
  OUTLINED_FUNCTION_230(a36);
  HIDWORD(v289) = a35;
  OUTLINED_FUNCTION_223(a34);
  OUTLINED_FUNCTION_190(a33);
  OUTLINED_FUNCTION_205(a32);
  v295[3] = a31;
  v295[4] = a30;
  v296 = a29;
  v297[0] = a28;
  OUTLINED_FUNCTION_208(a27);
  v298 = v48;
  OUTLINED_FUNCTION_10_0(a25);
  OUTLINED_FUNCTION_206(v49);
  OUTLINED_FUNCTION_98(a22);
  v50 = type metadata accessor for ExecutionLocation();
  v51 = OUTLINED_FUNCTION_4_1(v50, &v307);
  v291 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v54);
  v55 = type metadata accessor for ResponseMode();
  v56 = OUTLINED_FUNCTION_4_1(v55, &v312);
  v302 = v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v59);
  v60 = type metadata accessor for InteractionType();
  v61 = OUTLINED_FUNCTION_4_1(v60, &v310);
  v300[2] = v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v64);
  v65 = type metadata accessor for InputOrigin();
  v66 = OUTLINED_FUNCTION_4_1(v65, &v311);
  v301 = v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v71 = OUTLINED_FUNCTION_10(v70);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v73 = MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_65(v73, v74, v75, v76, v77, v78, v79, v80, v263);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v82 = OUTLINED_FUNCTION_10(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v84 = MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_66(v84, v85, v86, v87, v88, v89, v90, v91, v263);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v93 = OUTLINED_FUNCTION_10(v92);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_6_2(v94, v263);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v263 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v99 = OUTLINED_FUNCTION_10(v98);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_145();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v102 = OUTLINED_FUNCTION_10(v101);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_9_0();
  v104 = v103;
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_191();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v37[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_73();
  v107 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v107);
  OUTLINED_FUNCTION_49(v108);
  OUTLINED_FUNCTION_73();
  v109 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v109);
  OUTLINED_FUNCTION_49(v110);
  OUTLINED_FUNCTION_73();
  v111 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v111);
  OUTLINED_FUNCTION_49(v112);
  OUTLINED_FUNCTION_73();
  v113 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v113);
  OUTLINED_FUNCTION_49(v114);
  OUTLINED_FUNCTION_73();
  v37[10] = MockablePublished.init(wrappedValue:)();
  v115 = type metadata accessor for AudioSource();
  v118 = OUTLINED_FUNCTION_44(v115, v116, v117, v115);
  v264 = v38;
  v266 = v104;
  outlined init with copy of AudioSource?(v118, v104, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v119 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v119, v120, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v121);
  v122 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_68(v122);
  v265 = v39;
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v123, v124, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_290();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v125, v126, v127);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v128);
  type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  v270 = v97;
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v133, v134, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v135 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v135, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v136);
  v137 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v137, v138, v139, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v140, v141, v142);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v143);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_125(v144);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v149, v150, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_167();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v151, v152, v153);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v154);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v155 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v155);
  OUTLINED_FUNCTION_49(v156);
  OUTLINED_FUNCTION_73();
  v157 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v157);
  OUTLINED_FUNCTION_144(v158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v159 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v159);
  OUTLINED_FUNCTION_141(v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v37[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_73();
  v161 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v161);
  v280 = v162;
  v308[0] = 2;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_73();
  v163 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v163);
  v165 = OUTLINED_FUNCTION_98(v164);
  v166 = type metadata accessor for FlowTaskMetadata(v165);
  OUTLINED_FUNCTION_294(v166, v297);
  OUTLINED_FUNCTION_125(v167);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
  outlined init with copy of AudioSource?(&_s13SiriUtilities14BargeInContextVSgMR, v294, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v172, v173, v174);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_49(v175);
  OUTLINED_FUNCTION_73();
  v176 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v176);
  OUTLINED_FUNCTION_49(v177);
  OUTLINED_FUNCTION_73();
  v37[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_73();
  v37[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_73();
  v37[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_73();
  v178 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v37[40] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_185((v37 + 3), v308);
  OUTLINED_FUNCTION_86(&v286);

  OUTLINED_FUNCTION_100(&v288);
  v37[3] = OUTLINED_FUNCTION_186();
  swift_endAccess();

  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v290);

  OUTLINED_FUNCTION_100(v292);
  v179 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v179);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v294);

  OUTLINED_FUNCTION_100(v295);
  v180 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v180);

  OUTLINED_FUNCTION_285();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v296);

  OUTLINED_FUNCTION_100(&v298);
  v181 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v181);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v299);

  OUTLINED_FUNCTION_100(&v301);
  v182 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v182);

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_125(&v293);
  OUTLINED_FUNCTION_181();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v37 + 8));
  v183 = OUTLINED_FUNCTION_162();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v301 = v184;
  v285 = v185;
  v185(&_s13SiriUtilities14BargeInContextVSgMR, &_s13SiriUtilities16AudioDestinationVSgMd);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_125(v300);
  OUTLINED_FUNCTION_178();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v37 + 9));
  v186 = OUTLINED_FUNCTION_162();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_38();
  v284 = v187;
  v187(&_s13SiriUtilities14BargeInContextVSgMR, &_s13SiriUtilities16AudioDestinationVSgMd);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v188, v189, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_173();
  outlined init with copy of AudioSource?(v190, v191, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v192, v193, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_173();
  outlined init with copy of AudioSource?(v194, v195, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_125(&v302);
  OUTLINED_FUNCTION_166();
  _s13SiriUtilities16AudioDestinationVSgMR(v196);
  OUTLINED_FUNCTION_71((v37 + 13));
  v197 = OUTLINED_FUNCTION_162();
  _s13SiriUtilities16AudioDestinationVSgMR(v197);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_77();
  v292[0] = v198;
  v198(&_s13SiriUtilities14BargeInContextVSgMR, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_247();
  v199 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v199, v200);
  OUTLINED_FUNCTION_88();
  v201 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v201, v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v203 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v203);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v204, v205, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  v206 = OUTLINED_FUNCTION_69();
  outlined init with copy of AudioSource?(v206, v207, v208, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v209 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v209, v210, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v211 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v211, v212, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_35();

  v213 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_312(v213, v214);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v215 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_278(v215);
  OUTLINED_FUNCTION_307();
  v216 = OUTLINED_FUNCTION_61();
  outlined init with copy of AudioSource?(v216, v217, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_173();
  outlined init with copy of AudioSource?(v218, v219, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  v220 = v287;
  OUTLINED_FUNCTION_228(v287);
  v303 = v220;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v221 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v221);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_209(v222);
  OUTLINED_FUNCTION_115();
  v223 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v223);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_157(&v305);
  OUTLINED_FUNCTION_76();
  v224 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v224);
  OUTLINED_FUNCTION_71((v37 + 21));
  OUTLINED_FUNCTION_262();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();

  v225 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v225);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  v303 = 0;
  v304 = 0;
  OUTLINED_FUNCTION_115();
  v226 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v226);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  LOBYTE(v303) = 2;
  OUTLINED_FUNCTION_76();
  v227 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v227);
  v228 = OUTLINED_FUNCTION_27(v309);
  OUTLINED_FUNCTION_158(v228, v229, v230, v297);
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_173();
  outlined init with copy of AudioSource?(v231, v232, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v233 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v233, v234, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_71((v37 + 28));
  LODWORD(v303) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v235 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v235);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v303 = 0;
  v304 = 0;
  OUTLINED_FUNCTION_115();
  v236 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v236);
  OUTLINED_FUNCTION_71((v37 + 30));
  LOBYTE(v303) = 0;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v238 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v238);
  OUTLINED_FUNCTION_71((v37 + 31));
  LOBYTE(v303) = 0;
  OUTLINED_FUNCTION_76();
  v239 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v239);
  OUTLINED_FUNCTION_71((v37 + 32));
  OUTLINED_FUNCTION_187();
  *(v240 - 256) = v237;
  OUTLINED_FUNCTION_76();
  v241 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v241);
  OUTLINED_FUNCTION_71((v37 + 33));
  LOBYTE(v303) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v242 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v242);
  OUTLINED_FUNCTION_71((v37 + 34));

  v303 = 0;
  v304 = 0;
  OUTLINED_FUNCTION_115();
  v243 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v243);
  OUTLINED_FUNCTION_87();
  v309[0] = &type metadata for DummyLocationProvider;
  v309[1] = &protocol witness table for DummyLocationProvider;
  v244 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v244, v245);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v246);
  OUTLINED_FUNCTION_71((v37 + 36));

  v303 = 0;
  v304 = 0;
  v263 = v106;
  OUTLINED_FUNCTION_115();
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v247);
  OUTLINED_FUNCTION_188();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v37 + 23));
  v248 = *(v291 + 16);
  OUTLINED_FUNCTION_125(&v306);
  OUTLINED_FUNCTION_204();
  v248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v249 = OUTLINED_FUNCTION_133();
  v237(v249);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v37 + 24));
  OUTLINED_FUNCTION_156();
  v248();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v250 = OUTLINED_FUNCTION_132();
  (v237)(v250, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v37 + 37));

  v303 = 0;
  v304 = 0;
  OUTLINED_FUNCTION_76();
  v251 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v251);
  OUTLINED_FUNCTION_71((v37 + 38));

  v303 = 0;
  v304 = 0;
  OUTLINED_FUNCTION_76();
  v252 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v252);
  OUTLINED_FUNCTION_71((v37 + 39));
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v253 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v253);
  OUTLINED_FUNCTION_311();
  v254 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v254, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v255 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v255, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v256 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v256, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v257 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v257);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_81();
  v258();
  v259 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v259, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v260 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v260, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_82();
  v261();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83();
  v262();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_273(a1, a2, a3, a4, a5, a6, a7, a8);
  v48 = OUTLINED_FUNCTION_41().n128_u64[0];
  OUTLINED_FUNCTION_54();
  v28 = swift_allocObject();
  LOBYTE(v46) = a26;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_237();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, a18, a19, a20, a21, a22, a23, a24, a25, v46, a27, a28, v47, a22, a23, a20, a21, a18, a19, a16, a17, a13, a14, v48);
  return v28;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_271(v40, v41, v42, v281);
  OUTLINED_FUNCTION_200(a39);
  OUTLINED_FUNCTION_230(a38);
  OUTLINED_FUNCTION_229(a37);
  OUTLINED_FUNCTION_223(v43);
  OUTLINED_FUNCTION_190(a35);
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v44);
  OUTLINED_FUNCTION_10_0(v45);
  OUTLINED_FUNCTION_206(v46);
  OUTLINED_FUNCTION_98(a22);
  v47 = type metadata accessor for ExecutionLocation();
  v48 = OUTLINED_FUNCTION_4_1(v47, &v293);
  v276[1] = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v51);
  v52 = type metadata accessor for ResponseMode();
  v53 = OUTLINED_FUNCTION_4_1(v52, &v299);
  v289 = v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v56);
  v57 = type metadata accessor for InteractionType();
  v58 = OUTLINED_FUNCTION_4_1(v57, &v297);
  v287 = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v61);
  v62 = type metadata accessor for InputOrigin();
  v63 = OUTLINED_FUNCTION_4_1(v62, &v298);
  v288 = v64;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v68 = OUTLINED_FUNCTION_10(v67);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v70 = MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_65(v70, v71, v72, v73, v74, v75, v76, v77, v268);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v79 = OUTLINED_FUNCTION_10(v78);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v81 = MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_66(v81, v82, v83, v84, v85, v86, v87, v88, v269);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v90 = OUTLINED_FUNCTION_10(v89);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_6_2(v91, v270);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_145();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v94 = OUTLINED_FUNCTION_10(v93);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_121();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v97 = OUTLINED_FUNCTION_10(v96);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_9_0();
  v99 = v98;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v39[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v101 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v101);
  OUTLINED_FUNCTION_14(v102);
  OUTLINED_FUNCTION_73();
  v103 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v103);
  OUTLINED_FUNCTION_14(v104);
  OUTLINED_FUNCTION_73();
  v105 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v105);
  OUTLINED_FUNCTION_14(v106);
  OUTLINED_FUNCTION_73();
  v107 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v107);
  OUTLINED_FUNCTION_14(v108);
  OUTLINED_FUNCTION_73();
  v109 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v109);
  OUTLINED_FUNCTION_98(v110);
  v111 = type metadata accessor for AudioSource();
  v114 = OUTLINED_FUNCTION_64(v111, v112, v113, v111);
  outlined init with copy of AudioSource?(v114, v99, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v115, v116, v117);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v118);
  v119 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_20(v119, v120, v121, v119);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v122, v123, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v124 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v124, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v125);
  v126 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_68(v126);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v127, v128, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v129 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_277(v129);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v130);
  v131 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v131, v132, v133, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v134, v135, v136);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v137);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_303();
  v139 = OUTLINED_FUNCTION_27(v138);
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v143, v144, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v145 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v145, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v147 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v147);
  OUTLINED_FUNCTION_14(v148);
  OUTLINED_FUNCTION_73();
  v149 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v149);
  OUTLINED_FUNCTION_144(v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v151 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v151);
  OUTLINED_FUNCTION_141(v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v39[22] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v153 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v153);
  v294[0] = 2;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_73();
  v154 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v154);
  v156 = OUTLINED_FUNCTION_98(v155);
  v157 = type metadata accessor for FlowTaskMetadata(v156);
  OUTLINED_FUNCTION_294(v157, v284);
  OUTLINED_FUNCTION_125(v158);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v163, v164, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v165 = OUTLINED_FUNCTION_104();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v165, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_14(v166);
  OUTLINED_FUNCTION_73();
  v167 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v167);
  OUTLINED_FUNCTION_14(v168);
  OUTLINED_FUNCTION_73();
  v39[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v39[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v39[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v169 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v170 = MockablePublished.init(wrappedValue:)();
  v39[40] = v170;
  OUTLINED_FUNCTION_143(v170, v294);
  OUTLINED_FUNCTION_86(&v271);

  OUTLINED_FUNCTION_22(&v272);
  v39[3] = OUTLINED_FUNCTION_186();
  swift_endAccess();

  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v274);

  OUTLINED_FUNCTION_22(&v275);
  v171 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v171);

  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(v277);

  OUTLINED_FUNCTION_22(&v278);
  v172 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v172);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v280);

  OUTLINED_FUNCTION_22(v281);
  v173 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v173);

  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v282);

  OUTLINED_FUNCTION_22(&v288);
  v174 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v174);

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_36(v276);
  OUTLINED_FUNCTION_181();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v39 + 8));
  v175 = OUTLINED_FUNCTION_30(v279);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v288 = v176;
  v178 = OUTLINED_FUNCTION_122(v177);
  v179(v178);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_47(&v283);
  OUTLINED_FUNCTION_178();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v39 + 9));
  v180 = OUTLINED_FUNCTION_30(&v285);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_38();
  v182 = OUTLINED_FUNCTION_122(v181);
  v183(v182);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_285();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v286);

  OUTLINED_FUNCTION_22(&v287);
  v184 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v184);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v185, v186, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v187, v188, v189, v190);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v191, v192, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v193, v194, v195, v196);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_46(&v289);
  OUTLINED_FUNCTION_166();
  _s13SiriUtilities16AudioDestinationVSgMR(v197);
  OUTLINED_FUNCTION_71((v39 + 13));
  v198 = OUTLINED_FUNCTION_23(&v290);
  _s13SiriUtilities16AudioDestinationVSgMR(v198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_77();
  v200 = OUTLINED_FUNCTION_53(v199);
  v201(v200);
  OUTLINED_FUNCTION_247();
  v202 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v202, v203);
  OUTLINED_FUNCTION_88();
  v204 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v204, v205);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v206 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v206);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v207, v208, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  v209 = OUTLINED_FUNCTION_69();
  outlined init with copy of AudioSource?(v209, v210, v211, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v212 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v212, v213, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v214 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v214, v215, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_35();

  v216 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_312(v216, v217);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v218 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_278(v218);
  OUTLINED_FUNCTION_307();
  v219 = OUTLINED_FUNCTION_61();
  outlined init with copy of AudioSource?(v219, v220, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_280(v221, v222);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v223 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_277(v223);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  v224 = v273;
  OUTLINED_FUNCTION_228(v273);
  v290 = v224;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v225 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v225);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_209(v226);
  OUTLINED_FUNCTION_72();
  v227 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v227);
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_157(&v292);
  OUTLINED_FUNCTION_76();
  v228 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v228);
  OUTLINED_FUNCTION_71((v39 + 21));
  OUTLINED_FUNCTION_262();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();

  v229 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v229);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_55();
  v230 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v230);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  LOBYTE(v290) = 2;
  OUTLINED_FUNCTION_76();
  v231 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v231);
  v232 = v279[1];
  v233 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_158(v233, v234, v235, v284);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v236, v237, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v238 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v238, v239, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_71((v39 + 28));
  LODWORD(v290) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v240 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v240);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_55();
  v241 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v241);
  OUTLINED_FUNCTION_71((v39 + 30));
  LOBYTE(v290) = 0;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v243 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v243);
  OUTLINED_FUNCTION_71((v39 + 31));
  LOBYTE(v290) = 0;
  OUTLINED_FUNCTION_76();
  v244 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v244);
  OUTLINED_FUNCTION_71((v39 + 32));
  OUTLINED_FUNCTION_187();
  *(v245 - 256) = v242;
  OUTLINED_FUNCTION_76();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v246);
  OUTLINED_FUNCTION_71((v39 + 33));
  LOBYTE(v290) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v247);
  OUTLINED_FUNCTION_71((v39 + 34));

  OUTLINED_FUNCTION_55();
  v248 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v248);
  OUTLINED_FUNCTION_87();
  v295 = &type metadata for DummyLocationProvider;
  v296 = &protocol witness table for DummyLocationProvider;
  v249 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v249, v250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v251 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v251);
  OUTLINED_FUNCTION_71((v39 + 36));

  v290 = 0;
  v291 = 0;
  OUTLINED_FUNCTION_72();
  v252 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v252);
  OUTLINED_FUNCTION_188();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v39 + 23));
  v253 = OUTLINED_FUNCTION_43();
  (v232)(v253);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v254 = OUTLINED_FUNCTION_133();
  v242(v254);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v39 + 24));
  OUTLINED_FUNCTION_156();
  v232();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v255 = OUTLINED_FUNCTION_132();
  (v242)(v255, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v39 + 37));

  v290 = 0;
  v291 = 0;
  OUTLINED_FUNCTION_76();
  v256 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v256);
  OUTLINED_FUNCTION_71((v39 + 38));

  v290 = 0;
  v291 = 0;
  OUTLINED_FUNCTION_76();
  v257 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v257);
  OUTLINED_FUNCTION_71((v39 + 39));
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v258 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v258);
  OUTLINED_FUNCTION_311();
  v259 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v259, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v260 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v260, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v261 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v261, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v262 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v262);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_81();
  v263();
  v264 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v264, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v265 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v265, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_82();
  v266();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83();
  v267();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = OUTLINED_FUNCTION_41();
  v31 = OUTLINED_FUNCTION_289(v29, v30);
  v43 = v32;
  v42 = v31;
  OUTLINED_FUNCTION_54();
  v33 = swift_allocObject();
  LOBYTE(v41) = a25;
  v34 = OUTLINED_FUNCTION_39();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:)(v34, v35, v36, v37, a5, a6, a7, a8, v39, v40, v48, v49, v46, v47, v44, v45, v43, *(&v43 + 1), v42.n128_i64[0], v42.n128_i64[1], a21, a22, a23, a24, v41, a26, a27, a28, a26, a27, a21, a22, v42.n128_i64[0], v42.n128_i64[1], v43, *(&v43 + 1), v44, v45, v46, v47);
  return v33;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_200(a40);
  OUTLINED_FUNCTION_230(a39);
  OUTLINED_FUNCTION_226(a38);
  OUTLINED_FUNCTION_229(a37);
  OUTLINED_FUNCTION_190(v41);
  OUTLINED_FUNCTION_205(a35);
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v42);
  OUTLINED_FUNCTION_10_0(v43);
  OUTLINED_FUNCTION_206(v44);
  OUTLINED_FUNCTION_98(a22);
  v45 = type metadata accessor for ExecutionLocation();
  v46 = OUTLINED_FUNCTION_4_1(v45, v299);
  v280[1] = v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v49);
  v50 = type metadata accessor for ResponseMode();
  v51 = OUTLINED_FUNCTION_4_1(v50, &v304);
  v292 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v54);
  v55 = type metadata accessor for InteractionType();
  v56 = OUTLINED_FUNCTION_4_1(v55, &v302);
  v291 = v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v59);
  v60 = type metadata accessor for InputOrigin();
  v61 = OUTLINED_FUNCTION_4_1(v60, &v303);
  v293 = v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v66 = OUTLINED_FUNCTION_10(v65);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v68 = MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_65(v68, v69, v70, v71, v72, v73, v74, v75, v271);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v77 = OUTLINED_FUNCTION_10(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v79 = MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_66(v79, v80, v81, v82, v83, v84, v85, v86, v272);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v88 = OUTLINED_FUNCTION_10(v87);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_6_2(v89, v273);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_145();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v92 = OUTLINED_FUNCTION_10(v91);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_180();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v95 = OUTLINED_FUNCTION_10(v94);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_177();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v40[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v97 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v97);
  OUTLINED_FUNCTION_14(v98);
  OUTLINED_FUNCTION_73();
  v99 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v99);
  OUTLINED_FUNCTION_14(v100);
  OUTLINED_FUNCTION_73();
  v101 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v101);
  OUTLINED_FUNCTION_14(v102);
  OUTLINED_FUNCTION_73();
  v103 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v103);
  OUTLINED_FUNCTION_14(v104);
  OUTLINED_FUNCTION_73();
  v105 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v105);
  OUTLINED_FUNCTION_98(v106);
  v107 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_44(v107, v108, v109, v107);
  OUTLINED_FUNCTION_293(v274);
  outlined init with copy of AudioSource?(v110, v111, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v112, v113, v114);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v115);
  v116 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_64(v116, v117, v118, v116);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v119, v120, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v121 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v121, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v122);
  v123 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_68(v123);
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v124, v125, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_292();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v126, v127, v128);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v129);
  v130 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v130, v131, v132, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v133, v134, v135);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v136);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_20(v137, v138, v139, v140);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v141, v142, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v143 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v143, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v145 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v145);
  OUTLINED_FUNCTION_14(v146);
  OUTLINED_FUNCTION_73();
  v147 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v147);
  OUTLINED_FUNCTION_144(v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v149 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v149);
  OUTLINED_FUNCTION_141(v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v151 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_266(v151);
  OUTLINED_FUNCTION_14(v152);
  OUTLINED_FUNCTION_73();
  v153 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v153);
  v299[16] = 2;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_73();
  v154 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v154);
  v156 = OUTLINED_FUNCTION_98(v155);
  v157 = type metadata accessor for FlowTaskMetadata(v156);
  v158 = OUTLINED_FUNCTION_294(v157, v287);
  v160 = *(v159 - 256);
  OUTLINED_FUNCTION_20(v158, v161, v162, v163);
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v164, v165, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v274[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v166 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v166, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_14(v167);
  OUTLINED_FUNCTION_73();
  v168 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v168);
  OUTLINED_FUNCTION_14(v169);
  OUTLINED_FUNCTION_73();
  v40[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v40[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v40[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v170 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v171 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_139(v171);
  OUTLINED_FUNCTION_86(&v275);

  OUTLINED_FUNCTION_22(&v276);
  v172 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_306(v172);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v277);

  OUTLINED_FUNCTION_22(v278);
  v173 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v173);

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(v280);

  OUTLINED_FUNCTION_22(&v281);
  v174 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v174);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v283);

  OUTLINED_FUNCTION_22(&v284);
  v175 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v175);

  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v285);

  OUTLINED_FUNCTION_22(&v292);
  v176 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v176);

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_36(&v279);
  OUTLINED_FUNCTION_181();
  v160();
  OUTLINED_FUNCTION_71((v40 + 8));
  v177 = OUTLINED_FUNCTION_30(&v282);
  (v160)(v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v293 = v178;
  v180 = OUTLINED_FUNCTION_122(v179);
  v181(v180);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_47(&v286);
  OUTLINED_FUNCTION_178();
  v160();
  OUTLINED_FUNCTION_71((v40 + 9));
  v182 = OUTLINED_FUNCTION_30(&v290);
  (v160)(v182);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_38();
  v184 = OUTLINED_FUNCTION_122(v183);
  v185(v184);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v288);

  OUTLINED_FUNCTION_22(&v289);
  v186 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v186);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v187, v188, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v189, v190, v191, v192);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v193, v194, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_285();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v195, v196, v197, v198);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_46(&v291);
  OUTLINED_FUNCTION_166();
  _s13SiriUtilities16AudioDestinationVSgMR(v199);
  OUTLINED_FUNCTION_71((v40 + 13));
  v200 = OUTLINED_FUNCTION_23(&v293);
  _s13SiriUtilities16AudioDestinationVSgMR(v200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_78();
  v202 = OUTLINED_FUNCTION_53(v201);
  v203(v202);
  OUTLINED_FUNCTION_247();
  v204 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v204, v205);
  OUTLINED_FUNCTION_88();
  v206 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v206, v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v208 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v208);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v209, v210, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  v211 = OUTLINED_FUNCTION_69();
  outlined init with copy of AudioSource?(v211, v212, v213, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v214 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v214, v215, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v216 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v216, v217, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_35();

  v218 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_312(v218, v219);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v220 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_278(v220);
  OUTLINED_FUNCTION_307();
  v221 = OUTLINED_FUNCTION_61();
  outlined init with copy of AudioSource?(v221, v222, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_280(v223, v224);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v225 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_277(v225);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  v226 = v278[0];
  OUTLINED_FUNCTION_228(v278[0]);
  v294 = v226;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v227 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v227);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_209(&v296);
  OUTLINED_FUNCTION_72();
  v228 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v228);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_157(&v297);
  OUTLINED_FUNCTION_76();
  v229 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v229);
  OUTLINED_FUNCTION_71((v40 + 21));
  v230 = v279;
  v294 = v278[4];
  v295 = v279;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();

  v231 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v231);

  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v298);

  v294 = v230;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v232 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v232);

  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_55();
  v233 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v233);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  LOBYTE(v294) = 2;
  OUTLINED_FUNCTION_76();
  v234 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v234);
  v235 = v284;
  v236 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_158(v236, v237, v238, v287);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v239, v240, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v241 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v241, v242, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_71((v40 + 28));
  LODWORD(v294) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v243 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v243);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_55();
  v244 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v244);
  OUTLINED_FUNCTION_71((v40 + 30));
  LOBYTE(v294) = 0;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v246);
  OUTLINED_FUNCTION_71((v40 + 31));
  LOBYTE(v294) = 0;
  OUTLINED_FUNCTION_76();
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v247);
  OUTLINED_FUNCTION_71((v40 + 32));
  OUTLINED_FUNCTION_187();
  *(v248 - 256) = v245;
  OUTLINED_FUNCTION_76();
  v249 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v249);
  OUTLINED_FUNCTION_71((v40 + 33));
  LOBYTE(v294) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v250 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v250);
  OUTLINED_FUNCTION_71((v40 + 34));

  OUTLINED_FUNCTION_55();
  v251 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v251);
  OUTLINED_FUNCTION_87();
  v300 = &type metadata for DummyLocationProvider;
  v301 = &protocol witness table for DummyLocationProvider;
  v252 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v252, v253);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v254 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v254);
  OUTLINED_FUNCTION_71((v40 + 36));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_72();
  v255 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v255);
  OUTLINED_FUNCTION_188();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v40 + 23));
  v256 = OUTLINED_FUNCTION_43();
  (v235)(v256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v257 = OUTLINED_FUNCTION_133();
  v245(v257);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v40 + 24));
  OUTLINED_FUNCTION_156();
  v235();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v258 = OUTLINED_FUNCTION_132();
  (v245)(v258, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v40 + 37));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_76();
  v259 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v259);
  OUTLINED_FUNCTION_71((v40 + 38));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_76();
  v260 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v260);
  OUTLINED_FUNCTION_71((v40 + 39));
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v261 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v261);
  OUTLINED_FUNCTION_311();
  v262 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v262, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v263 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v263, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v264 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v264, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v265 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v265);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  v266();
  v267 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v267, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v268 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v268, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_82();
  v269();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_81();
  v270();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = OUTLINED_FUNCTION_41();
  v49 = OUTLINED_FUNCTION_289(v31, v32);
  v50 = v33;
  OUTLINED_FUNCTION_54();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_174();
  v35 = OUTLINED_FUNCTION_39();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:)(v35, v36, v37, v38, a5, a6, a7, a8, v40, v41, v55, v56, v53, v54, v51, v52, v50, *(&v50 + 1), v49.n128_i64[0], v49.n128_i64[1], a21, a22, v42, v43, v44, v45, v46, v47, v48, a30, a28, a29, a26, a27, a21, a22, v49.n128_i64[0], v49.n128_i64[1], v50, *(&v50 + 1), v51, v52);
  return v34;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_265(v43, v44, v45, v46, v47, v48, v49, v50);
  OUTLINED_FUNCTION_163(v51, v52, v53, v54, v55, v56, v303);
  OUTLINED_FUNCTION_230(a42);
  OUTLINED_FUNCTION_200(a41);
  OUTLINED_FUNCTION_226(a40);
  OUTLINED_FUNCTION_223(a39);
  OUTLINED_FUNCTION_190(a38);
  OUTLINED_FUNCTION_229(a37);
  OUTLINED_FUNCTION_224(v57);
  v302 = a35;
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v58);
  OUTLINED_FUNCTION_10_0(v59);
  OUTLINED_FUNCTION_207(v60);
  OUTLINED_FUNCTION_98(v61);
  v62 = type metadata accessor for ExecutionLocation();
  v63 = OUTLINED_FUNCTION_4_1(v62, v323);
  v305[0] = v64;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v66);
  v67 = type metadata accessor for ResponseMode();
  v68 = OUTLINED_FUNCTION_4_1(v67, &v327);
  v316[1] = v69;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v71);
  v72 = type metadata accessor for InteractionType();
  v73 = OUTLINED_FUNCTION_4_1(v72, &v326);
  v316[0] = v74;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v76);
  v77 = type metadata accessor for InputOrigin();
  v78 = OUTLINED_FUNCTION_4_1(v77, &v328);
  v317 = v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v83 = OUTLINED_FUNCTION_10(v82);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v85 = MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_65(v85, v86, v87, v88, v89, v90, v91, v92, v294);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v94 = OUTLINED_FUNCTION_10(v93);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v96 = MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_66(v96, v97, v98, v99, v100, v101, v102, v103, v295);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v105 = OUTLINED_FUNCTION_10(v104);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_6_2(v106, v296);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_145();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v109 = OUTLINED_FUNCTION_10(v108);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_121();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v112 = OUTLINED_FUNCTION_10(v111);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_177();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_191();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v42[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v115 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v115);
  OUTLINED_FUNCTION_14(v116);
  OUTLINED_FUNCTION_73();
  v117 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v117);
  OUTLINED_FUNCTION_14(v118);
  OUTLINED_FUNCTION_73();
  v119 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v119);
  OUTLINED_FUNCTION_14(v120);
  OUTLINED_FUNCTION_73();
  v121 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v121);
  OUTLINED_FUNCTION_14(v122);
  OUTLINED_FUNCTION_73();
  v123 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v123);
  OUTLINED_FUNCTION_98(v124);
  v125 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_44(v125, v126, v127, v125);
  OUTLINED_FUNCTION_293(v297);
  outlined init with copy of AudioSource?(v128, v129, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_292();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v130, v131, v132);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v133);
  v134 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_20(v134, v135, v136, v134);
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v137, v138, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_183();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v139, v140, v141);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v142);
  v143 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_68(v143);
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v144, v145, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_292();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v146, v147, v148);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v149);
  v150 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v150, v151, v152, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v153, v154, v155);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v156);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_20(v157, v158, v159, v160);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v161, v162, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v163 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v163, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v165 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v165);
  OUTLINED_FUNCTION_14(v166);
  OUTLINED_FUNCTION_73();
  v167 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v167);
  OUTLINED_FUNCTION_144(v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v169 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v169);
  OUTLINED_FUNCTION_141(v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v171 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_266(v171);
  OUTLINED_FUNCTION_14(v172);
  OUTLINED_FUNCTION_73();
  v173 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v173);
  v323[16] = 2;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_73();
  v174 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v174);
  v176 = OUTLINED_FUNCTION_98(v175);
  v177 = type metadata accessor for FlowTaskMetadata(v176);
  v178 = OUTLINED_FUNCTION_294(v177, v310);
  v180 = *(v179 - 256);
  OUTLINED_FUNCTION_20(v178, v181, v182, v183);
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v184, v185, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v297[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v186 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v186, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_14(v187);
  OUTLINED_FUNCTION_73();
  v188 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v188);
  OUTLINED_FUNCTION_14(v189);
  OUTLINED_FUNCTION_73();
  v42[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v42[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v42[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v190 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v191 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_139(v191);
  OUTLINED_FUNCTION_86(&v298);

  OUTLINED_FUNCTION_22(&v299);
  v192 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_306(v192);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v300);

  OUTLINED_FUNCTION_22(&v302);
  v193 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v193);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(v303);

  OUTLINED_FUNCTION_22(v305);
  v194 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v194);

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v306);

  OUTLINED_FUNCTION_22(&v307);
  v195 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v195);

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(v308);

  OUTLINED_FUNCTION_22(v316);
  v196 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v196);

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_181();
  v180();
  OUTLINED_FUNCTION_71((v42 + 8));
  v197 = OUTLINED_FUNCTION_30(&v304);
  (v180)(v197);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v317 = v198;
  v200 = OUTLINED_FUNCTION_122(v199);
  v201(v200);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_47(&v309);
  OUTLINED_FUNCTION_178();
  v180();
  OUTLINED_FUNCTION_71((v42 + 9));
  v202 = OUTLINED_FUNCTION_30(&v313);
  (v180)(v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_38();
  v204 = OUTLINED_FUNCTION_122(v203);
  v205(v204);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v311);

  OUTLINED_FUNCTION_22(&v312);
  v206 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v206);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v207, v208, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v209, v210, v211, v212);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v213, v214, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v215, v216, v217, v218);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_46(&v314);
  OUTLINED_FUNCTION_166();
  _s13SiriUtilities16AudioDestinationVSgMR(v219);
  OUTLINED_FUNCTION_71((v42 + 13));
  v220 = OUTLINED_FUNCTION_23(&v315);
  _s13SiriUtilities16AudioDestinationVSgMR(v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_78();
  v222 = OUTLINED_FUNCTION_53(v221);
  v223(v222);
  OUTLINED_FUNCTION_247();
  v224 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v224, v225);
  OUTLINED_FUNCTION_88();
  v226 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v226, v227);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v228 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v228);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v229, v230, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  v231 = OUTLINED_FUNCTION_69();
  outlined init with copy of AudioSource?(v231, v232, v233, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v234 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v234, v235, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v236 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v236, v237, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_35();

  v238 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_312(v238, v239);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v240 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_278(v240);
  OUTLINED_FUNCTION_307();
  v241 = OUTLINED_FUNCTION_61();
  outlined init with copy of AudioSource?(v241, v242, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_280(v243, v244);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v245 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_277(v245);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  v246 = v301;
  OUTLINED_FUNCTION_228(v301);
  v318 = v246;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v247);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_209(&v318);
  OUTLINED_FUNCTION_72();
  v248 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v248);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_157(&v319 + 4);
  OUTLINED_FUNCTION_76();
  v249 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v249);
  OUTLINED_FUNCTION_71((v42 + 21));
  OUTLINED_FUNCTION_233();
  v251 = *(v250 - 256);
  v318 = v252;
  v319 = v251;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();

  v253 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v253);

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v320);

  v318 = v251;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v254 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v254);

  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_86(&v321);

  OUTLINED_FUNCTION_22(&v322);
  v255 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_203(v255);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_219();
  LOBYTE(v318) = 2;
  OUTLINED_FUNCTION_76();
  v256 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v256);
  v257 = v308[1];
  v258 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_158(v258, v259, v260, v310);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_123();
  outlined init with copy of AudioSource?(v261, v262, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v263 = OUTLINED_FUNCTION_124();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v263, v264, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_71((v42 + 28));
  LODWORD(v318) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v265 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v265);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_55();
  v266 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v266);
  OUTLINED_FUNCTION_71((v42 + 30));
  LOBYTE(v318) = 0;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v268 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v268);
  OUTLINED_FUNCTION_71((v42 + 31));
  LOBYTE(v318) = 0;
  OUTLINED_FUNCTION_76();
  v269 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v269);
  OUTLINED_FUNCTION_71((v42 + 32));
  OUTLINED_FUNCTION_187();
  *(v270 - 256) = v267;
  OUTLINED_FUNCTION_76();
  v271 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v271);
  OUTLINED_FUNCTION_71((v42 + 33));
  LOBYTE(v318) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v272 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v272);
  OUTLINED_FUNCTION_71((v42 + 34));

  OUTLINED_FUNCTION_55();
  v273 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v273);
  OUTLINED_FUNCTION_87();
  v324 = &type metadata for DummyLocationProvider;
  v325 = &protocol witness table for DummyLocationProvider;
  v274 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v274, v275);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v276 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v276);
  OUTLINED_FUNCTION_71((v42 + 36));

  OUTLINED_FUNCTION_283();
  *(v277 - 256) = v114;
  OUTLINED_FUNCTION_72();
  v278 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v278);
  OUTLINED_FUNCTION_188();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v42 + 23));
  v279 = OUTLINED_FUNCTION_43();
  (v257)(v279);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v280 = OUTLINED_FUNCTION_133();
  v267(v280);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v42 + 24));
  OUTLINED_FUNCTION_156();
  v257();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v281 = OUTLINED_FUNCTION_132();
  (v267)(v281, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v42 + 37));

  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_76();
  v282 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v282);
  OUTLINED_FUNCTION_71((v42 + 38));

  v318 = 0;
  v319 = 0;
  OUTLINED_FUNCTION_76();
  v283 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v283);
  OUTLINED_FUNCTION_71((v42 + 39));
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v284 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v284);
  OUTLINED_FUNCTION_311();
  v285 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v285, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v286 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v286, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v287 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v287, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v288 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v288);
  OUTLINED_FUNCTION_83();
  v289();
  v290 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v290, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v291 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v291, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_82();
  v292();
  OUTLINED_FUNCTION_81();
  v293();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_273(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_150(v10, v11);
  OUTLINED_FUNCTION_54();
  v12 = swift_allocObject();
  LOBYTE(v37) = v9;
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_237();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:)(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v47, v48, v45, v46, v43, v44, v30, v31, v32, v33, v34, v35, v36, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  return v12;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned __int8 a43)
{
  OUTLINED_FUNCTION_171();
  v46 = v43;
  v295 = v47;
  OUTLINED_FUNCTION_271(v48, v49, v50, &v312);
  v288 = v51;
  v289 = v52;
  v285 = v53;
  v286 = v54;
  v306 = a43;
  OUTLINED_FUNCTION_200(a42);
  v305 = a41;
  OUTLINED_FUNCTION_230(a40);
  OUTLINED_FUNCTION_226(a39);
  OUTLINED_FUNCTION_223(a38);
  OUTLINED_FUNCTION_229(a37);
  OUTLINED_FUNCTION_205(v55);
  OUTLINED_FUNCTION_224(a35);
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v56);
  OUTLINED_FUNCTION_10_0(v57);
  OUTLINED_FUNCTION_207(v58);
  OUTLINED_FUNCTION_98(v59);
  v60 = type metadata accessor for ExecutionLocation();
  v61 = OUTLINED_FUNCTION_4_1(v60, v330);
  v308 = v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v64);
  v65 = type metadata accessor for ResponseMode();
  v66 = OUTLINED_FUNCTION_4_1(v65, &v334);
  v321 = v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v69);
  v70 = type metadata accessor for InteractionType();
  v71 = OUTLINED_FUNCTION_4_1(v70, &v332);
  v319 = v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v74);
  v75 = type metadata accessor for InputOrigin();
  v76 = OUTLINED_FUNCTION_4_1(v75, &v333);
  v320 = v77;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v81 = OUTLINED_FUNCTION_10(v80);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v85 = OUTLINED_FUNCTION_10(v84);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v87 = MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_37(v87, v88, v89, v90, v91, v92, v93, v94, v280[0]);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v96 = OUTLINED_FUNCTION_10(v95);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_145();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v99 = OUTLINED_FUNCTION_10(v98);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_6_2(v100, v280[0]);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_235();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v103 = OUTLINED_FUNCTION_10(v102);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_12();
  v106 = v104 - v105;
  MEMORY[0x1EEE9AC00](v107);
  v109 = v280 - v108;
  OUTLINED_FUNCTION_191();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v43[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_73();
  v111 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v111);
  OUTLINED_FUNCTION_50(v112);
  OUTLINED_FUNCTION_73();
  v113 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v113);
  OUTLINED_FUNCTION_50(v114);
  OUTLINED_FUNCTION_73();
  v115 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v115);
  OUTLINED_FUNCTION_50(v116);
  OUTLINED_FUNCTION_73();
  v117 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v117);
  OUTLINED_FUNCTION_50(v118);
  OUTLINED_FUNCTION_73();
  v119 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v119);
  OUTLINED_FUNCTION_98(v120);
  type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  v280[6] = v109;
  v282 = v106;
  outlined init with copy of AudioSource?(v109, v106, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  v125 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_254(v109);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v126);
  type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  v281 = v44;
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v131, v132, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v133, v134, v135);
  v46[12] = v125;
  v136 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_68(v136);
  v287 = v45;
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v137, v138, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v139 = OUTLINED_FUNCTION_132();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v139, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v140);
  v141 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v141, v142, v143, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v144, v145, v146);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v147);
  type metadata accessor for HomeInfo();
  v148 = OUTLINED_FUNCTION_27(v331);
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v152, v153, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v154 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v154, v155, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v156);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v157 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v157);
  OUTLINED_FUNCTION_50(v158);
  OUTLINED_FUNCTION_73();
  v159 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v159);
  v293 = v160;
  v330[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v161 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v161);
  OUTLINED_FUNCTION_141(v162);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v163 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_266(v163);
  OUTLINED_FUNCTION_50(v164);
  OUTLINED_FUNCTION_73();
  v165 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v165);
  v296 = v166;
  v330[0] = 2;
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_73();
  v167 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v167);
  v169 = OUTLINED_FUNCTION_98(v168);
  v170 = type metadata accessor for FlowTaskMetadata(v169);
  v173 = OUTLINED_FUNCTION_64(v170, v171, v172, v170);
  outlined init with copy of AudioSource?(v173, v298[0], &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_160();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v174, v175, v176);
  v46[27] = v125;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_73();
  v177 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v177);
  OUTLINED_FUNCTION_50(v178);
  OUTLINED_FUNCTION_73();
  v46[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_73();
  v46[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_73();
  v46[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_73();
  v179 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v179);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v46[40] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_185((v46 + 3), v330);
  OUTLINED_FUNCTION_90(&v299);

  OUTLINED_FUNCTION_51(&v300);
  v180 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v180);

  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v302);

  OUTLINED_FUNCTION_51(&v303);
  v181 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v181);

  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v307);

  OUTLINED_FUNCTION_51(v310);
  v182 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v182);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v311);

  OUTLINED_FUNCTION_51(&v312);
  v183 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v183);

  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v313);

  OUTLINED_FUNCTION_51(&v318);
  v184 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v184);

  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_36(&v305);
  OUTLINED_FUNCTION_204();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v46 + 8));
  v185 = OUTLINED_FUNCTION_172(&v309);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v185);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v320 = v186;
  v188 = OUTLINED_FUNCTION_236(v187);
  v189(v188);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_47(&v314);
  OUTLINED_FUNCTION_204();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v46 + 9));
  v190 = OUTLINED_FUNCTION_172(&v315);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_38();
  v192 = OUTLINED_FUNCTION_236(v191);
  v193(v192);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_285();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v316);

  OUTLINED_FUNCTION_51(&v317);
  v194 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v194);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v195, v196, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v197, v198, v199, v200);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v201 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v201, v202, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v203, v204, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_185((v46 + 12), v330);

  OUTLINED_FUNCTION_26();
  outlined init with copy of AudioSource?(v205, v206, v207, v208);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v209 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v209, v210, &_s13SiriUtilities16AudioDestinationVSgMR);
  v46[12] = &_s13SiriUtilities16AudioDestinationVSgMR;
  swift_endAccess();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_46(&v319);
  OUTLINED_FUNCTION_204();
  _s13SiriUtilities16AudioDestinationVSgMR(v211);
  OUTLINED_FUNCTION_71((v46 + 13));
  v212 = OUTLINED_FUNCTION_172(&v320);
  _s13SiriUtilities16AudioDestinationVSgMR(v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_132();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_42();
  v321 = v213;
  v215 = OUTLINED_FUNCTION_236(v214);
  v216(v215);
  OUTLINED_FUNCTION_247();
  v217 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v217, v218);
  OUTLINED_FUNCTION_88();
  v219 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v219, v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v221 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v221);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v222, v223, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v224, v225, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v226 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v226, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  _s13SiriUtilities11AudioSourceVSgMR = &_s13SiriUtilities16AudioDestinationVSgMR;
  swift_endAccess();
  v227 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v227, v228, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_34();

  v229 = OUTLINED_FUNCTION_116();
  outlined init with copy of AudioSource?(v229, v230, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_167();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v231, v232, v233);
  _s13SiriUtilities11AudioSourceVSgMR = &_s13SiriUtilities16AudioDestinationVSgMR;
  swift_endAccess();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v234, v235, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v236, v237, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v238 = OUTLINED_FUNCTION_85();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v238, v239, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  v240 = v301;
  v311 = v301;

  v322 = v240;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v241 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v241);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_209(&v323);
  OUTLINED_FUNCTION_113();
  v242 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v242);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_157(&v324);
  OUTLINED_FUNCTION_114();
  v243 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v243);
  OUTLINED_FUNCTION_71((v46 + 21));
  v244 = v304;
  v322 = v303;
  v323 = v304;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();

  v245 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v245);

  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v325);

  v322 = v244;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v246);

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v326);

  OUTLINED_FUNCTION_51(&v327);
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v247);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_157(&v328);
  OUTLINED_FUNCTION_114();
  v248 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v248);
  OUTLINED_FUNCTION_71((v46 + 28));
  LODWORD(v322) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v249 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v249);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  v322 = 0;
  v323 = 0;
  OUTLINED_FUNCTION_113();
  v250 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v250);
  OUTLINED_FUNCTION_71((v46 + 30));
  LOBYTE(v322) = 0;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v252 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v252);
  OUTLINED_FUNCTION_71((v46 + 31));
  LOBYTE(v322) = 0;
  OUTLINED_FUNCTION_76();
  v253 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v253);
  OUTLINED_FUNCTION_71((v46 + 32));
  OUTLINED_FUNCTION_258();
  *(v254 - 256) = v251;
  OUTLINED_FUNCTION_76();
  v255 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v255);
  OUTLINED_FUNCTION_71((v46 + 33));
  LOBYTE(v322) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v256 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v256);
  OUTLINED_FUNCTION_71((v46 + 34));

  v322 = 0;
  v323 = 0;
  OUTLINED_FUNCTION_113();
  v257 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v257);
  OUTLINED_FUNCTION_87();
  v331[1] = &type metadata for DummyLocationProvider;
  v331[2] = &protocol witness table for DummyLocationProvider;
  v258 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v258, v259);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v260 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v260);
  OUTLINED_FUNCTION_71((v46 + 36));

  v322 = 0;
  v323 = 0;
  v280[0] = v110;
  OUTLINED_FUNCTION_113();
  v261 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v261);
  OUTLINED_FUNCTION_188();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v46 + 23));
  v262 = v308;
  v263 = *(v308 + 16);
  v264 = OUTLINED_FUNCTION_125(&v329);
  v265 = v309;
  v263(v264, &_s13SiriUtilities8HomeInfoVSgMd, v309);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v266 = *(v262 + 8);
  v266(&_s13SiriUtilities8HomeInfoVSgMd, v265);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v46 + 24));
  v263(v110, &_s13SiriUtilities8HomeInfoVSgMd, v265);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v267 = OUTLINED_FUNCTION_132();
  v266(v267, v265);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v46 + 37));

  v322 = 0;
  v323 = 0;
  OUTLINED_FUNCTION_76();
  v268 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v268);
  OUTLINED_FUNCTION_71((v46 + 38));

  v322 = 0;
  v323 = 0;
  OUTLINED_FUNCTION_76();
  v269 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v269);
  OUTLINED_FUNCTION_71((v46 + 39));
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v270 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v270);

  v271 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v271, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v272 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v272, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v273 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v273, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v274 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v274);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_81();
  v275();
  v276 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v276, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v277 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v277, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_82();
  v278();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83();
  v279();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

uint64_t CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_273(a1, a2, a3, a4, a5, a6, a7, a8);
  v66 = v34;
  OUTLINED_FUNCTION_150(a12, a11);
  OUTLINED_FUNCTION_54();
  v35 = swift_allocObject();
  LOBYTE(v55) = v33;
  OUTLINED_FUNCTION_174();
  v36 = OUTLINED_FUNCTION_19();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:)(v36, v37, v38, v66, v67, v68, v69, v70, v40, v41, v42, v43, v44, v45, v46, v47, v64, v65, v62, v63, v60, v61, v48, v49, v50, v51, v52, v53, v54, v32, v55, a32, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  return v35;
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_265(v44, v45, v46, v47, v48, v49, v50, v51);
  OUTLINED_FUNCTION_163(v52, v53, v54, v55, v56, v57, &v284);
  OUTLINED_FUNCTION_282();
  v283 = v58;
  OUTLINED_FUNCTION_223(a42);
  OUTLINED_FUNCTION_226(a41);
  OUTLINED_FUNCTION_190(a40);
  OUTLINED_FUNCTION_205(a39);
  OUTLINED_FUNCTION_224(a38);
  OUTLINED_FUNCTION_229(a37);
  OUTLINED_FUNCTION_206(v59);
  v279 = a35;
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v60);
  OUTLINED_FUNCTION_10_0(v61);
  OUTLINED_FUNCTION_207(v62);
  OUTLINED_FUNCTION_98(v63);
  v64 = type metadata accessor for ExecutionLocation();
  v65 = OUTLINED_FUNCTION_4_1(v64, &v306);
  v285 = v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v68);
  v69 = type metadata accessor for ResponseMode();
  v70 = OUTLINED_FUNCTION_4_1(v69, &v312);
  v297 = v71;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v73);
  v74 = type metadata accessor for InteractionType();
  v75 = OUTLINED_FUNCTION_4_1(v74, &v311);
  v296[2] = v76;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v78);
  v79 = type metadata accessor for InputOrigin();
  v80 = OUTLINED_FUNCTION_4_1(v79, &v313);
  v298 = v81;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v85 = OUTLINED_FUNCTION_10(v84);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v87 = MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_37(v87, v88, v89, v90, v91, v92, v93, v94, v273);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v96 = OUTLINED_FUNCTION_10(v95);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_6_2(v97, v274);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v101 = OUTLINED_FUNCTION_10(v100);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_146();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v104 = OUTLINED_FUNCTION_10(v103);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_121();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v107 = OUTLINED_FUNCTION_10(v106);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_177();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_191();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v42[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v110 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v110);
  OUTLINED_FUNCTION_14(v111);
  OUTLINED_FUNCTION_73();
  v112 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v112);
  OUTLINED_FUNCTION_14(v113);
  OUTLINED_FUNCTION_73();
  v114 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v114);
  OUTLINED_FUNCTION_14(v115);
  OUTLINED_FUNCTION_73();
  v116 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v116);
  OUTLINED_FUNCTION_14(v117);
  OUTLINED_FUNCTION_73();
  v118 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v118);
  OUTLINED_FUNCTION_98(v119);
  v120 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_64(v120, v121, v122, v120);
  OUTLINED_FUNCTION_293(v275);
  outlined init with copy of AudioSource?(v123, v124, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v125 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v125, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v126);
  v127 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_20(v127, v128, v129, v127);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v130, v131, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v132 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v132, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v133);
  v134 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_44(v134, v135, v136, v134);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v137, v138, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v139 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_278(v139);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v140);
  v141 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v141, v142, v143, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v144, v145, v146);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v147);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_90(&v308);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v152, v153, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v154 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_254(v154);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v156 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v156);
  OUTLINED_FUNCTION_14(v157);
  OUTLINED_FUNCTION_73();
  v158 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v158);
  v309[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v159 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v159);
  OUTLINED_FUNCTION_141(v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v161 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_266(v161);
  OUTLINED_FUNCTION_14(v162);
  OUTLINED_FUNCTION_73();
  v163 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v163);
  v309[0] = 2;
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_73();
  v164 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v164);
  v166 = OUTLINED_FUNCTION_98(v165);
  type metadata accessor for FlowTaskMetadata(v166);
  v167 = OUTLINED_FUNCTION_27(v310);
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v171, v172, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v173 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v173, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v42[27] = v43;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v174 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v174);
  OUTLINED_FUNCTION_14(v175);
  OUTLINED_FUNCTION_73();
  v42[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v42[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v42[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v176 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v177 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_139(v177);
  OUTLINED_FUNCTION_90(&v276);

  OUTLINED_FUNCTION_25(&v277);
  v178 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_306(v178);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v279);

  OUTLINED_FUNCTION_25(v280);
  v179 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v179);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v284);

  OUTLINED_FUNCTION_25(v286);
  v180 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v180);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v287);

  OUTLINED_FUNCTION_25(&v288);
  v181 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v181);

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v289);

  OUTLINED_FUNCTION_25(v296);
  v182 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v182);

  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_36(&v282);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v42 + 8));
  v183 = OUTLINED_FUNCTION_23(&v285);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_77();
  v185 = OUTLINED_FUNCTION_53(v184);
  v186(v185);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_47(&v290);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v42 + 9));
  v187 = OUTLINED_FUNCTION_23(&v293);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v187);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_269();
  v189 = OUTLINED_FUNCTION_53(v188);
  v190(v189);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v291);

  OUTLINED_FUNCTION_25(&v292);
  v191 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v191);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v192, v193, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_308();
  v194 = OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_138(v194, v275);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v195 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v195, v196, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v197, v198, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_308();
  v199 = OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_138(v199, &v307);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v200 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v200, v201, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_46(&v294);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v42 + 13));
  v202 = OUTLINED_FUNCTION_23(&v295);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  v203 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_78();
  v205 = OUTLINED_FUNCTION_53(v204);
  v206(v205);
  OUTLINED_FUNCTION_247();
  v207 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v207, v208);
  OUTLINED_FUNCTION_88();
  v209 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v209, v210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v211 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v211);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v212, v213, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v214, v215, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v216 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v216, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v217 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v217, v218, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_34();

  v219 = OUTLINED_FUNCTION_116();
  outlined init with copy of AudioSource?(v219, v220, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_167();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v221, v222, v223);
  _s19SiriFlowEnvironment0B12TaskMetadataVSgMd = v203;
  swift_endAccess();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v224, v225, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_280(v226, v227);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v228 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_277(v228);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  v229 = v278;
  v288 = v278;

  v299 = v229;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v230 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v230);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_209(&v297);
  OUTLINED_FUNCTION_72();
  v231 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v231);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_140(&v298 + 4);
  v232 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v232);
  OUTLINED_FUNCTION_71((v42 + 21));
  v233 = v281;
  v299 = v280[1];
  v300 = v281;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();

  v234 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v234);

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v301);

  v299 = v233;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v235 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v235);

  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v302);

  OUTLINED_FUNCTION_25(&v303);
  v236 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v236);

  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_140(&v304);
  v237 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v237);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_159();
  v240 = outlined init with copy of AudioSource?(v238, v239, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_143(v240, v309);

  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v241, v242, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v243 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v243, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_71((v42 + 28));
  LODWORD(v299) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v244 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v244);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_55();
  v42[27] = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71((v42 + 30));
  LOBYTE(v299) = 0;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v246);
  OUTLINED_FUNCTION_71((v42 + 31));
  LOBYTE(v299) = 0;
  OUTLINED_FUNCTION_76();
  v247 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v247);
  OUTLINED_FUNCTION_71((v42 + 32));
  OUTLINED_FUNCTION_258();
  *(v248 - 256) = v245;
  OUTLINED_FUNCTION_76();
  v249 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v249);
  OUTLINED_FUNCTION_71((v42 + 33));
  LOBYTE(v299) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v250 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v250);
  OUTLINED_FUNCTION_71((v42 + 34));

  OUTLINED_FUNCTION_55();
  v251 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v251);
  OUTLINED_FUNCTION_87();
  v310[1] = &type metadata for DummyLocationProvider;
  v311 = &protocol witness table for DummyLocationProvider;
  v252 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v252, v253);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v254 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v254);
  OUTLINED_FUNCTION_71((v42 + 36));

  OUTLINED_FUNCTION_283();
  *(v255 - 256) = v109;
  OUTLINED_FUNCTION_72();
  v256 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v256);
  OUTLINED_FUNCTION_175();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v42 + 23));
  v257 = *(v285 + 16);
  OUTLINED_FUNCTION_125(&v305);
  OUTLINED_FUNCTION_304();
  v257();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v258 = OUTLINED_FUNCTION_298();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMR)(v258);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v42 + 24));
  (v257)(&_s13SiriUtilities8HomeInfoVSgMd, v245, v109);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v259 = OUTLINED_FUNCTION_118();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMR)(v259, v109);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v42 + 37));

  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_76();
  v260 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v260);
  OUTLINED_FUNCTION_71((v42 + 38));

  v299 = 0;
  v300 = 0;
  OUTLINED_FUNCTION_76();
  v261 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v261);
  OUTLINED_FUNCTION_71((v42 + 39));
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v262 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v262);

  v263 = OUTLINED_FUNCTION_300();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v263, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v264 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v264, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v265 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v265, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v266 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v266, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v267 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v267);
  OUTLINED_FUNCTION_83();
  v268();
  v269 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v269, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v270 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v270, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_82();
  v271();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_81();
  v272();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

void CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:voiceAudioSessionId:isSystemApertureEnabled:isInAmbient:positionInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned __int8 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, int a45, __int16 a46, uint64_t a47)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_273(v47, v48, v49, v50, v51, v52, v53, v54);
  v65 = v55;
  v66 = v56;
  v63 = v57;
  v64 = v58;
  WORD2(v61) = a46;
  LODWORD(v61) = a45;
  LOBYTE(v60) = a43;
  LOBYTE(v59) = a37;
  swift_allocObject();
  CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:voiceAudioSessionId:isSystemApertureEnabled:isInAmbient:positionInSession:)(v63, v64, v65, v66, v67, v68, v69, v70, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v59, a38, a39, a40, a41, a42, v60, a44, v61, a47, a40, a41, a38, a39, v62, a35, a33, a34, a31, a32, a29, BYTE4(a29), BYTE5(a29), a30);
  OUTLINED_FUNCTION_170();
}

void CurrentRequest.init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:voiceAudioSessionId:isSystemApertureEnabled:isInAmbient:positionInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, unsigned __int8 a46, unsigned __int8 a47, unsigned __int8 *a48)
{
  OUTLINED_FUNCTION_171();
  v49 = v48;
  v277[1] = a47;
  v277[0] = a46;
  v276 = a45;
  OUTLINED_FUNCTION_282();
  v275 = v50;
  OUTLINED_FUNCTION_205(a42);
  OUTLINED_FUNCTION_190(a41);
  OUTLINED_FUNCTION_224(a40);
  v272 = a39;
  OUTLINED_FUNCTION_206(a38);
  OUTLINED_FUNCTION_229(a37);
  v270 = v51;
  v269 = a35;
  OUTLINED_FUNCTION_1_4(a34);
  OUTLINED_FUNCTION_208(v52);
  OUTLINED_FUNCTION_10_0(v53);
  OUTLINED_FUNCTION_207(v54);
  v55 = type metadata accessor for ExecutionLocation();
  v56 = OUTLINED_FUNCTION_4_1(v55, &v301);
  v279 = v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v59);
  v60 = type metadata accessor for ResponseMode();
  v61 = OUTLINED_FUNCTION_4_1(v60, &v307);
  v293[1] = v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v64);
  v65 = type metadata accessor for InteractionType();
  v66 = OUTLINED_FUNCTION_4_1(v65, &v306);
  v293[0] = v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_21(v69);
  v70 = type metadata accessor for InputOrigin();
  v71 = OUTLINED_FUNCTION_4_1(v70, &v308);
  v293[2] = v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v76 = OUTLINED_FUNCTION_10(v75);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_37(v78, v79, v80, v81, v82, v83, v84, v85, v263);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v87 = OUTLINED_FUNCTION_10(v86);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_6_2(v88, v264);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_91(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v92 = OUTLINED_FUNCTION_10(v91);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_146();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v95 = OUTLINED_FUNCTION_10(v94);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_121();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v98 = OUTLINED_FUNCTION_10(v97);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_177();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_180();
  v274 = *a48;
  v48[2] = 0;
  v304[0] = 0;
  v304[1] = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v48[3] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v101 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_210(v101);
  OUTLINED_FUNCTION_14(v102);
  OUTLINED_FUNCTION_73();
  v103 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_216(v103);
  OUTLINED_FUNCTION_14(v104);
  OUTLINED_FUNCTION_73();
  v105 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_215(v105);
  OUTLINED_FUNCTION_14(v106);
  OUTLINED_FUNCTION_73();
  v107 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_213(v107);
  OUTLINED_FUNCTION_14(v108);
  OUTLINED_FUNCTION_73();
  v109 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_227(v109);
  OUTLINED_FUNCTION_98(v110);
  v111 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_64(v111, v112, v113, v111);
  OUTLINED_FUNCTION_293(v265);
  outlined init with copy of AudioSource?(v114, v115, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11AudioSourceVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();
  MockablePublished.init(wrappedValue:)();
  v116 = OUTLINED_FUNCTION_111();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v116, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_98(v117);
  v118 = type metadata accessor for AudioDestination();
  OUTLINED_FUNCTION_20(v118, v119, v120, v118);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v121, v122, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA16AudioDestinationVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v123 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v123, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_98(v124);
  v125 = type metadata accessor for BargeInContext();
  OUTLINED_FUNCTION_44(v125, v126, v127, v125);
  OUTLINED_FUNCTION_131();
  outlined init with copy of AudioSource?(v128, v129, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA14BargeInContextVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_99();
  MockablePublished.init(wrappedValue:)();
  v130 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_278(v130);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24(v131);
  v132 = OUTLINED_FUNCTION_80();
  outlined init with copy of AudioSource?(v132, v133, v134, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment20SharedContextService_pSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_128();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v135, v136, v137);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_98(v138);
  type metadata accessor for HomeInfo();
  OUTLINED_FUNCTION_90(&v303);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v143, v144, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMd, &_s13SiriUtilities17MockablePublishedCyAA8HomeInfoVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v145 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_254(v145);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_141(v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMd, &_s13SiriUtilities17MockablePublishedCySo15AFSpeechPackageCSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v147 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_199(v147);
  OUTLINED_FUNCTION_14(v148);
  OUTLINED_FUNCTION_73();
  v149 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_197(v149);
  LOBYTE(v304[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbSgGMd, &_s13SiriUtilities17MockablePublishedCySbSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v150 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_198(v150);
  OUTLINED_FUNCTION_141(v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMd, &_s13SiriUtilities17MockablePublishedCySDyS2SGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v152 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_266(v152);
  OUTLINED_FUNCTION_14(v153);
  OUTLINED_FUNCTION_73();
  v154 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_192(v154);
  LOBYTE(v304[0]) = 2;
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_73();
  v155 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_193(v155);
  v157 = OUTLINED_FUNCTION_98(v156);
  type metadata accessor for FlowTaskMetadata(v157);
  v158 = OUTLINED_FUNCTION_27(v305);
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
  OUTLINED_FUNCTION_168();
  outlined init with copy of AudioSource?(v162, v163, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0E12TaskMetadataVSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  MockablePublished.init(wrappedValue:)();
  v164 = OUTLINED_FUNCTION_99();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v164, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v48[27] = a48;
  v165 = v48 + 27;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v166 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_194(v166);
  OUTLINED_FUNCTION_14(v167);
  OUTLINED_FUNCTION_73();
  v48[34] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v48[36] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v48[37] = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_73();
  v168 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_189(v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMd, &_s13SiriUtilities17MockablePublishedCySDy0A15FlowEnvironment23CurrentRequestOverridesO5FieldOypGSgGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_73();
  v169 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_139(v169);
  OUTLINED_FUNCTION_90(&v266);

  OUTLINED_FUNCTION_25(&v267);
  v170 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_306(v170);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v270);

  OUTLINED_FUNCTION_25(&v271);
  v171 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v171);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v278);

  OUTLINED_FUNCTION_25(&v280);
  v172 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v172);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v281);

  OUTLINED_FUNCTION_25(&v282);
  v173 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v173);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v283);

  OUTLINED_FUNCTION_25(&v291);
  v174 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v174);

  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_36(&v273);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v48 + 8));
  v175 = OUTLINED_FUNCTION_23(v277);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMd, &_s13SiriUtilities17MockablePublishedCyAA11InputOriginOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_77();
  v177 = OUTLINED_FUNCTION_53(v176);
  v178(v177);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_47(v285);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v48 + 9));
  v179 = OUTLINED_FUNCTION_23(&v288);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v179);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMd, &_s13SiriUtilities17MockablePublishedCyAA15InteractionTypeOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_269();
  v181 = OUTLINED_FUNCTION_53(v180);
  v182(v181);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v286);

  OUTLINED_FUNCTION_25(&v287);
  v183 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v183);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v184, v185, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_308();
  v186 = OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_138(v186, v265);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v187 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v187, v188, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v189, v190, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_308();
  v191 = OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_138(v191, &v302);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v192 = OUTLINED_FUNCTION_84();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v192, v193, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd);
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_46(&v289);
  OUTLINED_FUNCTION_166();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)();
  OUTLINED_FUNCTION_71((v48 + 13));
  v194 = OUTLINED_FUNCTION_23(&v290);
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMd)(v194);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMd, &_s13SiriUtilities17MockablePublishedCyAA12ResponseModeVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  v195 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_78();
  v197 = OUTLINED_FUNCTION_53(v196);
  v198(v197);
  OUTLINED_FUNCTION_247();
  v199 = OUTLINED_FUNCTION_151();
  outlined init with copy of MultiUserState(v199, v200);
  OUTLINED_FUNCTION_88();
  v201 = OUTLINED_FUNCTION_116();
  outlined init with copy of MultiUserState(v201, v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment14MultiUserStateOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  v203 = OUTLINED_FUNCTION_73();
  outlined destroy of MultiUserState(v203);
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v204, v205, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_137();
  outlined init with copy of AudioSource?(v206, v207, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v208 = OUTLINED_FUNCTION_119();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v208, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  OUTLINED_FUNCTION_232();
  v209 = OUTLINED_FUNCTION_79();
  outlined init with copy of AudioSource?(v209, v210, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_34();

  v211 = OUTLINED_FUNCTION_116();
  outlined init with copy of AudioSource?(v211, v212, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_167();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v213, v214, v215);
  _s19SiriFlowEnvironment0B12TaskMetadataVSgMd = v195;
  swift_endAccess();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_159();
  outlined init with copy of AudioSource?(v216, v217, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_280(v218, v219);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_111();
  MockablePublished.init(wrappedValue:)();
  v220 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_277(v220);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  v221 = v268;
  v284 = v268;

  v294 = v221;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v222 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v222);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_209(&v292);
  OUTLINED_FUNCTION_72();
  v223 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v223);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_140(v293 + 4);
  v224 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v224);
  OUTLINED_FUNCTION_71((v49 + 21));
  v225 = v272;
  v294 = v271;
  v295 = v272;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSGMd, &_s13SiriUtilities17MockablePublishedCySSGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_118();

  v226 = MockablePublished.init(wrappedValue:)();
  OUTLINED_FUNCTION_245(v226);

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v294);

  v294 = v225;
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v227 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v227);

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_90(&v295);

  OUTLINED_FUNCTION_25(&v296);
  v228 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_202(v228);

  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_140(&v298);
  v229 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_217(v229);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_159();
  v232 = outlined init with copy of AudioSource?(v230, v231, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_143(v232, v304);

  OUTLINED_FUNCTION_117();
  outlined init with copy of AudioSource?(v233, v234, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_119();
  MockablePublished.init(wrappedValue:)();
  v235 = OUTLINED_FUNCTION_118();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v235, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_71((v49 + 28));
  LODWORD(v294) = v276;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCys6UInt32VGMd, &_s13SiriUtilities17MockablePublishedCys6UInt32VGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v236 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_243(v236);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_55();
  *v165 = OUTLINED_FUNCTION_186();
  swift_endAccess();
  OUTLINED_FUNCTION_71((v49 + 30));
  OUTLINED_FUNCTION_157(&v299);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v238 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_242(v238);
  OUTLINED_FUNCTION_71((v49 + 31));
  LOBYTE(v294) = 0;
  OUTLINED_FUNCTION_76();
  v239 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_241(v239);
  OUTLINED_FUNCTION_71((v49 + 32));
  OUTLINED_FUNCTION_157(&v299 + 4);
  v285[1] = v237;
  OUTLINED_FUNCTION_76();
  v240 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_240(v240);
  OUTLINED_FUNCTION_71((v49 + 33));
  OUTLINED_FUNCTION_157(&v297);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment24RequestPositionInSessionOGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v241 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_239(v241);
  OUTLINED_FUNCTION_71((v49 + 34));

  OUTLINED_FUNCTION_55();
  v242 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_253(v242);
  OUTLINED_FUNCTION_87();
  v305[1] = &type metadata for DummyLocationProvider;
  v306 = &protocol witness table for DummyLocationProvider;
  v243 = OUTLINED_FUNCTION_116();
  outlined init with copy of SiriLocationProvider(v243, v244);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment0A16LocationProvider_pGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v245 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_67(v245);
  OUTLINED_FUNCTION_71((v49 + 36));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_72();
  v246 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_252(v246);
  OUTLINED_FUNCTION_175();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v49 + 23));
  v247 = *(v279 + 16);
  OUTLINED_FUNCTION_125(&v300);
  OUTLINED_FUNCTION_304();
  v247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMd, &_s13SiriUtilities17MockablePublishedCyAA17ExecutionLocationVGMR);
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v248 = OUTLINED_FUNCTION_298();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMR)(v248);
  OUTLINED_FUNCTION_274();
  static ExecutionLocation.unknown.getter();
  OUTLINED_FUNCTION_71((v49 + 24));
  (v247)(&_s13SiriUtilities8HomeInfoVSgMd, v237, v100);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_104();
  MockablePublished.init(wrappedValue:)();
  v249 = OUTLINED_FUNCTION_118();
  (_s19SiriFlowEnvironment0B12TaskMetadataVSgMR)(v249, v100);
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_71((v49 + 37));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_76();
  v250 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_251(v250);
  OUTLINED_FUNCTION_71((v49 + 38));

  v294 = 0;
  v295 = 0;
  OUTLINED_FUNCTION_76();
  v251 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_250(v251);
  OUTLINED_FUNCTION_71((v49 + 39));
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_70();
  swift_allocObject();
  v252 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_255(v252);

  v253 = OUTLINED_FUNCTION_300();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v253, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v254 = OUTLINED_FUNCTION_153();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v254, &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v255 = OUTLINED_FUNCTION_154();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v255, &_s19SiriFlowEnvironment20SharedContextService_pSgMd, &_s19SiriFlowEnvironment20SharedContextService_pSgMR);
  v256 = OUTLINED_FUNCTION_152();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v256, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v257 = OUTLINED_FUNCTION_151();
  outlined destroy of MultiUserState(v257);
  OUTLINED_FUNCTION_83();
  v258();
  v259 = OUTLINED_FUNCTION_155();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v259, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v260 = OUTLINED_FUNCTION_142();
  outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v260, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_82();
  v261();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_81();
  v262();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_170();
}

unint64_t lazy protocol witness table accessor for type RequestPositionInSession and conformance RequestPositionInSession()
{
  result = lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession;
  if (!lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession;
  if (!lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPositionInSession and conformance RequestPositionInSession);
  }

  return result;
}

uint64_t dispatch thunk of CurrentRequest.__allocating_init(refId:aceId:executionRequestId:sessionHandoffContinuityID:peerName:inputOrigin:interactionType:interactionId:audioSource:audioDestination:responseMode:multiUserState:bargeInContext:sharedContextService:originatingHome:speechPackage:resultCandidateId:asrOnDevice:currentDeviceAssistantId:voiceTriggerEventInfo:companionName:isRecognizeMyVoiceEnabled:flowTaskMetadata:voiceAudioSessionId:isSystemApertureEnabled:isInAmbient:positionInSession:)()
{
  v2 = *(v0 + 448);

  return v2();
}

void OUTLINED_FUNCTION_1_4(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 44) = v2[14];
  *(v2 - 43) = v2[13];
  *(v2 - 42) = v2[12];
  *(v2 - 41) = v2[11];
  *(v2 - 40) = v2[10];
  *(v2 - 39) = v2[9];
  *(v2 - 38) = v2[8];
}

uint64_t OUTLINED_FUNCTION_14@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 160) = 0;
  *(v2 - 152) = 0;

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_18(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(a1 - 256);
  *(v2 - 248) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(a1 - 256);
  *(v2 - 248) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 160) = 0;
  *(v2 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(a1 - 256);
  *(v2 - 248) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52()
{
  *(v2 - 256) = v0;
  *(v2 - 248) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return static MockablePublished.subscript.setter();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_100@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(a1 - 256);
  *(v2 - 248) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return outlined init with copy of AudioSource?(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return outlined init with copy of AudioSource?(a1, v5, v3, v2);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{
  *(v1 + 320) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_165()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_179()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_191()
{
  *(v0 + 16) = 0;
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_209(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 256) = v1;
  *(v2 - 248) = v3;
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1)
{
  *(v1 - 400) = a1;
}

uint64_t OUTLINED_FUNCTION_231()
{

  return MockablePublished.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_232()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_241(uint64_t a1)
{
  *(v1 + 248) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_242(uint64_t a1)
{
  *(v1 + 240) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_243(uint64_t a1)
{
  *(v1 + 224) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1)
{
  *(v1 + 168) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_250(uint64_t a1)
{
  *(v1 + 304) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_252(uint64_t a1)
{
  *(v1 + 288) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_254(uint64_t a1)
{

  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1)
{
  *(v1 + 312) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_256()
{
  *(v0 + 192) = v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_257()
{
}

void OUTLINED_FUNCTION_262()
{
  v1 = *(v0 - 464);
  *(v0 - 256) = *(v0 - 472);
  *(v0 - 248) = v1;
}

void OUTLINED_FUNCTION_271(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 688) = a2;
  *(v4 - 664) = a1;
}

void OUTLINED_FUNCTION_273(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 104) = a7;
  *(v8 - 96) = a8;
  *(v8 - 120) = a5;
  *(v8 - 112) = a6;
}

uint64_t OUTLINED_FUNCTION_277(uint64_t a1)
{

  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_278(uint64_t a1)
{

  return outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_281()
{
}

__n128 OUTLINED_FUNCTION_289(__n128 a1, __n128 a2)
{
  *(v2 - 144) = a1;
  *(v2 - 128) = a2;
  v3 = *(v2 + 48);
  *(v2 - 176) = *(v2 + 64);
  *(v2 - 160) = v3;
  return *(v2 + 96);
}

uint64_t OUTLINED_FUNCTION_305()
{
}

uint64_t OUTLINED_FUNCTION_306(uint64_t a1)
{
  *v1 = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_307()
{
  *v1 = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_308()
{
}

uint64_t OUTLINED_FUNCTION_309()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_310()
{
}

void OUTLINED_FUNCTION_311()
{
  v2 = *(v0 - 400);
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of AudioSource?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_313()
{

  return swift_getKeyPath();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000005FLL;
  v3 = 0x6D726F6674616C50;
  v4 = a1;
  v5 = 0x6D726F6674616C50;
  v6 = 0xE90000000000005FLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x776F6C6C41435544;
      break;
    case 3:
      v5 = 0x776F6C6C41435544;
      goto LABEL_13;
    case 4:
      v5 = 0xD000000000000016;
      v7 = "rm_";
      goto LABEL_11;
    case 5:
      v6 = 0x80000001DD3874E0;
      v5 = 0xD000000000000013;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v5 = 0x6C6C41796E6544;
      break;
    case 7:
      v5 = 0x656C74746F726854;
      v6 = 0xEF73726F72724564;
      break;
    case 8:
      v5 = 0x6E6970736C696154;
LABEL_13:
      v6 = 0xEC0000007473694CLL;
      break;
    case 9:
      v6 = 0x80000001DD387520;
      v5 = 0xD00000000000001FLL;
      break;
    case 10:
      v5 = 0xD000000000000016;
      v7 = "ErrorSignatureAllowListOverride";
LABEL_11:
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      v6 = 0x80000001DD387480;
      v5 = 0xD000000000000019;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x776F6C6C41435544;
      break;
    case 3:
      v3 = 0x776F6C6C41435544;
      goto LABEL_26;
    case 4:
      v3 = 0xD000000000000016;
      v8 = "rm_";
      goto LABEL_24;
    case 5:
      v2 = 0x80000001DD3874E0;
      v3 = 0xD000000000000013;
      break;
    case 6:
      v2 = 0xE700000000000000;
      v3 = 0x6C6C41796E6544;
      break;
    case 7:
      v3 = 0x656C74746F726854;
      v2 = 0xEF73726F72724564;
      break;
    case 8:
      v3 = 0x6E6970736C696154;
LABEL_26:
      v2 = 0xEC0000007473694CLL;
      break;
    case 9:
      v2 = 0x80000001DD387520;
      v3 = 0xD00000000000001FLL;
      break;
    case 10:
      v3 = 0xD000000000000016;
      v8 = "ErrorSignatureAllowListOverride";
LABEL_24:
      v2 = v8 | 0x8000000000000000;
      break;
    default:
      v2 = 0x80000001DD387480;
      v3 = 0xD000000000000019;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_5_2();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_5_2();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12AE320](a2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t Policy.supportedOperatingSystems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Policy.ducAllowList.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Policy.errorSignatureDenyList.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Policy.tailspinList.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Policy.errorSignatureAllowListOverride.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void __swiftcall Policy.init(supportedOperatingSystems:ducAllowList:errorSignatureDenyList:denyAllErrorSignatures:tailspinList:errorSignatureAllowListOverride:srtRegressionInSeconds:)(SiriFlowEnvironment::Policy *__return_ptr retstr, Swift::OpaquePointer supportedOperatingSystems, Swift::OpaquePointer ducAllowList, Swift::OpaquePointer errorSignatureDenyList, Swift::Bool denyAllErrorSignatures, Swift::OpaquePointer tailspinList, Swift::OpaquePointer errorSignatureAllowListOverride, Swift::Double srtRegressionInSeconds)
{
  retstr->supportedOperatingSystems = supportedOperatingSystems;
  retstr->ducAllowList = ducAllowList;
  retstr->errorSignatureDenyList = errorSignatureDenyList;
  retstr->denyAllErrorSignatures = denyAllErrorSignatures;
  retstr->tailspinList = tailspinList;
  retstr->errorSignatureAllowListOverride = errorSignatureAllowListOverride;
  retstr->srtRegressionInSeconds = srtRegressionInSeconds;
}

SiriFlowEnvironment::TapToRadarWithPolicyManager::DefaultPolicyKeys_optional __swiftcall TapToRadarWithPolicyManager.DefaultPolicyKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TapToRadarWithPolicyManager.DefaultPolicyKeys.init(rawValue:), v3);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TapToRadarWithPolicyManager.DefaultPolicyKeys.rawValue.getter()
{
  result = 0x6D726F6674616C50;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x776F6C6C41435544;
      break;
    case 3:
      result = 0x776F6C6C41435544;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = OUTLINED_FUNCTION_21_0();
      break;
    case 7:
      result = 0x656C74746F726854;
      break;
    case 8:
      result = 0x6E6970736C696154;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TapToRadarWithPolicyManager.DefaultPolicyKeys@<X0>(uint64_t *a1@<X8>)
{
  result = TapToRadarWithPolicyManager.DefaultPolicyKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *TapToRadarWithPolicyManager.init(data:)(uint64_t a1, unint64_t a2)
{
  static TapToRadarWithPolicyManager.policy(fromPlistData:)();
  *(v2 + 136) = v7;
  *(v2 + 152) = v8;
  *(v2 + 168) = v9;
  *(v2 + 184) = v10;
  v5 = TapToRadarManager.init()();
  outlined consume of Data._Representation(a1, a2);
  return v5;
}

void static TapToRadarWithPolicyManager.policy(fromPlistData:)()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v111 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v103 - v10;
  v12 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v109 = 0;
  v14 = [v12 propertyListWithData:isa options:0 format:0 error:&v109];

  if (v14)
  {
    v15 = v109;
    OUTLINED_FUNCTION_27_0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      v16 = v108[0];
      v17 = specialized Dictionary.subscript.getter(0xD000000000000019, 0x80000001DD387480, v108[0]);
      v18 = MEMORY[0x1E69E7CC0];
      v105 = v1;
      if (v17)
      {
        *&v109 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (swift_dynamicCast())
        {
          v18 = v108[0];
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      v104 = v18;
      v24 = static TapToRadarWithPolicyManager.translateDeviceToPlatform()();
      v26 = v25;
      *&v109 = 0x6D726F6674616C50;
      *(&v109 + 1) = 0xE90000000000005FLL;
      MEMORY[0x1E12ADF70]();
      v27 = specialized Dictionary.subscript.getter(v109, *(&v109 + 1), v16);

      if (!v27)
      {

        static Logger.logger.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_22_0();
          v37 = OUTLINED_FUNCTION_28_0();
          *&v109 = v37;
          *v36 = 136315138;
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v109);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_1DD354000, v34, v35, "TapToRadarWithPolicyManager#policy unable to find a policy for the platform '%s'", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_9_2();
        }

        else
        {
        }

        (*(v4 + 8))(v11, v2);
        v39 = v105;
        *(v105 + 48) = 0;
        v39[1] = 0u;
        v39[2] = 0u;
        *v39 = 0u;
        goto LABEL_99;
      }

      if ([v27 respondsToSelector_])
      {
        v28 = MEMORY[0x1E12ADF20](0x776F6C6C41435544, 0xEC0000007473694CLL);
        v29 = OUTLINED_FUNCTION_18_0();
        v31 = [v29 v30];

        if (v31)
        {
          OUTLINED_FUNCTION_27_0();
          swift_unknownObjectRelease();
          v33 = v109;
          v32 = v110;
        }

        else
        {
          v32.n128_f64[0] = OUTLINED_FUNCTION_16_0();
        }
      }

      else
      {
        v32 = xmmword_1DD386D30;
        v33 = 0uLL;
      }

      OUTLINED_FUNCTION_3_4(v32, v33);
      if (v40)
      {
        v41 = &_sypSgSgMd;
        v42 = &_sypSgSgMR;
        v43 = v108;
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (v44)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
          OUTLINED_FUNCTION_12_0();
          v45 = OUTLINED_FUNCTION_19_0();
          v46 = v106;
          if (!v45)
          {
            v46 = 0;
          }

          v103 = v46;
LABEL_30:
          if (OUTLINED_FUNCTION_10_1())
          {
            OUTLINED_FUNCTION_26_0();
            v48 = v47;
            v49 = OUTLINED_FUNCTION_18_0();
            v51 = [v49 v50];

            if (v51)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              v53 = v106;
              v52 = v107;
            }

            else
            {
              v52.n128_f64[0] = OUTLINED_FUNCTION_16_0();
            }
          }

          else
          {
            v52 = xmmword_1DD386D30;
            v53 = 0uLL;
          }

          OUTLINED_FUNCTION_3_4(v52, v53);
          if (v40)
          {
            v54 = &_sypSgSgMd;
            v55 = &_sypSgSgMR;
            v56 = v108;
          }

          else
          {
            OUTLINED_FUNCTION_2_3();
            if (v57)
            {
              if (swift_dynamicCast())
              {
                v58 = v106;

                v59 = OUTLINED_FUNCTION_21_0();
                v60 = specialized Dictionary.subscript.getter(v59, 0xE700000000000000, v58);

                v61 = v60 && (*&v109 = v60, (OUTLINED_FUNCTION_19_0() & 1) != 0) && v108[0] != 0;
LABEL_46:
                if (OUTLINED_FUNCTION_10_1())
                {
                  v62 = MEMORY[0x1E12ADF20](0xD00000000000001FLL, 0x80000001DD387520);
                  v63 = OUTLINED_FUNCTION_18_0();
                  v65 = [v63 v64];

                  if (v65)
                  {
                    OUTLINED_FUNCTION_27_0();
                    swift_unknownObjectRelease();
                    v67 = v109;
                    v66 = v110;
                  }

                  else
                  {
                    v66.n128_f64[0] = OUTLINED_FUNCTION_16_0();
                  }
                }

                else
                {
                  v66 = xmmword_1DD386D30;
                  v67 = 0uLL;
                }

                OUTLINED_FUNCTION_3_4(v66, v67);
                if (v40)
                {
                  v68 = &_sypSgSgMd;
                  v69 = &_sypSgSgMR;
                  v70 = v108;
                }

                else
                {
                  OUTLINED_FUNCTION_2_3();
                  if (v71)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                    OUTLINED_FUNCTION_12_0();
                    if (OUTLINED_FUNCTION_19_0())
                    {
                      v72 = v106;
                    }

                    else
                    {
                      v72 = 0;
                    }

                    goto LABEL_60;
                  }

                  v68 = &_sypSgMd;
                  v69 = &_sypSgMR;
                  v70 = &v109;
                }

                outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v70, v68, v69);
                v72 = 0;
LABEL_60:
                if (OUTLINED_FUNCTION_10_1())
                {
                  OUTLINED_FUNCTION_26_0();
                  v74 = v73;
                  v75 = OUTLINED_FUNCTION_18_0();
                  v77 = [v75 v76];

                  if (v77)
                  {
                    OUTLINED_FUNCTION_27_0();
                    swift_unknownObjectRelease();
                    v79 = v109;
                    v78 = v110;
                  }

                  else
                  {
                    v78.n128_f64[0] = OUTLINED_FUNCTION_16_0();
                  }
                }

                else
                {
                  v78 = xmmword_1DD386D30;
                  v79 = 0uLL;
                }

                OUTLINED_FUNCTION_3_4(v78, v79);
                if (v40)
                {
                  v80 = &_sypSgSgMd;
                  v81 = &_sypSgSgMR;
                  v82 = v108;
                }

                else
                {
                  OUTLINED_FUNCTION_2_3();
                  if (v83)
                  {
                    if (OUTLINED_FUNCTION_19_0())
                    {
                      v84 = v106;
                      goto LABEL_74;
                    }

LABEL_73:
                    v84 = 0xBFF0000000000000;
LABEL_74:
                    if (OUTLINED_FUNCTION_10_1())
                    {
                      v85 = MEMORY[0x1E12ADF20](0x6E6970736C696154, 0xEC0000007473694CLL);
                      v86 = OUTLINED_FUNCTION_18_0();
                      v88 = [v86 v87];

                      v89 = v105;
                      if (v88)
                      {
                        _bridgeAnyObjectToAny(_:)();
                        swift_unknownObjectRelease();
                        v91 = v109;
                        v90 = v110;
                      }

                      else
                      {
                        v90.n128_f64[0] = OUTLINED_FUNCTION_16_0();
                      }
                    }

                    else
                    {
                      v90 = xmmword_1DD386D30;
                      v91 = 0uLL;
                      v89 = v105;
                    }

                    OUTLINED_FUNCTION_3_4(v90, v91);
                    if (v40)
                    {
                      v92 = &_sypSgSgMd;
                      v93 = &_sypSgSgMR;
                      v94 = v108;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_3();
                      if (v95)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                        OUTLINED_FUNCTION_12_0();
                        if (OUTLINED_FUNCTION_19_0())
                        {
                          v96 = v106;
                        }

                        else
                        {
                          v96 = 0;
                        }

LABEL_88:
                        v97 = static TapToRadarWithPolicyManager.enforceTailspinAndErrorAllowed(tailspins:denyList:denyAll:errorSignatureAllowListOverride:)(v96, v58, v61, v72);

                        swift_unknownObjectRelease();
                        v98 = MEMORY[0x1E69E7CC0];
                        if (v72)
                        {
                          v99 = v72;
                        }

                        else
                        {
                          v99 = MEMORY[0x1E69E7CC0];
                        }

                        v100 = v103;
                        if (!v103)
                        {
                          v100 = MEMORY[0x1E69E7CC0];
                        }

                        v101 = MEMORY[0x1E69E7CC8];
                        if (v58)
                        {
                          v101 = v58;
                        }

                        *v89 = v104;
                        v89[1] = v100;
                        v89[2] = v101;
                        v89[3] = v61;
                        if (v97)
                        {
                          v102 = v97;
                        }

                        else
                        {
                          v102 = v98;
                        }

                        v89[4] = v102;
                        v89[5] = v99;
                        v89[6] = v84;
                        goto LABEL_99;
                      }

                      v92 = &_sypSgMd;
                      v93 = &_sypSgMR;
                      v94 = &v109;
                    }

                    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v94, v92, v93);
                    v96 = 0;
                    goto LABEL_88;
                  }

                  v80 = &_sypSgMd;
                  v81 = &_sypSgMR;
                  v82 = &v109;
                }

                outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v82, v80, v81);
                goto LABEL_73;
              }

LABEL_45:
              v61 = 0;
              v58 = 0;
              goto LABEL_46;
            }

            v54 = &_sypSgMd;
            v55 = &_sypSgMR;
            v56 = &v109;
          }

          outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v56, v54, v55);
          goto LABEL_45;
        }

        v41 = &_sypSgMd;
        v42 = &_sypSgMR;
        v43 = &v109;
      }

      outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v43, v41, v42);
      v103 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v19 = v109;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static Logger.logger.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_13_0();
    *v23 = 0;
    _os_log_impl(&dword_1DD354000, v21, v22, "TapToRadarWithPolicyManager#policy unable to extract policy", v23, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v4 + 8))(v8, v2);
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
LABEL_99:
  OUTLINED_FUNCTION_170();
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *TapToRadarWithPolicyManager.__allocating_init(policy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  *(v2 + 136) = *a1;
  *(v2 + 152) = v3;
  *(v2 + 160) = v4;
  *(v2 + 168) = *(a1 + 32);
  *(v2 + 184) = v5;
  return TapToRadarManager.init()();
}

void *TapToRadarWithPolicyManager.init(policy:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  *(v1 + 168) = *(a1 + 32);
  *(v1 + 184) = v4;
  return TapToRadarManager.init()();
}

uint64_t static TapToRadarWithPolicyManager.translateDeviceToPlatform()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  GestaltGetDeviceClass();
  v4 = CUGestaltDeviceClassToString();
  v5 = [v4 hasPrefix:@"iPhone"];

  if (v5 || (v4 = v4, v6 = [v4 hasPrefix:@"iPad"], v4, v6))
  {
    v7 = 5459817;

    return v7;
  }

  v8 = v4;
  if (([v8 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"HomePod"))
  {
    v7 = 1397716596;

LABEL_9:
    return v7;
  }

  v8 = v8;
  v10 = [v8 hasPrefix:@"AppleTV"];

  if (v10)
  {
    v7 = 1397716596;
    goto LABEL_9;
  }

  v11 = v8;
  v12 = [v11 hasPrefix:@"Watch"];

  if (v12)
  {

    return 0x534F6863746177;
  }

  else
  {
    v13 = v11;
    v14 = [v13 containsString:@"Mac"];

    if (v14)
    {
      return 0x534F63616DLL;
    }

    else
    {
      v7 = 0x726F707075736E75;
      static Logger.logger.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DD354000, v15, v16, "TapToRadarWithPolicyManager#translateDeviceToPlatform unsupported platform", v17, 2u);
        MEMORY[0x1E12AE9C0](v17, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
    }
  }

  return v7;
}

void *static TapToRadarWithPolicyManager.enforceTailspinAndErrorAllowed(tailspins:denyList:denyAll:errorSignatureAllowListOverride:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - v16;
  if (a3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v19 = a1;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v19);
    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = v18;
    }

    v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v21);
    v23 = specialized _NativeSet.intersection(_:)(v22, v20);

    static Logger.logger.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136315138;
      v28 = Set.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v51);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DD354000, v24, v25, "TapToRadarWithPolicyManager#enforceTailspinAndErrorAllowed intersection returning %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12AE9C0](v27, -1, -1);
      MEMORY[0x1E12AE9C0](v26, -1, -1);
    }

    (*(v9 + 8))(v17, v8);
    return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v23);
  }

  if (a2)
  {
    v31 = specialized Dictionary.subscript.getter(0x656C74746F726854, 0xEF73726F72724564, a2);
    if (v31)
    {
      v51 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v32 = v50;
        if (a1)
        {
          v33 = a1;
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v33);
        v23 = specialized _NativeSet.subtracting<A>(_:)(v32, v34);

        static Logger.logger.getter();

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v51 = v38;
          *v37 = 136315138;
          v39 = Set.description.getter();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v51);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_1DD354000, v35, v36, "TapToRadarWithPolicyManager#enforceTailspinAndErrorAllowed subtraction returning %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E12AE9C0](v38, -1, -1);
          MEMORY[0x1E12AE9C0](v37, -1, -1);
        }

        (*(v9 + 8))(v15, v8);
        return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v23);
      }
    }
  }

  static Logger.logger.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = a1;
    v51 = v45;
    *v44 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v46 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v51);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1DD354000, v42, v43, "TapToRadarWithPolicyManager#enforceTailspinAndErrorAllowed no throttled errors, returning %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E12AE9C0](v45, -1, -1);
    MEMORY[0x1E12AE9C0](v44, -1, -1);
  }

  (*(v9 + 8))(v12, v8);

  return a1;
}

void TapToRadarWithPolicyManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:duc:radarFilingExtras:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, void (*a25)(void), uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  v65 = v27;
  v66 = v28;
  v63 = v29;
  v64 = v30;
  v32 = v31;
  v62 = v33;
  v35 = v34;
  v37 = v36;
  v38 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_1();
  v58 = *v32;
  v57 = v32[1];
  v56 = v32[2];
  v55 = v32[3];
  v54 = v32[4];
  v59 = a24[1];
  v60 = *a24;
  v53 = *(a24 + 4);
  static Logger.logger.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_13_0();
    *v48 = 0;
    _os_log_impl(&dword_1DD354000, v46, v47, "TapToRadarWithPolicyManager#createProblem", v48, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  v49 = *(v40 + 8);
  v49(v26, v38);
  if ((*(*v26 + 376))(v37, v35, a22, a23))
  {
    v69[0] = v58;
    v69[1] = v57;
    v69[2] = v56;
    v69[3] = v55;
    v69[4] = v54;
    v67[1] = v59;
    v67[0] = v60;
    v68 = v53;
    TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(v37, v35, v62, v63, v69, v64, v65, v66, a21, v67, a25, a26, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
  }

  else
  {
    static Logger.logger.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_13_0();
      *v52 = 0;
      _os_log_impl(&dword_1DD354000, v50, v51, "TapToRadarWithPolicyManager#createProblem policy data does not support filing this issue", v52, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    v49(v44, v38);
    a25(0);
  }

  OUTLINED_FUNCTION_170();
}

Swift::Bool __swiftcall TapToRadarWithPolicyManager.doesPolicyDataAllowFilingIssue(errStatus:duc:)(Swift::String errStatus, Swift::String_optional duc)
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v2;
  v123 = v10;
  v124 = v9;
  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v122 = (v15 - v16);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_0();
  v125 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17_0();
  v118 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17_0();
  v117 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17_0();
  v119 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_0();
  v120 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_1();
  static Logger.logger.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v126 = v11;
  v127 = v13;
  v121 = v8;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, v128);
    *(v30 + 12) = 2080;
    v129 = v123;
    v130 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v31 = String.init<A>(describing:)();
    v8 = v32;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v128);

    *(v30 + 14) = v33;
    _os_log_impl(&dword_1DD354000, v28, v29, "TapToRadarWithPolicyManager#doesPolicyDataAllowFilingIssue, errStatus: %s, duc: %s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_2();
    v11 = v126;
    OUTLINED_FUNCTION_9_2();

    v34 = OUTLINED_FUNCTION_25_0();
    v8(v34);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_25_0();
    v8(v35);
  }

  v36 = v2[17];
  if (v36)
  {
    v122 = v8;
    v38 = v2[20];
    v37 = v2[21];
    v39 = v2[22];
    v115[5] = v2[23];
    v116 = v37;
    v40 = static TapToRadarWithPolicyManager.translateDeviceToPlatform()();
    v42 = v41;
    v124 = v40;
    v129 = v40;
    v130 = v41;
    MEMORY[0x1EEE9AC00](v40);
    v115[2] = &v129;
    if (!specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v115, v36))
    {
      static Logger.logger.getter();

      v63 = OUTLINED_FUNCTION_24_0();
      v64 = v116;
      outlined copy of Policy?(v63, v65, v66, v67, v116, v39);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v70 = OUTLINED_FUNCTION_24_0();
      outlined consume of Policy?(v70, v71, v72, v73, v64, v39);
      if (os_log_type_enabled(v68, v69))
      {
        v74 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v74 = 136315394;
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v42, &v129);

        *(v74 + 4) = v75;
        *(v74 + 12) = 2080;
        v76 = MEMORY[0x1E12AE000](v36, MEMORY[0x1E69E6158]);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v129);

        *(v74 + 14) = v78;
        _os_log_impl(&dword_1DD354000, v68, v69, "TapToRadarWithPolicyManager#doesPolicyDataAllowFilingIssue, current platform: %s is not part of %s", v74, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_9_2();
      }

      else
      {
      }

      v122(v125, v126);
      goto LABEL_32;
    }

    TapToRadarWithPolicyManager.checkIsErrorSignatureAllowListOverrideInPolicy(errorSignatureAllowListOverride:errStatus:)();
    if (v43)
    {
      v44 = v120;
      static Logger.logger.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      v47 = OUTLINED_FUNCTION_8_2(v46);
      v48 = v122;
      if (v47)
      {
        v49 = OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_23_0(v49);
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_6_3();
      }

      v48(v44, v126);
      goto LABEL_32;
    }

    v79 = v122;
    if (v4)
    {
      TapToRadarWithPolicyManager.checkIsDUCAllowedPolicy(ducAllowList:errStatus:duc:)();
      if (v80)
      {
        goto LABEL_32;
      }

      v81 = v119;
      static Logger.logger.getter();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_2(v83))
      {
        v84 = OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_23_0(v84);
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v85, v86, v87, v88, v89, 2u);
        OUTLINED_FUNCTION_6_3();
      }

      v90 = v81;
      v91 = v126;
LABEL_27:
      v79(v90, v91);
      goto LABEL_32;
    }

    v92 = v126;
    if (v38)
    {
      v93 = v118;
      static Logger.logger.getter();
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_2(v95))
      {
        v96 = OUTLINED_FUNCTION_22_0();
        v97 = OUTLINED_FUNCTION_28_0();
        v129 = v97;
        *v96 = 136315138;
        v98 = OUTLINED_FUNCTION_21_0();
        *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, 0xE700000000000000, &v129);
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v99, v100, v101, v102, v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_6_3();
      }

      v90 = v93;
      v91 = v92;
      goto LABEL_27;
    }

    TapToRadarWithPolicyManager.checkIsDenyListed(denyList:errStatus:)();
    if ((v104 & 1) == 0)
    {
      v105 = v117;
      static Logger.logger.getter();
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_2(v107))
      {
        v108 = OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_23_0(v108);
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v109, v110, v111, v112, v113, 2u);
        OUTLINED_FUNCTION_6_3();
      }

      v79(v105, v92);
    }
  }

  else
  {
    static Logger.logger.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_2(v56))
    {
      v57 = OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_23_0(v57);
      OUTLINED_FUNCTION_4_2();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      OUTLINED_FUNCTION_6_3();
    }

    (v8)(v122, v11);
  }

LABEL_32:
  OUTLINED_FUNCTION_170();
  return result;
}

void TapToRadarWithPolicyManager.checkIsDUCAllowedPolicy(ducAllowList:errStatus:duc:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v44 = v7;
  v9 = v8;
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_1();
  static Logger.logger.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v43 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_22_0();
    *v20 = 134217984;
    *(v20 + 4) = *(v9 + 16);

    _os_log_impl(&dword_1DD354000, v18, v19, "TapToRadarWithPolicyManager#checkIsDUCAllowedPolicy DUCAllowList size: %ld", v20, 0xCu);
    OUTLINED_FUNCTION_6_3();
  }

  else
  {
  }

  v21 = *(v12 + 8);
  v21(v0, v10);
  v22 = *(v9 + 16);
  if (!v22)
  {
    goto LABEL_28;
  }

  v41 = v21;
  v42 = v10;
  v23 = (v9 + 32);
  while (1)
  {
    v24 = *v23;
    if (*(*v23 + 16))
    {
      break;
    }

LABEL_21:
    ++v23;
    if (!--v22)
    {
      goto LABEL_28;
    }
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x776F6C6C41435544, 0xE800000000000000);
  if ((v26 & 1) == 0 || ((v27 = (*(v24 + 56) + 16 * v25), *v27 == v4) ? (v28 = v27[1] == v2) : (v28 = 0), !v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_20:

    goto LABEL_21;
  }

  if (*(v24 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001DD3874E0);
    if (v30)
    {
      v31 = (*(v24 + 56) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];

      v34 = v33 == v44 && v32 == v6;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  static Logger.logger.getter();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_28_0();
    v45 = swift_slowAlloc();
    *v37 = 136315650;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v45);
    *(v37 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v45);

    *(v37 + 14) = v40;
    *(v37 + 22) = 2080;
    *(v37 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v6, &v45);
    _os_log_impl(&dword_1DD354000, v35, v36, "TapToRadarWithPolicyManager#checkIsDUCAllowedPolicy, ducs matched: %s, errInf: %s, errStatus: %s", v37, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
  }

  v41(v43, v42);
LABEL_28:
  OUTLINED_FUNCTION_170();
}

void TapToRadarWithPolicyManager.checkIsErrorSignatureAllowListOverrideInPolicy(errorSignatureAllowListOverride:errStatus:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_1();
  static Logger.logger.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_22_0();
    *v17 = 134217984;
    *(v17 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1DD354000, v15, v16, "TapToRadarWithPolicyManager#checkIsErrorSignatureAllowListOverrideInPolicy errorSignatureAllowListOverride size: %ld", v17, 0xCu);
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
  }

  v18 = *(v9 + 8);
  v27 = v7;
  v18(v0, v7);
  v19 = v6 + 40;
  v20 = *(v6 + 16) + 1;
  while (--v20)
  {
    v21 = v19 + 16;
    v28[0] = v4;
    v28[1] = v2;
    lazy protocol witness table accessor for type String and conformance String();
    v22 = StringProtocol.contains<A>(_:)();
    v19 = v21;
    if (v22)
    {
      static Logger.logger.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_22_0();
        v26 = OUTLINED_FUNCTION_28_0();
        v28[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, v28);
        _os_log_impl(&dword_1DD354000, v23, v24, "TapToRadarWithPolicyManager#checkIsErrorSignatureAllowListOverrideInPolicy, matched on %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_9_2();
      }

      v18(v13, v27);
      break;
    }
  }

  OUTLINED_FUNCTION_170();
}

void TapToRadarWithPolicyManager.checkIsDenyListed(denyList:errStatus:)()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v45 = v2;
  v4 = v3;
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = specialized Dictionary.subscript.getter(0x656C74746F726854, 0xEF73726F72724564, v4);
  if (v15 && (v48[0] = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (OUTLINED_FUNCTION_19_0() & 1) != 0))
  {
    v41 = v14;
    v42 = v7;
    v43 = v5;
    v16 = 0;
    v17 = v46;
    v18 = *(v46 + 16);
    v19 = v46 + 40;
    v44 = MEMORY[0x1E69E7CC0];
    v40 = v46 + 40;
LABEL_4:
    v20 = (v19 + 16 * v16);
    while (v18 != v16)
    {
      if (v16 >= *(v17 + 16))
      {
        __break(1u);
        return;
      }

      v21 = *(v20 - 1);
      v22 = *v20;
      v48[0] = v45;
      v48[1] = v1;
      v46 = v21;
      v47 = v22;
      lazy protocol witness table accessor for type String and conformance String();

      if (StringProtocol.contains<A>(_:)())
      {
        v23 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v49;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v23 = v49;
        }

        ++v16;
        *(v23 + 16) = v26 + 1;
        v44 = v23;
        v27 = v23 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v22;
        v19 = v40;
        goto LABEL_4;
      }

      v20 += 2;
      ++v16;
    }

    v31 = v41;
    static Logger.logger.getter();
    v32 = v44;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = MEMORY[0x1E12AE000](v32, MEMORY[0x1E69E6158]);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v48);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v1, v48);
      _os_log_impl(&dword_1DD354000, v33, v34, "TapToRadarWithPolicyManager#checkIsDenyListed results: %s, errStatus: %s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_9_2();
    }

    (*(v42 + 8))(v31, v43);
  }

  else
  {
    static Logger.logger.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_13_0();
      *v30 = 0;
      _os_log_impl(&dword_1DD354000, v28, v29, "TapToRadarWithPolicyManager#checkIsDenyListed no throttled errors, returning false", v30, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x1E12AE020](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<String>.Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t TapToRadarWithPolicyManager.deinit()
{
  v1 = TapToRadarManager.deinit();
  OUTLINED_FUNCTION_20_0(v1);
  return v0;
}

uint64_t TapToRadarWithPolicyManager.__deallocating_deinit()
{
  v1 = TapToRadarManager.deinit();
  OUTLINED_FUNCTION_20_0(v1);

  return MEMORY[0x1EEE6BDC0](v0);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD386D30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x1E12AE9C0](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = specialized _NativeSet.extractSubset(using:count:)(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v25 = Hasher._finalize()();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return specialized _NativeSet.extractSubset(using:count:)(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v8);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x1E12AE9C0](v11, -1, -1);
  }

  return v9;
}

unint64_t *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of Policy?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of Policy?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TapToRadarWithPolicyManager.DefaultPolicyKeys and conformance TapToRadarWithPolicyManager.DefaultPolicyKeys()
{
  result = lazy protocol witness table cache variable for type TapToRadarWithPolicyManager.DefaultPolicyKeys and conformance TapToRadarWithPolicyManager.DefaultPolicyKeys;
  if (!lazy protocol witness table cache variable for type TapToRadarWithPolicyManager.DefaultPolicyKeys and conformance TapToRadarWithPolicyManager.DefaultPolicyKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TapToRadarWithPolicyManager.DefaultPolicyKeys and conformance TapToRadarWithPolicyManager.DefaultPolicyKeys);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Policy(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Policy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarWithPolicyManager.DefaultPolicyKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapToRadarWithPolicyManager.DefaultPolicyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_8_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_slowAlloc();
}

uint64_t SiriEnvironment.homeKitProvider.getter()
{
  type metadata accessor for HomeKitProvider();
  OUTLINED_FUNCTION_0_6(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t SiriEnvironment.homeKitProvider.setter(uint64_t a1)
{
  type metadata accessor for HomeKitProvider();
  OUTLINED_FUNCTION_0_6(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);

  return dispatch thunk of SiriEnvironment.subscript.setter();
}

uint64_t (*SiriEnvironment.homeKitProvider.modify(uint64_t *a1))()
{
  a1[1] = v1;
  a1[2] = type metadata accessor for HomeKitProvider();
  a1[3] = OUTLINED_FUNCTION_0_6(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);
  *a1 = dispatch thunk of SiriEnvironment.subscript.getter();
  return SiriEnvironment.homeKitProvider.modify;
}

uint64_t SiriEnvironment.homeKitProvider.modify(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch thunk of SiriEnvironment.subscript.setter();
  }

  dispatch thunk of SiriEnvironment.subscript.setter();
}

uint64_t key path setter for HomeKitProvider.mock : HomeKitProvider(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t HomeKitProvider.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t HomeKitProvider.homeKitHelper.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_5(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);
  static MockablePublished.subscript.getter();
}

uint64_t HomeKitProvider.homeKitHelper.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of SiriLocationProvider(a1, v3);
  OUTLINED_FUNCTION_1_5(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);

  static MockablePublished.subscript.setter();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*HomeKitProvider.homeKitHelper.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMR);
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_1_5(&lazy protocol witness table cache variable for type HomeKitProvider and conformance HomeKitProvider);
  v2[6] = static MockablePublished.subscript.modify();
  return CurrentRequest.refId.modify;
}

uint64_t key path setter for HomeKitProvider.$homeKitHelper : HomeKitProvider(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 176))(v6);
}

uint64_t HomeKitProvider.$homeKitHelper.getter()
{
  swift_beginAccess();

  dispatch thunk of MockablePublished.projectedValue.getter();
}

uint64_t HomeKitProvider.$homeKitHelper.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMR);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  (*(v4 + 16))(v7, a1, v2);

  dispatch thunk of MockablePublished.projectedValue.setter();

  return (*(v4 + 8))(a1, v2);
}

void (*HomeKitProvider.$homeKitHelper.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMd, &_s13SiriUtilities17MockablePublishedC9PublisherVy0A15FlowEnvironment21HomeKitHelperProtocol_p_GMR);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  HomeKitProvider.$homeKitHelper.getter();
  return HomeKitProvider.$homeKitHelper.modify;
}

void HomeKitProvider.$homeKitHelper.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    HomeKitProvider.$homeKitHelper.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    HomeKitProvider.$homeKitHelper.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t HomeKitProvider.__allocating_init(storage:)(uint64_t a1)
{
  v2 = swift_allocObject();
  HomeKitProvider.init(storage:)(a1);
  return v2;
}

uint64_t HomeKitProvider.init(storage:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v1 + 16) = 0;
  v9 = [objc_allocWithZone(HomeKitHelper) init];
  v27[3] = type metadata accessor for HomeKitHelper();
  v27[4] = &protocol witness table for HomeKitHelper;
  v27[0] = v9;
  outlined init with copy of SiriLocationProvider(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMd, &_s13SiriUtilities17MockablePublishedCy0A15FlowEnvironment21HomeKitHelperProtocol_pGMR);
  swift_allocObject();
  v10 = MockablePublished.init(wrappedValue:)();
  __swift_destroy_boxed_opaque_existential_1(v27);
  *(v2 + 24) = v10;
  *(v2 + 32) = 0;
  *(v2 + 34) = 0;
  static Logger.logger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DD354000, v11, v12, "HomeKitProvider init", v13, 2u);
    MEMORY[0x1E12AE9C0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_6_4();
  v15 = *(v14 + 144);
  v15(v27);
  OUTLINED_FUNCTION_5_3();
  v16 = OUTLINED_FUNCTION_2_4();
  *(v2 + 32) = v17(v16) & 1;
  v18 = __swift_destroy_boxed_opaque_existential_1(v27);
  (v15)(v27, v18);
  OUTLINED_FUNCTION_5_3();
  v19 = OUTLINED_FUNCTION_2_4();
  *(v2 + 33) = v20(v19) & 1;
  v21 = __swift_destroy_boxed_opaque_existential_1(v27);
  (v15)(v27, v21);
  OUTLINED_FUNCTION_5_3();
  v22 = OUTLINED_FUNCTION_2_4();
  v24 = v23(v22);

  *(v2 + 34) = v24 & 1;
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v2;
}

unint64_t type metadata accessor for HomeKitHelper()
{
  result = lazy cache variable for type metadata for HomeKitHelper;
  if (!lazy cache variable for type metadata for HomeKitHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HomeKitHelper);
  }

  return result;
}

Swift::Bool __swiftcall HomeKitProvider.areHomesConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = OUTLINED_FUNCTION_3_5();
    *(v1 + 32) = v4(v3) & 1;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return *(v1 + 32);
}

Swift::Bool __swiftcall HomeKitProvider.areAnyAccessoriesConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = OUTLINED_FUNCTION_3_5();
    *(v1 + 33) = v4(v3) & 1;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return *(v1 + 33);
}

Swift::Bool __swiftcall HomeKitProvider.areAnySpeakersConfigured(refresh:)(Swift::Bool refresh)
{
  if (refresh)
  {
    OUTLINED_FUNCTION_6_4();
    (*(v2 + 144))(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = OUTLINED_FUNCTION_3_5();
    *(v1 + 34) = v4(v3) & 1;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return *(v1 + 34);
}

uint64_t HomeKitProvider.debugInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD3855C0;
  OUTLINED_FUNCTION_8_3();
  *(v2 + 32) = 0xD000000000000035;
  *(v2 + 40) = v3;
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_8_3();
  v15 = v4;
  if (v0[32])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[32])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v5, v6);

  *(v1 + 48) = 0xD000000000000014;
  *(v1 + 56) = v15;
  _StringGuts.grow(_:)(31);

  OUTLINED_FUNCTION_8_3();
  v16 = v7;
  if (v0[33])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[33])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v8, v9);

  *(v1 + 64) = 0xD00000000000001DLL;
  *(v1 + 72) = v16;
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_8_3();
  v17 = v10;
  if (v0[34])
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v0[34])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12ADF70](v11, v12);

  *(v1 + 80) = 0xD00000000000001ALL;
  *(v1 + 88) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t HomeKitProvider.deinit()
{

  return v0;
}

uint64_t HomeKitProvider.__deallocating_deinit()
{
  HomeKitProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 136))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider;
}

void protocol witness for MockableEnvironmentProvider.mock.modify in conformance HomeKitProvider(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for MockableEnvironmentProvider.install(_:) in conformance HomeKitProvider(uint64_t a1)
{
  v2 = type metadata accessor for HomeKitProvider();

  return MEMORY[0x1EEE412A0](a1, v2);
}

uint64_t protocol witness for static MockableEnvironmentProvider.adjustMock(_:) in conformance HomeKitProvider(uint64_t a1)
{
  type metadata accessor for HomeKitProvider();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HomeKitProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HomeKitProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return lazy protocol witness table accessor for type HomeKitProvider and conformance HomeKitProvider(a1, &protocol conformance descriptor for HomeKitProvider);
}

void *TapToRadarManager.init()()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v0[7] = 0xD000000000000014;
  v0[8] = 0x80000001DD387D20;
  v0[9] = 0x7274745F69726973;
  v0[10] = 0xE800000000000000;
  v0[11] = 0x726F727265;
  v0[12] = 0xE500000000000000;
  v0[13] = 40;
  v0[14] = swift_slowAlloc();
  result = GetSystemBuildVersionString();
  if (result)
  {
    v0[15] = String.init(cString:)();
    v0[16] = v2;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v68 = v26;
  v72 = v27;
  v69 = v28;
  v30 = v29;
  v71 = v31;
  v66 = v32;
  v70 = v33;
  v65 = v34;
  v67 = *v25;
  v76 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0();
  v75 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_0();
  v39 = v38 - v37;
  v74 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v73 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7_0();
  v44 = v43 - v42;
  v45 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_7_0();
  v51 = v50 - v49;
  v52 = v30[1];
  v79 = *v30;
  v80 = v52;
  v81 = *(v30 + 4);
  v53 = a22[1];
  v82 = *a22;
  v83 = v53;
  v84 = *(a22 + 4);
  static Logger.logger.getter();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_13_0();
    *v56 = 0;
    _os_log_impl(&dword_1DD354000, v54, v55, "TapToRadarManager#createProblem, attempting to create problem...", v56, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v47 + 8))(v51, v45);
  if (one-time initialization token for runQueue != -1)
  {
    OUTLINED_FUNCTION_6_5(&one-time initialization token for runQueue);
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v25;
  *(v57 + 24) = v65;
  *(v57 + 32) = v70;
  *(v57 + 40) = v66;
  *(v57 + 48) = v71;
  *(v57 + 56) = a23;
  *(v57 + 64) = a24;
  *(v57 + 72) = v68;
  *(v57 + 80) = a21;
  v58 = v80;
  *(v57 + 88) = v79;
  *(v57 + 104) = v58;
  *(v57 + 120) = v81;
  *(v57 + 128) = v69;
  *(v57 + 136) = v72;
  v59 = v83;
  v60 = v84;
  *(v57 + 144) = v82;
  *(v57 + 160) = v59;
  *(v57 + 176) = v60;
  *(v57 + 184) = v67;
  v78[4] = partial apply for closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:);
  v78[5] = v57;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 1107296256;
  OUTLINED_FUNCTION_4_4();
  v78[2] = v61;
  v78[3] = &block_descriptor;
  v62 = _Block_copy(v78);

  outlined init with copy of TTRComponentInfo(&v79, v77);

  outlined init with copy of RadarFilingExtras?(&v82, v77);
  static DispatchQoS.unspecified.getter();
  v77[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v63, v64, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v44, v39, v62);
  _Block_release(v62);
  (*(v75 + 8))(v39, v76);
  (*(v73 + 8))(v44, v74);

  OUTLINED_FUNCTION_170();
}

void *TapToRadarManager.deinit()
{

  return v0;
}

uint64_t TapToRadarManager.requestID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 16, a2);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.requestID.setter()
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_19_1(v1 + 16, v3);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t TapToRadarManager.ttrRequestManager.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_1(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t TapToRadarManager.requestText.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89(v2 + 40, a2);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t TapToRadarManager.requestText.setter()
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_19_1(v1 + 40, v3);
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

Swift::Void __swiftcall TapToRadarManager.populateSiriRequestText()()
{
  OUTLINED_FUNCTION_171();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v7 = v6 - v5;
  v18 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v13 = v12 - v11;
  if (one-time initialization token for runQueue != -1)
  {
    OUTLINED_FUNCTION_6_5(&one-time initialization token for runQueue);
  }

  v19[4] = partial apply for closure #1 in TapToRadarManager.populateSiriRequestText();
  v19[5] = v0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_4_4();
  v19[2] = v14;
  v19[3] = &block_descriptor_4;
  v15 = _Block_copy(v19);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v16, v17, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v13, v7, v15);
  _Block_release(v15);
  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v18);

  OUTLINED_FUNCTION_170();
}

Swift::OpaquePointer_optional __swiftcall TapToRadarManager.getDefaultsContents(userDefaultSuiteName:)(Swift::String userDefaultSuiteName)
{
  v2 = v1;
  object = userDefaultSuiteName._object;
  countAndFlagsBits = userDefaultSuiteName._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v5 = @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
  if (!v5)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&v13, &_sypSgMd, &_sypSgMR);
    v10 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = MEMORY[0x1E12ADF20](*(v2 + 72), *(v2 + 80));
  v8 = [v6 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDyS2SGGMd, &_sSDySSSDyS2SGGMR);
  if (swift_dynamicCast())
  {
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  result.value._rawValue = v10;
  result.is_nil = v9;
  return result;
}

Swift::Void __swiftcall TapToRadarManager.writeDefaultsContents(contents:userDefaultSuiteName:)(Swift::OpaquePointer contents, Swift::String userDefaultSuiteName)
{
  v3 = v2;
  object = userDefaultSuiteName._object;
  countAndFlagsBits = userDefaultSuiteName._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v6 = @nonobjc NSUserDefaults.init(suiteName:)(countAndFlagsBits, object);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v9 = MEMORY[0x1E12ADF20](*(v3 + 72), *(v3 + 80));
    [v7 setValue:isa forKey:v9];
  }
}

void TapToRadarManager.setupLaunchTTR(createDraftContainer:title:completion:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v32 = *v0;
  v33 = v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0();
  v36 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v34 = v13;
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_0();
  v23 = v22 - v21;
  memcpy(v39, v4, 0x70uLL);
  static Logger.logger.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_13_0();
    *v26 = 0;
    _os_log_impl(&dword_1DD354000, v24, v25, "TapToRadarManager#setupLaunchTTR", v26, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v19 + 8))(v23, v17);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  memcpy(v28 + 2, v39, 0x70uLL);
  v28[16] = v33;
  v28[17] = v2;
  v28[18] = v32;
  v38[4] = partial apply for closure #1 in TapToRadarManager.setupLaunchTTR(createDraftContainer:title:completion:);
  v38[5] = v28;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v38[3] = &block_descriptor_10;
  v29 = _Block_copy(v38);
  outlined init with copy of TapToRadarManager.CreateDraftContainer(v39, &v37);

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_5();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v30, v31, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v16, v11, v29);
  _Block_release(v29);

  (*(v36 + 8))(v11, v6);
  (*(v34 + 8))(v16, v35);
  OUTLINED_FUNCTION_170();
}

Swift::Bool __swiftcall TapToRadarManager.hasFiledThisIssue(errStatus:userDefaultSuiteName:)(Swift::String errStatus, Swift::String userDefaultSuiteName)
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_8_4();
  v8 = (*(v5 + 248))(v6, v7);
  if (v8 && (v9 = specialized Dictionary.subscript.getter(*(v3 + 120), *(v3 + 128), v8), , v9))
  {
    v10 = 0;
    OUTLINED_FUNCTION_9_3();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    while (v14)
    {
LABEL_9:
      v18 = (*(v9 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v14)))));
      if (*v18 != v4 || v18[1] != v2)
      {
        v14 &= v14 - 1;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (!result)
        {
          continue;
        }
      }

      v20 = 1;
LABEL_17:

      return v20;
    }

    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        v20 = 0;
        goto LABEL_17;
      }

      v14 = *(v9 + 64 + 8 * v17);
      ++v10;
      if (v14)
      {
        v10 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

Swift::String __swiftcall TapToRadarManager.getRequestID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v11 - v1);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_5_4();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v3, v4, &protocol conformance descriptor for CurrentRequest);
  dispatch thunk of SiriEnvironment.subscript.getter();

  CurrentRequest.flowTaskMetadata.getter();

  v5 = type metadata accessor for FlowTaskMetadata(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5))
  {
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v2, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  }

  else
  {
    v6 = *v2;
    v7 = v2[1];

    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(v2, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_5:
  v8 = v6;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t TapToRadarManager.writeDefaults(errStatus:userDefaultSuiteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v31 = a3;
  v32 = a4;
  v9 = @nonobjc NSUserDefaults.init(suiteName:)(a3, a4);
  if (!v9)
  {
    v35 = 0u;
    v36 = 0u;
LABEL_9:
    outlined destroy of (CurrentRequestOverrides.OverrideError, CurrentRequestOverrides.OverrideError)(&v35, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = MEMORY[0x1E12ADF20](v5[9], v5[10]);
  v12 = [v10 objectForKey_];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDyS2SGGMd, &_sSDySSSDyS2SGGMR);
  if (swift_dynamicCast())
  {
    v13 = v33;
    goto LABEL_11;
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v13 = Dictionary.init(dictionaryLiteral:)();
LABEL_11:
  v14 = v5[15];
  v15 = v5[16];
  v16 = specialized Dictionary.subscript.getter(v14, v15, v13);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = Dictionary.init(dictionaryLiteral:)();
  }

  v18 = *(v17 + 16);

  v19 = v5[11];
  v20 = v5[12];
  *&v35 = v18 + 1;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;
  *&v35 = v19;
  *(&v35 + 1) = v20;

  MEMORY[0x1E12ADF70](v21, v23);

  v24 = v35;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a2, v24, *(&v24 + 1), isUniquelyReferenced_nonNull_native);

  v26 = v35;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v13;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v14, v15, v27);
  (*(*v5 + 256))(v35, v31, v32);
}

uint64_t TapToRadarManager.isRadarValid(radarComponentInfo:title:description:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = a1[1];
  v16 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  if (v16 && ((v17 = a1[3], (v17 & 0x2000000000000000) != 0) ? (v18 = HIBYTE(v17) & 0xF) : (v18 = a1[2] & 0xFFFFFFFFFFFFLL), v18))
  {
    if (a3)
    {
      v19 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v19 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        return 1;
      }
    }

    static Logger.logger.getter();
    v21 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v24))
    {
      v25 = OUTLINED_FUNCTION_13_0();
      *v25 = 0;
      _os_log_impl(&dword_1DD354000, v21, v24, "TapToRadarManager#isRadarValid, no radar title specified", v25, 2u);
      goto LABEL_18;
    }
  }

  else
  {
    static Logger.logger.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_13_0();
      *v23 = 0;
      _os_log_impl(&dword_1DD354000, v21, v22, "TapToRadarManager#isRadarValid, either radar component ID or component name/version need to be specified", v23, 2u);
      v12 = v14;
LABEL_18:
      OUTLINED_FUNCTION_9_2();
      goto LABEL_19;
    }

    v12 = v14;
  }

LABEL_19:

  (*(v8 + 8))(v12, v6);
  return 0;
}