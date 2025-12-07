uint64_t AudioPluginProcessor.__allocating_init(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PimsRuntimeLoggingHandler();
  v6 = swift_allocObject();
  getPimsRuntimeLogger()();
  outlined init with take of DomainWarmupHandling(&v14, (v6 + 2));
  v7 = type metadata accessor for MediaSuggestionManager();
  swift_allocObject();
  v8 = MediaSuggestionManager.init()();
  v6[10] = v7;
  v6[11] = &protocol witness table for MediaSuggestionManager;
  v6[7] = v8;
  v9 = objc_opt_self();

  v10 = [v9 defaultMediaLibrary];
  v15 = type metadata accessor for MPMediaLibrary();
  v16 = &protocol witness table for MPMediaLibrary;
  *&v14 = v10;
  v11 = [objc_opt_self() sharedPreferences];
  v12 = (*(v3 + 144))(a1, a2, &v14, v11, v6);

  return v12;
}

uint64_t AudioPluginProcessor.__allocating_init(locale:mediaLibrary:preferences:pimsRuntimeLoggingHandler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 104) = 1053609165;
  v9 = type metadata accessor for AudioRanker(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale;
  Locale.init(identifier:)();
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  *(v8 + 40) = v9;
  *(v8 + 48) = &protocol witness table for AudioRanker;
  *(v8 + 16) = v10;
  outlined init with take of DomainWarmupHandling(a3, v8 + 56);
  *(v8 + 96) = a4;
  *(v8 + 112) = a5;
  return v8;
}

uint64_t AudioPluginProcessor.init(locale:mediaLibrary:preferences:pimsRuntimeLoggingHandler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  *(v5 + 104) = 1053609165;
  v12 = type metadata accessor for AudioRanker(0);
  v13 = swift_allocObject();
  Locale.init(identifier:)();
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  outlined init with take of Locale?(v11, v13 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale);
  *(v5 + 40) = v12;
  *(v5 + 48) = &protocol witness table for AudioRanker;
  *(v5 + 16) = v13;
  outlined init with take of DomainWarmupHandling(a3, v5 + 56);
  *(v5 + 96) = a4;
  *(v5 + 112) = a5;
  return v5;
}

uint64_t AudioPluginProcessor.__allocating_init(ranker:mediaLibrary:pimsRuntimeLoggingHandler:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 104) = 1053609165;
  outlined init with copy of AppDataProviding(a1, v6 + 16);
  outlined init with copy of AppDataProviding(a2, v6 + 56);
  v7 = [objc_opt_self() sharedPreferences];
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 96) = v7;
  *(v6 + 112) = a3;
  return v6;
}

uint64_t AudioPluginProcessor.init(ranker:mediaLibrary:pimsRuntimeLoggingHandler:)(void *a1, void *a2, uint64_t a3)
{
  *(v3 + 104) = 1053609165;
  outlined init with copy of AppDataProviding(a1, v3 + 16);
  outlined init with copy of AppDataProviding(a2, v3 + 56);
  v7 = [objc_opt_self() sharedPreferences];
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v3 + 96) = v7;
  *(v3 + 112) = a3;
  return v3;
}

uint64_t AudioPluginProcessor.process(experience:clientResults:)()
{
  v1 = (*(*v0 + 168))();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v4);

  return v3;
}

uint64_t AudioPluginProcessor.process(with:clientResults:)(unint64_t a1, unint64_t a2)
{
  v135 = a2;
  v143 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v129 = &v125 - v3;
  v125 = type metadata accessor for UUID();
  v131 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v130 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v125 - v6;
  v139 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides();
  v141 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v9 = *(v8 - 8);
  v146 = v8;
  v147 = v9;
  MEMORY[0x28223BE20](v8);
  v137 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v148 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v136 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v125 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PerformanceUtil.Ticket(0);
  v24 = (v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v27 = &v26[v24[7]];
  *v27 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v27 + 1) = 48;
  v27[16] = 2;
  *&v26[v24[8]] = 88;
  v28 = &v26[v24[9]];
  *v28 = "process(with:clientResults:)";
  *(v28 + 1) = 28;
  v28[16] = 2;
  v29 = v143;
  v30 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ELL, 0x80000002234E16C0);
  v31 = v24[10];
  v127 = v26;
  v32 = &v26[v31];
  *v32 = v30;
  v32[1] = v33;
  AudioExperience.audioUnderstanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  (*(v20 + 8))(v22, v19);
  (*(v13 + 104))(v16, *MEMORY[0x277D39190], v12);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v13 + 8);
  v34(v16, v12);
  v34(v18, v12);
  if (v151[0] == v150)
  {
    v35 = v136;
    AudioExperience.audioClientComponent.getter();
    v36 = v137;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    (*(v148 + 8))(v35, v144);
    v37 = Apple_Parsec_Siri_V2alpha_ClientSignals.disableClientLibrarySearch.getter();
    (*(v147 + 8))(v36, v146);
    v128 = v37 ^ 1;
  }

  else
  {
    v128 = 0;
    v35 = v136;
    v36 = v137;
  }

  v145 = specialized static AudioQuery.makeNormalQuery(audioExperience:mode:)(v29);
  v38 = dispatch thunk of AudioExperience.serverAudioResults.getter();
  v39 = specialized AudioPluginProcessor.extractServerCandidates(from:)(v38);

  if (v39 >> 62)
  {
LABEL_60:
    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = specialized AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)(v145, v40 != 0);
  v43 = AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(v135, v41, v42);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v44, static Logger.pommes);

  v142 = v45;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  v48 = os_log_type_enabled(v46, v47);
  v133 = v39;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v151[0] = v50;
    *v49 = 136315138;
    v51 = type metadata accessor for AudioItemCandidate(0);
    v52 = MEMORY[0x223DDF870](v39, v51);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v151);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_2232BB000, v46, v47, "AudioPluginProcessor#process serverCandidates: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x223DE0F80](v50, -1, -1);
    MEMORY[0x223DE0F80](v49, -1, -1);
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  v57 = os_log_type_enabled(v55, v56);
  v132 = v43;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v151[0] = v59;
    *v58 = 136315138;
    v60 = type metadata accessor for AudioItemCandidate(0);
    v61 = MEMORY[0x223DDF870](v43, v60);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v151);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_2232BB000, v55, v56, "AudioPluginProcessor#process clientCandidates: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x223DE0F80](v59, -1, -1);
    MEMORY[0x223DE0F80](v58, -1, -1);
  }

  v64 = v146;
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v65 = v36;
  v36 = v35;
  v66 = v148 + 8;
  v67 = *(v148 + 8);
  v68 = v144;
  v67(v36, v144);
  v69 = v138;
  Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
  v126 = *(v147 + 8);
  v126(v65, v64);
  Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
  v71 = v70;
  v72 = v29;
  v73 = v141 + 8;
  v74 = *(v141 + 8);
  v74(v69, v139);
  v148 = v66;
  v134 = v67;
  if (v71 > 0.001)
  {
    v141 = v73;
    v75 = v72;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 134217984;
      AudioExperience.audioClientComponent.getter();
      v79 = v137;
      Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
      v134(v36, v144);
      v80 = v138;
      Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
      v126(v79, v146);
      Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
      v82 = v81;
      v74(v80, v139);
      *(v78 + 4) = v82;
      _os_log_impl(&dword_2232BB000, v76, v77, "AudioPluginProcessor setting server override for clientCandidateCombinedTextMatchScoreThreshold to %f", v78, 0xCu);
      v83 = v78;
      v64 = v146;
      MEMORY[0x223DE0F80](v83, -1, -1);
    }

    AudioExperience.audioClientComponent.getter();
    v84 = v137;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    v68 = v144;
    v67 = v134;
    v134(v36, v144);
    v85 = v138;
    Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    v126(v84, v64);
    Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
    v87 = v86;
    v74(v85, v139);
    *(v149 + 104) = v87;
  }

  AudioExperience.audioClientComponent.getter();
  v88 = v140;
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v67(v36, v68);
  v35 = v147 + 56;
  v141 = *(v147 + 56);
  (v141)(v88, 0, 1, v64);
  v89 = AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(v145, v133, v132, 0xD000000000000019, 0x80000002234E1740, v88);

  outlined destroy of MediaUserStateCenter?(v88, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v151[0] = MEMORY[0x277D84F90];
  v39 = v89 & 0xFFFFFFFFFFFFFF8;
  if (v89 >> 62)
  {
    v90 = __CocoaSet.count.getter();
  }

  else
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = 0;
  v29 = v89 & 0xC000000000000001;
  v92 = MEMORY[0x277D85000];
  v147 = MEMORY[0x277D84F90];
  while (v90 != v91)
  {
    if (v29)
    {
      v93 = MEMORY[0x223DDFF80](v91, v89);
    }

    else
    {
      if (v91 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v93 = *(v89 + 8 * v91 + 32);
    }

    v94 = v93;
    v36 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v95 = (*((*v92 & *v93) + 0xE8))();

    ++v91;
    if (v95)
    {
      MEMORY[0x223DDF820]();
      if (*((v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v147 = v151[0];
      v91 = v36;
    }
  }

  v96 = v147;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v151[0] = v100;
    *v99 = 136315138;
    v101 = type metadata accessor for AudioResult(0);
    v102 = MEMORY[0x223DDF870](v96, v101);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v151);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_2232BB000, v97, v98, "AudioPluginProcessor#process rankedResults: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x223DE0F80](v100, -1, -1);
    MEMORY[0x223DE0F80](v99, -1, -1);
  }

  v105 = v143;
  v36 = v131;
  v106 = v130;
  v107 = v129;
  v108 = *(v149 + 112);
  if (v108)
  {
    type metadata accessor for SiriEnvironment();

    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.executionRequestId.getter();

    UUID.init(uuidString:)();

    v109 = *(v36 + 48);
    v110 = v125;
    if (v109(v107, 1, v125) == 1)
    {
      UUID.init()();
      if (v109(v107, 1, v110) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v36 + 32))(v106, v107, v110);
    }

    v111 = v136;
    AudioExperience.audioClientComponent.getter();
    v112 = v140;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    v134(v111, v144);
    (v141)(v112, 0, 1, v146);
    (*(*v108 + 112))(v106, v112, v147);

    outlined destroy of MediaUserStateCenter?(v112, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v113 = *(v36 + 8);
    v36 += 8;
    v113(v106, v110);
  }

  if (v128)
  {
    v114 = specialized static AudioQuery.makePlaylistQuery(audioExperience:)(v105);
    v115 = specialized AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(v135, v149);
    v116 = v140;
    (v141)(v140, 1, 1, v146);
    v35 = MEMORY[0x277D84F90];
    v117 = AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(v114, MEMORY[0x277D84F90], v115, 0xD000000000000010, 0x80000002234E1760, v116);

    outlined destroy of MediaUserStateCenter?(v116, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v151[0] = v35;
    v148 = v114;
    v29 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v117 >> 62)
    {
      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v118 = 0;
    v119 = MEMORY[0x277D84F90];
    while (v39 != v118)
    {
      if ((v117 & 0xC000000000000001) != 0)
      {
        v120 = MEMORY[0x223DDFF80](v118, v117);
      }

      else
      {
        if (v118 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v120 = *(v117 + 8 * v118 + 32);
      }

      v121 = v120;
      v35 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_58;
      }

      v36 = (*((*v92 & *v120) + 0xE8))();

      ++v118;
      if (v36)
      {
        MEMORY[0x223DDF820]();
        if (*((v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v119 = v151[0];
        v118 = v35;
      }
    }
  }

  else
  {

    v119 = 0;
  }

  type metadata accessor for PommesAudioPluginResults();
  v122 = swift_allocObject();
  *(v122 + 16) = v147;
  *(v122 + 24) = v119;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v123 = v127;
  (*(*static PerformanceUtil.shared + 184))(v127, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v123, type metadata accessor for PerformanceUtil.Ticket);
  return v122;
}

unint64_t AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for PerformanceUtil.Ticket(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v81 = 0xD00000000000001ALL;
  v82 = 0x80000002234E18D0;
  v78 = a4;
  v79 = a5;
  MEMORY[0x223DDF6D0](a4, a5);
  v18 = v81;
  v19 = v82;
  Date.init()();
  v20 = &v17[v15[7]];
  *v20 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v20 + 1) = 48;
  v20[16] = 2;
  *&v17[v15[8]] = 151;
  v21 = &v17[v15[9]];
  *v21 = "rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)";
  *(v21 + 1) = 70;
  v21[16] = 2;
  v22 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v18, v19);
  v24 = v23;

  v25 = v15[10];
  v73 = v17;
  v26 = &v17[v25];
  *v26 = v22;
  v26[1] = v24;
  v27 = v7[5];
  v28 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v27);
  v29 = (*(v28 + 8))(a1, a3, a2, a6, v27, v28);
  v30 = v29;
  v81 = MEMORY[0x277D84F90];
  if (v29 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223DDFF80](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (AudioPluginProcessor.postRankFilter(_:)(v33))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v32;
      if (v35 == i)
      {
        v36 = v81;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_18:

  v37 = specialized Collection<>.dedup(favoring:constructKey:)(closure #2 in AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:), 0, v36);

  v38 = v79;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_39;
  }

LABEL_19:
  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.pommes);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v81 = v44;
    *v43 = 136315138;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v38, &v81);
    _os_log_impl(&dword_2232BB000, v41, v42, "POMMES final ranked %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x223DE0F80](v44, -1, -1);
    MEMORY[0x223DE0F80](v43, -1, -1);
  }

  if (v37 >> 62)
  {
    v45 = __CocoaSet.count.getter();
  }

  else
  {
    v45 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v45)
  {
    v47 = 0;
    v48 = v37 & 0xC000000000000001;
    v49 = v37 & 0xFFFFFFFFFFFFFF8;
    *&v46 = 136315394;
    v74 = v46;
    v75 = v45;
    v76 = v40;
    do
    {
      if (v48)
      {
        v50 = MEMORY[0x223DDFF80](v47, v37);
        v38 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v47 >= *(v49 + 16))
        {
          __break(1u);
LABEL_39:
          swift_once();
          goto LABEL_19;
        }

        v50 = *(v37 + 8 * v47 + 32);
        v38 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_34;
        }
      }

      v51 = v50;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = v38;
        v81 = v79;
        *v54 = v74;
        LODWORD(v78) = v53;
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v81);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2080;
        v58 = v51;
        v59 = [v58 description];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v52;
        v61 = v49;
        v62 = v48;
        v63 = v37;
        v65 = v64;

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v65, &v81);
        v37 = v63;
        v48 = v62;
        v49 = v61;

        *(v54 + 14) = v66;
        v67 = v77;
        _os_log_impl(&dword_2232BB000, v77, v78, "\n%s. %s", v54, 0x16u);
        v68 = v79;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v68, -1, -1);
        v69 = v54;
        v45 = v75;
        MEMORY[0x223DE0F80](v69, -1, -1);
      }

      else
      {
      }

      ++v47;
    }

    while (v38 != v45);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v70 = v73;
  (*(*static PerformanceUtil.shared + 184))(v73, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v70, type metadata accessor for PerformanceUtil.Ticket);
  return v37;
}

BOOL closure #2 in AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(void **a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  return (*((*v3 & *v2) + 0xA0))() <= v4;
}

