void *DomainWarmup.init(warmupClients:)(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x28223BE20](v2);
  v13 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = "ationSearch14FeatureChecker";
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v6);
  static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  static DispatchQoS.unspecified.getter();
  v10 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v13, *MEMORY[0x277D85260], v15);
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say20SiriInformationTypes15WarmupComponentOGTt0g5Tf4g_n(v10);
  v1[4] = v16;
  v1[5] = 0;
  return v1;
}

uint64_t DomainWarmup.warmupFirstExperience(request:response:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2232BB000, v9, v10, "DomainWarmup#warmupFirstExperience", v11, 2u);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  if (v12 <= 0.99)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "DomainWarmup#warmupFirstExperience recieved low confidence PommesResponse. Skipping warmup", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v13 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = (*(*v2 + 184))(a1, v13, v15);

    return v16;
  }
}

uint64_t DomainWarmup.setServiceHelper(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t DomainWarmup.warmup(request:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes15WarmupComponentOGMd, _sSay20SiriInformationTypes15WarmupComponentOGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

void closure #1 in DomainWarmup.warmup(request:domain:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v38);
    _os_log_impl(&dword_2232BB000, v10, v11, "DomainWarmup#warmup %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  v14 = a3[4];
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v16)
    {
      outlined init with copy of AppDataProviding(*(v14 + 56) + 40 * v15, v37);
      outlined init with take of DomainWarmupHandling(v37, v38);
      swift_beginAccess();
      v17 = a3[3];
      if (*(v17 + 16))
      {

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v36[0] = v24;
            *v23 = 136315138;
            *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v36);
            _os_log_impl(&dword_2232BB000, v21, v22, "DomainWarmup#warmup : Warmup already called for %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v24);
            MEMORY[0x223DE0F80](v24, -1, -1);
            MEMORY[0x223DE0F80](v23, -1, -1);
          }

          *a5 = v20;
          goto LABEL_17;
        }
      }

      v29 = v39;
      v30 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v31 = a3[5];
      v32 = *(v30 + 8);
      swift_unknownObjectRetain();
      v33 = v32(a4, v31, v29, v30);
      swift_unknownObjectRelease();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = a3[3];
      a3[3] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, a1, a2, isUniquelyReferenced_nonNull_native);

      a3[3] = v41;
      swift_endAccess();
      *a5 = v33;
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v38);
      return;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v38);
    _os_log_impl(&dword_2232BB000, v25, v26, "DomainWarmup#warmup warmup handler not found for domain: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  *a5 = MEMORY[0x277D84F90];
}

void closure #1 in DomainWarmup.warmupCalled(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9 & 1;
}

Swift::Void __swiftcall DomainWarmup.reset()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainWarmup.reset();
  *(v2 + 24) = v0;
  v4[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in DomainWarmup.reset()(uint64_t a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "DomainWarmup clearing warmup state", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 24) = MEMORY[0x277D84F98];
}

uint64_t DomainWarmup.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DomainWarmup.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL AudioQuery.removeLibraryGenreCandidates.getter()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D39108], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun, MEMORY[0x277D39118], MEMORY[0x277D39120]);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t AudioQuery.requestedType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t AudioQuery.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);

  return v1;
}

uint64_t AudioQuery.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);

  return v1;
}

uint64_t AudioQuery.isRequestingAppleMusic.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName + 8))
  {
    return 0;
  }

  v1 = String.lowercased()();
  if (v1._countAndFlagsBits == 0x636973756DLL && v1._object == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v3 & 1;
  }
}

uint64_t AudioQuery.__allocating_init(entity:musicTitle:album:artist:podcastTitle:playlistTitle:decade:activity:genre:mood:audiobookAuthor:audiobookTitle:radioStationName:radioStationFrequency:audioRadioType:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:)(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, char *a31, char *a32, char *a33, char *a34, char *a35, char *a36, uint64_t a37, unsigned __int8 a38)
{
  v199 = a8;
  v191 = a7;
  v197 = a6;
  v192 = a5;
  v227 = a4;
  v190 = a3;
  v236 = a1;
  v237 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  MEMORY[0x28223BE20](v38 - 8);
  v212 = &v189 - v39;
  v214 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v210 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v211 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v208 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v209 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v207 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v220 = *(v43 - 8);
  v221 = v43;
  MEMORY[0x28223BE20](v43);
  v219 = &v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v226 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v230 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v46 = *(v206 - 8);
  v47 = MEMORY[0x28223BE20](v206);
  v238 = &v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v189 - v50;
  MEMORY[0x28223BE20](v49);
  v234 = &v189 - v52;
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v54 = *(v53 - 8);
  v55 = MEMORY[0x28223BE20](v53);
  v204 = &v189 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v203 = &v189 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v217 = &v189 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v216 = &v189 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v202 = &v189 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v201 = &v189 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v225 = &v189 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v200 = &v189 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v198 = &v189 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v195 = &v189 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v224 = &v189 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v194 = &v189 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v193 = &v189 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v83 = &v189 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = &v189 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v189 - v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v89 = *(v46 + 72);
  v90 = v54;
  v91 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v205 = swift_allocObject();
  v92 = v205 + v91;
  v93 = *(v90 + 104);
  v196 = *MEMORY[0x277D39518];
  v231 = v93;
  v229 = v90 + 104;
  v93(v88);
  v228 = v86;
  if (v237)
  {
    v94 = v237;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v90 + 16))(v86, v88, v53);
    MEMORY[0x223DDAEB0](v86);
    MEMORY[0x223DDAED0](v236, v94);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = 1;
  v236 = *(v226 + 56);
  v237 = v226 + 56;
  v236(v92, v95, 1, v239);
  v232 = *(v90 + 8);
  v233 = (v90 + 8);
  (v232)(v88, v53);
  (v231)(v83, *MEMORY[0x277D394D8], v53);
  v97 = v227;
  if (v227)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v98 = v228;
    (*(v90 + 16))(v228, v83, v53);
    MEMORY[0x223DDAEB0](v98);
    MEMORY[0x223DDAED0](v190, v97);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v96 = 0;
  }

  v99 = 1;
  v236(v92 + v89, v96, 1, v239);
  (v232)(v83, v53);
  v100 = v193;
  (v231)(v193, *MEMORY[0x277D394E0], v53);
  v227 = v90;
  v101 = v197;
  if (v197)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v102 = *(v90 + 16);
    v103 = v228;
    v102(v228, v100, v53);
    MEMORY[0x223DDAEB0](v103);
    MEMORY[0x223DDAED0](v192, v101);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v99 = 0;
  }

  v192 = a10;
  v104 = 1;
  v105 = v239;
  v236(v92 + 2 * v89, v99, 1, v239);
  (v232)(v100, v53);
  v106 = v194;
  LODWORD(v197) = *MEMORY[0x277D39500];
  v231(v194);
  v107 = v199;
  if (v199)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v108 = v228;
    (*(v227 + 16))(v228, v106, v53);
    MEMORY[0x223DDAEB0](v108);
    MEMORY[0x223DDAED0](v191, v107);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v105 = v239;
    v104 = 0;
  }

  v109 = 1;
  v236(v92 + 3 * v89, v104, 1, v105);
  (v232)(v106, v53);
  v110 = v224;
  (v231)(v224, *MEMORY[0x277D39488], v53);
  v111 = v192;
  if (v192)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v112 = v228;
    (*(v227 + 16))(v228, v224, v53);
    v113 = v112;
    v110 = v224;
    MEMORY[0x223DDAEB0](v113);
    MEMORY[0x223DDAED0](a9, v111);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v109 = 0;
  }

  v199 = a14;
  v114 = 1;
  v115 = v239;
  v236(v92 + 4 * v89, v109, 1, v239);
  (v232)(v110, v53);
  v116 = v195;
  (v231)(v195, *MEMORY[0x277D39520], v53);
  if (a12)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v117 = v228;
    (*(v227 + 16))(v228, v116, v53);
    MEMORY[0x223DDAEB0](v117);
    MEMORY[0x223DDAED0](a11, a12);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v115 = v239;
    v114 = 0;
  }

  v118 = v116;
  v195 = a16;
  v119 = 1;
  v236(v92 + 5 * v89, v114, 1, v115);
  (v232)(v118, v53);
  v120 = v198;
  LODWORD(v224) = *MEMORY[0x277D394E8];
  v231(v198);
  if (v199)
  {
    v121 = v199;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v122 = v228;
    (*(v227 + 16))(v228, v120, v53);
    MEMORY[0x223DDAEB0](v122);
    MEMORY[0x223DDAED0](a13, v121);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v119 = 0;
  }

  v199 = a18;
  v123 = 1;
  v236(v92 + 6 * v89, v119, 1, v239);
  (v232)(v120, v53);
  v124 = v200;
  (v231)(v200, v196, v53);
  v125 = v195;
  if (v195)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v126 = v228;
    (*(v227 + 16))(v228, v124, v53);
    MEMORY[0x223DDAEB0](v126);
    MEMORY[0x223DDAED0](a15, v125);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v123 = 0;
  }

  v127 = 1;
  v236(v92 - v89 + 8 * v89, v123, 1, v239);
  (v232)(v124, v53);
  v128 = v225;
  (v231)(v225, v224, v53);
  v129 = v199;
  if (v199)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v130 = v228;
    (*(v227 + 16))(v228, v225, v53);
    MEMORY[0x223DDAEB0](v130);
    v128 = v225;
    MEMORY[0x223DDAED0](a17, v129);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v127 = 0;
  }

  v200 = a22;
  v131 = 1;
  v132 = v239;
  v236(v92 + 8 * v89, v127, 1, v239);
  (v232)(v128, v53);
  v133 = v201;
  (v231)(v201, v224, v53);
  if (a20)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v134 = v228;
    (*(v227 + 16))(v228, v133, v53);
    MEMORY[0x223DDAEB0](v134);
    MEMORY[0x223DDAED0](a19, a20);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v132 = v239;
    v131 = 0;
  }

  v225 = a24;
  v135 = 1;
  v236(v92 + 9 * v89, v131, 1, v132);
  (v232)(v133, v53);
  v136 = v202;
  (v231)(v202, v197, v53);
  v137 = v200;
  v235 = v89;
  if (v200)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v138 = v228;
    (*(v227 + 16))(v228, v136, v53);
    MEMORY[0x223DDAEB0](v138);
    MEMORY[0x223DDAED0](a21, v137);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v135 = 0;
  }

  else
  {
    v138 = v228;
  }

  v139 = v216;
  v140 = 1;
  v236(v92 + 10 * v89, v135, 1, v239);
  (v232)(v136, v53);
  v141 = v92 + 11 * v235;
  (v231)(v139, *MEMORY[0x277D39528], v53);
  v142 = v225;
  if (v225)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v227 + 16))(v138, v139, v53);
    MEMORY[0x223DDAEB0](v138);
    MEMORY[0x223DDAED0](a23, v142);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v140 = 0;
  }

  v225 = a28;
  v143 = 1;
  v236(v141, v140, 1, v239);
  (v232)(v139, v53);
  v144 = v92 + 12 * v235;
  v145 = *MEMORY[0x277D394A0];
  v146 = v217;
  (v231)(v217, v145, v53);
  if (a26)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v227 + 16))(v138, v146, v53);
    MEMORY[0x223DDAEB0](v138);
    MEMORY[0x223DDAED0](a25, a26);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v143 = 0;
  }

  v147 = v146;
  v199 = a30;
  v148 = 1;
  v236(v144, v143, 1, v239);
  (v232)(v147, v53);
  v149 = v235;
  v150 = v203;
  LODWORD(v198) = v145;
  (v231)(v203, v145, v53);
  v151 = v225;
  if (v225)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v152 = v228;
    (*(v227 + 16))(v228, v150, v53);
    MEMORY[0x223DDAEB0](v152);
    MEMORY[0x223DDAED0](a27, v151);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v148 = 0;
  }

  v202 = a37;
  v201 = a36;
  v200 = a35;
  v216 = a34;
  v217 = a33;
  v224 = a32;
  v225 = a31;
  v153 = 1;
  v236(v92 + 13 * v149, v148, 1, v239);
  (v232)(v150, v53);
  v154 = v204;
  (v231)(v204, v198, v53);
  v155 = v199;
  v218 = v92;
  if (v199)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v156 = v228;
    (*(v227 + 16))(v228, v154, v53);
    MEMORY[0x223DDAEB0](v156);
    MEMORY[0x223DDAED0](a29, v155);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v153 = 0;
  }

  LODWORD(v229) = a38;
  v158 = v238;
  v157 = v239;
  v236(v92 + 14 * v149, v153, 1, v239);
  (v232)(v154, v53);
  v159 = (v226 + 48);
  v231 = (v226 + 32);
  v232 = (v226 + 8);
  v233 = MEMORY[0x277D84F90];
  v160 = 15;
  v161 = v218;
  do
  {
    v163 = v51;
    v164 = v234;
    outlined init with copy of MediaUserStateCenter?(v161, v234, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    outlined init with copy of MediaUserStateCenter?(v164, v158, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    v165 = *v159;
    if ((*v159)(v158, 1, v157) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v164, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      v162 = v158;
LABEL_35:
      outlined destroy of MediaUserStateCenter?(v162, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      v51 = v163;
      v236(v163, 1, 1, v157);
LABEL_36:
      outlined destroy of MediaUserStateCenter?(v51, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      goto LABEL_37;
    }

    v166 = MEMORY[0x223DDAEC0]();
    v168 = v167;
    (*v232)(v238, v239);

    v169 = HIBYTE(v168) & 0xF;
    v170 = v166 & 0xFFFFFFFFFFFFLL;
    v171 = (v168 & 0x2000000000000000) == 0;
    v158 = v238;
    v157 = v239;
    if (v171)
    {
      v169 = v170;
    }

    v162 = v164;
    if (!v169)
    {
      goto LABEL_35;
    }

    v172 = v164;
    v51 = v163;
    outlined init with take of PommesSearchReason?(v172, v163, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    if (v165(v163, 1, v157) == 1)
    {
      goto LABEL_36;
    }

    v173 = *v231;
    (*v231)(v230, v163, v157);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
    }

    v175 = *(v233 + 2);
    v174 = *(v233 + 3);
    if (v175 >= v174 >> 1)
    {
      v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v233);
    }

    v176 = v233;
    *(v233 + 2) = v175 + 1;
    v157 = v239;
    v173(&v176[((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v175], v230, v239);
    v158 = v238;
    v51 = v163;
LABEL_37:
    v161 += v235;
    --v160;
  }

  while (v160);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v220 + 16))(v219, v225, v221);
  v177 = v209;
  v178 = v207;
  (*(v209 + 16))(v207, v224, v222);
  v179 = v211;
  v180 = v208;
  (*(v211 + 16))(v208, v217, v223);
  v181 = v213;
  v182 = v210;
  v183 = v214;
  (*(v213 + 16))(v210, v216, v214);
  v184 = v202;
  v185 = v212;
  outlined init with copy of MediaUserStateCenter?(v202, v212, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  HIBYTE(v188) = 1;
  LOBYTE(v188) = v229 & 1;
  v186 = (*(v215 + 176))(v233, v219, v178, v180, v182, v200, v201, v185, v188, 0, 0);
  outlined destroy of MediaUserStateCenter?(v184, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  (*(v181 + 8))(v216, v183);
  (*(v179 + 8))(v217, v223);
  (*(v177 + 8))(v224, v222);
  (*(v220 + 8))(v225, v221);
  return v186;
}

uint64_t AudioQuery.__allocating_init(queryFields:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:networkAvailableAtRequest:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v22 - 8) + 32))(v20 + v21, a2, v22);
  v23 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v24 - 8) + 32))(v20 + v23, a3, v24);
  v25 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v26 - 8) + 32))(v20 + v25, a4, v26);
  v27 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v28 - 8) + 32))(v20 + v27, a5, v28);
  v29 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  *v29 = a6;
  v29[1] = a7;
  outlined init with take of PommesSearchReason?(a8, v20 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = a9;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a10;
  v30 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v30 = a11;
  v30[1] = a12;
  return v20;
}