uint64_t specialized Collection<>.dedup(favoring:constructKey:)(uint64_t (*a1)(id *, void **), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v27)
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v28 = a3 & 0xFFFFFFFFFFFFFF8;
      v29 = a3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      v7 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v29)
        {
          v8 = a3;
          v9 = MEMORY[0x223DDFF80](v5, a3);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_26;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(v7, v6, v9, a1);
        v4 = v13;

        ++v5;
        v7 = v12;
        v6 = v4;
        a3 = v8;
        if (v11 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = MEMORY[0x277D84F98];
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    v15 = v4[2];
    if (!v15)
    {
      break;
    }

    v16 = 0;
LABEL_15:
    v17 = &v4[2 * v16 + 5];
    v18 = v16;
    while (v18 < v4[2])
    {
      if (v12[2])
      {
        v19 = *(v17 - 1);
        v20 = *v17;

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if (v22)
        {
          v23 = *(v12[7] + 8 * v21);

          MEMORY[0x223DDF820](v24);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v16 = v18 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v31;
          if (v15 - 1 != v18)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }
      }

      ++v18;
      v17 += 2;
      if (v15 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v26 = a3;
    v27 = __CocoaSet.count.getter();
    a3 = v26;
  }

LABEL_24:

  return v14;
}

{
  if (a3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v27)
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v28 = a3 & 0xFFFFFFFFFFFFFF8;
      v29 = a3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      v7 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v29)
        {
          v8 = a3;
          v9 = MEMORY[0x223DDFF80](v5, a3);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_26;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(v7, v6, v9, a1);
        v4 = v13;

        ++v5;
        v7 = v12;
        v6 = v4;
        a3 = v8;
        if (v11 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = MEMORY[0x277D84F98];
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    v15 = v4[2];
    if (!v15)
    {
      break;
    }

    v16 = 0;
LABEL_15:
    v17 = &v4[2 * v16 + 5];
    v18 = v16;
    while (v18 < v4[2])
    {
      if (v12[2])
      {
        v19 = *(v17 - 1);
        v20 = *v17;

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if (v22)
        {
          v23 = *(v12[7] + 8 * v21);

          MEMORY[0x223DDF820](v24);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v16 = v18 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v31;
          if (v15 - 1 != v18)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }
      }

      ++v18;
      v17 += 2;
      if (v15 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v26 = a3;
    v27 = __CocoaSet.count.getter();
    a3 = v26;
  }

LABEL_24:

  return v14;
}

uint64_t Collection<>.dedup(favoring:constructKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  Dictionary.init()();
  type metadata accessor for Dictionary();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
  swift_getTupleTypeMetadata2();
  Sequence.reduce<A>(_:_:)();

  lazy protocol witness table accessor for type [String] and conformance [A]();
  v6 = Sequence.compactMap<A>(_:)();

  return v6;
}

uint64_t AudioPluginProcessor.postRankFilter(_:)(void *a1)
{
  v2 = v1;
  if (*(a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source) == 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  v8 = (v7)(v4);
  v9 = (*((*v6 & *v8) + 0xF8))();

  if (*(v2 + 104) <= v9)
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v14 = 134218498;
    v15 = v7();
    v16 = (*((*v6 & *v15) + 0xF8))();

    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v2 + 104);
    *(v14 + 22) = 2080;
    v17 = (*((*v6 & *v11) + 0xF0))();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_2232BB000, v12, v13, "AudioPluginProcessor : rejecting candidate due to combined text match score minimum threshold : %f < %f : %s", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223DE0F80](v21, -1, -1);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  return 0;
}

BOOL closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)()
{
  v0 = ClientAudioResult.vocabularyResult.getter();
  v1 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v1 == 18562)
  {
    return 0;
  }

  v2 = ClientAudioResult.vocabularyResult.getter();
  v3 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v3 == 18559)
  {
    return 0;
  }

  v4 = ClientAudioResult.vocabularyResult.getter();
  v5 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v5 == 42189)
  {
    return 0;
  }

  v6 = ClientAudioResult.vocabularyResult.getter();
  v7 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v7 == 18560)
  {
    return 0;
  }

  v9 = ClientAudioResult.vocabularyResult.getter();
  v10 = dispatch thunk of VocabularyResult.fieldType.getter();

  return v10 != 18566;
}

BOOL closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)()
{
  v0 = ClientAudioResult.vocabularyResult.getter();
  v1 = dispatch thunk of VocabularyResult.fieldType.getter();

  return v1 != 18559;
}

uint64_t specialized AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v8 = &v7[v5[7]];
  *v8 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v8 + 1) = 48;
  v8[16] = 2;
  *&v7[v5[8]] = 241;
  v9 = &v7[v5[9]];
  *v9 = "extractClientCandidates(from:resultFilterPred:)";
  *(v9 + 1) = 47;
  v9[16] = 2;
  v10 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000038, 0x80000002234E1860);
  v11 = v5[10];
  v25 = v7;
  v12 = &v7[v11];
  *v12 = v10;
  v12[1] = v13;
  v27 = a2;
  v14 = [*(a2 + 96) allowExplicitContent];
  v15 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, a1);
  v16 = v15;
  v30 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v18 = 0;
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223DDFF80](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v29 = v19;
      specialized closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(&v29, v27, v14, &v28);

      if (v28)
      {
        MEMORY[0x223DDF820]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v30;
      }

      ++v18;
      if (v21 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = v25;
  (*(*static PerformanceUtil.shared + 184))(v25, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v22, type metadata accessor for PerformanceUtil.Ticket);
  return v26;
}

uint64_t AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(unint64_t a1, uint64_t (*a2)(id), uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v9 = &v8[v6[7]];
  *v9 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v9 + 1) = 48;
  v9[16] = 2;
  *&v8[v6[8]] = 241;
  v10 = &v8[v6[9]];
  *v10 = "extractClientCandidates(from:resultFilterPred:)";
  *(v10 + 1) = 47;
  v10[16] = 2;
  v11 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000038, 0x80000002234E1860);
  v12 = v6[10];
  v26 = v8;
  v13 = &v8[v12];
  *v13 = v11;
  v13[1] = v14;
  v30 = v3;
  v15 = [*(v3 + 96) allowExplicitContent];
  v16 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, a1);
  v17 = v16;
  v33 = MEMORY[0x277D84F90];
  if (v16 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v19 = 0;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x223DDFF80](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v32 = v20;
      closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(&v32, v28, v30, v15, &v31);

      if (v31)
      {
        MEMORY[0x223DDF820]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v27 = v33;
      }

      ++v19;
      if (v22 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = v26;
  (*(*static PerformanceUtil.shared + 184))(v26, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v23, type metadata accessor for PerformanceUtil.Ticket);
  return v27;
}

id specialized closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)@<X0>(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for ClientAudioResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = v7;
    v10 = ClientAudioResult.vocabularyResult.getter();
    v11 = dispatch thunk of VocabularyResult.fieldType.getter();

    if (v11 != 18562)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);
      v20 = v9;
      v9 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v99 = v23;
        *v22 = 136315138;
        v97 = a4;
        v24 = ClientAudioResult.vocabularyResult.getter();
        v25 = [v24 description];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v99);

        *(v22 + 4) = v29;
        a4 = v97;
        _os_log_impl(&dword_2232BB000, v9, v21, "AudioPluginProcessor : candidate predicate rejecting media item : %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x223DE0F80](v23, -1, -1);
        v30 = v22;
LABEL_13:
        MEMORY[0x223DE0F80](v30, -1, -1);

LABEL_34:
        result = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v12 = ClientAudioResult.vocabularyResult.getter();
    v13 = VocabularyResult.itemId.getter();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.pommes);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v99 = v35;
        *v34 = 136315138;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v99);
        _os_log_impl(&dword_2232BB000, v32, v33, "%s vocabulary itemId is empty", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x223DE0F80](v35, -1, -1);
        MEMORY[0x223DE0F80](v34, -1, -1);
      }

      goto LABEL_33;
    }

    v17 = ClientAudioResult.vocabularyResult.getter();
    v18 = VocabularyResult.itemType.getter();

    if (v18 != 18540)
    {
      if (v18 == 42184)
      {
        result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v9, 0);
        goto LABEL_35;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.pommes);
      v20 = v9;
      v9 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v99 = v59;
        *v58 = 136315394;
        *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v99);
        *(v58 + 12) = 2080;
        v60 = ClientAudioResult.vocabularyResult.getter();
        VocabularyResult.itemType.getter();

        v61 = UInt16.cascadeDescription.getter();
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v99);

        *(v58 + 14) = v63;
        _os_log_impl(&dword_2232BB000, v9, v57, "%s unsupported vocabulary item type : %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v59, -1, -1);
        v30 = v58;
        goto LABEL_13;
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v98 = a4;
    v36 = a2[10];
    v37 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v36);
    v38 = ClientAudioResult.vocabularyResult.getter();
    v39 = VocabularyResult.itemId.getter();
    v41 = v40;

    v42 = (*(v37 + 8))(v39, v41, 0, 0, v36, v37);

    if (v42)
    {
      if (v42[32])
      {
        a4 = v98;
        if (v42[35])
        {
          if ((a3 & 1) != 0 || (v42[33] & 1) == 0)
          {
            result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v9, v42);
            goto LABEL_35;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logger.pommes);
          v44 = v9;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v96 = v44;
            v48 = swift_slowAlloc();
            v99 = v48;
            *v47 = 136315138;
            v49 = ClientAudioResult.vocabularyResult.getter();
            v50 = [v49 description];

            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v99);

            *(v47 + 4) = v54;
            a4 = v98;
            v55 = "AudioPluginProcessor : rejecting explicit content for %s";
LABEL_49:
            _os_log_impl(&dword_2232BB000, v45, v46, v55, v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x223DE0F80](v48, -1, -1);
            MEMORY[0x223DE0F80](v47, -1, -1);

            goto LABEL_34;
          }
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          __swift_project_value_buffer(v89, static Logger.pommes);
          v44 = v9;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v96 = v44;
            v48 = swift_slowAlloc();
            v99 = v48;
            *v47 = 136315138;
            v90 = ClientAudioResult.vocabularyResult.getter();
            v91 = [v90 description];

            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v99);

            *(v47 + 4) = v95;
            a4 = v98;
            v55 = "AudioPluginProcessor : rejecting media item is not playable : %s";
            goto LABEL_49;
          }
        }

        goto LABEL_34;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.pommes);
      v77 = v9;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v99 = v81;
        *v80 = 136315138;
        v82 = v77;
        v83 = ClientAudioResult.vocabularyResult.getter();
        v84 = [v83 description];

        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v99);

        *(v80 + 4) = v88;
        _os_log_impl(&dword_2232BB000, v78, v79, "AudioPluginProcessor : rejecting media item not in library : %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x223DE0F80](v81, -1, -1);
        MEMORY[0x223DE0F80](v80, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.pommes);
      v65 = v9;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v99 = v69;
        *v68 = 136315138;
        v70 = ClientAudioResult.vocabularyResult.getter();
        v71 = [v70 description];

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v99);

        *(v68 + 4) = v75;
        _os_log_impl(&dword_2232BB000, v66, v67, "AudioPluginProcessor : media item ranking signals is nil : %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x223DE0F80](v69, -1, -1);
        MEMORY[0x223DE0F80](v68, -1, -1);
      }

      else
      {
      }
    }

    result = 0;
    a4 = v98;
  }

LABEL_35:
  *a4 = result;
  return result;
}

id closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)@<X0>(void **a1@<X0>, uint64_t (*a2)(id)@<X1>, void *a3@<X3>, char a4@<W4>, void *a5@<X8>)
{
  v9 = *a1;
  type metadata accessor for ClientAudioResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = v9;
    if ((a2(v11) & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.pommes);
      v41 = v12;
      v12 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = 136315138;
        v101 = a5;
        v45 = ClientAudioResult.vocabularyResult.getter();
        v46 = [v45 description];

        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v102);

        *(v43 + 4) = v50;
        a5 = v101;
        _os_log_impl(&dword_2232BB000, v12, v42, "AudioPluginProcessor : candidate predicate rejecting media item : %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x223DE0F80](v44, -1, -1);
        v51 = v43;
LABEL_21:
        MEMORY[0x223DE0F80](v51, -1, -1);

LABEL_34:
        result = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v13 = ClientAudioResult.vocabularyResult.getter();
    v14 = VocabularyResult.itemId.getter();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.pommes);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = a5;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v102 = v57;
        *v56 = 136315138;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v102);
        _os_log_impl(&dword_2232BB000, v53, v54, "%s vocabulary itemId is empty", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x223DE0F80](v57, -1, -1);
        v58 = v56;
        a5 = v55;
        MEMORY[0x223DE0F80](v58, -1, -1);
      }

      goto LABEL_33;
    }

    v18 = ClientAudioResult.vocabularyResult.getter();
    v19 = VocabularyResult.itemType.getter();

    if (v19 != 42184)
    {
      if (v19 == 18540)
      {
        v100 = a5;
        v20 = a3[10];
        v21 = a3[11];
        __swift_project_boxed_opaque_existential_1(a3 + 7, v20);
        v22 = ClientAudioResult.vocabularyResult.getter();
        v23 = VocabularyResult.itemId.getter();
        v25 = v24;

        v26 = (*(v21 + 8))(v23, v25, 0, 0, v20, v21);

        if (v26)
        {
          if (v26[32] == 1)
          {
            a5 = v100;
            if (v26[35] == 1)
            {
              if ((a4 & 1) != 0 || (v26[33] & 1) == 0)
              {
                result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v12, v26);
                goto LABEL_35;
              }

              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v27 = type metadata accessor for Logger();
              __swift_project_value_buffer(v27, static Logger.pommes);
              v28 = v12;
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v99 = v28;
                v32 = swift_slowAlloc();
                v102 = v32;
                *v31 = 136315138;
                v33 = ClientAudioResult.vocabularyResult.getter();
                v34 = [v33 description];

                v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v37 = v36;

                v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v102);

                *(v31 + 4) = v38;
                a5 = v100;
                v39 = "AudioPluginProcessor : rejecting explicit content for %s";
LABEL_49:
                _os_log_impl(&dword_2232BB000, v29, v30, v39, v31, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v32);
                MEMORY[0x223DE0F80](v32, -1, -1);
                MEMORY[0x223DE0F80](v31, -1, -1);

                goto LABEL_34;
              }
            }

            else
            {
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v92 = type metadata accessor for Logger();
              __swift_project_value_buffer(v92, static Logger.pommes);
              v28 = v12;
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v99 = v28;
                v32 = swift_slowAlloc();
                v102 = v32;
                *v31 = 136315138;
                v93 = ClientAudioResult.vocabularyResult.getter();
                v94 = [v93 description];

                v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v97 = v96;

                v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v102);

                *(v31 + 4) = v98;
                a5 = v100;
                v39 = "AudioPluginProcessor : rejecting media item is not playable : %s";
                goto LABEL_49;
              }
            }

            goto LABEL_34;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          __swift_project_value_buffer(v79, static Logger.pommes);
          v80 = v12;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v102 = v84;
            *v83 = 136315138;
            v85 = v80;
            v86 = ClientAudioResult.vocabularyResult.getter();
            v87 = [v86 description];

            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v90 = v89;

            v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v102);

            *(v83 + 4) = v91;
            _os_log_impl(&dword_2232BB000, v81, v82, "AudioPluginProcessor : rejecting media item not in library : %s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v84);
            MEMORY[0x223DE0F80](v84, -1, -1);
            MEMORY[0x223DE0F80](v83, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, static Logger.pommes);
          v68 = v12;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v102 = v72;
            *v71 = 136315138;
            v73 = ClientAudioResult.vocabularyResult.getter();
            v74 = [v73 description];

            v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v102);

            *(v71 + 4) = v78;
            _os_log_impl(&dword_2232BB000, v69, v70, "AudioPluginProcessor : media item ranking signals is nil : %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x223DE0F80](v72, -1, -1);
            MEMORY[0x223DE0F80](v71, -1, -1);
          }

          else
          {
          }
        }

        result = 0;
        a5 = v100;
        goto LABEL_35;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.pommes);
      v41 = v12;
      v12 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v102 = v62;
        *v61 = 136315394;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v102);
        *(v61 + 12) = 2080;
        v63 = ClientAudioResult.vocabularyResult.getter();
        VocabularyResult.itemType.getter();

        v64 = UInt16.cascadeDescription.getter();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v102);

        *(v61 + 14) = v66;
        _os_log_impl(&dword_2232BB000, v12, v60, "%s unsupported vocabulary item type : %s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v62, -1, -1);
        v51 = v61;
        goto LABEL_21;
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v12, 0);
  }

LABEL_35:
  *a5 = result;
  return result;
}

void AudioPluginProcessor.extractClientCandidatesForMacOS(from:)(void *a1)
{
  v2 = v1;
  v116 = a1;
  v3 = type metadata accessor for CharacterSet();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v113 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v107 - v6;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "AudioPluginProcessor#extractClientCandidatesForMacOS reached ranking beginning", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  v11 = ClientAudioResult.vocabularyResult.getter();
  v12 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v12 - 18555) < 9u && ((0x195u >> (v12 - 123)))
  {
    v13 = qword_2234D7D50[(v12 - 18555)];
  }

  else
  {
    v13 = 2 * (v12 == 18556);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v119 = v17;
    *v16 = 136315138;
    v117 = v13;
    type metadata accessor for MPMediaEntityType(0);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v119);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2232BB000, v14, v15, "AudioPluginProcessor#extractClientCandidatesForMacOS entityType: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DE0F80](v17, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  v21 = ClientAudioResult.vocabularyResult.getter();
  v22 = VocabularyResult.itemId.getter();
  v24 = v23;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v119 = v28;
    *v27 = 136315138;

    v29 = v22;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v119);

    *(v27 + 4) = v30;
    v22 = v29;
    _os_log_impl(&dword_2232BB000, v25, v26, "AudioPluginProcessor#extractClientCandidatesForMacOS itemId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  v119 = v22;
  v120 = v24;
  v117 = 0x63697665642F2F3ALL;
  v118 = 0xEA00000000002F65;
  lazy protocol witness table accessor for type String and conformance String();
  v31 = StringProtocol.components<A>(separatedBy:)();
  if (v31[2] <= 1uLL)
  {

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136315138;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v119);

      *(v64 + 4) = v66;
      v67 = "AudioPluginProcessor#extractClientCandidatesForMacOS itemId is of incorrect format: %s";
LABEL_88:
      _os_log_impl(&dword_2232BB000, v62, v63, v67, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x223DE0F80](v65, -1, -1);
      v79 = v64;
      goto LABEL_89;
    }

LABEL_90:

    goto LABEL_97;
  }

  v111 = v22;
  v32 = v31[6];
  v33 = v31[7];
  swift_bridgeObjectRetain_n();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v109 = v13;
  v110 = v2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v108 = v24;
    v39 = v38;
    v119 = v38;
    *v37 = 136315138;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v119);

    *(v37 + 4) = v40;
    _os_log_impl(&dword_2232BB000, v34, v35, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentIDUnTrimmed: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v24 = v108;
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  v119 = v32;
  v120 = v33;
  v41 = v112;
  CharacterSet.init(charactersIn:)();
  v42 = v113;
  CharacterSet.inverted.getter();
  v43 = v115;
  v44 = *(v114 + 8);
  v44(v41, v115);
  v45 = StringProtocol.trimmingCharacters(in:)();
  v47 = v46;
  v44(v42, v43);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v119 = v51;
    *v50 = 136315138;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v119);

    *(v50 + 4) = v52;
    _os_log_impl(&dword_2232BB000, v48, v49, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentIDTrimmed: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x223DE0F80](v51, -1, -1);
    MEMORY[0x223DE0F80](v50, -1, -1);
  }

  v53 = HIBYTE(v47) & 0xF;
  v54 = v45 & 0xFFFFFFFFFFFFLL;
  if ((v47 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v47) & 0xF;
  }

  else
  {
    v55 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    goto LABEL_86;
  }

  if ((v47 & 0x1000000000000000) != 0)
  {
    LOBYTE(v117) = 0;
    v58 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v47, 10);
    v77 = v106;
LABEL_85:

    if ((v77 & 1) == 0)
    {

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v119 = v83;
        *v82 = 136315138;
        v117 = v58;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v119);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_2232BB000, v80, v81, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentID: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x223DE0F80](v83, -1, -1);
        MEMORY[0x223DE0F80](v82, -1, -1);
      }

      v87 = v109;
      v88 = v110[10];
      v89 = v110[11];
      __swift_project_boxed_opaque_existential_1(v110 + 7, v88);
      if ((*(v89 + 16))(v58, v87, v88, v89))
      {
        v62 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v62, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v119 = v92;
          *v91 = 136315138;
          v117 = v58;
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v119);

          *(v91 + 4) = v95;
          _os_log_impl(&dword_2232BB000, v62, v90, "AudioPluginProcessor#extractClientCandidates macOS mediaItemRankingSignals: %s", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v92);
          MEMORY[0x223DE0F80](v92, -1, -1);
          MEMORY[0x223DE0F80](v91, -1, -1);
        }

        goto LABEL_97;
      }

      v96 = v116;
      v62 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v62, v97))
      {
LABEL_97:

        return;
      }

      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v119 = v99;
      *v98 = 136315138;
      v100 = ClientAudioResult.vocabularyResult.getter();
      v101 = [v100 description];

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v119);

      *(v98 + 4) = v105;
      _os_log_impl(&dword_2232BB000, v62, v97, "AudioPluginProcessor#extractClientCandidatesForMacOS media item ranking signals is nil : %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x223DE0F80](v99, -1, -1);
      v79 = v98;
LABEL_89:
      MEMORY[0x223DE0F80](v79, -1, -1);
      goto LABEL_97;
    }

LABEL_86:

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136315138;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v24, &v119);

      *(v64 + 4) = v78;
      v67 = "AudioPluginProcessor#extractClientCandidatesForMacOS failed to extract persistentID from itemId: %s";
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  if ((v47 & 0x2000000000000000) == 0)
  {
    if ((v45 & 0x1000000000000000) != 0)
    {
      v56 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v56 = _StringObject.sharedUTF8.getter();
    }

    v57 = *v56;
    if (v57 == 43)
    {
      if (v54 >= 1)
      {
        v53 = v54 - 1;
        if (v54 != 1)
        {
          v58 = 0;
          if (v56)
          {
            v70 = v56 + 1;
            while (1)
            {
              v71 = *v70 - 48;
              if (v71 > 9)
              {
                goto LABEL_83;
              }

              if (!is_mul_ok(v58, 0xAuLL))
              {
                goto LABEL_83;
              }

              v61 = __CFADD__(10 * v58, v71);
              v58 = 10 * v58 + v71;
              if (v61)
              {
                goto LABEL_83;
              }

              ++v70;
              if (!--v53)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_83;
      }

      goto LABEL_104;
    }

    if (v57 != 45)
    {
      if (v54)
      {
        v58 = 0;
        if (v56)
        {
          while (1)
          {
            v74 = *v56 - 48;
            if (v74 > 9)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v58, 0xAuLL))
            {
              goto LABEL_83;
            }

            v61 = __CFADD__(10 * v58, v74);
            v58 = 10 * v58 + v74;
            if (v61)
            {
              goto LABEL_83;
            }

            ++v56;
            if (!--v54)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_83:
      v58 = 0;
      LOBYTE(v53) = 1;
      goto LABEL_84;
    }

    if (v54 >= 1)
    {
      v53 = v54 - 1;
      if (v54 != 1)
      {
        v58 = 0;
        if (v56)
        {
          v59 = v56 + 1;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v58, 0xAuLL))
            {
              goto LABEL_83;
            }

            v61 = 10 * v58 >= v60;
            v58 = 10 * v58 - v60;
            if (!v61)
            {
              goto LABEL_83;
            }

            ++v59;
            if (!--v53)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_75:
        LOBYTE(v53) = 0;
LABEL_84:
        LOBYTE(v117) = v53;
        v77 = v53;
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v119 = v45;
  v120 = v47 & 0xFFFFFFFFFFFFFFLL;
  if (v45 != 43)
  {
    if (v45 != 45)
    {
      if (v53)
      {
        v58 = 0;
        v75 = &v119;
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            break;
          }

          if (!is_mul_ok(v58, 0xAuLL))
          {
            break;
          }

          v61 = __CFADD__(10 * v58, v76);
          v58 = 10 * v58 + v76;
          if (v61)
          {
            break;
          }

          v75 = (v75 + 1);
          if (!--v53)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v53)
    {
      if (--v53)
      {
        v58 = 0;
        v68 = &v119 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          if (!is_mul_ok(v58, 0xAuLL))
          {
            break;
          }

          v61 = 10 * v58 >= v69;
          v58 = 10 * v58 - v69;
          if (!v61)
          {
            break;
          }

          ++v68;
          if (!--v53)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_103;
  }

  if (v53)
  {
    if (--v53)
    {
      v58 = 0;
      v72 = &v119 + 1;
      while (1)
      {
        v73 = *v72 - 48;
        if (v73 > 9)
        {
          break;
        }

        if (!is_mul_ok(v58, 0xAuLL))
        {
          break;
        }

        v61 = __CFADD__(10 * v58, v73);
        v58 = 10 * v58 + v73;
        if (v61)
        {
          break;
        }

        ++v72;
        if (!--v53)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_105:
  __break(1u);
}

uint64_t AudioPluginProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t AudioPluginProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t *specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t (*a4)(id *, void **))
{
  v59 = a3;
  v7 = *((*MEMORY[0x277D85000] & *a3) + 0xE0);

  v9 = v7(v8);
  v11 = v9;
  v12 = v10;
  if (!a1[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v9, v10), (v13 & 1) == 0))
  {
    v28 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v11, v12, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    v58[0] = a2;

    specialized Array.append<A>(contentsOf:)(inited);

    return a1;
  }

  if (!a4 || !a1[2])
  {
LABEL_13:

LABEL_14:

    return a1;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  if ((v15 & 1) == 0)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    goto LABEL_13;
  }

  v58[0] = *(a1[7] + 8 * v14);
  log = v58[0];
  if (a4(v58, &v59))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = a3;
    v18 = log;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    loga = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v49 = v20;
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v21 = 136315906;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v57);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v57);
      *(v21 + 22) = 2080;
      type metadata accessor for AudioItemCandidate(0);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v57);

      *(v21 + 24) = v24;
      *(v21 + 32) = 2080;
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v57);

      *(v21 + 34) = v27;
      _os_log_impl(&dword_2232BB000, loga, v49, "%s#%s skip adding element: %s in favor of existing: %s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v21, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    goto LABEL_14;
  }

  v32 = a3;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v57 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v11, v12, v33);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = log;
  v36 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  logb = v35;
  if (os_log_type_enabled(v36, v52))
  {
    v37 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v37 = 136315906;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v57);
    *(v37 + 12) = 2080;
    *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v57);
    *(v37 + 22) = 2080;
    type metadata accessor for AudioItemCandidate(0);
    v38 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v57);

    *(v37 + 24) = v48;
    *(v37 + 32) = 2080;
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v57);

    *(v37 + 34) = v42;
    _os_log_impl(&dword_2232BB000, v36, v52, "%s#%s removing element: %s in favor of other: %s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v51, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  else
  {
  }

  v57 = a2;
  v43 = a2[2];
  if (v43)
  {
    v44 = 0;
    v45 = a2 + 5;
    while (1)
    {
      v46 = *(v45 - 1) == v11 && *v45 == v12;
      if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v44;
      v45 += 2;
      if (v43 == v44)
      {
        goto LABEL_30;
      }
    }

    specialized Array.remove(at:)(v44);
  }

  else
  {
LABEL_30:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_2234CF920;
  *(v47 + 32) = v11;
  *(v47 + 40) = v12;
  specialized Array.append<A>(contentsOf:)(v47);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);

  return a1;
}

{
  v57 = a3;

  v8 = PommesResult.resultId.getter();
  v10 = v8;
  v11 = v9;
  if (!a1[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v8, v9), (v12 & 1) == 0))
  {
    v27 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v10, v11, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v10;
    *(inited + 40) = v11;
    v56[0] = a2;

    specialized Array.append<A>(contentsOf:)(inited);

    return a1;
  }

  if (!a4 || !a1[2])
  {
LABEL_13:

LABEL_14:

    return a1;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  if ((v14 & 1) == 0)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    goto LABEL_13;
  }

  v56[0] = *(a1[7] + 8 * v13);
  log = v56[0];
  if (a4(v56, &v57))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = a3;
    v17 = log;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    loga = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v48 = v17;
      v20 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v20 = 136315906;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v55);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v55);
      *(v20 + 22) = 2080;
      type metadata accessor for PommesResult();
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v55);

      *(v20 + 24) = v23;
      *(v20 + 32) = 2080;
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

      *(v20 + 34) = v26;
      _os_log_impl(&dword_2232BB000, loga, v19, "%s#%s skip adding element: %s in favor of existing: %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    goto LABEL_14;
  }

  v31 = a3;

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v55 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v10, v11, v32);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);
  v34 = log;
  v35 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  logb = v34;
  if (os_log_type_enabled(v35, v51))
  {
    v36 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v36 = 136315906;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v55);
    *(v36 + 12) = 2080;
    *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v55);
    *(v36 + 22) = 2080;
    type metadata accessor for PommesResult();
    v37 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v55);

    *(v36 + 24) = v47;
    *(v36 + 32) = 2080;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v55);

    *(v36 + 34) = v41;
    _os_log_impl(&dword_2232BB000, v35, v51, "%s#%s removing element: %s in favor of other: %s", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v49, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  else
  {
  }

  v55 = a2;
  v42 = a2[2];
  if (v42)
  {
    v43 = 0;
    v44 = a2 + 5;
    while (1)
    {
      v45 = *(v44 - 1) == v10 && *v44 == v11;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v43;
      v44 += 2;
      if (v42 == v43)
      {
        goto LABEL_30;
      }
    }

    specialized Array.remove(at:)(v43);
  }

  else
  {
LABEL_30:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_2234CF920;
  *(v46 + 32) = v10;
  *(v46 + 40) = v11;
  specialized Array.append<A>(contentsOf:)(v46);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);

  return a1;
}

void closure #1 in Collection<>.dedup(favoring:constructKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, NSObject **a9@<X8>)
{
  v143 = a6;
  v146 = a5;
  v149 = a4;
  v150 = a3;
  v151 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v152 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v133 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v138 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v142 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v139 = &v133 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v133 - v25;
  MEMORY[0x28223BE20](v24);
  v141 = &v133 - v26;
  v27 = type metadata accessor for Optional();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v140 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v145 = (&v133 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v133 - v33;
  v35 = *a1;
  v36 = *(a1 + 8);
  v155 = v35;

  v147 = a2;
  v37 = (v150)(a2);
  v148 = v35;
  if (!v38)
  {
    v49 = v152;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);
    v51 = *(v49 + 16);
    v51(v14, v147, AssociatedTypeWitness);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v147 = v14;
      v55 = v54;
      v149 = swift_slowAlloc();
      v153 = v149;
      *v55 = 136315650;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v153);
      v150 = v36;
      *(v55 + 12) = 2080;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v153);
      *(v55 + 22) = 2080;
      v56 = v147;
      v51(v142, v147, AssociatedTypeWitness);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      (*(v49 + 8))(v56, AssociatedTypeWitness);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v153);
      v36 = v150;

      *(v55 + 24) = v60;
      _os_log_impl(&dword_2232BB000, v52, v53, "%s#%s unable to construct Key skip adding element: %s", v55, 0x20u);
      v61 = v149;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v61, -1, -1);
      MEMORY[0x223DE0F80](v55, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v14, AssociatedTypeWitness);
    }

    v65 = v151;
    *v151 = v148;
    v65[1] = v36;
    goto LABEL_16;
  }

  v136 = v17;
  v150 = v36;
  v153 = v37;
  v154 = v38;
  v39 = v37;
  v40 = v38;

  MEMORY[0x223DDF4D0](&v153, v35, MEMORY[0x277D837D0], AssociatedTypeWitness, MEMORY[0x277D837E0]);

  v41 = *(v152 + 48);
  v42 = v41(v34, 1, AssociatedTypeWitness);
  v135 = *(v28 + 8);
  v135(v34, v27);
  if (v42 == 1)
  {
    v43 = v152;
    v44 = v145;
    (*(v152 + 16))(v145, v147, AssociatedTypeWitness);
    (*(v43 + 56))(v44, 0, 1, AssociatedTypeWitness);
    v45 = v39;
    v153 = v39;
    v154 = v40;
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    v46 = v151;
    *v151 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v45;
    *(inited + 40) = v40;
    v153 = v150;

    specialized Array.append<A>(contentsOf:)(inited);
    v48 = v153;

    v46[1] = v48;
    return;
  }

  v144 = v39;
  v149 = v40;
  v134 = AssociatedTypeWitness;
  v62 = v146;
  if (!v146)
  {

    goto LABEL_14;
  }

  v153 = v144;
  v154 = v149;

  _sxq_SbRi_zRi0_zRi__Ri0__r0_ly7ElementQzABIsegnnd_SgSlRzSi5IndexRtzlWOy(v62);
  v63 = v140;
  v64 = v134;
  MEMORY[0x223DDF4D0](&v153, v148, MEMORY[0x277D837D0], v134, MEMORY[0x277D837E0]);

  if (v41(v63, 1, v64) == 1)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v62);

    v135(v63, v27);
LABEL_14:
    v66 = v150;
    v67 = v151;
    v68 = v148;
LABEL_15:
    *v67 = v68;
    v67[1] = v66;