uint64_t AudioQuery.init(queryFields:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:networkAvailableAtRequest:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  v20 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v21 - 8) + 32))(v12 + v20, a2, v21);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v23 - 8) + 32))(v12 + v22, a3, v23);
  v24 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v25 - 8) + 32))(v12 + v24, a4, v25);
  v26 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v27 - 8) + 32))(v12 + v26, a5, v27);
  v28 = (v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  *v28 = a6;
  v28[1] = a7;
  outlined init with take of PommesSearchReason?(a8, v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = a9;
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a10;
  v29 = (v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v29 = a11;
  v29[1] = a12;
  return v12;
}

char *closure #1 in static AudioQuery.makeNormalQuery(audioExperience:mode:)()
{
  v0 = *(Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter() + 16);

  if (v0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "AudioQuery : librarySearchTerms from ClientSignals", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "AudioQuery : librarySearchTerms from AudioUnderstanding", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  }
}

uint64_t closure #1 in static AudioQuery.makePlaylistQuery(audioExperience:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v56 = &v43 - v4;
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v5 = *(v46 - 8);
  v6 = MEMORY[0x28223BE20](v46);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v54 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = *(Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter() + 16);

  if (!v13)
  {
    v35 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
      v39 = v56;
      (*(v1 + 104))(v56, *MEMORY[0x277D39520], v0);
      MEMORY[0x223DDAEB0](v39);
      v40 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
      MEMORY[0x223DDAED0](v40);
      Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMR);
      v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2234CF920;
      (*(v5 + 32))(v21 + v41, v8, v46);
      return v21;
    }

    return MEMORY[0x277D84F90];
  }

  v14 = Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  v15 = *(v14 + 16);
  if (!v15)
  {

    return MEMORY[0x277D84F90];
  }

  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v52 = v17;
  v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v43 = v14;
  v45 = v18;
  v19 = v14 + v18;
  v20 = *(v16 + 56);
  v50 = *MEMORY[0x277D39520];
  v48 = (v1 + 8);
  v49 = (v1 + 104);
  v44 = (v16 - 8);
  v53 = v16;
  v47 = (v16 + 16);
  v21 = MEMORY[0x277D84F90];
  v22 = v46;
  v23 = v12;
  v51 = v20;
  v24 = v55;
  do
  {
    v26 = v21;
    v27 = v52(v23, v19, v22);
    v28 = v56;
    MEMORY[0x223DDAEA0](v27);
    (*v49)(v24, v50, v0);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v29 = v22;
    v30 = *v48;
    (*v48)(v24, v0);
    v30(v28, v0);
    if (v58 == v57)
    {
      v31 = *v47;
      (*v47)(v54, v23, v29);
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v21);
      }

      *(v21 + 16) = v33 + 1;
      v25 = v51;
      v34 = v21 + v45 + v33 * v51;
      v22 = v46;
      v31(v34, v54, v46);
    }

    else
    {
      (*v44)(v23, v29);
      v22 = v29;
      v21 = v26;
      v25 = v51;
    }

    v19 += v25;
    --v15;
  }

  while (v15);

  return v21;
}

uint64_t AudioQuery.deinit()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);

  return v0;
}

uint64_t AudioQuery.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);

  return swift_deallocClassInstance();
}

uint64_t specialized static AudioQuery.makeNormalQuery(audioExperience:mode:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v48 - v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioReference();
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v19 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v22 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioExperience.audioUnderstanding.getter();
  v62 = a1;
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v25 = v15;
  v26 = v51;
  (*(v16 + 8))(v18, v25);
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.getter();
  v27 = (*(v26 + 88))(v14, v12);
  v32 = v27 == *MEMORY[0x277D39620] || v27 == *MEMORY[0x277D39630] || v27 == *MEMORY[0x277D39628] || v27 == *MEMORY[0x277D39638] || v27 == *MEMORY[0x277D39618] || v27 == *MEMORY[0x277D39610];
  v33 = v32;
  v53 = v33;
  if (!v32)
  {
    (*(v26 + 8))(v14, v12);
  }

  v49 = closure #1 in static AudioQuery.makeNormalQuery(audioExperience:mode:)();
  v34 = v55;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.getter();
  v35 = v58;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.getter();
  v36 = v61;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  v37 = v65;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter();
  v38 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.getter();
  v50 = v39;
  v51 = v38;
  v40 = v68;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter();
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();
  (*(v19 + 8))(v21, v54);
  (*(v22 + 8))(v24, v52);
  type metadata accessor for AudioQuery(0);
  v43 = swift_allocObject();
  *(v43 + 16) = v49;
  (*(v56 + 32))(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v34, v57);
  (*(v59 + 32))(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v35, v60);
  (*(v63 + 32))(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb, v36, v64);
  (*(v66 + 32))(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun, v37, v67);
  v44 = (v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v45 = v50;
  *v44 = v51;
  v44[1] = v45;
  outlined init with take of PommesSearchReason?(v40, v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = v53;
  *(v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = v42 & 1;
  v46 = (v43 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v46 = 0;
  v46[1] = 0;
  return v43;
}

uint64_t specialized static AudioQuery.makePlaylistQuery(audioExperience:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v40 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v41 = *(v46 - 8);
  v10 = v41;
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v16 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  AudioExperience.audioUnderstanding.getter();
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  (*(v13 + 8))(v15, v12);
  v42 = closure #1 in static AudioQuery.makePlaylistQuery(audioExperience:)();
  v23 = *(v10 + 104);
  v24 = v43;
  v25 = v46;
  v23(v43, *MEMORY[0x277D39898], v46);
  v26 = v48;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter();
  v27 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.getter();
  v44 = v28;
  v45 = v27;
  v29 = v49;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter();
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  LOBYTE(a1) = dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();
  (*(v16 + 8))(v18, v47);
  (*(v20 + 8))(v22, v19);
  v32 = v52;
  v31 = v53;
  v33 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x277D39168], v54);
  type metadata accessor for AudioQuery(0);
  v34 = swift_allocObject();
  v35 = v41;
  *(v34 + 16) = v42;
  (*(v35 + 32))(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v24, v25);
  (*(v31 + 32))(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v32, v33);
  (*(v50 + 32))(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb, v26, v51);
  (*(v55 + 32))(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun, v57, v56);
  v36 = (v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v37 = v44;
  *v36 = v45;
  v36[1] = v37;
  outlined init with take of PommesSearchReason?(v29, v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = 0;
  *(v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a1 & 1;
  v38 = (v34 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v38 = 0;
  v38[1] = 0;
  return v34;
}

uint64_t type metadata accessor for AudioQuery(uint64_t a1)
{
  result = type metadata singleton initialization cache for AudioQuery;
  if (!type metadata singleton initialization cache for AudioQuery)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AudioQuery(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier?(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssistantDataCache.__allocating_init(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v4 = *(v1 + 168);

  return v4(a1, v3, &protocol witness table for CNContactStore, 0);
}

uint64_t closure #1 in variable initialization expression of AssistantDataCache.contactsQueue()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10[1] = "tantData(_:updateQueue:)";
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  v10[0] = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t key path setter for AssistantDataCache.lastAssistantDataSnapshot : AssistantDataCache(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v17 = a1[3];
  v18[0] = v3;
  *(v18 + 10) = *(a1 + 74);
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v16 = v2;
  v5 = *a2;
  swift_beginAccess();
  v7 = v5[5];
  v6 = v5[6];
  *(v20 + 10) = *(v5 + 122);
  v8 = v5[7];
  v19[3] = v6;
  v20[0] = v8;
  v9 = v5[4];
  v19[0] = v5[3];
  v19[1] = v9;
  v19[2] = v7;
  v10 = v18[0];
  v5[6] = v17;
  v5[7] = v10;
  *(v5 + 122) = *(v18 + 10);
  v11 = v16;
  v5[4] = v15;
  v5[5] = v11;
  v5[3] = v14;
  outlined init with copy of AssistantDataSnapshot?(&v14, v13);
  return outlined destroy of AssistantDataSnapshot?(v19);
}

double AssistantDataCache.lastAssistantDataSnapshot.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[7];
  v14 = v1[6];
  v15[0] = v4;
  *(v15 + 10) = *(v1 + 122);
  v5 = v1[4];
  v11 = v1[3];
  v12 = v5;
  v13 = v3;
  outlined init with copy of AssistantDataSnapshot?(&v11, v10);
  v6 = v14;
  v7 = v15[0];
  v8 = v12;
  a1[2] = v13;
  a1[3] = v6;
  a1[4] = v7;
  *(a1 + 74) = *(v15 + 10);
  result = *&v11;
  *a1 = v11;
  a1[1] = v8;
  return result;
}

uint64_t outlined init with copy of AssistantDataSnapshot?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void key path setter for AssistantDataCache.profileConnection : AssistantDataCache(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
  v5 = v2;
}

void *AssistantDataCache.profileConnection.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

uint64_t AssistantDataCache.__allocating_init(_:contactFetching:profileConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v8 + 144) = 0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 122) = 0u;
  *(v8 + 16) = v9;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  swift_beginAccess();
  *(v8 + 144) = a4;
  return v8;
}

uint64_t AssistantDataCache.init(_:contactFetching:profileConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v4 + 144) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 122) = 0u;
  *(v4 + 16) = v9;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  swift_beginAccess();
  *(v4 + 144) = a4;
  return v4;
}

uint64_t closure #1 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      AssistantDataCache.fallbackSnapshot()(v16);
      v12 = v16[1];
      v13 = v16[0];
      v10 = v16[3];
      v11 = v16[2];
      v3 = v17;
      v4 = v18;
      v5 = v19;
      v6 = v20;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
    }

    swift_beginAccess();
    v7 = *(v2 + 112);
    v14[3] = *(v2 + 96);
    v15[0] = v7;
    v8 = *(v2 + 80);
    *(v15 + 10) = *(v2 + 122);
    v9 = *(v2 + 64);
    v14[0] = *(v2 + 48);
    v14[1] = v9;
    v14[2] = v8;
    *(v2 + 48) = v13;
    *(v2 + 64) = v12;
    *(v2 + 80) = v11;
    *(v2 + 96) = v10;
    *(v2 + 112) = v3;
    *(v2 + 120) = v4;
    *(v2 + 128) = v5;
    *(v2 + 136) = v6;
    outlined destroy of AssistantDataSnapshot?(v14);
  }

  return result;
}

void AssistantDataCache.fallbackSnapshot()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D475C8]) init];
  [v8 setMovieRestriction_];
  v47 = v8;
  [v8 setTvRestriction_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static PerformanceUtil.shared;
  Date.init()();
  v10 = *(*v9 + 200);
  v11 = *v9 + 200;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19MCProfileConnectionCSgMd, &_sSo19MCProfileConnectionCSgMR);
  LOBYTE(v36) = 2;
  (v10)(&v48, 0xD00000000000001CLL, 0x80000002234E2360, 0, v7, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 138, "fallbackSnapshot()", 18, v36, partial apply for closure #1 in AssistantDataCache.fallbackSnapshot(), v2, v12);
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v16 = v15(v7, v4);
  if (v48)
  {
    v41 = &v39;
    v46 = v13;
    MEMORY[0x28223BE20](v16);
    v45 = v17;
    Date.init()();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    v19 = v10;
    v20 = v18;
    v37 = &v36;
    v38 = v18;
    LOBYTE(v36) = 2;
    v43 = v19;
    v19(&v48, 0xD000000000000055, 0x80000002234E23A0, 0, v7, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 142, "fallbackSnapshot()", 18, v36, partial apply for closure #2 in AssistantDataCache.fallbackSnapshot());
    v44 = v14;
    v21 = v46(v7, v4);
    v22 = v48;
    if (v48)
    {
      v23 = [v48 integerValue];
      [v47 setMovieRestriction_];
    }

    MEMORY[0x28223BE20](v21);
    Date.init()();
    v37 = &v36;
    v38 = v20;
    LOBYTE(v36) = 2;
    v43(&v48, 0xD000000000000056, 0x80000002234E2400, 0, v7, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 148, "fallbackSnapshot()", 18, v36, partial apply for closure #3 in AssistantDataCache.fallbackSnapshot());
    v24 = v46(v7, v4);
    v25 = v48;
    v42 = v11;
    if (v48)
    {
      v26 = [v48 integerValue];
      [v47 setTvRestriction_];
    }

    v40 = "howsRating).int32Value";
    MEMORY[0x28223BE20](v24);
    Date.init()();
    v37 = &v36;
    v38 = MEMORY[0x277D839B0];
    LOBYTE(v36) = 2;
    v27 = v43;
    v43(&v48, 0xD000000000000055, 0x80000002234E2460, 0, v7, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 154, "fallbackSnapshot()", 18, v36, partial apply for closure #4 in AssistantDataCache.fallbackSnapshot());
    v28 = v46;
    v29 = v46(v7, v4);
    v41 = &v39;
    v39 = v4;
    v30 = v48;
    MEMORY[0x28223BE20](v29);
    v31 = v45;
    Date.init()();
    v37 = &v36;
    v38 = MEMORY[0x277D839B0];
    LOBYTE(v36) = 2;
    v27(&v48, 0xD000000000000055, v40 | 0x8000000000000000, 0, v7, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 157, "fallbackSnapshot()", 18, v36, partial apply for closure #5 in AssistantDataCache.fallbackSnapshot());

    v28(v7, v39);
    v32 = v48;
  }

  else
  {
    v30 = 0;
    v32 = 1;
  }

  v33 = v47;
  v34 = [v33 movieRestriction];
  v35 = [v33 tvRestriction];

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v34;
  *(a1 + 40) = v35;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v32;
  *(a1 + 89) = v30;
}

id closure #1 in AssistantDataCache.fallbackSnapshot()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 144))();
  if (!result)
  {
    result = [objc_opt_self() sharedConnection];
  }

  *a2 = result;
  return result;
}

uint64_t AssistantDataCache.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  outlined consume of AssistantDataSnapshot?(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t AssistantDataCache.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  outlined consume of AssistantDataSnapshot?(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

id partial apply for closure #2 in AssistantDataCache.fallbackSnapshot()@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) effectiveValueForSetting_];
  *a1 = result;
  return result;
}

id partial apply for closure #3 in AssistantDataCache.fallbackSnapshot()@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) effectiveValueForSetting_];
  *a1 = result;
  return result;
}

id partial apply for closure #4 in AssistantDataCache.fallbackSnapshot()@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 16) effectiveBoolValueForSetting_];
  *a1 = result == 1;
  return result;
}

id partial apply for closure #5 in AssistantDataCache.fallbackSnapshot()@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 16) effectiveBoolValueForSetting_];
  *a1 = result == 1;
  return result;
}

void *PimsRuntimeLoggingHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  getPimsRuntimeLogger()();
  v1 = type metadata accessor for MediaSuggestionManager();
  swift_allocObject();
  v2 = MediaSuggestionManager.init()();
  v0[10] = v1;
  v0[11] = &protocol witness table for MediaSuggestionManager;
  v0[7] = v2;
  return v0;
}

void *PimsRuntimeLoggingHandler.init()()
{
  getPimsRuntimeLogger()();
  outlined init with take of DomainWarmupHandling(&v4, (v0 + 2));
  v1 = type metadata accessor for MediaSuggestionManager();
  swift_allocObject();
  v2 = MediaSuggestionManager.init()();
  v0[10] = v1;
  v0[11] = &protocol witness table for MediaSuggestionManager;
  v0[7] = v2;
  return v0;
}

uint64_t PimsRuntimeLoggingHandler.__allocating_init(pimsRuntimeLogger:suggestionManager:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(a1, v4 + 16);
  outlined init with take of DomainWarmupHandling(a2, v4 + 56);
  return v4;
}

uint64_t PimsRuntimeLoggingHandler.init(pimsRuntimeLogger:suggestionManager:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of DomainWarmupHandling(a1, v2 + 16);
  outlined init with take of DomainWarmupHandling(a2, v2 + 56);
  return v2;
}

void PimsRuntimeLoggingHandler.logPIMSCandidates(requestId:serverStateSignals:rankedResults:)(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v93 = a2;
  v83 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaSuggestionManager.EnablementStatus();
  v79 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMd, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = (&v74 - v13);
  v99 = type metadata accessor for PimsSuggestionMetadata();
  isa = v99[-1].isa;
  v14 = MEMORY[0x28223BE20](v99);
  v96 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = (&v74 - v16);
  v91 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v74 - v23;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v89 = v19;
    v68 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = __CocoaSet.count.getter();
    v28 = v68;
    v19 = v89;
    if (v69)
    {
LABEL_3:
      v77 = v28;
      outlined init with copy of MediaUserStateCenter?(v93, v24, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      v29 = (*(v26 + 48))(v24, 1, v25);
      v78 = v10;
      if (v29 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v24, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      }

      else
      {
        v89 = v19;
        v30 = v77;
        (*(v26 + 32))(v77, v24, v25);
        if (Apple_Parsec_Siri_V2alpha_ClientSignals.hasMusicRankingInfluenceImpactInfo.getter())
        {
          v76 = v26;
          Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter();
          v31 = Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.suggestionImpactInfo.getter();
          (*(v89 + 8))(v21, v18);
          v32 = v31;
          v33 = *(v31 + 16);
          if (v33)
          {
            v75 = v25;
            v34 = v4;
            v89 = *(v94 + 16);
            v35 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            v74 = v32;
            v36 = v32 + v35;
            v37 = *(v94 + 72);
            v94 += 16;
            v87 = (v94 - 8);
            v88 = v37;
            v85 = (isa + 32);
            v86 = (isa + 48);
            v93 = MEMORY[0x277D84F90];
            v38 = v99;
            v39 = v95;
            v81 = a3;
            v80 = v34;
            v40 = v90;
            do
            {
              v41 = v91;
              (v89)(v40, v36, v91);
              PimsRuntimeLoggingHandler.mapPimsMatchToSuggestionMetadata(match:rankedResults:)(a3, v39);
              v39 = v95;
              (*v87)(v40, v41);
              if ((*v86)(v39, 1, v38) == 1)
              {
                outlined destroy of MediaUserStateCenter?(v39, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMd, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMR);
              }

              else
              {
                v42 = *v85;
                (*v85)(v92, v39, v38);
                v43 = v93;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
                }

                v45 = v43[2];
                v44 = v43[3];
                if (v45 >= v44 >> 1)
                {
                  v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
                }

                v43[2] = v45 + 1;
                v46 = (*(isa + 80) + 32) & ~*(isa + 80);
                v93 = v43;
                v38 = v99;
                (v42)(v43 + v46 + *(isa + 9) * v45, v92);
                v34 = v80;
                a3 = v81;
                v39 = v95;
              }

              v36 += v88;
              --v33;
            }

            while (v33);

            v4 = v34;
            v25 = v75;
          }

          else
          {

            v93 = MEMORY[0x277D84F90];
          }

          (*(v76 + 8))(v77, v25);
          v51 = v93;
          goto LABEL_25;
        }

        (*(v26 + 8))(v30, v25);
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.pommes);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2232BB000, v48, v49, "PimsRuntimeLoggingHandler: Missing signals from server, unable to get information about suggestion match if any", v50, 2u);
        MEMORY[0x223DE0F80](v50, -1, -1);
      }

      v51 = MEMORY[0x277D84F90];