LABEL_16:

    return;
  }

  v69 = v152;
  v70 = v141;
  (*(v152 + 32))(v141, v63, v64);
  v71 = v147;
  v72 = v64;
  if (v62(v70, v147))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.pommes);
    v74 = *(v69 + 16);
    v75 = v137;
    v74(v137, v71, v72);
    v76 = v139;
    v77 = v141;
    v74(v139, v141, v72);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v149 = v78;
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v153 = v147;
      *v80 = 136315906;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v153);
      *(v80 + 12) = 2080;
      *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v153);
      *(v80 + 22) = 2080;
      v81 = v142;
      v74(v142, v75, v72);
      v82 = String.init<A>(describing:)();
      LODWORD(v145) = v79;
      v83 = v82;
      v84 = v69;
      v85 = v72;
      v87 = v86;
      v88 = *(v84 + 8);
      v152 = v84 + 8;
      v88(v75, v85);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v87, &v153);

      *(v80 + 24) = v89;
      *(v80 + 32) = 2080;
      v90 = v139;
      v74(v81, v139, v85);
      v91 = String.init<A>(describing:)();
      v93 = v92;
      v88(v90, v85);
      v94 = v88;
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v153);

      *(v80 + 34) = v95;
      v96 = v149;
      _os_log_impl(&dword_2232BB000, v149, v145, "%s#%s skip adding element: %s in favor of existing: %s", v80, 0x2Au);
      v97 = v147;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v97, -1, -1);
      MEMORY[0x223DE0F80](v80, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v146);

      v94(v141, v85);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v146);

      v120 = *(v69 + 8);
      v120(v76, v72);
      v120(v75, v72);
      v120(v77, v72);
    }

    v68 = v148;
    v66 = v150;
    v67 = v151;
    goto LABEL_15;
  }

  v98 = *(v69 + 16);
  v99 = v145;
  v98(v145, v71, v64);
  (*(v69 + 56))(v99, 0, 1, v64);
  v153 = v144;
  v154 = v149;
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static Logger.pommes);
  v101 = v138;
  v98(v138, v70, v64);
  v98(v136, v71, v64);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    LODWORD(v147) = v103;
    v148 = v102;
    v105 = v104;
    v145 = swift_slowAlloc();
    v153 = v145;
    *v105 = 136315906;
    *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v153);
    *(v105 + 12) = 2080;
    *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v153);
    *(v105 + 22) = 2080;
    v106 = v142;
    v98(v142, v101, v72);
    v107 = String.init<A>(describing:)();
    v109 = v108;
    v140 = v98;
    v110 = *(v152 + 8);
    v110(v101, v134);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v153);

    *(v105 + 24) = v111;
    *(v105 + 32) = 2080;
    v112 = v136;
    (v140)(v106, v136, v134);
    v113 = v110;
    v114 = String.init<A>(describing:)();
    v116 = v115;
    v110(v112, v134);
    v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, &v153);
    v70 = v141;

    *(v105 + 34) = v117;
    v72 = v134;
    v118 = v148;
    _os_log_impl(&dword_2232BB000, v148, v147, "%s#%s removing element: %s in favor of other: %s", v105, 0x2Au);
    v119 = v145;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v119, -1, -1);
    MEMORY[0x223DE0F80](v105, -1, -1);
  }

  else
  {

    v113 = *(v69 + 8);
    v113(v136, v72);
    v113(v101, v72);
  }

  v121 = v146;
  v153 = v150;
  v122 = *(v150 + 16);
  v123 = v149;
  v124 = v144;
  if (v122)
  {
    v125 = 0;
    v126 = (v150 + 40);
    while (*(v126 - 1) != v124 || v123 != *v126)
    {
      v128 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v124 = v144;
      v123 = v149;
      if (v128)
      {
        break;
      }

      ++v125;
      v126 += 2;
      if (v122 == v125)
      {
        goto LABEL_37;
      }
    }

    specialized Array.remove(at:)(v125);
  }

  else
  {
LABEL_37:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_2234CF920;
  v130 = v149;
  *(v129 + 32) = v144;
  *(v129 + 40) = v130;
  specialized Array.append<A>(contentsOf:)(v129);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v121);
  v113(v70, v72);
  v131 = v153;
  v132 = v151;
  *v151 = v155;
  v132[1] = v131;
}

char *specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t closure #2 in Collection<>.dedup(favoring:constructKey:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  MEMORY[0x223DDF4D0](v8, a2, MEMORY[0x277D837D0], AssociatedTypeWitness, MEMORY[0x277D837E0]);
}

unint64_t type metadata accessor for MPMediaLibrary()
{
  result = lazy cache variable for type metadata for MPMediaLibrary;
  if (!lazy cache variable for type metadata for MPMediaLibrary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPMediaLibrary);
  }

  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DDF740](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb);
  }

  return result;
}

uint64_t specialized AudioPluginProcessor.extractServerCandidates(from:)(uint64_t a1)
{
  v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v5 = *(v56 - 8);
  v6 = MEMORY[0x28223BE20](v56);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v48 - v9;
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v14 = &v13[v11[7]];
  *v14 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v14 + 1) = 48;
  v14[16] = 2;
  *&v13[v11[8]] = 191;
  v15 = &v13[v11[9]];
  *v15 = "extractServerCandidates(from:)";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v16 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003DLL, 0x80000002234E1940);
  v17 = &v13[v11[10]];
  *v17 = v16;
  v17[1] = v18;
  v19 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v20 = *(a1 + 16);
  if (v20)
  {
    v49 = v13;
    v22 = *(v5 + 16);
    v21 = v5 + 16;
    v23 = (a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64)));
    v53 = *(v21 + 56);
    v54 = v22;
    v51 = (v21 - 8);
    v52 = (v2 + 16);
    v50 = (v2 + 8);
    v55 = v21;
    v24 = v56;
    do
    {
      v66 = v20;
      v25 = v67;
      v26 = v54;
      v54(v67, v23, v24);
      v26(v8, v25, v24);
      v27 = v57;
      v26(v57, v8, v24);
      swift_storeEnumTagMultiPayload();
      v28 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
      v64 = v29;
      v65 = v28;
      v30 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
      v62 = v31;
      v63 = v30;
      v61 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
      v33 = v32;
      v34 = v59;
      Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
      LOBYTE(v25) = Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter();
      v35 = [objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features()) init];
      v36 = type metadata accessor for AudioItemCandidate(0);
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
      outlined init with copy of AudioItemCandidate.BackingItem(v27, &v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
      v38 = &v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
      v39 = v64;
      *v38 = v65;
      v38[1] = v39;
      v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 0;
      v40 = &v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
      v41 = v62;
      *v40 = v63;
      v40[1] = v41;
      v42 = &v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
      *v42 = v61;
      v42[1] = v33;
      v43 = v60;
      (*v52)(&v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v34, v60);
      v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = v25 & 1;
      v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = 0;
      *&v37[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v35;
      v68.receiver = v37;
      v68.super_class = v36;
      objc_msgSendSuper2(&v68, sel_init);
      v44 = *v51;
      (*v51)(v8, v24);
      (*v50)(v34, v43);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v27, type metadata accessor for AudioItemCandidate.BackingItem);
      v45 = v44(v67, v24);
      MEMORY[0x223DDF820](v45);
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 += v53;
      v20 = v66 - 1;
    }

    while (v66 != 1);
    v19 = v69;
    v13 = v49;
  }

  v46 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, v19);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v13, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v13, type metadata accessor for PerformanceUtil.Ticket);
  return v46;
}

uint64_t (*specialized AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)(uint64_t a1, char a2))()
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D39190], v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = (*(v5 + 8))(v7, v4);
  if (v24[1] != v24[0])
  {
    if ((a2 & 1) == 0 || ((*(*a1 + 160))(v8) & 1) == 0)
    {
      return protocol witness for static Equatable.== infix(_:_:) in conformance DisableSearchPreflightClientError;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v10, v17);
    v13 = closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
    if (v18)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2232BB000, v10, v17, "AudioPluginProcessor : remove genre candidates from library", v14, 2u);
      v15 = closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
      goto LABEL_18;
    }

LABEL_19:
    v23 = v13;
    goto LABEL_20;
  }

  if ((*(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v10, v21);
    v13 = closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
    if (v22)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2232BB000, v10, v21, "AudioPluginProcessor : remove playlists, artists, genre .. all candidates from library that cannot be added to a playlist", v14, 2u);
      v15 = closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = getEnumTag for CurareDonation;
  if (!v12)
  {
    goto LABEL_19;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  _os_log_impl(&dword_2232BB000, v10, v11, "AudioPluginProcessor : remove all candidates from library", v14, 2u);
  v15 = getEnumTag for CurareDonation;
LABEL_18:
  v23 = v15;
  MEMORY[0x223DE0F80](v14, -1, -1);
LABEL_20:

  return v23;
}

uint64_t _sxq_SbRi_zRi0_zRi__Ri0__r0_ly7ElementQzABIsegnnd_SgSlRzSi5IndexRtzlWOy(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PommesResourceDownloadInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t PommesResourceDownloadInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesResourceDownloadInstrumentationUtil.logStartOfPommesResourceDownload(requestId:pommesCandidateId:resourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A0B8]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A0D0]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setResourceType_];
        [v19 setStartedOrChanged:v11];
        [v8 setResourceDownloadContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log start of POMMES resource download", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesResourceDownloadInstrumentationUtil.logEndOfPommesResourceDownload(requestId:pommesCandidateId:downloadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class *a5, SEL *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D5A0B8]) init];
  if (!v17)
  {
    v23 = v16;
LABEL_10:

LABEL_11:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    goto LABEL_17;
  }

  v27 = v17;
  v18 = [objc_allocWithZone(*a5) init];
  if (!v18)
  {

    v23 = v27;
    goto LABEL_10;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(a4))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 *a6];
  [v27 *a7];
  [v16 setResourceDownloadContext:v27];
  v20 = [objc_opt_self() processInfo];
  v21 = NSProcessInfo.isRunningUnitTests.getter();

  if (v21)
  {
    v22 = (*(*v13 + 96))();
  }

  else
  {
    v22 = [objc_opt_self() sharedStream];
  }

  [v22 emitMessage_];
  swift_unknownObjectRelease();

LABEL_17:
}

uint64_t PommesResourceDownloadInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *SagePegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v13 = swift_allocObject();
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, v18, a6, v23, v13, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t specialized SearchToolPegasusProxy.deinit()
{

  outlined consume of Data?(*(v0 + 64), *(v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v1 = *(*v0 + 216);
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SagePegasusProxy.search(searchRequest:clientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v4[25] = Context;
  v4[26] = *(Context - 8);
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](SagePegasusProxy.search(searchRequest:clientEntities:), 0, 0);
}

uint64_t SagePegasusProxy.search(searchRequest:clientEntities:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v1[29];
  v2 = v1[30];
  v4 = v1[28];
  v5 = v1[11];
  v6 = static PerformanceUtil.shared;
  Date.init()();
  (*(*v6 + 200))(0xD00000000000003ALL, 0x80000002234E0830, 0, v2, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 20, "search(searchRequest:clientEntities:)", 37, 2, partial apply for closure #1 in SagePegasusProxy.search(searchRequest:clientEntities:), v5, MEMORY[0x277D84F78] + 8);
  (*(v3 + 8))(v2, v4);
  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    v7 = v1[27];
    v8 = v1[11];
    v9 = v1[9];
    v10 = (*(*v8 + 296))();
    static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)(v9, v10, v8[7], v7);

    (*(*v8 + 368))(v9, v7);
    v18 = v1[23];
    v19 = v1[24];
    v21 = v1[21];
    v20 = v1[22];
    v22 = v1[20];
    v24 = v1[10];
    v23 = v1[11];
    v25 = *(v21 + 32);
    v1[31] = v25;
    v1[32] = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v19, v18, v22);
    (*(*v23 + 88))(v24, v19);
    v26 = *(v21 + 8);
    v1[33] = v26;
    v1[34] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v19, v22);
    v27 = (v25)(v19, v20, v22);
    (*(*v23 + 248))(v27);
    v1[35] = v1[3];
    v31 = (*MEMORY[0x277D39E80] + MEMORY[0x277D39E80]);
    v28 = swift_task_alloc();
    v1[36] = v28;
    *v28 = v1;
    v28[1] = SagePegasusProxy.search(searchRequest:clientEntities:);
    v29 = v1[24];
    v30 = v1[19];

    return v31(v30, v29);
  }

  else
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.sage);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2232BB000, v12, v13, "Network is unavailable, unable to complete search", v14, 2u);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

{
  v55 = v1;
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v6 = *(v5 + 104);
  v6(v3, *MEMORY[0x277D39270], v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (*(v1 + 32) == *(v1 + 40))
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 144);
    v9 = *(v1 + 152);
    v10 = *(v1 + 128);
    v11 = *(v1 + 136);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sage);
    (*(v11 + 16))(v8, v9, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v1 + 208);
    v16 = *(v1 + 216);
    v18 = *(v1 + 200);
    v20 = *(v1 + 136);
    v19 = *(v1 + 144);
    v21 = *(v1 + 128);
    if (v15)
    {
      v52 = *(v1 + 200);
      v22 = swift_slowAlloc();
      v49 = v14;
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      v24 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter();
      v50 = v16;
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v13, v49, "Pegasus: PegasusResponse: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223DE0F80](v23, -1, -1);
      MEMORY[0x223DE0F80](v22, -1, -1);

      (*(v17 + 8))(v50, v52);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }

    v42 = *(v1 + 152);
    v43 = *(v1 + 136);
    v44 = *(v1 + 128);
    v45 = *(v1 + 64);
    (*(v1 + 248))(v45, *(v1 + 192), *(v1 + 160));
    v46 = type metadata accessor for PegasusSearchResponse(0);
    (*(v43 + 32))(v45 + *(v46 + 20), v42, v44);

    v41 = *(v1 + 8);
  }

  else
  {
    v51 = *(v1 + 136);
    v53 = *(v1 + 208);
    v29 = *(v1 + 112);
    v28 = *(v1 + 120);
    v30 = *(v1 + 96);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    v6(v29, *MEMORY[0x277D39268], v30);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7(v29, v30);
    v7(v28, v30);
    v31 = *(v1 + 48);
    v32 = *(v1 + 56);
    lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
    swift_allocError();
    v34 = *(v1 + 264);
    v48 = *(v1 + 216);
    v36 = *(v1 + 192);
    v35 = *(v1 + 200);
    v38 = *(v1 + 152);
    v37 = *(v1 + 160);
    v39 = *(v1 + 128);
    if (v31 == v32)
    {
      v40 = 11;
    }

    else
    {
      v40 = 0;
    }

    *v33 = v40;
    swift_willThrow();
    (*(v51 + 8))(v38, v39);
    v34(v36, v37);
    (*(v53 + 8))(v48, v35);

    v41 = *(v1 + 8);
  }

  return v41();
}