LABEL_25:
      __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
      dispatch thunk of PimsRuntimeLogging.logSuggestionMetadata(requestId:suggestions:)();
      outlined init with copy of AppDataProviding((v4 + 2), v100);
      v52 = v101;
      v53 = v102;
      v92 = __swift_project_boxed_opaque_existential_1(v100, v101);
      v54 = v4[10];
      v55 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v54);
      (*(v55 + 8))(v54, v55);
      v56 = *(v51 + 16);
      if (v56)
      {
        v90 = v53;
        v91 = v52;
        v57 = *(isa + 2);
        v58 = *(isa + 80);
        v93 = v51;
        v59 = v51 + ((v58 + 32) & ~v58);
        v94 = *(isa + 9);
        v95 = v57;
        v60 = (isa + 8);
        v61 = MEMORY[0x277D84F90];
        v62 = v9;
        do
        {
          v63 = v96;
          v64 = v99;
          v95(v96, v59, v99);
          PimsSuggestionMetadata.pimsId.getter();
          (*v60)(v63, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
          }

          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v61);
          }

          v61[2] = v66 + 1;
          (*(v98 + 32))(v61 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v66, v62, v97);
          v59 += v94;
          --v56;
        }

        while (v56);
      }

      v67 = v82;
      dispatch thunk of PimsRuntimeLogging.logCandidateSuggestions(requestId:enablementStatus:pimsIds:)();

      (*(v79 + 8))(v67, v78);
      __swift_destroy_boxed_opaque_existential_1(v100);
      return;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logger.pommes);
  v99 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v99, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_2232BB000, v99, v71, "PimsRuntimeLoggingHandler: There is no candidate in the ranked results", v72, 2u);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  v73 = v99;
}

uint64_t PimsRuntimeLoggingHandler.mapPimsMatchToSuggestionMetadata(match:rankedResults:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v112 = a1;
  v122 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics29PLUSSuggestionRedundancyStateOSgMd, &_s28SiriPrivateLearningAnalytics29PLUSSuggestionRedundancyStateOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics26PLUSSuggestionNoveltyStateOSgMd, &_s28SiriPrivateLearningAnalytics26PLUSSuggestionNoveltyStateOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics27PLUSSuggestionSurfacedStateOSgMd, &_s28SiriPrivateLearningAnalytics27PLUSSuggestionSurfacedStateOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v121 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v99 - v11;
  v100 = type metadata accessor for PimsClientTreatment();
  v114 = *(v100 - 8);
  v12 = MEMORY[0x28223BE20](v100);
  v99 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v99 - v14;
  v15 = type metadata accessor for PLUSSuggestionSurfacedState();
  v118 = *(v15 - 8);
  v119 = v15;
  MEMORY[0x28223BE20](v15);
  v117 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v107 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v99 - v21;
  MEMORY[0x28223BE20](v20);
  v123 = &v99 - v22;
  v23 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v106 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v105 = &v99 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v101 = &v99 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v111 = (&v99 - v35);
  MEMORY[0x28223BE20](v34);
  v37 = &v99 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v99 - v39;
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v116 = &v99 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v99 - v45;
  Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.clientMusicSuggestionID.getter();
  UUID.init(uuidString:)();
  v47 = v41;
  v48 = v42;

  if ((*(v42 + 48))(v40, 1, v47) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.pommes);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v122;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2232BB000, v50, v51, "PimsRuntimeLoggingHandler: There is no pims id in the response", v54, 2u);
      MEMORY[0x223DE0F80](v54, -1, -1);
    }

    v55 = 1;
    goto LABEL_44;
  }

  (*(v42 + 32))(v46, v40, v47);
  Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.getter();
  PimsRuntimeLoggingHandler.mapServerImpactToPimsServerTreatment(impact:)(v26, v37);
  result = (*(v24 + 8))(v26, v23);
  v57 = v112;
  v58 = v37;
  v59 = v46;
  if (v112 >> 62)
  {
    result = __CocoaSet.count.getter();
    v60 = result;
  }

  else
  {
    v60 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v123;
  v62 = v113;
  v63 = v111;
  v103 = v47;
  v104 = v48;
  v102 = v59;
  if (v60)
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v57 + 32);
      goto LABEL_13;
    }

    __break(1u);
    return result;
  }

  v65 = 0;
LABEL_15:
  v66 = v114;
  PimsRuntimeLoggingHandler.mapClientImpactToPimsClientTreatment(finalTopCandidate:serverTreatment:)(v65, v58, v61);

  v113 = v58;
  outlined init with copy of MediaUserStateCenter?(v58, v63, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v58 = type metadata accessor for PimsServerTreatment();
  v67 = *(v58 - 8);
  v68 = *(v67 + 48);
  if (v68(v63, 1, v58) == 1)
  {
    goto LABEL_16;
  }

  v111 = v68;
  v71 = v101;
  outlined init with copy of MediaUserStateCenter?(v63, v101, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v72 = (*(v67 + 88))(v71, v58);
  if (v72 == *MEMORY[0x277D5FD70] || v72 == *MEMORY[0x277D5FD68])
  {
    outlined destroy of MediaUserStateCenter?(v63, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    outlined init with copy of MediaUserStateCenter?(v61, v62, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
    v73 = v100;
    if ((*(v66 + 48))(v62, 1, v100) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v62, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
      v69 = v110;
      v68 = v111;
LABEL_37:
      (*(v118 + 104))(v117, *MEMORY[0x277D5FC70], v119);
      v70 = v120;
      goto LABEL_40;
    }

    v74 = v115;
    (*(v66 + 32))(v115, v62, v73);
    v75 = v99;
    (*(v66 + 104))(v99, *MEMORY[0x277D5FD48], v73);
    v76 = v66;
    v77 = v73;
    v78 = MEMORY[0x223DDF080](v74, v75);
    v79 = *(v76 + 8);
    v62 = v76 + 8;
    v80 = v75;
    v81 = v79;
    v79(v80, v77);
    v68 = v111;
    if ((v78 & 1) == 0)
    {
      v81(v115, v77);
      v69 = v110;
      goto LABEL_37;
    }

    v82 = v81;
    v114 = v62;
    v67 = 0;
    v61 = v57 & 0xC000000000000001;
    v63 = v57 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v60 == v67)
      {
        v82(v115, v100);
        v86 = MEMORY[0x277D5FC68];
        goto LABEL_39;
      }

      if (v61)
      {
        v83 = MEMORY[0x223DDFF80](v67, v57);
        if (__OFADD__(v67, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        if (v67 >= *(v63 + 16))
        {
          __break(1u);
LABEL_47:
          v64 = MEMORY[0x223DDFF80](0, v57);
LABEL_13:
          v65 = v64;
          goto LABEL_15;
        }

        v83 = *(v57 + 8 * v67 + 32);
        if (__OFADD__(v67, 1))
        {
          goto LABEL_34;
        }
      }

      v62 = v57;
      v84 = v83[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource];

      ++v67;
      v85 = v84 == 1;
      v57 = v62;
      if (v85)
      {
        v82(v115, v100);
        v86 = MEMORY[0x277D5FC78];
LABEL_39:
        (*(v118 + 104))(v117, *v86, v119);
        v69 = v110;
        v70 = v120;
        v61 = v123;
        goto LABEL_40;
      }
    }
  }

  if (v72 != *MEMORY[0x277D5FD78])
  {
LABEL_35:
    (*(v67 + 8))(v101, v58);
    v68 = v111;
LABEL_16:
    (*(v118 + 104))(v117, *MEMORY[0x277D5FC68], v119);
    outlined destroy of MediaUserStateCenter?(v63, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    v69 = v110;
    v70 = v120;
    goto LABEL_40;
  }

  (*(v118 + 104))(v117, *MEMORY[0x277D5FC78], v119);
  outlined destroy of MediaUserStateCenter?(v63, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v69 = v110;
  v68 = v111;
  v70 = v120;
LABEL_40:
  v87 = v105;
  outlined init with copy of MediaUserStateCenter?(v113, v105, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v88 = v68(v87, 1, v58);
  outlined destroy of MediaUserStateCenter?(v87, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if (v88 == 1)
  {
    v89 = type metadata accessor for PimsLocality();
    (*(*(v89 - 8) + 56))(v70, 1, 1, v89);
  }

  else
  {
    v90 = *MEMORY[0x277D5FD38];
    v91 = type metadata accessor for PimsLocality();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v70, v90, v91);
    (*(v92 + 56))(v70, 0, 1, v91);
  }

  (*(v104 + 16))(v116, v102, v103);
  outlined init with copy of MediaUserStateCenter?(v70, v121, &_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  v93 = v113;
  outlined init with copy of MediaUserStateCenter?(v113, v106, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  outlined init with copy of MediaUserStateCenter?(v61, v107, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  v95 = v117;
  v94 = v118;
  v96 = v108;
  v97 = v119;
  (*(v118 + 16))(v108, v117, v119);
  (*(v94 + 56))(v96, 0, 1, v97);
  PimsRuntimeLoggingHandler.extractNoveltyState(serverTreatment:)(v93, v109);
  PimsRuntimeLoggingHandler.extractRedundancyState(serverTreatment:)(v93, v69);
  v53 = v122;
  PimsSuggestionMetadata.init(pimsId:locality:serverTreatment:clientTreatment:suggestionSurfaced:noveltyState:redundancyState:)();
  outlined destroy of MediaUserStateCenter?(v120, &_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  (*(v94 + 8))(v95, v97);
  outlined destroy of MediaUserStateCenter?(v123, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  outlined destroy of MediaUserStateCenter?(v93, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  (*(v104 + 8))(v102, v103);
  v55 = 0;
LABEL_44:
  v98 = type metadata accessor for PimsSuggestionMetadata();
  return (*(*(v98 - 8) + 56))(v53, v55, 1, v98);
}

uint64_t PimsRuntimeLoggingHandler.mapServerImpactToPimsServerTreatment(impact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D39C68])
  {
    v9 = MEMORY[0x277D5FD60];
  }

  else if (v8 == *MEMORY[0x277D39C78])
  {
    v9 = MEMORY[0x277D5FD70];
  }

  else if (v8 == *MEMORY[0x277D39C70])
  {
    v9 = MEMORY[0x277D5FD68];
  }

  else if (v8 == *MEMORY[0x277D39C80])
  {
    v9 = MEMORY[0x277D5FD78];
  }

  else if (v8 == *MEMORY[0x277D39CA0])
  {
    v9 = MEMORY[0x277D5FD98];
  }

  else if (v8 == *MEMORY[0x277D39CB0])
  {
    v9 = MEMORY[0x277D5FDA8];
  }

  else if (v8 == *MEMORY[0x277D39C98])
  {
    v9 = MEMORY[0x277D5FD90];
  }

  else if (v8 == *MEMORY[0x277D39C88])
  {
    v9 = MEMORY[0x277D5FD80];
  }

  else if (v8 == *MEMORY[0x277D39C90])
  {
    v9 = MEMORY[0x277D5FD88];
  }

  else if (v8 == *MEMORY[0x277D39CA8])
  {
    v9 = MEMORY[0x277D5FDA0];
  }

  else
  {
    if (v8 != *MEMORY[0x277D39C60])
    {
      v14 = type metadata accessor for PimsServerTreatment();
      (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = MEMORY[0x277D5FD58];
  }

  v10 = *v9;
  v11 = type metadata accessor for PimsServerTreatment();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a2, v10, v11);
  return (*(v12 + 56))(a2, 0, 1, v11);
}

uint64_t PimsRuntimeLoggingHandler.mapClientImpactToPimsClientTreatment(finalTopCandidate:serverTreatment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PimsServerTreatment();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (!a1 || a1[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] != 2)
  {
    goto LABEL_5;
  }

  outlined init with copy of MediaUserStateCenter?(a2, v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v21 = *(v10 + 104);
    v21(v13, *MEMORY[0x277D5FD70], v9);
    v22 = a1;
    v23 = MEMORY[0x223DDF0A0](v15, v13);
    v24 = *(v10 + 8);
    v24(v13, v9);
    if (v23)
    {
      v24(v15, v9);
    }

    else
    {
      v21(v13, *MEMORY[0x277D5FD68], v9);
      v25 = MEMORY[0x223DDF0A0](v15, v13);

      v24(v13, v9);
      v24(v15, v9);
      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = MEMORY[0x277D5FD48];
    goto LABEL_6;
  }

  outlined destroy of MediaUserStateCenter?(v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
LABEL_5:
  v16 = MEMORY[0x277D5FD40];
LABEL_6:
  v17 = *v16;
  v18 = type metadata accessor for PimsClientTreatment();
  v19 = *(v18 - 8);
  (*(v19 + 104))(a3, v17, v18);
  return (*(v19 + 56))(a3, 0, 1, v18);
}

uint64_t PimsRuntimeLoggingHandler.extractNoveltyState(serverTreatment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for PimsServerTreatment();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  outlined init with copy of MediaUserStateCenter?(a1, v6, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v17 = *(v8 + 32);
    v17(v13, v6, v7);
    v17(v11, v13, v7);
    v18 = (*(v8 + 88))(v11, v7);
    if (v18 != *MEMORY[0x277D5FD50])
    {
      if (v18 == *MEMORY[0x277D5FD70] || v18 == *MEMORY[0x277D5FD60])
      {
        goto LABEL_10;
      }

      if (v18 == *MEMORY[0x277D5FD68] || v18 == *MEMORY[0x277D5FD78] || v18 == *MEMORY[0x277D5FD98] || v18 == *MEMORY[0x277D5FDA8])
      {
        goto LABEL_4;
      }

      if (v18 == *MEMORY[0x277D5FD90])
      {
        v19 = MEMORY[0x277D5FC50];
        goto LABEL_11;
      }

      if (v18 == *MEMORY[0x277D5FD80])
      {
        goto LABEL_4;
      }

      if (v18 == *MEMORY[0x277D5FDA0])
      {
LABEL_10:
        v19 = MEMORY[0x277D5FC58];
        goto LABEL_11;
      }

      if (v18 != *MEMORY[0x277D5FD88] && v18 != *MEMORY[0x277D5FD58])
      {
        v26 = type metadata accessor for PLUSSuggestionNoveltyState();
        (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
        return (*(v8 + 8))(v11, v7);
      }
    }

LABEL_4:
    v19 = MEMORY[0x277D5FC48];
LABEL_11:
    v21 = *v19;
    v15 = type metadata accessor for PLUSSuggestionNoveltyState();
    v16 = *(v15 - 8);
    (*(v16 + 104))(a2, v21, v15);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  outlined destroy of MediaUserStateCenter?(v6, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v14 = *MEMORY[0x277D5FC48];
  v15 = type metadata accessor for PLUSSuggestionNoveltyState();
  v16 = *(v15 - 8);
  (*(v16 + 104))(a2, v14, v15);
  return (*(v16 + 56))(a2, 0, 1, v15);
}

uint64_t PimsRuntimeLoggingHandler.extractRedundancyState(serverTreatment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for PimsServerTreatment();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  outlined init with copy of MediaUserStateCenter?(a1, v6, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    v14 = type metadata accessor for PLUSSuggestionRedundancyState();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  v16 = *(v8 + 32);
  v16(v13, v6, v7);
  v16(v11, v13, v7);
  v17 = (*(v8 + 88))(v11, v7);
  if (v17 == *MEMORY[0x277D5FD70] || v17 == *MEMORY[0x277D5FD60] || v17 == *MEMORY[0x277D5FD68] || v17 == *MEMORY[0x277D5FD78] || v17 == *MEMORY[0x277D5FD98] || v17 == *MEMORY[0x277D5FDA8] || v17 == *MEMORY[0x277D5FD90])
  {
    v24 = MEMORY[0x277D5FCA0];
LABEL_26:
    v25 = *v24;
    v26 = type metadata accessor for PLUSSuggestionRedundancyState();
    v27 = *(v26 - 8);
    (*(v27 + 104))(a2, v25, v26);
    return (*(v27 + 56))(a2, 0, 1, v26);
  }

  if (v17 == *MEMORY[0x277D5FDA0])
  {
    v24 = MEMORY[0x277D5FCA8];
    goto LABEL_26;
  }

  v28 = type metadata accessor for PLUSSuggestionRedundancyState();
  (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  return (*(v8 + 8))(v11, v7);
}

uint64_t PimsRuntimeLoggingHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t PimsRuntimeLoggingHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t PommesPhoneCallStateManager.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 3;
  *(result + 16) = a1;
  return result;
}

uint64_t one-time initialization function for phoneCallStateQueryTimeoutInMillis()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
  *__swift_project_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis) = 20;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
}

uint64_t static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PommesPhoneCallStateManager.init(_:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 3;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), 0, 0);
}

uint64_t PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:);
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD000000000000022, 0x80000002234E2610, partial apply for closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), v4, v6);
}

{

  return MEMORY[0x2822009F8](PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 56));
}

uint64_t closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  (*(*a2 + 128))(a3, a4, partial apply for closure #1 in closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), v13);
}

Swift::Bool __swiftcall PommesPhoneCallStateManager.cachedIsUserOnPhoneCall(requestId:conservative:)(Swift::String_optional requestId, Swift::Bool conservative)
{
  if (*(v2 + 40) > 1u)
  {
    if (*(v2 + 40) == 2)
    {
      if (requestId.value._object)
      {
        v9 = *(v2 + 24) == requestId.value._countAndFlagsBits && *(v2 + 32) == requestId.value._object;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, static Logger.pommes);
          v5 = Logger.logObject.getter();
          v11 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v5, v11))
          {
            conservative = 1;
            goto LABEL_32;
          }

          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_2232BB000, v5, v11, "PommesPhoneCallStateManager: User is on phone call", v7, 2u);
          conservative = 1;
          goto LABEL_31;
        }
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "PommesPhoneCallStateManager: requestId is not the same as cached requestId value, cannot determine call state";
        goto LABEL_30;
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "PommesPhoneCallStateManager: unknown phone call state";
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (*(v2 + 40))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v13))
      {
        conservative = 0;
        goto LABEL_32;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v13, "PommesPhoneCallStateManager: not in phone call", v7, 2u);
      conservative = 0;
      goto LABEL_31;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "PommesPhoneCallStateManager: pending phone call state";
LABEL_30:
      _os_log_impl(&dword_2232BB000, v5, v6, v8, v7, 2u);
LABEL_31:
      MEMORY[0x223DE0F80](v7, -1, -1);
    }
  }

LABEL_32:

  return conservative;
}

uint64_t PommesPhoneCallStateManager.deinit()
{
  swift_unknownObjectRelease();
  outlined consume of PommesPhoneCallStateManager.Status(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t PommesPhoneCallStateManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  outlined consume of PommesPhoneCallStateManager.Status(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of SageSearch.search(query:location:);

  return v8(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch27PommesPhoneCallStateManagerC6Status33_FC42574546B17363A16536B78F6DCCFCLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PommesPhoneCallStateManager.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesPhoneCallStateManager.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PommesPhoneCallStateManager.Status(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t specialized static PommesPhoneCallStateManager.Status.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t partial apply for closure #1 in closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

unint64_t type metadata accessor for AFServiceDeviceContext()
{
  result = lazy cache variable for type metadata for AFServiceDeviceContext;
  if (!lazy cache variable for type metadata for AFServiceDeviceContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFServiceDeviceContext);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x65736E6F70736572;
    if (a1 != 6)
    {
      v10 = 0x7365525454736168;
      v9 = 0xED000065736E6F70;
    }

    v11 = 0x69646E6143707274;
    v12 = 0xEE00644965746164;
    if (a1 != 4)
    {
      v11 = 0x6449756374;
      v12 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736573726170;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x80000002234D9FD0;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0x80000002234D9FB0;
    }

    else
    {
      v6 = 1702060386;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x65736E6F70736572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xED000065736E6F70;
        if (v7 != 0x7365525454736168)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00644965746164;
      if (v7 != 0x69646E6143707274)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x6449756374)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x736573726170)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000002234D9FD0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000002234D9FB0;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1702060386)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t PommesSearchRequestXPC.pommesCandidateId.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ParseStateXPC(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ParseStateXPC(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v5;
  v7 = v5[1];
  if (EnumCaseMultiPayload == 1)
  {
    v9 = v5[2];
    v10 = v5[3];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v10;
    v12 = *MEMORY[0x277D56620];
    v13 = type metadata accessor for PommesCandidateId();
    (*(*(v13 - 8) + 104))(a1, v12, v13);
    return outlined destroy of MediaUserStateCenter?(v5 + v11, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {

    *a1 = v8;
    a1[1] = v7;
    v15 = *MEMORY[0x277D56618];
    v16 = type metadata accessor for PommesCandidateId();
    return (*(*(v16 - 8) + 104))(a1, v15, v16);
  }
}

uint64_t outlined init with copy of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PommesSearchRequestXPC.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain);

  return v1;
}

uint64_t PommesSearchRequestXPC.assistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId);

  return v1;
}

uint64_t PommesSearchRequestXPC.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId);

  return v1;
}

uint64_t PommesSearchRequestXPC.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);

  return v1;
}

uint64_t PommesSearchRequestXPC.audioSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource);

  return v1;
}

uint64_t PommesSearchRequestXPC.audioDestination.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination);

  return v1;
}

uint64_t PommesSearchRequestXPC.responseMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode);

  return v1;
}

uint64_t PommesSearchRequestXPC.sharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId);

  return v1;
}

id PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:deviceRestrictions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v23 = a1;
  v23[1] = a2;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v24 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v24 = a4;
  v24[1] = a5;
  v25 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v25 = a6;
  v25[1] = a7;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v26 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v26 = a10;
  v26[1] = a11;
  v27 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v29 = 0;
  v29[1] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a12;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = 0;
  v30 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v31 = type metadata accessor for InputOrigin();
  (*(*(v31 - 8) + 56))(&v22[v30], 1, 1, v31);
  v32 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v32 = 0;
  v32[1] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = 0;
  v36.receiver = v22;
  v36.super_class = v35;
  v33 = objc_msgSendSuper2(&v36, sel_init);
  outlined destroy of ParseStateXPC(a9);
  return v33;
}