uint64_t SagePegasusProxy.search(searchRequest:clientEntities:)()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = SagePegasusProxy.search(searchRequest:clientEntities:);
  }

  else
  {
    v2 = SagePegasusProxy.search(searchRequest:clientEntities:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v0 + 264))(*(v0 + 192), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v75 = a3;
  v78 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v78);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Date();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v83 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v73 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = v72 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v72 - v14;
  v16 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v81 = v15;
  v88 = v3;
  v84 = v6;
  v19 = type metadata accessor for OSSignposter();
  v79 = __swift_project_value_buffer(v19, static Signposter.sage);
  v80 = v18;
  v20 = OSSignposter.begin(name:context:)("proxy.constructSearchRequest", 28, 2u, 0, v18);
  if (one-time initialization token for shared != -1)
  {
    v20 = swift_once();
  }

  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v20);
  v69[0] = v88;
  v69[1] = v89;
  v74 = a2;
  v70 = a2;
  Date.init()();
  v22 = *(*v21 + 200);
  v23 = *v21 + 200;
  v70 = &v68;
  v71 = v9;
  v24 = v22;
  LOBYTE(v69[0]) = 2;
  v25 = v81;
  v26 = v86;
  v90 = v23;
  (v22)(0xD000000000000024, 0x80000002234E1A50, 0, v8, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 63, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v69[0], partial apply for closure #1 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
  v76 = v26;
  v27 = v93 + 8;
  v86 = *(v93 + 8);
  (v86)(v8, v91);
  type metadata accessor for PommesSearchRequest(0);
  v87 = v9;
  v85 = v24;
  v28 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.setter();
  v28(v92, 0);
  Date.init()();
  v29 = v88;
  LOBYTE(v69[0]) = 2;
  v82 = v21;
  v30 = v76;
  v85(v92, 0xD000000000000016, 0x80000002234E0930, 0, v8, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 68, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v69[0], partial apply for closure #2 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:), v88, MEMORY[0x277D839B0]);
  v76 = v8;
  v93 = v27;
  (v86)(v8, v91);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.setter();
  AFIsHorseman();
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.setter();
  v31 = v84;
  Date.init()();
  v32 = v78;
  v33 = v31 + v78[5];
  *v33 = "SiriInformationSearch/SagePegasusProxy.swift";
  *(v33 + 8) = 44;
  v34 = v31;
  *(v33 + 16) = 2;
  *(v31 + v32[6]) = 73;
  v35 = v31 + v32[7];
  *v35 = "constructSearchRequest(pommesSearchRequest:queryContext:)";
  *(v35 + 8) = 57;
  *(v35 + 16) = 2;
  v36 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000031, 0x80000002234E0950);
  v37 = (v31 + v32[8]);
  *v37 = v36;
  v37[1] = v38;
  v39 = v29;
  v40 = v29[7];
  v41 = v77;
  (*(*v40 + 344))(v25, v89);
  if (v30)
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v34, type metadata accessor for PerformanceUtil.Ticket);
    (*(v83 + 8))(v25, v87);
    v42 = v80;
    OSSignposter.end(token:message:)(v80, 0, 0xE000000000000000);
    return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v42, type metadata accessor for SignpostToken);
  }

  else
  {
    v44 = *(v83 + 40);
    v77 = 0;
    v78 = v44;
    v45 = v87;
    (v44)(v25, v41);
    v46 = (*(*v82 + 184))(v34, 0);
    v72[1] = v72;
    MEMORY[0x28223BE20](v46);
    LODWORD(v69[0]) = v29;
    v47 = v76;
    Date.init()();
    v70 = &v68;
    v71 = v45;
    LOBYTE(v69[0]) = 2;
    v48 = v73;
    v49 = v77;
    (v85)(0xD00000000000002DLL, 0x80000002234E0B10, 0, v47, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 77, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v69[0], partial apply for closure #3 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    v89 = v49;
    (v86)(v47, v91);
    (v78)(v25, v48, v87);
    v50 = (*(*v29 + 80))(v25);
    v78 = v72;
    MEMORY[0x28223BE20](v50);
    Date.init()();
    v77 = (MEMORY[0x277D84F78] + 8);
    v70 = v69;
    v71 = MEMORY[0x277D84F78] + 8;
    LOBYTE(v69[0]) = 2;
    v51 = v89;
    v52 = v85;
    (v85)(0xD000000000000018, 0x80000002234E0BE0, 0, v47, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 87, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v69[0], partial apply for closure #4 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    v74 = v51;
    v53 = v91;
    v54 = v86;
    v55 = (v86)(v47, v91);
    v89 = v72;
    MEMORY[0x28223BE20](v55);
    Date.init()();
    v70 = v69;
    v71 = v77;
    LOBYTE(v69[0]) = 2;
    v52(0xD000000000000019, 0x80000002234E0A10, 0, v47, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 91, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v69[0], partial apply for closure #5 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    (v54)(v47, v53);
    (*(*v39 + 96))(v25, v40);
    v56 = specialized static PegasusOverrideUtil.requestFeatureFlag.getter();
    if (v57)
    {
      v58 = v56;
      v59 = v57;
      if (one-time initialization token for sage != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.sage);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v92[0] = v64;
        *v63 = 136315138;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v92);
        _os_log_impl(&dword_2232BB000, v61, v62, "Using override Pegasus request feature flag “%s”", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        v25 = v81;
        MEMORY[0x223DE0F80](v64, -1, -1);
        MEMORY[0x223DE0F80](v63, -1, -1);
      }

      Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.setter();
    }

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v84, type metadata accessor for PerformanceUtil.Ticket);
    v65 = v83;
    v66 = v87;
    (*(v83 + 16))(v75, v25, v87);
    (*(v65 + 8))(v25, v66);
    v67 = v80;
    OSSignposter.end(token:message:)(v80, 0, 0xE000000000000000);
    return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v67, type metadata accessor for SignpostToken);
  }
}

uint64_t closure #1 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 248))(&v4);
  type metadata accessor for PommesSearchRequest(0);
  dispatch thunk of PegasusProxyForIntelligenceFlow.createRequest(query:context:)();
}

uint64_t closure #3 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 56);
  (*(v9 + 16))(v11, a2, v8);
  (*(*v12 + 432))(v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall SagePegasusProxy.prepareForSearchAtSessionStart()()
{
  v1 = type metadata accessor for PerformanceUtil.Ticket(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ((*v0)[29])(0, 0);
  Date.init()();
  v5 = &v4[v2[7]];
  *v5 = "SiriInformationSearch/SagePegasusProxy.swift";
  *(v5 + 1) = 44;
  v5[16] = 2;
  *&v4[v2[8]] = 113;
  v6 = &v4[v2[9]];
  *v6 = "prepareForSearchAtSessionStart()";
  *(v6 + 1) = 32;
  v6[16] = 2;
  v7 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000026, 0x80000002234E0660);
  v8 = &v4[v2[10]];
  *v8 = v7;
  v8[1] = v9;
  (*(*v0[7] + 312))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = (*(*static PerformanceUtil.shared + 184))(v4, 0);
  ((*v0)[31])(&v12, v10);
  dispatch thunk of BasePegasusProxy.warmUpConnectionIfNeeded()();

  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v4, type metadata accessor for PerformanceUtil.Ticket);
}

char *SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, v18, a6, a7, v22[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t SagePegasusProxy.__deallocating_deinit()
{
  specialized SearchToolPegasusProxy.deinit();

  return swift_deallocClassInstance();
}

char *vtable thunk for SearchToolPegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:) dispatching to SagePegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v12 = *a1;
  type metadata accessor for SagePegasusProxy(0);
  v13 = swift_allocObject();
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v12, a2, a3, a4, v18, a6, v23, v13, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

char *specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a6;
  v30 = a8;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a9 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  (*(v17 + 32))(&v25 - v21, a5, a9);
  (*(v13 + 16))(v16, a7, v12);
  (*(v17 + 16))(v20, v22, a9);
  v23 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v25, v26, v27, v28, v20, v29, v16, v30, a9, a10);
  (*(v13 + 8))(a7, v12);
  (*(v17 + 8))(v22, a9);
  return v23;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode)
  {
    type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode);
  }

  return result;
}

uint64_t partial apply for closure #2 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 352))();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for SagePegasusProxy(uint64_t a1)
{
  result = type metadata singleton initialization cache for SagePegasusProxy;
  if (!type metadata singleton initialization cache for SagePegasusProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SagePegasusProxy.search(searchRequest:clientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v10(a1, a2, a3);
}

void *RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v181 = *(v182 - 8);
  v5 = MEMORY[0x28223BE20](v182);
  v184 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v180 = &v168 - v8;
  MEMORY[0x28223BE20](v7);
  v179 = &v168 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v172 = &v168 - v11;
  v199 = type metadata accessor for UsoIdentifier();
  v205 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v186 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v212 = &v168 - v23;
  v208 = type metadata accessor for Siri_Nlu_External_Span();
  v196 = *(v208 - 8);
  v24 = MEMORY[0x28223BE20](v208);
  v178 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v177 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v204 = &v168 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v203 = &v168 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v192 = (&v168 - v33);
  MEMORY[0x28223BE20](v32);
  v197 = &v168 - v34;
  v35 = *(Siri_Nlu_External_Span.matcherNames.getter() + 16);

  if (!v35)
  {
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_25;
  }

  v171 = v15;
  v183 = v14;
  v169 = a2;
  v170 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV11MatcherNameOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV11MatcherNameOGMR);
  v36 = *(v19 + 72);
  v37 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2234CF940;
  v187 = v37;
  v39 = *(v19 + 104);
  v39(v38 + v37, *MEMORY[0x277D5DA10], v18);
  v40 = *MEMORY[0x277D5DA20];
  v211 = v36;
  v39(v38 + v37 + v36, v40, v18);
  v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E18_Nlu_External_SpanV11MatcherNameO_Tt0g5Tf4g_n(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = MEMORY[0x277D84F90];
  v206 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C18_Nlu_External_SpanVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v43 = Siri_Nlu_External_Span.matcherNames.getter();
  v44 = *(v43 + 16);
  v207 = v13;
  v190 = v44;
  if (!v44)
  {
    v198 = v42;
    v47 = v199;
LABEL_29:

    v68 = v198;
    v195 = *(v198 + 16);
    if (!v195)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v160 = type metadata accessor for Logger();
      __swift_project_value_buffer(v160, static Logger.pommes);
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_2232BB000, v161, v162, "RRReferenceResolverProtocol: no MARRS spans", v163, 2u);
        MEMORY[0x223DE0F80](v163, -1, -1);
      }

      goto LABEL_93;
    }

    type metadata accessor for UsoEntityBuilder_common_ReferenceType();
    swift_allocObject();
    v69 = UsoEntityBuilder_common_ReferenceType.init()();
    v70 = v175;
    v71 = v174;
    v72 = v176;
    (*(v175 + 104))(v174, *MEMORY[0x277D5EE50], v176);
    v212 = v69;
    dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
    v73 = (*(v70 + 8))(v71, v72);
    v74 = 0;
    v75 = 0;
    v194 = v68 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
    v210 = (v196 + 16);
    v193 = (v171 + 8);
    v192 = (v196 + 8);
    v211 = (v205 + 16);
    v200 = (v196 + 32);
    v76 = (v205 + 8);
    v197 = (v196 + 40);
    v73.n128_u64[0] = 136315138;
    v188 = v73;
    v77 = v183;
    v78 = v186;
    while (1)
    {
      if (v74 >= *(v198 + 16))
      {
        goto LABEL_101;
      }

      v202 = *(v196 + 72);
      v209 = *(v196 + 16);
      v209(v203, v194 + v202 * v74, v208);
      Siri_Nlu_External_Span.usoGraph.getter();
      v79 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v75)
      {
        v80 = v75;
        v201 = v74;
        (*v193)(v78, v77);
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        __swift_project_value_buffer(v81, static Logger.pommes);
        v82 = v75;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v77;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v214 = v87;
          *v86 = v188.n128_u32[0];
          v213 = v80;
          v88 = v80;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v89 = String.init<A>(describing:)();
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v214);
          v47 = v199;

          *(v86 + 4) = v91;
          _os_log_impl(&dword_2232BB000, v83, v84, "Skipping span due to error: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v87);
          v92 = v87;
          v78 = v186;
          MEMORY[0x223DE0F80](v92, -1, -1);
          v93 = v86;
          v77 = v85;
          MEMORY[0x223DE0F80](v93, -1, -1);
        }

        else
        {
        }

        (*v192)(v203, v208);
        v74 = v201;
        v75 = 0;
        goto LABEL_33;
      }

      v94 = v79;
      (*v193)(v78, v77);
      v95 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
      if (v95)
      {
        v190 = v94;
        v191 = 0;
        v201 = v74;
        v189 = v95;
        v96 = UsoEntity.usoIdentifiers.getter();
        v97 = v96;
        v98 = *(v96 + 16);
        if (v98)
        {
          v99 = 0;
          v100 = v96 + ((v205[80] + 32) & ~v205[80]);
          do
          {
            if (v99 >= *(v97 + 16))
            {
              __break(1u);
              goto LABEL_97;
            }

            (*(v205 + 2))(v13, v100 + *(v205 + 9) * v99, v47);
            dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
            v101 = UsoIdentifier.namespace.getter();
            if (!v102)
            {
LABEL_43:
              (*v76)(v13, v47);
              goto LABEL_44;
            }

            if (v101 == 0x64695F6D657469 && v102 == 0xE700000000000000)
            {
            }

            else
            {
              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v103 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            v104 = UsoIdentifier.value.getter();
            v106 = v105;
            v209(v204, v203, v208);
            v107 = v206;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v214 = v107;
            v109 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v106);
            v111 = *(v107 + 16);
            v112 = (v110 & 1) == 0;
            v113 = __OFADD__(v111, v112);
            v114 = v111 + v112;
            if (v113)
            {
              goto LABEL_98;
            }

            v115 = v110;
            if (*(v107 + 24) >= v114)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v118 = v109;
                specialized _NativeDictionary.copy()();
                v109 = v118;
                if (v115)
                {
LABEL_57:
                  v117 = v109;

                  v206 = v214;
                  (*v197)(v214[7] + v117 * v202, v204, v208);
                  v13 = v207;
                  v47 = v199;
                  (*v76)(v207, v199);
                  goto LABEL_44;
                }

                goto LABEL_59;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, isUniquelyReferenced_nonNull_native);
              v109 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v106);
              if ((v115 & 1) != (v116 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }
            }

            if (v115)
            {
              goto LABEL_57;
            }

LABEL_59:
            v119 = v214;
            v214[(v109 >> 6) + 8] |= 1 << v109;
            v120 = (v119[6] + 16 * v109);
            *v120 = v104;
            v120[1] = v106;
            (*v200)(v119[7] + v109 * v202, v204, v208);
            v13 = v207;
            v47 = v199;
            (*v76)(v207, v199);
            v121 = v119[2];
            v113 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v113)
            {
              goto LABEL_100;
            }

            v206 = v119;
            v119[2] = v122;
LABEL_44:
            ++v99;
          }

          while (v98 != v99);
        }

        (*v192)(v203, v208);
        v77 = v183;
        v78 = v186;
        v74 = v201;
        v75 = v191;
      }

      else
      {
        (*v192)(v203, v208);
      }

LABEL_33:
      if (++v74 == v195)
      {

        type metadata accessor for UsoEntityBuilder_uso_NoEntity();
        swift_allocObject();
        v123 = UsoEntityBuilder_uso_NoEntity.init()();

        dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

        v124 = MEMORY[0x223DDCA80](v123);
        if (v124)
        {
          v125 = v124;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v126 = type metadata accessor for Logger();
          __swift_project_value_buffer(v126, static Logger.pommes);

          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.debug.getter();

          v129 = os_log_type_enabled(v127, v128);
          v204 = v123;
          v205 = v125;
          if (v129)
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v214 = v131;
            *v130 = v188.n128_u32[0];
            v132 = type metadata accessor for UsoBuilderOptions();
            v133 = v172;
            (*(*(v132 - 8) + 56))(v172, 1, 1, v132);
            static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();
            outlined destroy of MediaUserStateCenter?(v133, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
            v134 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
            v136 = v135;

            v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, &v214);
            v125 = v205;

            *(v130 + 4) = v137;
            _os_log_impl(&dword_2232BB000, v127, v128, "Created entity for SRR: %s", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v131);
            MEMORY[0x223DE0F80](v131, -1, -1);
            MEMORY[0x223DE0F80](v130, -1, -1);
          }

          v138 = specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v173, 0, v125, v169, v170);
          v139 = MEMORY[0x277D84F90];
          if (v138)
          {
            v140 = v138;
          }

          else
          {
            v140 = MEMORY[0x277D84F90];
          }

          v141 = *(v140 + 2);
          v203 = v140;
          if (v141)
          {
            v211 = type metadata accessor for RREntity();
            v142 = *(v211 - 8);
            v143 = &v140[(*(v142 + 80) + 32) & ~*(v142 + 80)];
            v144 = *(v142 + 72);
            v207 = (v142 + 16);
            do
            {
              v145 = RREntity.id.getter();
              v147 = v206;
              if (*(v206 + 16))
              {
                v148 = specialized __RawDictionaryStorage.find<A>(_:)(v145, v146);
                v150 = v149;

                if (v150)
                {
                  v151 = v178;
                  v152 = v208;
                  v209(v178, *(v147 + 56) + v148 * v202, v208);
                  v153 = *v200;
                  v154 = v177;
                  (*v200)(v177, v151, v152);
                  v155 = *(v182 + 48);
                  v156 = v180;
                  v153(v180, v154, v152);
                  (*v207)(v156 + v155, v143, v211);
                  v157 = v179;
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v156, v179);
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v157, v184);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139);
                  }

                  v159 = v139[2];
                  v158 = v139[3];
                  if (v159 >= v158 >> 1)
                  {
                    v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v139);
                  }

                  v139[2] = v159 + 1;
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v184, v139 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v159);
                }
              }

              else
              {
              }

              v143 += v144;
              --v141;
            }

            while (v141);
          }

          return v139;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v164 = type metadata accessor for Logger();
        __swift_project_value_buffer(v164, static Logger.pommes);
        v161 = Logger.logObject.getter();
        v165 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v161, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_2232BB000, v161, v165, "RRReferenceResolverProtocol: Failed to create entity for MARRS spans", v166, 2u);
          MEMORY[0x223DE0F80](v166, -1, -1);
        }

LABEL_93:

        return MEMORY[0x277D84F90];
      }
    }
  }

  v45 = 0;
  v189 = v196 + 16;
  v209 = (v41 + 56);
  v210 = (v19 + 16);
  v46 = (v19 + 8);
  v191 = (v196 + 32);
  v198 = MEMORY[0x277D84F90];
  v185 = (v196 + 8);
  v47 = v199;
  v188.n128_u64[0] = v43;