id PommesSearchRequestXPC.init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:deviceRestrictions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v21 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v21 = a1;
  v21[1] = a2;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v22 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v23 = a6;
  v23[1] = a7;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v24 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v24 = a10;
  v24[1] = a11;
  v25 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v27 = 0;
  v27[1] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a12;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = 0;
  v28 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v29 = type metadata accessor for InputOrigin();
  (*(*(v29 - 8) + 56))(&v12[v28], 1, 1, v29);
  v30 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v30 = 0;
  v30[1] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = 0;
  v34.receiver = v12;
  v34.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v34, sel_init);
  outlined destroy of ParseStateXPC(a9);
  return v31;
}

uint64_t outlined destroy of ParseStateXPC(uint64_t a1)
{
  v2 = type metadata accessor for ParseStateXPC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v36 = objc_allocWithZone(v30);
  v37 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v37 = a1;
  v37[1] = a2;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v38 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v38 = a4;
  v38[1] = a5;
  v39 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v39 = a6;
  v39[1] = a7;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v40 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v40 = a10;
  v40[1] = a11;
  v41 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v41 = a12;
  v41[1] = a13;
  v42 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v42 = a14;
  v42[1] = a15;
  v43 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v43 = a16;
  v43[1] = a17;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = a18;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = a19;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = a20;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = a21;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = a22;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a23;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = a24;
  outlined init with copy of MediaUserStateCenter?(a25, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v44 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v44 = a26;
  v44[1] = a27;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = a28;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = a29;
  v51.receiver = v36;
  v51.super_class = v50;
  v45 = objc_msgSendSuper2(&v51, sel_init);
  outlined destroy of MediaUserStateCenter?(a25, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(a9);
  return v45;
}

id PommesSearchRequestXPC.init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  ObjectType = swift_getObjectType();
  v35 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v35 = a1;
  v35[1] = a2;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v36 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v36 = a4;
  v36[1] = a5;
  v37 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v37 = a6;
  v37[1] = a7;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v38 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v38 = a10;
  v38[1] = a11;
  v39 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v39 = a12;
  v39[1] = a13;
  v40 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v40 = a14;
  v40[1] = a15;
  v41 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v41 = a16;
  v41[1] = a17;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = a18;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = a19;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = a20;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = a21;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = a22;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a23;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = a24;
  outlined init with copy of MediaUserStateCenter?(a25, &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v42 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v42 = a26;
  v42[1] = a27;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = a28;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = a29;
  v49.receiver = v29;
  v49.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v49, sel_init);
  outlined destroy of MediaUserStateCenter?(a25, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(a9);
  return v43;
}

Swift::Void __swiftcall PommesSearchRequestXPC.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v64 = type metadata accessor for InputOrigin();
  v7 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x223DDF550](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain + 8));
  v10 = MEMORY[0x223DDF550](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking);
  v12 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234E26B0);
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  v13 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId + 8));
  v14 = MEMORY[0x223DDF550](0x6E61747369737361, 0xEB00000000644974);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId + 8));
  v16 = MEMORY[0x223DDF550](0x4974736575716572, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser);
  v18 = MEMORY[0x223DDF550](0x5569746C754D7369, 0xEB00000000726573);
  [(objc_class *)with.super.isa encodeBool:v17 forKey:v18];

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v19 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  type metadata accessor for ParseStateXPC(0);
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type ParseStateXPC and conformance ParseStateXPC, type metadata accessor for ParseStateXPC, &protocol conformance descriptor for ParseStateXPC);
  v67 = v19;
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;
  outlined copy of Data._Representation(v20, v21);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v65 = v22;
  outlined consume of Data._Representation(v20, v22);
  v24 = MEMORY[0x223DDF550](0x6174536573726170, 0xEA00000000006574);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v24];
  swift_unknownObjectRelease();

  v25 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8));
  v26 = MEMORY[0x223DDF550](0x636E617265747475, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource + 8))
  {
    v27 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource));
    v28 = MEMORY[0x223DDF550](0x756F536F69647561, 0xEB00000000656372);
    [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination + 8))
  {
    v29 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination));
    v30 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCAD0);
    [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
  }

  v66 = v20;
  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode + 8))
  {
    v31 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode));
    v32 = MEMORY[0x223DDF550](0x65736E6F70736572, 0xEC00000065646F4DLL);
    [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];
  }

  v33 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree);
  v34 = MEMORY[0x223DDF550](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v33 forKey:v34];

  v35 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled);
  v36 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCAF0);
  [(objc_class *)with.super.isa encodeBool:v35 forKey:v36];

  v37 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled);
  v38 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB10);
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  v39 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup);
  v40 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB30);
  [(objc_class *)with.super.isa encodeBool:v39 forKey:v40];

  v41 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest);
  v42 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCB50);
  [(objc_class *)with.super.isa encodeBool:v41 forKey:v42];

  v43 = Array._bridgeToObjectiveC()().super.isa;
  v44 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DCB90);
  [(objc_class *)with.super.isa encodeObject:v43 forKey:v44];

  v45 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome);
  v46 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DC670);
  [(objc_class *)with.super.isa encodeBool:v45 forKey:v46];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId + 8))
  {
    v47 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId));
    v48 = MEMORY[0x223DDF550](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)with.super.isa encodeObject:v47 forKey:v48];
  }

  outlined init with copy of MediaUserStateCenter?(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin, v6, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v49 = v64;
  if ((*(v7 + 48))(v6, 1, v64) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  }

  else
  {
    v50 = v63;
    (*(v7 + 32))(v63, v6, v49);
    v51 = InputOrigin.rawValue.getter();
    v52 = MEMORY[0x223DDF550](v51);

    v53 = MEMORY[0x223DDF550](0x69724F7475706E69, 0xEB000000006E6967);
    [(objc_class *)with.super.isa encodeObject:v52 forKey:v53];

    (*(v7 + 8))(v50, v49);
  }

  v54 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
  if (v54)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    v68 = v54;
    type metadata accessor for PommesRequestContext(0);
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type PommesRequestContext and conformance PommesRequestContext, type metadata accessor for PommesRequestContext, &protocol conformance descriptor for PommesRequestContext);
    v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v57 = v56;
    v58 = Data._bridgeToObjectiveC()().super.isa;
    v59 = MEMORY[0x223DDF550](0x4374736575716572, 0xEE00747865746E6FLL);
    [(objc_class *)with.super.isa encodeObject:v58 forKey:v59];

    outlined consume of Data._Representation(v55, v57);
  }

  v60 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification);
  v61 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234E26D0);
  [(objc_class *)with.super.isa encodeInteger:v60 forKey:v61];

  outlined consume of Data?(v66, v65);
}

uint64_t lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PommesSearchRequestXPC.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v119 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13ParseStateXPCOSgMd, &_s21SiriInformationSearch13ParseStateXPCOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v88 - v8;
  v10 = type metadata accessor for ParseStateXPC(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v17 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18 || (v122 = 0uLL, v19 = v18, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v19, !*(&v122 + 1)))
  {

LABEL_22:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v117 = v122;
  v20 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v20 || (v122 = 0uLL, v21 = v20, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v21, !*(&v122 + 1)))
  {

    goto LABEL_22;
  }

  v115 = v6;
  v116 = *(&v122 + 1);
  v114 = v122;
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v22 || (v122 = 0uLL, v23 = v22, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v23, !*(&v122 + 1)))
  {

    goto LABEL_22;
  }

  v113 = v122;
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24 || (v122 = 0uLL, v25 = v24, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v25, !*(&v122 + 1)))
  {

    goto LABEL_22;
  }

  v112 = *(&v122 + 1);
  v109 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2234CF940;
  *(v26 + 32) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v26 + 40) = v17;
  NSCoder.decodeObject(of:forKey:)();

  if (v123)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v27 = swift_dynamicCast();
    v28 = v120;
    if (!v27)
    {
      v28 = 0;
    }

    v111 = v28;
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(&v122, &_sypSgMd, &_sypSgMR);
    v111 = 0;
  }

  v29 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234E26B0);
  v108 = [a1 decodeBoolForKey_];

  v30 = MEMORY[0x223DDF550](0x5569746C754D7369, 0xEB00000000726573);
  v107 = [a1 decodeBoolForKey_];

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v31 = PropertyListDecoder.init()();
  v106 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v32 || (v110 = v31, v105 = xmmword_2234CF930, v122 = xmmword_2234CF930, v33 = v32, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v33, v34 = *(&v122 + 1), *(&v122 + 1) >> 60 == 15))
  {

    goto LABEL_22;
  }

  v35 = v122;
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type ParseStateXPC and conformance ParseStateXPC, type metadata accessor for ParseStateXPC, &protocol conformance descriptor for ParseStateXPC);
  v103 = v35;
  v104 = v34;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  (*(v11 + 56))(v9, 0, 1, v10);
  outlined init with take of ParseStateXPC(v9, v16);
  v37 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v37)
  {
    v122 = 0uLL;
    v38 = v37;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v102 = *(&v122 + 1);
    v39 = v122;
    if (!*(&v122 + 1))
    {
      v39 = 0;
    }

    v101 = v39;
  }

  else
  {
    v101 = 0;
    v102 = 0;
  }

  v40 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v40)
  {
    v122 = 0uLL;
    v41 = v40;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v100 = *(&v122 + 1);
    v42 = v122;
    if (!*(&v122 + 1))
    {
      v42 = 0;
    }

    v99 = v42;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v43 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v43)
  {
    v122 = 0uLL;
    v44 = v43;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v98 = *(&v122 + 1);
    v45 = v122;
    if (!*(&v122 + 1))
    {
      v45 = 0;
    }

    v97 = v45;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  v46 = MEMORY[0x223DDF550](0x7246736579457369, 0xEA00000000006565);
  v96 = [a1 decodeBoolForKey_];

  v47 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCAF0);
  v95 = [a1 decodeBoolForKey_];

  v48 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB10);
  v94 = [a1 decodeBoolForKey_];

  v49 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB30);
  v93 = [a1 decodeBoolForKey_];

  v50 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCB50);
  v92 = [a1 decodeBoolForKey_];

  v51 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DC670);
  v91 = [a1 decodeBoolForKey_];

  v52 = type metadata accessor for InputOrigin();
  (*(*(v52 - 8) + 56))(v115, 1, 1, v52);
  v53 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v53)
  {
    v122 = 0uLL;
    v54 = v53;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (*(&v122 + 1))
    {
      v55 = v119;
      InputOrigin.init(rawValue:)();
      v56 = v115;
      outlined destroy of MediaUserStateCenter?(v115, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      outlined init with take of PommesSearchReason?(v55, v56, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  v57 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v57)
  {
    v122 = 0uLL;
    v58 = v57;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v90 = *(&v122 + 1);
    v59 = v122;
    if (!*(&v122 + 1))
    {
      v59 = 0;
    }

    v89 = v59;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v60 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v60 || (v122 = v105, v61 = v60, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v61, v62 = *(&v122 + 1), *(&v122 + 1) >> 60 == 15))
  {
    v87 = 0;
  }

  else
  {
    v63 = v122;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for PommesRequestContext(0);
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type PommesRequestContext and conformance PommesRequestContext, type metadata accessor for PommesRequestContext, &protocol conformance descriptor for PommesRequestContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data?(v63, v62);
    v87 = v122;
  }

  v64 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234E26D0);
  v106 = [a1 decodeIntegerForKey_];

  outlined init with copy of ParseStateXPC(v16, v14);
  if (v111)
  {
    v65 = v111;
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v66 = v115;
  v67 = v119;
  outlined init with copy of MediaUserStateCenter?(v115, v119, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v68 = ObjectType;
  v69 = objc_allocWithZone(ObjectType);
  v70 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  v71 = *(&v117 + 1);
  *v70 = v117;
  v70[1] = v71;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = v108;
  v72 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v73 = v116;
  *v72 = v114;
  v72[1] = v73;
  v74 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v75 = *(&v113 + 1);
  *v74 = v113;
  v74[1] = v75;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = v107;
  outlined init with copy of ParseStateXPC(v14, &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v76 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  v77 = v112;
  *v76 = v109;
  v76[1] = v77;
  v78 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v79 = v102;
  *v78 = v101;
  v78[1] = v79;
  v80 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v81 = v100;
  *v80 = v99;
  v80[1] = v81;
  v82 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v83 = v98;
  *v82 = v97;
  v82[1] = v83;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = v96;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = v95;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = v94;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = v93;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = v92;
  *&v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = v65;
  v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = v91;
  outlined init with copy of MediaUserStateCenter?(v67, &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v84 = &v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  v85 = v90;
  *v84 = v89;
  v84[1] = v85;
  *&v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = v87;
  *&v69[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = v106;
  v121.receiver = v69;
  v121.super_class = v68;

  v86 = objc_msgSendSuper2(&v121, sel_init);

  outlined consume of Data?(v103, v104);

  outlined destroy of MediaUserStateCenter?(v67, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v14);
  outlined destroy of MediaUserStateCenter?(v66, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v86;
}

id PommesSearchRequestXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PommesSearchRequestXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParseStateXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ParseStateXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ParseStateXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702060386;
  v5 = 0xE800000000000000;
  v6 = 0x65736E6F70736572;
  if (v2 != 6)
  {
    v6 = 0x7365525454736168;
    v5 = 0xED000065736E6F70;
  }

  v7 = 0xEE00644965746164;
  v8 = 0x69646E6143707274;
  if (v2 != 4)
  {
    v8 = 0x6449756374;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736573726170;
  if (v2 != 2)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000002234D9FD0;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9FB0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ParseStateXPC.CodingKeys()
{
  v1 = *v0;
  v2 = 1702060386;
  v3 = 0x65736E6F70736572;
  if (v1 != 6)
  {
    v3 = 0x7365525454736168;
  }

  v4 = 0x69646E6143707274;
  if (v1 != 4)
  {
    v4 = 0x6449756374;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736573726170;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParseStateXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ParseStateXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParseStateXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParseStateXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ParseStateXPC.Base(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7369332;
  }

  else
  {
    v3 = 25458;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7369332;
  }

  else
  {
    v5 = 25458;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParseStateXPC.Base()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ParseStateXPC.Base(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParseStateXPC.Base(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParseStateXPC.Base@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ParseStateXPC.Base.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ParseStateXPC.Base(uint64_t *a1@<X8>)
{
  v2 = 25458;
  if (*v1)
  {
    v2 = 7369332;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ParseStateXPC.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = (&v67 - v4);
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v67 - v8;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMR);
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for ParseStateXPC(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();
  v23 = v91;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v91 = v15;
  v77 = v21;
  v78 = v13;
  v24 = v19;
  LOBYTE(v90[0]) = 0;
  lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v16;
  if (v87)
  {
    LOBYTE(v87) = 4;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    v30 = v18;
    v31 = v27;
    LOBYTE(v87) = 5;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v16;
    v38 = v37;
    v91 = v32;
    type metadata accessor for TCUMappedNLResponse();
    LOBYTE(v87) = 6;
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type TCUMappedNLResponse and conformance TCUMappedNLResponse, MEMORY[0x277D5D140], MEMORY[0x277D5D150]);
    v39 = v79;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LOBYTE(v87) = 7;
    v60 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v85 + 8))(v30, v33);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    v62 = *(v61 + 64);
    v63 = *(v61 + 80);
    v64 = v39;
    v65 = v77;
    *v77 = v31;
    v65[1] = v29;
    v65[2] = v91;
    v65[3] = v38;
    outlined init with take of PommesSearchReason?(v64, v65 + v62, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    *(v65 + v63) = v60 & 1;
    swift_storeEnumTagMultiPayload();
    v66 = v84;
LABEL_17:
    outlined init with take of ParseStateXPC(v65, v66);
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  LOBYTE(v87) = 1;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v84;
  v36 = v35;
  v71 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  LOBYTE(v90[0]) = 2;
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v68 = v18;
  v67 = v24;
  v69 = v36;
  v70 = v25;
  result = v87;
  v75 = *(v87 + 16);
  if (!v75)
  {
    v79 = MEMORY[0x277D84F90];
LABEL_16:

    LOBYTE(v87) = 3;
    v56 = v70;
    v57 = v68;
    v58 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v85 + 8))(v57, v56);
    v65 = v77;
    v59 = v69;
    *v77 = v71;
    v65[1] = v59;
    v65[2] = v79;
    *(v65 + 24) = v58 & 1;
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  v40 = 0;
  v74 = (v83 + 56);
  v76 = (v83 + 32);
  v73 = (v83 + 16);
  v72 = v83 + 8;
  v79 = MEMORY[0x277D84F90];
  v41 = v82;
  v42 = v78;
  while (v40 < *(result + 16))
  {
    v43 = result;
    *v90 = *(result + 16 * v40 + 32);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v44 = v90[1];
    v45 = v90[0];
    outlined copy of Data._Representation(v90[0], v90[1]);
    v46 = v44;
    outlined copy of Data._Representation(v45, v44);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
    v47 = v81;
    Message.init<A>(contiguousBytes:extensions:partial:options:)();
    (*v74)(v47, 0, 1, v41);
    v48 = *v76;
    v49 = v91;
    (*v76)(v91);
    (*v73)(v42, v49, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
    }

    v51 = v79[2];
    v50 = v79[3];
    if (v51 >= v50 >> 1)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v79);
    }

    ++v40;
    outlined consume of Data._Representation(v45, v46);
    v52 = v82;
    v53 = v83;
    (*(v83 + 8))(v91, v82);
    v54 = v79;
    v79[2] = v51 + 1;
    v41 = v52;
    v55 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51;
    v42 = v78;
    (v48)(v55, v78, v52);
    v66 = v84;
    result = v43;
    if (v75 == v40)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ParseStateXPC.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v39 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ParseStateXPC(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMR);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ParseStateXPC(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v12;
  if (EnumCaseMultiPayload == 1)
  {
    v45 = v12[2];
    v46 = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    outlined init with take of PommesSearchReason?(v12 + *(v18 + 64), v6, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    LOBYTE(v49) = 1;
    v50 = 0;
    lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
    v19 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v19)
    {
    }

    else
    {
      LOBYTE(v49) = 4;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v49) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v49) = 6;
      type metadata accessor for TCUMappedNLResponse();
      lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type TCUMappedNLResponse and conformance TCUMappedNLResponse, MEMORY[0x277D5D140], MEMORY[0x277D5D148]);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      LOBYTE(v49) = 7;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    outlined destroy of MediaUserStateCenter?(v6, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return (*(v48 + 8))(v15, v13);
  }

  else
  {
    v21 = v12[2];
    LOBYTE(v49) = 0;
    v50 = 0;
    lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
    v22 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v22)
    {
      (*(v48 + 8))(v15, v13);
    }

    else
    {
      LOBYTE(v49) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v49) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      v40 = v15;
      v41 = v13;
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v45;
        v47 = *(v46 + 16);
        v25 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v39[1] = v21;
        v26 = v21 + v25;
        v27 = *(v46 + 72);
        v42 = (v46 + 8);
        v43 = v27;
        v28 = MEMORY[0x277D84F90];
        v46 += 16;
        v29 = v44;
        v47(v44, v26, v45);
        while (1)
        {
          lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
          v30 = Message.serializedData(partial:)();
          v32 = v31;
          (*v42)(v29, v24);
          v33 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          }

          v35 = *(v33 + 2);
          v34 = *(v33 + 3);
          v28 = v33;
          if (v35 >= v34 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
          }

          *(v28 + 2) = v35 + 1;
          v36 = &v28[16 * v35];
          *(v36 + 4) = v30;
          *(v36 + 5) = v32;
          v24 = v45;
          v26 += v43;
          if (!--v23)
          {
            break;
          }

          v47(v29, v26, v45);
        }
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v49 = v28;
      v50 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83948]);
      v37 = v40;
      v38 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      return (*(v48 + 8))(v37, v38);
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UserParse();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB10]);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static NLParseResponse.== infix(_:_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  NLParseResponse.responseStatusCode.getter();
  NLParseResponse.responseStatusCode.getter();
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x277D5DBC0], MEMORY[0x277D5DBC8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  if (v12[1] == v12[0])
  {
    v8 = NLParseResponse.userParses.getter();
    v9 = NLParseResponse.userParses.getter();
    v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.domain : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.domain.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.assistantId : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.assistantId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.requestId : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.requestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.parseState : PommesSearchRequestXPCBuilder(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ParseStateXPC(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState;
  swift_beginAccess();
  outlined assign with take of ParseStateXPC(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.parseState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState;
  swift_beginAccess();
  return outlined init with copy of ParseStateXPC(v1 + v3, a1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.utterance : PommesSearchRequestXPCBuilder(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t PommesSearchRequestXPCBuilder.utterance.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PommesSearchRequestXPCBuilder.listenAfterSpeaking.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isMultiUser.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isTriggerlessFollowup.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isPushOffRequest.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.deviceRestrictions : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double PommesSearchRequestXPCBuilder.deviceRestrictions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PommesSearchRequestXPCBuilder.isOnlyUserInHome.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.inputOrigin : PommesSearchRequestXPCBuilder(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of MediaUserStateCenter?(a1, &v10 - v5, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  outlined assign with take of InputOrigin?(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.audioSource : PommesSearchRequestXPCBuilder(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t PommesSearchRequestXPCBuilder.audioSource.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.requestContext : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.userIdentityClassification.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PommesSearchRequestXPCBuilder.__allocating_init(domain:assistantId:requestId:parseState:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioSource];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioDestination];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_responseMode];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  v19 = type metadata accessor for InputOrigin();
  (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
  v20 = &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_sharedUserId];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext] = 0;
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = a5;
  *(v14 + 7) = a6;
  outlined init with copy of ParseStateXPC(a7, &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState]);
  v21 = &v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance];
  *v21 = a8;
  *(v21 + 1) = a9;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking] = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;
  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_beginAccess();
  *v17 = 0;
  *(v17 + 1) = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree] = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled] = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled] = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup] = 0;
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest] = 0;
  outlined destroy of ParseStateXPC(a7);
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions] = MEMORY[0x277D84F90];
  v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome] = 0;
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification] = 0;
  return v14;
}

char *PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioSource];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioDestination];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_responseMode];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  v19 = type metadata accessor for InputOrigin();
  (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
  v20 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_sharedUserId];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext] = 0;
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a4;
  *(v9 + 6) = a5;
  *(v9 + 7) = a6;
  outlined init with copy of ParseStateXPC(a7, &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState]);
  v21 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance];
  *v21 = a8;
  *(v21 + 1) = a9;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;
  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_beginAccess();
  *v17 = 0;
  *(v17 + 1) = 0;

  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest] = 0;
  outlined destroy of ParseStateXPC(a7);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions] = MEMORY[0x277D84F90];
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome] = 0;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification] = 0;
  return v9;
}