LABEL_7:
  if (v45 >= *(v43 + 16))
  {
    goto LABEL_99;
  }

  v194 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  v48 = *(v196 + 72);
  v195 = v45;
  v193 = v48;
  (*(v196 + 16))(v197, v43 + v194 + v48 * v45, v208);
  v49 = Siri_Nlu_External_Span.matcherNames.getter();
  v200 = *(v49 + 16);
  if (!v200)
  {

LABEL_5:
    (*v185)(v197, v208);
    goto LABEL_6;
  }

  v50 = 0;
  v201 = v49 + v187;
  v202 = v49;
  while (v50 < *(v49 + 16))
  {
    v51 = *v210;
    (*v210)(v212, v201 + v50 * v211, v18);
    if (*(v41 + 16))
    {
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA38]);
      v52 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v53 = -1 << *(v41 + 32);
      v54 = v52 & ~v53;
      if ((*(v209 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        while (1)
        {
          v56 = v41;
          v51(v22, *(v41 + 48) + v54 * v211, v18);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA40]);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          v58 = *v46;
          (*v46)(v22, v18);
          if (v57)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          v41 = v56;
          if (((*(v209 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v58(v212, v18);
        v59 = *v191;
        (*v191)(v192, v197, v208);
        v60 = v198;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v214 = v60;
        v13 = v207;
        if ((v61 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1);
          v60 = v214;
        }

        v41 = v56;
        v63 = *(v60 + 16);
        v62 = *(v60 + 24);
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v60 = v214;
        }

        *(v60 + 16) = v63 + 1;
        v198 = v60;
        v59((v60 + v194 + v63 * v193), v192, v208);
        v47 = v199;
LABEL_6:
        v45 = v195 + 1;
        v43 = v188.n128_u64[0];
        if (v195 + 1 == v190)
        {
          goto LABEL_29;
        }

        goto LABEL_7;
      }
    }

LABEL_10:
    ++v50;
    (*v46)(v212, v18);
    v13 = v207;
    v49 = v202;
    if (v50 == v200)
    {

      v47 = v199;
      goto LABEL_5;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  swift_once();
LABEL_25:
  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.pommes);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_2232BB000, v65, v66, "RRReferenceResolverProtocol: delegatedUDA has no matchingSpans", v67, 2u);
    MEMORY[0x223DE0F80](v67, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t RRReferenceResolverProtocol.extractOnScreenContext()(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v63 = a1;
  v74 = type metadata accessor for RREntity();
  v2 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SaySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  swift_allocObject();
  v10 = UsoEntityBuilder_common_ReferenceType.init()();
  (*(v6 + 104))(v8, *MEMORY[0x277D5EE50], v5);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  v11 = (*(v6 + 8))(v8, v5);
  v12 = 0;
  v61 = v2;
  v72 = (v2 + 8);
  v73 = v2 + 16;
  v13 = v9;
  v62 = 0x80000002234D9340;
  v59 = 0x80000002234D9320;
  v11.n128_u64[0] = 136315138;
  v57 = v11;
  v11.n128_u64[0] = 136315394;
  v58 = v11;
  v60 = v10;
  do
  {
    v14 = outlined read-only object #0 of RRReferenceResolverProtocol.extractOnScreenContext()[v12 + 32];
    if (outlined read-only object #0 of RRReferenceResolverProtocol.extractOnScreenContext()[v12 + 32])
    {
      if (v14 == 1)
      {
        type metadata accessor for UsoEntityBuilder_common_Uri();
        swift_allocObject();
        v15 = UsoEntityBuilder_common_Uri.init()();
      }

      else
      {
        type metadata accessor for UsoEntityBuilder_common_AppEntity();
        swift_allocObject();
        v15 = UsoEntityBuilder_common_AppEntity.init()();
      }
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_App();
      swift_allocObject();
      v15 = UsoEntityBuilder_common_App.init()();
    }

    v16 = v15;

    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

    v17 = MEMORY[0x223DDCA80](v16);
    if (v17)
    {
      v69 = v14;
      v71 = v16;
      v18 = MEMORY[0x277D84F90];
      v76 = MEMORY[0x277D84F90];
      v68 = v17;
      v19 = specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v65, 1, v17, v63, v64);
      if (!v19)
      {
        v19 = v18;
      }

      v20 = v19[2];
      v70 = v12;
      if (v20)
      {
        v66 = v19;
        v67 = v13;
        v21 = v19 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v22 = *(v61 + 72);
        v23 = *(v61 + 16);
        do
        {
          v24 = v74;
          v23(v4, v21, v74);
          v25 = RREntity.id.getter();
          v27 = v26;
          (*v72)(v4, v24);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
          }

          v29 = *(v18 + 2);
          v28 = *(v18 + 3);
          if (v29 >= v28 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v18);
          }

          *(v18 + 2) = v29 + 1;
          v30 = &v18[16 * v29];
          *(v30 + 4) = v25;
          *(v30 + 5) = v27;
          v76 = v18;
          swift_endAccess();
          v21 += v22;
          --v20;
        }

        while (v20);

        v13 = v67;
        v12 = v70;
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v13;
      v39 = v69;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v69, isUniquelyReferenced_nonNull_native);
      v13 = v75[0];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.pommes);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v75[0] = v44;
        *v43 = v58.n128_u32[0];
        v45 = 0xD000000000000011;
        if (v39 == 1)
        {
          v45 = 0x6E65657263536E6FLL;
        }

        v46 = 0xEB00000000495255;
        if (v39 != 1)
        {
          v46 = v62;
        }

        if (v39)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0xD000000000000013;
        }

        if (v39)
        {
          v48 = v46;
        }

        else
        {
          v48 = v59;
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v75);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;

        v51 = MEMORY[0x223DDF850](v50, MEMORY[0x277D837D0]);
        v53 = v52;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v75);

        *(v43 + 14) = v54;
        _os_log_impl(&dword_2232BB000, v41, v42, "RRReferenceResolverProtocol: [ExtractOnScreenContext][%s] Found %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v44, -1, -1);
        MEMORY[0x223DE0F80](v43, -1, -1);

        v12 = v70;
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.pommes);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v71 = v16;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v75[0] = v35;
        *v34 = v57.n128_u32[0];
        if (v14)
        {
          if (v14 == 1)
          {
            v36 = 0x6E65657263536E6FLL;
          }

          else
          {
            v36 = 0xD000000000000011;
          }

          if (v14 == 1)
          {
            v37 = 0xEB00000000495255;
          }

          else
          {
            v37 = v62;
          }
        }

        else
        {
          v36 = 0xD000000000000013;
          v37 = v59;
        }

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v75);

        *(v34 + 4) = v55;
        _os_log_impl(&dword_2232BB000, v32, v33, "RRReferenceResolverProtocol: [ExtractOnScreenContext][%s] Failed to extract context due to USO entity conversion failure", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x223DE0F80](v35, -1, -1);
        MEMORY[0x223DE0F80](v34, -1, -1);
      }
    }

    ++v12;
  }

  while (v12 != 3);

  return v13;
}

Swift::String_optional __swiftcall RRReferenceResolverProtocol.retrieveOnScreenAppBundleId()()
{
  v176 = v0;
  v1 = type metadata accessor for RRMetadata();
  v177 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v171 = v151 - v5;
  v6 = type metadata accessor for RREntity();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v160 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v161 = v151 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v162 = v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v167 = v151 - v14;
  v166 = type metadata accessor for RRCandidate();
  v168 = *(v166 - 8);
  v15 = MEMORY[0x28223BE20](v166);
  v159 = v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v163 = v151 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v165 = v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v151 - v24;
  MEMORY[0x28223BE20](v23);
  v172 = (v151 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  MEMORY[0x28223BE20](v27);
  v29 = (v151 - v28);
  v30 = type metadata accessor for RRResult();
  v31 = *(v30 - 8);
  v173 = v30;
  v174 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v180 = (v151 - v35);
  type metadata accessor for UsoEntityBuilder_common_App();
  swift_allocObject();
  UsoEntityBuilder_common_App.init()();
  v36 = MEMORY[0x223DDCA80]();

  if (!v36)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_72:
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.pommes);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2232BB000, v48, v49, "RRReferenceResolverProtocol: #retrieveOnScreenAppBundleId failed to create App from builder", v50, 2u);
      MEMORY[0x223DE0F80](v50, -1, -1);
    }

    goto LABEL_68;
  }

  v164 = v7;
  v182 = MEMORY[0x277D84F90];
  type metadata accessor for ResolveQuery();
  swift_allocObject();

  ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)();
  dispatch thunk of RRReferenceResolverProtocol.resolve(query:)();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v29;
    v181 = *v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.pommes);
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v181 = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v181);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2232BB000, v40, v41, "#retrieveOnScreenAppBundleId reference resolution failed with error: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223DE0F80](v43, -1, -1);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

    else
    {
    }

LABEL_68:
    v143 = 0;
    v144 = 0;
    goto LABEL_75;
  }

  v51 = v174;
  v52 = v180;
  v53 = v29;
  v54 = v173;
  (*(v174 + 32))(v180, v53, v173);
  (*(v51 + 16))(v34, v52, v54);
  v55 = (*(v51 + 88))(v34, v54);
  v56 = v55 == *MEMORY[0x277D5FEC0];
  v158 = v6;
  v175 = v4;
  v157 = v36;
  if (v56)
  {
    v176 = v1;
    (*(v51 + 96))(v34, v54);
    v57 = v168;
    v58 = v172;
    v1 = v166;
    v178 = *(v168 + 32);
    v179 = v168 + 32;
    (v178)(v172, v34, v166);
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

  if (v55 == *MEMORY[0x277D5FED0])
  {
    (*(v51 + 96))(v34, v54);
    v70 = *v34;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.pommes);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v25 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v181 = v74;
      *v25 = 136315138;
      v75 = MEMORY[0x223DDF850](v70, v166);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v181);
      v54 = v173;

      *(v25 + 4) = v77;
      _os_log_impl(&dword_2232BB000, v72, v73, "#retrieveOnScreenAppBundleId found multiple matches: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }

    v58 = v164;
    v78 = v171;
    specialized Array.append<A>(contentsOf:)(v70);
    (*(v174 + 8))(v180, v54);
  }

  else
  {
    if (v55 == *MEMORY[0x277D5FEC8] || v55 == *MEMORY[0x277D5FED8] || v55 != *MEMORY[0x277D5FEE0])
    {
      v91 = *(v51 + 8);
      v91(v34, v54);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.pommes);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      v95 = os_log_type_enabled(v93, v94);
      v78 = v171;
      if (v95)
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_2232BB000, v93, v94, "#retrieveOnScreenAppBundleId unknown/unsupported result type", v96, 2u);
        MEMORY[0x223DE0F80](v96, -1, -1);
      }

      v91(v180, v54);
    }

    else
    {
      v78 = v171;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, static Logger.pommes);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = v51;
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_2232BB000, v87, v88, "#retrieveOnScreenAppBundleId no app on screen", v90, 2u);
        MEMORY[0x223DE0F80](v90, -1, -1);

        (*(v89 + 8))(v180, v54);
      }

      else
      {

        (*(v51 + 8))(v180, v54);
      }
    }

    v58 = v164;
  }

  v85 = v166;
  while (1)
  {
    v97 = v182;
    v98 = v182[2];
    if (!v98)
    {
      v115 = 1;
      v57 = v168;
      goto LABEL_57;
    }

    v99 = 0;
    v57 = v168;
    v100 = v182 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v156 = v58 + 1;
    v174 = v177 + 16;
    LODWORD(v173) = *MEMORY[0x277D5FE90];
    v101 = *MEMORY[0x277D5FDF0];
    LODWORD(v171) = *MEMORY[0x277D5FE78];
    v151[0] = v168 + 8;
    v155 = v182;
    v153 = v98;
    v152 = v100;
    v151[1] = v168 + 16;
    v172 = (v177 + 104);
    LODWORD(v170) = v101;
    v169 = (v177 + 8);
LABEL_45:
    if (v99 < v97[2])
    {
      break;
    }

    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.pommes);
    v169 = *(v57 + 16);
    v169(v25, v58, v1);
    v60 = v57;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v181 = v64;
      *v63 = 136315138;
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = *(v60 + 8);
      v68(v25, v1);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v181);
      v58 = v172;

      *(v63 + 4) = v69;
      _os_log_impl(&dword_2232BB000, v61, v62, "#retrieveOnScreenAppBundleId found match: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x223DE0F80](v64, -1, -1);
      MEMORY[0x223DE0F80](v63, -1, -1);
    }

    else
    {

      v68 = *(v60 + 8);
      v68(v25, v1);
    }

    v79 = v170;
    v78 = v171;
    v169(v170, v58, v1);
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v82 = v80[2];
    v81 = v80[3];
    v1 = v176;
    v83 = v173;
    if (v82 >= v81 >> 1)
    {
      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v80);
    }

    v25 = v168;
    v84 = v166;
    v68(v172, v166);
    (*(v174 + 8))(v180, v83);
    v80[2] = v82 + 1;
    v85 = v84;
    (v178)(v80 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v82, v79, v84);
    v182 = v80;
    v58 = v164;
  }

  v154 = v99 + 1;
  (*(v57 + 16))(v165, &v100[*(v57 + 72) * v99], v85);
  v102 = v161;
  RRCandidate.entity.getter();
  v103 = RREntity.metadata.getter();
  (*v156)(v102, v158);
  v104 = 0;
  v180 = v103;
  v176 = v103[2];
  while (v176 != v104)
  {
    if (v104 >= v180[2])
    {
      __break(1u);
      goto LABEL_72;
    }

    v105 = v177;
    v106 = v180 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v107 = *(v177 + 72);
    v178 = v104;
    (*(v177 + 16))(v78, &v106[v107 * v104], v1);
    v108 = v101;
    v109 = type metadata accessor for RRDataSourceMetadataValue();
    v110 = *(*(v109 - 8) + 104);
    v111 = v175;
    v110(v175, v173, v109);
    v112 = *(v105 + 104);
    v112(v111, v108, v1);
    LODWORD(v179) = static RRMetadata.== infix(_:_:)();
    v113 = *(v105 + 8);
    v113(v111, v1);
    if (v179)
    {

      v113(v78, v1);
      goto LABEL_56;
    }

    v114 = v178 + 1;
    v110(v111, v171, v109);
    v101 = v170;
    v112(v111, v170, v1);
    v25 = static RRMetadata.== infix(_:_:)();
    v113(v111, v1);
    v113(v78, v1);
    v104 = v114;
    if (v25)
    {

LABEL_56:
      v57 = v168;
      v85 = v166;
      (*(v168 + 32))(v167, v165, v166);
      v115 = 0;
      v58 = v164;
      goto LABEL_57;
    }
  }

  v85 = v166;
  (*v151[0])(v165, v166);

  v115 = 1;
  v99 = v154;
  v58 = v164;
  v57 = v168;
  v97 = v155;
  v100 = v152;
  if (v154 != v153)
  {
    goto LABEL_45;
  }

LABEL_57:
  v116 = *(v57 + 56);
  v117 = v167;
  v116(v167, v115, 1, v85);

  v118 = v168;
  v119 = v162;
  outlined init with copy of RRCandidate?(v117, v162);
  if ((*(v118 + 48))(v119, 1, v85) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v119, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    __swift_project_value_buffer(v120, static Logger.pommes);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_2232BB000, v121, v122, "#retrieveOnScreenAppBundleId foreground App not found", v123, 2u);
      MEMORY[0x223DE0F80](v123, -1, -1);
    }

    else
    {
    }

    outlined destroy of MediaUserStateCenter?(v167, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    goto LABEL_68;
  }

  v124 = v163;
  (*(v118 + 32))(v163, v119, v85);
  v125 = v85;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  __swift_project_value_buffer(v126, static Logger.pommes);
  v127 = v159;
  (*(v118 + 16))(v159, v124, v85);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v179 = v130;
    v180 = swift_slowAlloc();
    v181 = v180;
    *v130 = 136315138;
    v131 = v160;
    RRCandidate.entity.getter();
    v132 = RREntity.appBundleId.getter();
    v134 = v133;
    v135 = v158;
    (*(v164 + 1))(v131, v158);
    v136 = *(v118 + 8);
    v136(v127, v125);
    v137 = v125;
    v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v181);

    v139 = v179;
    *(v179 + 4) = v138;
    v140 = v131;
    _os_log_impl(&dword_2232BB000, v128, v129, "#retrieveOnScreenAppBundleId onscreen app bundleId=%s", v139, 0xCu);
    v141 = v180;
    __swift_destroy_boxed_opaque_existential_1(v180);
    MEMORY[0x223DE0F80](v141, -1, -1);
    v142 = v139;
    v58 = v164;
    MEMORY[0x223DE0F80](v142, -1, -1);
  }

  else
  {

    v136 = *(v118 + 8);
    v136(v127, v85);
    v135 = v158;
    v140 = v160;
    v137 = v125;
  }

  v145 = v140;
  v146 = v163;
  RRCandidate.entity.getter();
  v147 = RREntity.appBundleId.getter();
  v149 = v148;

  v58[1](v145, v135);
  v136(v146, v137);
  outlined destroy of MediaUserStateCenter?(v167, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v144 = v149;
  v143 = v147;
LABEL_75:
  result.value._object = v144;
  result.value._countAndFlagsBits = v143;
  return result;
}