uint64_t PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withInputOrigin(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  outlined init with copy of MediaUserStateCenter?(a1, &v8 - v4, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v6 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  outlined assign with take of InputOrigin?(v5, v1 + v6);
  swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.withAudioSource(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t PommesSearchRequestXPCBuilder.withRequestContext(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withUserIdentityClassification(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PommesSearchRequestXPCBuilder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50[-v2];
  v4 = type metadata accessor for ParseStateXPC(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (*(*v0 + 248))(v5);
  v70 = v9;
  v71 = v8;
  v69 = (*(*v0 + 368))();
  v10 = (*(*v0 + 272))();
  v67 = v11;
  v68 = v10;
  v12 = (*(*v0 + 296))();
  v65 = v13;
  v66 = v12;
  v64 = (*(*v0 + 392))();
  v14 = (*(*v0 + 320))();
  v15 = (*(*v0 + 344))(v14);
  v62 = v16;
  v63 = v15;
  v17 = (*(*v0 + 416))();
  v60 = v18;
  v61 = v17;
  v19 = (*(*v0 + 440))();
  v58 = v20;
  v59 = v19;
  v21 = (*(*v0 + 464))();
  v56 = v22;
  v57 = v21;
  v55 = (*(*v0 + 488))();
  v54 = (*(*v0 + 512))();
  v53 = (*(*v0 + 536))();
  v52 = (*(*v0 + 560))();
  v51 = (*(*v0 + 584))();
  v23 = (*(*v0 + 608))();
  v24 = (*(*v0 + 632))();
  v25 = (*(*v0 + 656))();
  v26 = (*(*v0 + 680))(v25);
  v28 = v27;
  v29 = (*(*v0 + 704))();
  v30 = (*(*v0 + 728))();
  v31 = type metadata accessor for PommesSearchRequestXPC(0);
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  v34 = v70;
  *v33 = v71;
  v33[1] = v34;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = v69 & 1;
  v35 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v36 = v67;
  *v35 = v68;
  v35[1] = v36;
  v37 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v38 = v65;
  *v37 = v66;
  v37[1] = v38;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = v64 & 1;
  outlined init with copy of ParseStateXPC(v7, &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v39 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  v40 = v62;
  *v39 = v63;
  v39[1] = v40;
  v41 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v42 = v60;
  *v41 = v61;
  v41[1] = v42;
  v43 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v44 = v58;
  *v43 = v59;
  v43[1] = v44;
  v45 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v46 = v56;
  *v45 = v57;
  v45[1] = v46;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = v55 & 1;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = v54 & 1;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = v53 & 1;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = v52 & 1;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = v51 & 1;
  *&v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = v23;
  v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = v24 & 1;
  outlined init with copy of MediaUserStateCenter?(v3, &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v47 = &v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v47 = v26;
  v47[1] = v28;
  *&v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = v29;
  *&v32[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = v30;
  v72.receiver = v32;
  v72.super_class = v31;
  v48 = objc_msgSendSuper2(&v72, sel_init);
  outlined destroy of MediaUserStateCenter?(v3, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v7);
  return v48;
}

void *PommesSearchRequestXPCBuilder.deinit()
{

  outlined destroy of ParseStateXPC(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);

  return v0;
}

uint64_t PommesSearchRequestXPCBuilder.__deallocating_deinit()
{
  PommesSearchRequestXPCBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base()
{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static ParseStateXPC.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v87 = &v78 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v78 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v88 = &v78 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = type metadata accessor for ParseStateXPC(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13ParseStateXPCO_ACtMd, &_s21SiriInformationSearch13ParseStateXPCO_ACtMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v78 - v27;
  v29 = &v78 + *(v26 + 56) - v27;
  outlined init with copy of ParseStateXPC(a1, &v78 - v27);
  outlined init with copy of ParseStateXPC(a2, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of ParseStateXPC(v28, v24);
    v45 = *v24;
    v46 = *(v24 + 1);
    v47 = *(v24 + 2);
    v48 = v24[24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_17;
    }

    v49 = v28;
    v50 = *(v29 + 2);
    v51 = v29[24];
    if (v45 == *v29 && v46 == *(v29 + 1))
    {
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {

        v54 = 0;
LABEL_24:
        v56 = v49;
LABEL_46:
        outlined destroy of ParseStateXPC(v56);
        return v54 & 1;
      }
    }

    v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(v47, v50);

    v54 = v55 & (v48 ^ v51 ^ 1);
    goto LABEL_24;
  }

  v82 = v7;
  v90 = v18;
  outlined init with copy of ParseStateXPC(v28, v22);
  v30 = *v22;
  v31 = v22[1];
  v32 = v22[3];
  v84 = v22[2];
  v86 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
  v34 = *(v33 + 64);
  v35 = *(v33 + 80);
  v36 = *(v22 + v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v79 = v36;
    v83 = v28;
    v37 = v16;
    v39 = *v29;
    v38 = *(v29 + 1);
    v40 = *(v29 + 3);
    v80 = *(v29 + 2);
    v81 = v40;
    v78 = v29[v35];
    outlined init with take of PommesSearchReason?(v22 + v34, v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v85 = v37;
    outlined init with take of PommesSearchReason?(&v29[v34], v37, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v30 == v39 && v31 == v38)
    {

      v43 = v86;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v43 = v86;
      if ((v42 & 1) == 0)
      {

        v44 = v83;
LABEL_43:
        outlined destroy of MediaUserStateCenter?(v85, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_44:
        v54 = 0;
LABEL_45:
        v56 = v44;
        goto LABEL_46;
      }
    }

    v44 = v83;
    if (v84 == v80 && v43 == v81)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v58 = v88;
    outlined init with copy of MediaUserStateCenter?(v90, v88, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v59 = type metadata accessor for TCUMappedNLResponse();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    if (v61(v58, 1, v59) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v58, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v62 = TCUMappedNLResponse.tcuId.getter();
      v63 = v64;
      (*(v60 + 8))(v58, v59);
    }

    v65 = v89;
    outlined init with copy of MediaUserStateCenter?(v85, v89, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v61(v65, 1, v59) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v65, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      if (!v63)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v66 = TCUMappedNLResponse.tcuId.getter();
      v68 = v67;
      (*(v60 + 8))(v65, v59);
      if (v63)
      {
        if (v68)
        {
          if (v62 == v66 && v63 == v68)
          {
          }

          else
          {
            v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v69 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

LABEL_41:
          v70 = v87;
          outlined init with copy of MediaUserStateCenter?(v90, v87, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          if (v61(v70, 1, v59) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v70, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            v71 = 0;
          }

          else
          {
            v71 = TCUMappedNLResponse.nlResponse.getter();
            (*(v60 + 8))(v70, v59);
          }

          v73 = v82;
          outlined init with copy of MediaUserStateCenter?(v85, v82, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          if (v61(v73, 1, v59) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v73, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            v74 = v85;
            if (!v71)
            {
              v75 = 0;
              goto LABEL_58;
            }
          }

          else
          {
            v75 = TCUMappedNLResponse.nlResponse.getter();
            (*(v60 + 8))(v73, v59);
            if (!v71)
            {
              v74 = v85;
LABEL_58:
              outlined destroy of MediaUserStateCenter?(v74, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              v44 = v83;
              v77 = v79;
              if (v75)
              {

                goto LABEL_44;
              }

              goto LABEL_60;
            }

            v74 = v85;
            if (v75)
            {
              type metadata accessor for NLParseResponse();
              v76 = static NSObject.== infix(_:_:)();
              outlined destroy of MediaUserStateCenter?(v74, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

              v44 = v83;
              v77 = v79;
              if ((v76 & 1) == 0)
              {
                goto LABEL_44;
              }

LABEL_60:
              v54 = v77 ^ v78 ^ 1;
              goto LABEL_45;
            }
          }

          outlined destroy of MediaUserStateCenter?(v74, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          outlined destroy of MediaUserStateCenter?(v90, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

          v54 = 0;
          v44 = v83;
          goto LABEL_45;
        }
      }

      else if (!v68)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  outlined destroy of MediaUserStateCenter?(v22 + v34, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_17:

  outlined destroy of MediaUserStateCenter?(v28, &_s21SiriInformationSearch13ParseStateXPCO_ACtMd, &_s21SiriInformationSearch13ParseStateXPCO_ACtMR);
  v54 = 0;
  return v54 & 1;
}

uint64_t outlined assign with take of InputOrigin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void type metadata completion function for PommesSearchRequestXPC(uint64_t a1)
{
  type metadata accessor for ParseStateXPC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InputOrigin?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)()
{
  v2 = *(v0 + 256);

  return v2();
}

void type metadata accessor for InputOrigin?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InputOrigin?)
  {
    type metadata accessor for InputOrigin();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InputOrigin?);
    }
  }
}

void type metadata completion function for ParseStateXPC(uint64_t a1)
{
  type metadata accessor for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool))
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool));
    }
  }
}

void type metadata completion function for PommesSearchRequestXPCBuilder(uint64_t a1)
{
  type metadata accessor for ParseStateXPC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InputOrigin?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ParseStateXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParseStateXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized ParseStateXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ParseStateXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PommesResponse.pommesContext.getter()
{
  v0 = type metadata accessor for PerformanceUtil.Ticket(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for PommesContext.Source();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = PommesResponse.conversationContext.getter();
  v8[1] = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D56688], v5);
  PommesResponse.metadataDomainName.getter();
  dispatch thunk of PommesResponse.listenAfterSpeaking.getter();
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  dispatch thunk of PommesResponse.primaryInstructionIntent()();
  PommesContext.instructionIntent.setter();
  Date.init()();
  v10 = &v3[v1[7]];
  *v10 = "SiriInformationSearch/PommesResponse+Context.swift";
  *(v10 + 1) = 50;
  v10[16] = 2;
  *&v3[v1[8]] = 18;
  v11 = &v3[v1[9]];
  *v11 = "pommesContext";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v12 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000022, 0x80000002234E2850);
  v13 = &v3[v1[10]];
  *v13 = v12;
  v13[1] = v14;
  v15 = dispatch thunk of PommesResponse.renderedTexts.getter();
  PommesContext.addRenderedTexts(_:)(v15);

  v16 = dispatch thunk of PommesResponse.redactedRenderedTexts.getter();
  PommesContext.addRedactedRenderedTexts(_:)(v16);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v3, 0);
  return outlined destroy of PerformanceUtil.Ticket(v3);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for InputOrigin()
{
  return MEMORY[0x2821C85E8]();
}

{
  return MEMORY[0x2821BE2C0]();
}

uint64_t Google_Protobuf_Int32Value.value.getter()
{
  return MEMORY[0x2821C3FE8]();
}

{
  return MEMORY[0x28217DFB8]();
}

uint64_t type metadata accessor for Google_Protobuf_Int32Value()
{
  return MEMORY[0x2821C3FF0]();
}

{
  return MEMORY[0x28217DFC8]();
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x2821C3FF8]();
}

{
  return MEMORY[0x28217E1E8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x2821C4000]();
}

{
  return MEMORY[0x28217E1F0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x2821C4008]();
}

{
  return MEMORY[0x28217E400]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x28217E438]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall ClientAudioResult.Scheme.buildDeviceID(withId:)(Swift::String withId)
{
  v1 = MEMORY[0x2821B97B8](withId._countAndFlagsBits, withId._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = MEMORY[0x2821FCAE8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}