uint64_t EmptyReferenceResolver.resolve(reference:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = type metadata accessor for RRResult();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for RRReferenceResolverProtocol.resolve(reference:) in conformance EmptyReferenceResolver@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = type metadata accessor for RRResult();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);

  return swift_storeEnumTagMultiPayload();
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt16VGMd, &_ss11_SetStorageCys6UInt16VGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 2 * v4);
      result = MEMORY[0x223DE0350](v7, *(v6 + 2 * v4), 2);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 2 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 2 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E18_Nlu_External_SpanV11MatcherNameO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C18_Nlu_External_SpanV11MatcherNameOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C18_Nlu_External_SpanV11MatcherNameOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA38]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA40]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined init with take of (Siri_Nlu_External_Span, RREntity)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of RRCandidate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DA90]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DA98]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11DeviceClassO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for DeviceClass();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities11DeviceClassOGMd, &_ss11_SetStorageCy13SiriUtilities11DeviceClassOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8], MEMORY[0x277D61BD0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8], MEMORY[0x277D61BD8]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39540]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = __CocoaSet.count.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v47 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v43 = v5;
    while (1)
    {
      v15 = MEMORY[0x223DDFF80](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        type metadata accessor for CNContactStore(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v47;
            v5 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v47;
        v5 = v43;
        if (v14 == v47)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v7 + 40);
      v31 = *(v5 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v13 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        type metadata accessor for CNContactStore(0, a4, a5);
        while (1)
        {
          v39 = *(*(v7 + 48) + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v13 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v35) = v37 | v36;
        *(*(v7 + 48) + 8 * v34) = v31;
        v41 = *(v7 + 16);
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v42;
      }

      if (++v29 == v47)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t MusicDomain.__allocating_init()()
{
  v1 = [objc_opt_self() indexMatcher];
  v3[3] = type metadata accessor for SEMSpanMatcher();
  v3[4] = &protocol witness table for SEMSpanMatcher;
  v3[0] = v1;
  return (*(v0 + 104))(v3);
}

unint64_t type metadata accessor for SEMSpanMatcher()
{
  result = lazy cache variable for type metadata for SEMSpanMatcher;
  if (!lazy cache variable for type metadata for SEMSpanMatcher)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SEMSpanMatcher);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys6UInt16VG_SSs5NeverOTg50112_s21SiriInformationSearch11MusicDomainC6search_5query16allowedItemTypes0h5FieldJ0ySayAA12PommesResultCGz_SSSays6D29VGShyALGtKFSSycfu1_SSALXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = UInt16.cascadeDescription.getter();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MusicDomain.__allocating_init(spanMatcher:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MusicDomain.init(spanMatcher:)(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t MusicDomain.init(spanMatcher:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MusicDomain.init(spanMatcher:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t MusicDomain.search(query:userIds:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v5 = a4;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return (a4)(MEMORY[0x277D84F90], 0, a3);
  }

  v7 = v4;
  v24 = MEMORY[0x277D84F90];
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.music);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v22 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x223DDF870](a3, MEMORY[0x277D837D0]);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2232BB000, v12, v13, "calling search for users %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223DE0F80](v15, -1, -1);
    v19 = v14;
    v5 = v22;
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2234CF940;
  *(v20 + 32) = -1530378132;
  (*(*v7 + 120))(&v24, a1, a2, v20, MEMORY[0x277D84FA0]);

  v5(v24, 0);
}

uint64_t MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (one-time initialization token for music != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.music);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v40 = a3;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = a3;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v13, &v46);
      _os_log_impl(&dword_2232BB000, v11, v12, "Searching music domain with: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    v46 = a5;
    if (!a5[2])
    {
      v46 = *(v6 + 32);
    }

    v16 = *(**(v6 + 16) + 136);

    v17 = v16(a2, v40, a4, 0);
    if (!v17)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2232BB000, v21, v22, "Error calling VocabularySearchClient", v23, 2u);
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      lazy protocol witness table accessor for type SearchError and conformance SearchError();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }

    a3 = v17;
    v45 = MEMORY[0x277D84F90];
    v38 = v17 >> 62;
    if (v17 >> 62)
    {
      break;
    }

    a4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a4)
    {
      goto LABEL_27;
    }

LABEL_9:
    v6 = 0;
    a5 = (a3 & 0xFFFFFFFFFFFFFF8);
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223DDFF80](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v18 = *(a3 + 8 * v6 + 32);
      }

      v19 = v18;
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v44 = v18;
      specialized closure #1 in MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)(&v44, &v46, &v43);

      if (v43)
      {
        MEMORY[0x223DDF820]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v42 = v45;
      }

      ++v6;
      if (v20 == a4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  a4 = __CocoaSet.count.getter();
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_27:
  v42 = MEMORY[0x277D84F90];
LABEL_28:
  v25 = v42;
  swift_bridgeObjectRetain_n();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v28 = 136315906;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v40, &v45);
    *(v28 + 12) = 2080;

    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys6UInt16VG_SSs5NeverOTg50112_s21SiriInformationSearch11MusicDomainC6search_5query16allowedItemTypes0h5FieldJ0ySayAA12PommesResultCGz_SSSays6D29VGShyALGtKFSSycfu1_SSALXEfU0_Tf1cn_n(v29);

    v44 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v45);

    *(v28 + 14) = v34;
    *(v28 + 22) = 2048;
    if (v38)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v42;

    *(v28 + 24) = v35;

    *(v28 + 32) = 2048;
    if (v42 >> 62)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 34) = v36;

    _os_log_impl(&dword_2232BB000, v26, v27, "SKIT search query=%s allowedFieldTypes=[%s] found %ld items and resolved to %ld items", v28, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  specialized Array.append<A>(contentsOf:)(v25);
}

uint64_t specialized closure #1 in MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.music);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v10 = 136315138;
    v36 = v9;
    v11 = v7;
    v12 = a3;
    v13 = [v11 description];
    v14 = a2;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    a3 = v12;
    v18 = v15;
    a2 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v38);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_2232BB000, v8, v36, "Vocabulary item: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  swift_beginAccess();
  v20 = *a2;

  v21 = dispatch thunk of VocabularyResult.fieldType.getter();
  v22 = specialized Set.contains(_:)(v21, v20);

  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for ClientAudioResult());
    v24 = v7;
    result = ClientAudioResult.init(domain:vocabularyResult:)();
  }

  else
  {
    v26 = v7;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315394;
      swift_beginAccess();

      v31 = Set.description.getter();
      v32 = a3;
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v39);
      a3 = v32;

      *(v29 + 4) = v35;
      *(v29 + 12) = 512;
      LOWORD(v35) = dispatch thunk of VocabularyResult.fieldType.getter();

      *(v29 + 14) = v35;
      _os_log_impl(&dword_2232BB000, v27, v28, "Vocabulary item: allowedFieldTypes %s does not contain fieldType %hu, skipping", v29, 0x10u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DE0F80](v30, -1, -1);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t MusicDomain.search(searchRequest:pegasusResponse:serviceHelper:userIds:completion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v64 = a6;
  v65 = a5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v62 = a2;
  MusicDomain.extractClientSignals(_:)(&v57 - v25);
  v63 = v26;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(v26, v24);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 1, v27) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v24, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  }

  else
  {
    v29 = Apple_Parsec_Siri_V2alpha_ClientSignals.disableClientLibrarySearch.getter();
    (*(v28 + 8))(v24, v27);
    if (v29)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2232BB000, v31, v32, "client library search disabled by the server", v33, 2u);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      v65(MEMORY[0x277D84F90], 0);
      goto LABEL_21;
    }
  }

  Date.init()();
  v34 = &v20[v18[5]];
  *v34 = "SiriInformationSearch/MusicDomain.swift";
  *(v34 + 1) = 39;
  v34[16] = 2;
  *&v20[v18[6]] = 421;
  v35 = &v20[v18[7]];
  *v35 = "search(searchRequest:pegasusResponse:serviceHelper:userIds:completion:)";
  *(v35 + 1) = 71;
  v35[16] = 2;
  v36 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001BLL, 0x80000002234E1AF0);
  v37 = &v20[v18[8]];
  *v37 = v36;
  v37[1] = v38;
  v39 = v62;
  MusicDomain.extractAudioUnderstanding(_:)(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    v42 = v58;
    v41 = v59;
    v43 = *(v59 + 16);
    v44 = v60;
    v43(v58, v39, v60);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v47 = 136315138;
      v43(v57, v42, v44);
      v48 = String.init<A>(describing:)();
      v50 = v49;
      (*(v41 + 8))(v42, v44);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v66);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2232BB000, v45, v46, "Failed to extract audio understanding from the Pegasus response:\n  PireneResponse : %s", v47, 0xCu);
      v52 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x223DE0F80](v52, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v42, v44);
    }

    lazy protocol witness table accessor for type SearchError and conformance SearchError();
    v54 = swift_allocError();
    *v55 = 1;
    v65(v54, 1);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v20, 1);
    outlined destroy of PerformanceUtil.Ticket(v20);
LABEL_21:
    v53 = v63;
    return outlined destroy of MediaUserStateCenter?(v53, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  }

  (*(v15 + 32))(v17, v13, v14);
  v53 = v63;
  (*(*v61 + 136))(v17, v63, v65, v64);
  (*(v15 + 8))(v17, v14);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v20, 1);
  outlined destroy of PerformanceUtil.Ticket(v20);
  return outlined destroy of MediaUserStateCenter?(v53, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
}

uint64_t MusicDomain.search(audioUnderstanding:clientSignals:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a4;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D84F90];
  v17 = closure #1 in MusicDomain.search(audioUnderstanding:clientSignals:completion:)(a2);
  v48 = v4;
  v18 = *(v4 + 32);
  v55 = *(v17 + 2);
  v56 = v17;
  if (v55 < 2)
  {

    v29 = v48;
    v20 = v56;
LABEL_13:
    MusicDomain.search(_:queryFields:allowedFieldTypes:)(&v59, v20, v18);

    (*(**(v29 + 16) + 144))(v43);
  }

  else
  {
    v47 = a3;
    v53 = v14 + 16;
    v52 = *MEMORY[0x277D39500];
    v19 = (v8 + 8);
    v50 = v14 + 8;
    v51 = (v8 + 104);
    v46 = v18;

    a3 = 0;
    while (1)
    {
      v20 = v56;
      if (v55 == a3)
      {
        a3 = v47;
        v29 = v48;
        v18 = v46;
        goto LABEL_13;
      }

      if (a3 >= *(v56 + 2))
      {
        break;
      }

      v21 = v54;
      v22 = (*(v14 + 16))(v16, &v56[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a3++], v54);
      MEMORY[0x223DDAEA0](v22);
      (*v51)(v11, v52, v7);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *v19;
      (*v19)(v11, v7);
      v23(v13, v7);
      (*(v14 + 8))(v16, v21);
      if (v58 == v57)
      {
        v24 = v46;

        v20 = v56;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.pommes);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        v28 = os_log_type_enabled(v26, v27);
        a3 = v47;
        v29 = v48;
        if (v28)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2232BB000, v26, v27, "MusicDomain : excluding artists from allowedFieldTypes", v30, 2u);
          MEMORY[0x223DE0F80](v30, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2234CF910;
        *(inited + 32) = 1216235644;
        *(inited + 36) = -23346;

        v18 = specialized _NativeSet.subtracting<A>(_:)(inited, v24);
        swift_setDeallocating();
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = v7;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v7;
      v58 = v37;
      *v36 = 136315138;
      v38 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v58);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2232BB000, v34, v35, "MusicDomain.search : error while searching library : %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DE0F80](v37, -1, -1);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    v42 = v7;
    (a3)(v7, 1);
  }

  (a3)(v59, 0);
}

char *closure #1 in MusicDomain.search(audioUnderstanding:clientSignals:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(a1, &v17 - v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v4, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
LABEL_10:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "MusicDomain : librarySearchTerms from AudioUnderstanding", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  }

  v7 = Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  (*(v6 + 8))(v4, v5);
  if (!*(v7 + 16))
  {

    goto LABEL_10;
  }

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
    _os_log_impl(&dword_2232BB000, v9, v10, "MusicDomain : librarySearchTerms from ClientSignals", v11, 2u);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return v7;
}

uint64_t MusicDomain.search(_:queryFields:allowedFieldTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v26 = (v10 - 8);
    v14 = *(v10 + 56);
    v21 = xmmword_2234CF940;
    v20 = v14;
    v12(v8, v13, v4);
    while (1)
    {
      if (Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.getter())
      {
        result = (*v26)(v8, v4);
      }

      else
      {
        v25 = MEMORY[0x223DDAEC0]();
        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v17 = swift_allocObject();
        *(v17 + 16) = v21;
        *(v17 + 32) = -1530378132;
        v18 = v27;
        (*(*v24 + 120))(v22, v25, v16, v17, v23);
        v27 = v18;
        if (v18)
        {
          (*v26)(v8, v4);
        }

        (*v26)(v8, v4);

        v14 = v20;
      }

      v13 += v14;
      if (!--v9)
      {
        return result;
      }

      v11(v8, v13, v4);
    }
  }

  return result;
}

uint64_t MusicDomain.extractAudioUnderstanding(_:)@<X0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v41 = a2;
  v44 = a3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v15 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1(0);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v33 - v19;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
  v21 = (*(v12 + 8))(v14, v11);
  v22 = MEMORY[0x223DDB8B0](v21);
  (*(v8 + 8))(v10, v42);
  if (*(v22 + 16))
  {
    v23 = v34;
    (*(v15 + 16))(v17, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v34);

    v24 = v35;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v15 + 8))(v17, v23);
    v25 = v38;
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
    v26 = (*(v36 + 8))(v24, v37);
    v41(v26);
    (*(v39 + 8))(v25, v40);
    v28 = v43;
    v27 = v44;
    (*(v18 + 32))(v44, v20, v43);
    v29 = 0;
    v30 = v27;
    v31 = v28;
  }

  else
  {

    v29 = 1;
    v31 = v43;
    v30 = v44;
  }

  return (*(v18 + 56))(v30, v29, 1, v31);
}

uint64_t MusicDomain.deinit()
{

  return v0;
}

uint64_t MusicDomain.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt16VGMd, &_ss11_SetStorageCys6UInt16VGMR);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 2 * (v13 | (v11 << 6)));
    result = MEMORY[0x223DE0350](*(v9 + 40), v16, 2);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 2 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v31[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v31[0] = a1;
    v28 = *(a1 + 16);
    if (v28)
    {
      v4 = 0;
      v5 = a2 + 56;
      v29 = *(a2 + 40);
      v30 = a1 + 32;
      v27 = -1 << *(a2 + 32);
      v6 = ~v27;
      while (1)
      {
        v7 = *(v30 + 2 * v4++);
        v8 = MEMORY[0x223DE0350](v29, v7, 2);
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v28)
        {
          return v2;
        }
      }

      while (*(*(v2 + 48) + 2 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v31[1] = v4;
      v12 = (63 - v27) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v28 = v12;
        v29 = &v27;
        MEMORY[0x28223BE20](i);
        v9 = &v27 - v15;
        memcpy(&v27 - v15, (v2 + 56), v13);
        v16 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = *(v2 + 40);
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v30 + 2 * v4);
          v19 = MEMORY[0x223DE0350](v10, v11, 2);
          v20 = v19 & v12;
          v21 = (v19 & v12) >> 6;
          v22 = 1 << (v19 & v12);
          if ((v22 & *(v5 + 8 * v21)) != 0)
          {
            while (*(*(v2 + 48) + 2 * v20) != v11)
            {
              v20 = (v20 + 1) & v12;
              v21 = v20 >> 6;
              v22 = 1 << v20;
              if (((1 << v20) & *(v5 + 8 * (v20 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v23 = *(v9 + 8 * v21);
            *(v9 + 8 * v21) = v23 & ~v22;
            if ((v23 & v22) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v25 = swift_slowAlloc();
          memcpy(v25, (v2 + 56), v13);
          v26 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v25, v12, v2, v9, v31);

          MEMORY[0x223DE0F80](v25, -1, -1);

          return v26;
        }
      }

LABEL_13:
      v2 = specialized _NativeSet.extractSubset(using:count:)(v9, v28, v13, v2);
LABEL_14:
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 2 * v11 + 32);
      a5[1] = v11 + 1;
      result = MEMORY[0x223DE0350](*(a3 + 40), v15, 2);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 2 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 2 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t specialized MusicDomain.init(spanMatcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  (*(v7 + 32))(&v18 - v11);
  *(a2 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0350;
  *(inited + 32) = xmmword_2234D0360;
  *(inited + 48) = -1529961267;
  *(inited + 52) = -23348;
  v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  *(a2 + 32) = v14;
  type metadata accessor for VocabularySearchClient();
  v15 = swift_allocObject();
  (*(v7 + 16))(v10, v12, a3);
  v16 = specialized VocabularySearchClient.init(spanMatcher:)(v10, v15, a3, a4);
  (*(v7 + 8))(v12, a3);
  *(a2 + 16) = v16;
  return a2;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_ClientSignals?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType);
  }

  return result;
}

uint64_t PommesSearchRequest.userParses.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v13, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(&v13[*(v15 + 64)], v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v7, v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v16 = type metadata accessor for TCUMappedNLResponse();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v5, 1, v16) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v18 = MEMORY[0x277D84F90];
      }

      else
      {
        v24 = TCUMappedNLResponse.nlResponse.getter();
        (*(v17 + 8))(v5, v16);
        v18 = NLParseResponse.userParses.getter();
      }

      v21 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v22 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v23 = v7;
    }

    else
    {
      v18 = *(v13 + 2);
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      v21 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v22 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v23 = &v13[v20];
    }

    outlined destroy of MediaUserStateCenter?(v23, v21, v22);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(&v13[*(v19 + 48)], v10, type metadata accessor for NLXResultCandidate);
    v18 = *v10;

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v10, type metadata accessor for NLXResultCandidate);
  }

  return v18;
}

uint64_t PommesSearchRequest.otherSalientParses()()
{
  v1 = v0;
  v53 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v2 = *(v53 - 8);
  v3 = MEMORY[0x28223BE20](v53);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = &v53 - v5;
  v65 = type metadata accessor for Siri_Nlu_External_Parser();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v68 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v24, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (!EnumCaseMultiPayload)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(&v24[*(v30 + 48)], v21, type metadata accessor for NLXResultCandidate);
    v29 = *v21;

    result = _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v21, type metadata accessor for NLXResultCandidate);
LABEL_7:
    v33 = v53;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v29 = *(v24 + 2);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

    result = outlined destroy of MediaUserStateCenter?(&v24[v32], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    goto LABEL_7;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
  outlined init with take of PommesSearchReason?(&v24[*(v26 + 64)], v18, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with copy of MediaUserStateCenter?(v18, v16, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v27 = type metadata accessor for TCUMappedNLResponse();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v16, 1, v27) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = TCUMappedNLResponse.nlResponse.getter();
    (*(v28 + 8))(v16, v27);
    v29 = NLParseResponse.userParses.getter();
  }

  v33 = v53;
  result = outlined destroy of MediaUserStateCenter?(v18, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_10:
  v63 = *(v29 + 16);
  if (v63)
  {
    v35 = 0;
    v61 = (v6 + 8);
    v62 = v68 + 16;
    v60 = *MEMORY[0x277D5DA68];
    v58 = v2 + 8;
    v59 = (v2 + 104);
    v54 = (v68 + 32);
    v57 = (v68 + 8);
    v56 = MEMORY[0x277D84F90];
    v36 = (v2 + 8);
    while (v35 < *(v29 + 16))
    {
      v37 = v29;
      v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v69 = *(v68 + 72);
      v38 = v29 + v70 + v69 * v35;
      v39 = v8;
      (*(v68 + 16))(v12, v38, v8);
      v40 = v64;
      Siri_Nlu_External_UserParse.parser.getter();
      v41 = v12;
      v42 = v66;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v61)(v40, v65);
      v43 = v67;
      (*v59)(v67, v60, v33);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *v36;
      (*v36)(v43, v33);
      v46 = v42;
      v12 = v41;
      v45(v46, v33);
      if ((v44 & 1) != 0 || (Siri_Nlu_External_UserParse.comparableProbability.getter(), v47 <= 0.05))
      {
        v8 = v39;
        result = (*v57)(v41, v39);
        v29 = v37;
      }

      else
      {
        v48 = *v54;
        v8 = v39;
        (*v54)(v55, v12, v39);
        v49 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 16) + 1, 1);
          v49 = v71;
        }

        v29 = v37;
        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v49 = v71;
        }

        *(v49 + 16) = v52 + 1;
        v56 = v49;
        result = v48((v49 + v70 + v52 * v69), v55, v8);
        v33 = v53;
      }

      if (v63 == ++v35)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
LABEL_23:

    return v56;
  }

  return result;
}

Swift::Bool __swiftcall PommesSearchRequest.pscScoreIsAboveThreshold()()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 48));
  specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
  return v2 <= v1;
}

uint64_t PommesSearchRequest.pommesCandidateId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v2, v6, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v6;
  v8 = v6[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v6[2];
      v11 = v6[3];
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
      *a1 = v9;
      a1[1] = v8;
      a1[2] = v10;
      a1[3] = v11;
      v13 = *MEMORY[0x277D56620];
      v14 = type metadata accessor for PommesCandidateId();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      v15 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v16 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v17 = v6 + v12;
    }

    else
    {

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      *a1 = v9;
      a1[1] = v8;
      v23 = *MEMORY[0x277D56610];
      v24 = type metadata accessor for PommesCandidateId();
      (*(*(v24 - 8) + 104))(a1, v23, v24);
      v15 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v16 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v17 = v6 + v22;
    }

    return outlined destroy of MediaUserStateCenter?(v17, v15, v16);
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);
    *a1 = v9;
    a1[1] = v8;
    v19 = *MEMORY[0x277D56618];
    v20 = type metadata accessor for PommesCandidateId();
    (*(*(v20 - 8) + 104))(a1, v19, v20);
    return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v6 + v18, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v66 = a8;
  v67 = a7;
  v65 = a5;
  v62 = a12;
  v64 = a11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v56 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v61 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  v27 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v27[23]] = MEMORY[0x277D84F90];
  v28 = &a9[v27[5]];
  *v28 = a1;
  *(v28 + 1) = a2;
  v29 = v27[6];
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v30 - 8) + 56))(&a9[v29], 1, 1, v30);
  v63 = a6;
  v31 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  v59 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v32 = v59;
  v33 = &a9[v27[8]];
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = &a9[v27[9]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v36 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v57 = *(v36 - 8);
  v37 = *(v57 + 56);
  v37(v26, 1, 1, v36);
  v38 = type metadata accessor for NLXResultCandidate(0);
  v39 = *(v38 + 20);
  v37(&v35[v39], 1, 1, v36);
  v40 = &v35[*(v38 + 24)];
  *v35 = a10;

  v41 = v37;
  outlined assign with take of MediaUserStateCenter?(v26, &v35[v39], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v40 = 0;
  *(v40 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v67, &a9[v27[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v37(v26, 1, 1, v36);
  v42 = v58;
  v59 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v26, v58);
  v43 = v26;
  v44 = v60;
  outlined destroy of MediaUserStateCenter?(v43, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v42, v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v46 = 1;
    v47 = v61;
  }

  else
  {
    v47 = v61;
    (*(v57 + 32))(v61, v44, v36);
    v46 = 0;
  }

  v41(v47, v46, 1, v36);
  outlined init with take of PommesSearchReason?(v47, &a9[v27[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v48 = v62 & 1;
  *&a9[v27[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v42, v62 & 1);
  v49 = v63;
  v50 = *(v63 + 24);
  v51 = &a9[v27[7]];
  *v51 = *(v63 + 16);
  *(v51 + 1) = v50;
  *&a9[v27[13]] = v49;
  v52 = v66;
  outlined init with copy of MediaUserStateCenter?(v66, &a9[v27[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v27[15]] = v65 & 1;
  *&a9[v27[18]] = v64;

  v53 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v59);

  outlined destroy of MediaUserStateCenter?(v52, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v67, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v42, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v27[19]] = v53;
  a9[v27[20]] = v48;
  v55 = &a9[v27[21]];
  *v55 = 0;
  *(v55 + 1) = 0;
  *&a9[v27[22]] = 0;
  a9[v27[16]] = 0;
  a9[v27[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:tcuId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, char *a16, char *a17)
{
  v79 = a7;
  v80 = a5;
  v81 = a6;
  v71 = a3;
  v72 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v76 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = &v70 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v75 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v77 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v73 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  v34 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v34[23]] = MEMORY[0x277D84F90];
  v35 = &a9[v34[5]];
  *v35 = a1;
  *(v35 + 1) = a2;
  v36 = v34[6];
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v37 - 8) + 56))(&a9[v36], 1, 1, v37);
  v78 = a8;
  v38 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v39 = &a9[v34[8]];
  *v39 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v39 + 1) = v38;
  v40 = &a9[v34[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v42 = v72;
  *a9 = v71;
  *(a9 + 1) = v42;
  v43 = v81;
  *(a9 + 2) = v80;
  *(a9 + 3) = v43;
  outlined init with copy of MediaUserStateCenter?(a12, &a9[v41], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v44 = &a9[v34[10]];
  v80 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v44, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v81 = a12;
  outlined init with copy of MediaUserStateCenter?(a12, v33, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v45 = type metadata accessor for TCUMappedNLResponse();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  LODWORD(a8) = v47(v33, 1, v45);

  if (a8 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = TCUMappedNLResponse.nlResponse.getter();
    (*(v46 + 8))(v33, v45);
    v48 = NLParseResponse.userParses.getter();
  }

  v50 = v73;
  outlined init with copy of MediaUserStateCenter?(v81, v73, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v47(v50, 1, v45) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v51 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v52 = v74;
    (*(*(v51 - 8) + 56))(v74, 1, 1, v51);
  }

  else
  {
    v53 = TCUMappedNLResponse.nlResponse.getter();
    (*(v46 + 8))(v50, v45);
    v52 = v74;
    NLParseResponse.fallbackParse.getter();
  }

  v54 = v76;
  v55 = v77;
  v56 = v75;
  v76 = a16;
  v77 = a17;
  v75 = a15;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v48, v52, v55);
  outlined destroy of MediaUserStateCenter?(v52, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v55, v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v58 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v58 - 8) + 56))(v54, 1, 1, v58);
  }

  else
  {
    v59 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v60 = v56;
    v61 = v59;
    v62 = *(v59 - 8);
    (*(v62 + 32))(v54, v60, v59);
    (*(v62 + 56))(v54, 0, 1, v61);
  }

  outlined init with take of PommesSearchReason?(v54, &a9[v34[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v34[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v55, 0);
  v63 = v78;
  v64 = *(v78 + 24);
  v65 = &a9[v34[7]];
  *v65 = *(v78 + 16);
  *(v65 + 1) = v64;
  *&a9[v34[13]] = v63;
  outlined init with copy of MediaUserStateCenter?(a11, &a9[v34[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v34[15]] = v79 & 1;
  *&a9[v34[18]] = a13;

  v66 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v48);

  outlined destroy of MediaUserStateCenter?(v81, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(a11, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v80, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v55, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v34[19]] = v66;
  a9[v34[20]] = a14 & 1;
  v68 = &a9[v34[21]];
  v69 = v76;
  *v68 = v75;
  *(v68 + 1) = v69;
  *&a9[v34[22]] = v77;
  a9[v34[16]] = 0;
  a9[v34[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v2, v15, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(&v15[*(v17 + 64)], v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v9, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v18 = type metadata accessor for TCUMappedNLResponse();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v7, 1, v18) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v20 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      }

      else
      {
        v24 = TCUMappedNLResponse.nlResponse.getter();
        (*(v19 + 8))(v7, v18);
        NLParseResponse.fallbackParse.getter();

        return outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }
    }

    else
    {

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      return outlined init with take of PommesSearchReason?(&v15[v23], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(&v15[*(v22 + 48)], v12, type metadata accessor for NLXResultCandidate);
    outlined init with copy of MediaUserStateCenter?(&v12[*(v10 + 20)], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v12, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesSearchRequest.responseVariantResult.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v1, v13, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (!EnumCaseMultiPayload)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(&v13[*(v19 + 48)], v10, type metadata accessor for NLXResultCandidate);
    v18 = *&v10[*(v8 + 24)];

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v10, type metadata accessor for NLXResultCandidate);
    return v18;
  }

  if (EnumCaseMultiPayload != 1)
  {

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v18 = *&v13[*(v20 + 80)];
    v21 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
    v22 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
    v23 = &v13[*(v20 + 64)];
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v23, v21, v22);
    return v18;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
  outlined init with take of PommesSearchReason?(&v13[*(v15 + 64)], v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with copy of MediaUserStateCenter?(v7, v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v16 = type metadata accessor for TCUMappedNLResponse();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v5, 1, v16) != 1)
  {
    v24 = TCUMappedNLResponse.nlResponse.getter();
    (*(v17 + 8))(v5, v16);
    v18 = NLParseResponse.responseVariantResult.getter();

    v21 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
    v22 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
    v23 = v7;
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  return 0;
}

uint64_t PommesSearchRequest.init(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for PommesSearchRequest.Builder(0);
  v8 = (v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = v8[7];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = v8[8];
  v17 = type metadata accessor for PommesCandidateId();
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  v18 = &v13[v8[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v13[v8[10]] = 0;
  v13[v8[11]] = 0;
  v13[v8[12]] = 0;
  v19 = v8[13];
  v20 = type metadata accessor for PommesContext();
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  v21 = v8[14];
  v22 = type metadata accessor for InputOrigin();
  (*(*(v22 - 8) + 56))(&v13[v21], 1, 1, v22);
  v23 = v8[15];
  v24 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v24 - 8) + 56))(&v13[v23], 1, 1, v24);
  *&v13[v8[16]] = MEMORY[0x277D84F90];
  v25 = v8[17];
  v26 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v26 - 8) + 56))(&v13[v25], 1, 1, v26);
  v27 = &v13[v8[18]];
  *v27 = 0;
  *(v27 + 1) = 0;
  *&v13[v8[19]] = 0;
  v13[v8[20]] = 0;
  v28 = &v13[v8[21]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v13[v8[22]] = 0;
  v13[v8[23]] = 0;
  a1(v13);
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v13, v11, type metadata accessor for PommesSearchRequest.Builder);
  PommesSearchRequest.init(builder:)(v11, v6);
  _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v13, type metadata accessor for PommesSearchRequest.Builder);
  v29 = type metadata accessor for PommesSearchRequest(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29))
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v31 = 1;
  }

  else
  {
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v6, a2, type metadata accessor for PommesSearchRequest);
    v31 = 0;
  }

  return (*(v30 + 56))(a2, v31, 1, v29);
}

Swift::String_optional __swiftcall PommesSearchRequest.aceReferenceID()()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v2 = (v0 + *(v1 + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v0 + *(v1 + 32));
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = v3;
  v7 = v4;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v67 = a8;
  v61 = a7;
  v66 = a5;
  v65 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v63 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v58 = &v56 - v24;
  v26 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v26[23]] = MEMORY[0x277D84F90];
  v27 = &a9[v26[5]];
  *v27 = a1;
  *(v27 + 1) = a2;
  v28 = v26[6];
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  v64 = a6;
  v30 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v31 = &a9[v26[8]];
  *v31 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v31 + 1) = v30;
  v32 = &a9[v26[9]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v34 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v57 = *(v34 - 8);
  v35 = *(v57 + 56);
  v35(v25, 1, 1, v34);
  v36 = type metadata accessor for NLXResultCandidate(0);
  v37 = *(v36 + 20);
  v35(&v33[v37], 1, 1, v34);
  v38 = &v33[*(v36 + 24)];
  *v33 = a10;

  v39 = v35;

  v40 = &v33[v37];
  v41 = v58;
  v42 = v59;
  outlined assign with take of MediaUserStateCenter?(v58, v40, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v38 = 0;
  *(v38 + 1) = 0;
  v43 = v61;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v43, &a9[v26[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v39(v41, 1, 1, v34);
  v60 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v41, v42);
  v44 = v41;
  v45 = v62;
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v42, v45, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v47 = 1;
    v48 = v63;
  }

  else
  {
    v48 = v63;
    (*(v57 + 32))(v63, v45, v34);
    v47 = 0;
  }

  v39(v48, v47, 1, v34);
  outlined init with take of PommesSearchReason?(v48, &a9[v26[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v26[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v42, 0);
  v49 = v64;
  v50 = *(v64 + 24);
  v51 = &a9[v26[7]];
  *v51 = *(v64 + 16);
  *(v51 + 1) = v50;
  *&a9[v26[13]] = v49;
  v52 = v67;
  outlined init with copy of MediaUserStateCenter?(v67, &a9[v26[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v26[15]] = v66 & 1;
  *&a9[v26[18]] = v65;

  v53 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v60);

  outlined destroy of MediaUserStateCenter?(v52, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v43, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v42, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v26[19]] = v53;
  a9[v26[20]] = 0;
  v55 = &a9[v26[21]];
  *v55 = 0;
  *(v55 + 1) = 0;
  *&a9[v26[22]] = 0;
  a9[v26[16]] = 0;
  a9[v26[17]] = 0;
  return result;
}