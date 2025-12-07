id VoiceFeedbackAnnouncementResourceAnchor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VoiceFeedbackAnnouncementResourceAnchor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

WorkoutAnnouncements::VoiceFeedbackAnnouncementFlow __swiftcall VoiceFeedbackAnnouncementFlow.init(data:)(Swift::OpaquePointer_optional data)
{
  rawValue = data.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.data.value._rawValue = v4;
  result.data.is_nil = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow);
  }

  return result;
}

uint64_t VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1)
{
  v2[38] = a1;
  v3 = type metadata accessor for AceOutput();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v2[41] = *(v4 + 64);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v5 = type metadata accessor for Locale.Language.Components();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v6 = type metadata accessor for Locale.LanguageCode();
  v2[51] = v6;
  v2[52] = *(v6 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v7 = type metadata accessor for Locale.Components();
  v2[58] = v7;
  v2[59] = *(v7 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[62] = v8;
  v2[63] = *(v8 - 8);
  v2[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[68] = v9;
  v2[69] = *(v9 - 8);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = *v1;

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

uint64_t VoiceFeedbackAnnouncementFlow.execute()()
{
  v242 = v0;
  v1 = v0;
  v2 = v0[76];
  if (v2)
  {
    v3 = objc_opt_self();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [v3 workoutVoiceFeedbackFromPayload_];
    v1[77] = v5;

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v2 + 16))
      {
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
        v10 = v9;

        if (v10)
        {
          outlined init with copy of Any(*(v2 + 56) + 32 * v8, (v1 + 12));
          if (swift_dynamicCast())
          {
            v11 = v1[34];
            if (v11)
            {
              v12 = v1[75];
              v13 = v1[69];
              v14 = v1[68];
              v15 = Logger.workout.unsafeMutableAddressor();
              swift_beginAccess();
              (*(v13 + 16))(v12, v15, v14);
              v16 = Logger.logObject.getter();
              v17 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v18 = swift_slowAlloc();
                *v18 = 134217984;
                *(v18 + 4) = v11;
                _os_log_impl(&dword_274C46000, v16, v17, "synchronousBurstIndex = %ld. Sending Ace commands to play in sequence.", v18, 0xCu);
                MEMORY[0x277C67550](v18, -1, -1);
              }

              v19 = v1[75];
              v20 = v1[69];
              v21 = v1[68];

              (*(v20 + 8))(v19, v21);
            }

            v22 = v1[74];
            v23 = v1[69];
            v24 = v1[68];
            v25 = Logger.workout.unsafeMutableAddressor();
            swift_beginAccess();
            v229 = v25;
            v227 = *(v23 + 16);
            v227(v22, v25, v24);
            v26 = v5;
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.debug.getter();

            v29 = os_log_type_enabled(v27, v28);
            v30 = v1[74];
            v31 = v1[69];
            v32 = v1[68];
            if (v29)
            {
              v33 = swift_slowAlloc();
              v222 = swift_slowAlloc();
              v241[0] = v222;
              *v33 = 136315138;
              v237 = v30;
              v34 = v26;
              v35 = v1;
              v36 = [v34 description];
              v219 = v32;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v26;
              v40 = v39;

              v1 = v35;
              v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v241);
              v26 = v38;

              *(v33 + 4) = v41;
              _os_log_impl(&dword_274C46000, v27, v28, "Trying to play workout voice feedback: %s", v33, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v222);
              MEMORY[0x277C67550](v222, -1, -1);
              MEMORY[0x277C67550](v33, -1, -1);

              v42 = *(v31 + 8);
              v42(v237, v219);
            }

            else
            {

              v42 = *(v31 + 8);
              v42(v30, v32);
            }

            v77 = v1[67];
            v78 = v1[39];
            v79 = v1[40];
            v80 = *(v79 + 56);
            v1[78] = v80;
            v1[79] = (v79 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v80(v77, 1, 1, v78);
            v81 = [v26 feedbackText];
            if (!v81)
            {
              v97 = [v26 feedbackAudioData];
              if (v97)
              {
                v230 = v1[67];
                v98 = v1[66];
                loga = v1[39];
                v239 = v1[76];
                v99 = v97;
                v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v101 = v26;
                v103 = v102;

                v1[85] = v100;
                v1[86] = v103;
                v104 = [objc_allocWithZone(MEMORY[0x277D47A08]) init];
                v1[87] = v104;
                v105 = Data._bridgeToObjectiveC()().super.isa;
                [v104 setAudioBuffer_];

                type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAUIAudioDescription, 0x277D47A10);
                [v101 feedbackAudioASBD];
                v106 = SAUIAudioDescription.init(asbd:)((v1 + 2));
                [v104 setDecoderStreamDescription_];

                v107 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
                v1[88] = v107;
                type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
                v108 = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
                [v107 setVolume_];

                [v107 setItemData_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v109 = swift_allocObject();
                *(v109 + 16) = xmmword_274C6CC60;
                *(v109 + 32) = v107;
                memset(v241, 0, sizeof(v241));
                v110 = v107;
                AceOutput.init(commands:flowActivity:)();
                outlined destroy of AceOutput?(v230, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                v80(v98, 0, 1, loga);
                outlined init with take of AceOutput?(v98, v230, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                v1[36] = v239;
                v111 = swift_task_alloc();
                v1[89] = v111;
                *v111 = v1;
                v111[1] = VoiceFeedbackAnnouncementFlow.execute();
                goto LABEL_32;
              }

              goto LABEL_45;
            }

            v82 = v81;
            v84 = v1[63];
            v83 = v1[64];
            v238 = v26;
            v85 = v1[62];
            v86 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
            v1[80] = v86;
            v87 = v86;
            [v87 setSpeakableText_];

            v88 = v87;
            UUID.init()();
            v89 = UUID.uuidString.getter();
            v91 = v90;
            v92 = *(v84 + 8);
            v1[81] = v92;
            v1[82] = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v92(v83, v85);
            v93 = MEMORY[0x277C66D70](v89, v91);

            [v88 setAceId_];

            type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
            v94 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
            [v88 setListenAfterSpeaking_];

            [v88 setCanUseServerTTS_];
            v95 = [v238 voiceName];
            v1[83] = v95;
            if (v95)
            {
              v1[37] = v1[76];
              v96 = swift_task_alloc();
              v1[84] = v96;
              *v96 = v1;
              v96[1] = VoiceFeedbackAnnouncementFlow.execute();
LABEL_32:

              return VoiceFeedbackAnnouncementFlow.playTone()();
            }

            v112 = [v238 voiceLanguage];
            if (v112)
            {
              v113 = v112;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v114 = [objc_opt_self() sharedPreferences];
              v115 = [v114 outputVoice];

              if (v115 && (v116 = [v115 languageCode], v115, v116))
              {
                v217 = v42;
                v117 = v1[52];
                v223 = v1[51];
                v118 = v1[50];
                v119 = v1[48];
                v220 = v1[47];
                v214 = v1;
                v120 = v1[46];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                Locale.Components.init(identifier:)();
                Locale.Components.init(identifier:)();
                Locale.Components.languageComponents.getter();
                Locale.Language.Components.languageCode.getter();
                v121 = *(v119 + 8);
                v121(v118, v220);
                v122 = *(v117 + 48);
                if (v122(v120, 1, v223) == 1)
                {
                  v1 = v214;
                  v123 = v214[61];
                  v124 = v214[58];
                  v125 = v214[46];
                  v126 = *(v214[59] + 8);
                  v126(v214[60], v124);
                  v126(v123, v124);
                  v127 = v125;
                }

                else
                {
                  v128 = v214[51];
                  v129 = v214[49];
                  v130 = v214[47];
                  v131 = v214[45];
                  v132 = *(v214[52] + 32);
                  v132(v214[57], v214[46], v128);
                  Locale.Components.languageComponents.getter();
                  Locale.Language.Components.languageCode.getter();
                  v121(v129, v130);
                  if (v122(v131, 1, v128) != 1)
                  {
                    v132(v214[56], v214[45], v214[51]);
                    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
                    {
                      v175 = v214[73];
                      v176 = v214[68];
                      v178 = v214[56];
                      v177 = v214[57];
                      v179 = v214[55];
                      v225 = v214[54];
                      v180 = v214[51];
                      v181 = v214[52];

                      swift_beginAccess();
                      v227(v175, v229, v176);
                      v182 = *(v181 + 16);
                      v182(v179, v177, v180);
                      v232 = v182;
                      v182(v225, v178, v180);
                      v183 = Logger.logObject.getter();
                      v184 = static os_log_type_t.error.getter();
                      log = v183;
                      v185 = os_log_type_enabled(v183, v184);
                      v186 = v214[73];
                      v187 = v214[68];
                      v188 = v214[55];
                      v226 = v214[54];
                      if (v185)
                      {
                        v221 = v214[68];
                        v189 = v214[52];
                        v190 = v214[53];
                        v191 = v214[51];
                        v192 = swift_slowAlloc();
                        v216 = swift_slowAlloc();
                        v241[0] = v216;
                        *v192 = 136315394;
                        v232(v190, v188, v191);
                        v215 = v184;
                        v193 = String.init<A>(describing:)();
                        v218 = v186;
                        v195 = v194;
                        v196 = *(v189 + 8);
                        v196(v188, v191);
                        v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, v241);

                        *(v192 + 4) = v197;
                        *(v192 + 12) = 2080;
                        v232(v190, v226, v191);
                        v198 = String.init<A>(describing:)();
                        v200 = v199;
                        v233 = v196;
                        v196(v226, v191);
                        v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v200, v241);

                        *(v192 + 14) = v201;
                        _os_log_impl(&dword_274C46000, log, v215, "Message language code does not match Siri voice language code %s vs. %s; not playing", v192, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x277C67550](v216, -1, -1);
                        MEMORY[0x277C67550](v192, -1, -1);

                        v217(v218, v221);
                        v1 = v214;
                      }

                      else
                      {
                        v1 = v214;
                        v202 = v214[51];
                        v203 = v214[52];

                        v204 = *(v203 + 8);
                        v204(v226, v202);
                        v233 = v204;
                        v204(v188, v202);
                        v217(v186, v187);
                      }

                      v205 = v1[67];
                      v206 = v1[60];
                      v207 = v1[61];
                      v208 = v1[58];
                      v209 = v1[59];
                      v211 = v1[56];
                      v210 = v1[57];
                      v212 = v1[51];
                      static ExecuteResponse.complete()();

                      v233(v211, v212);
                      v233(v210, v212);
                      v213 = *(v209 + 8);
                      v213(v206, v208);
                      v213(v207, v208);
                      outlined destroy of AceOutput?(v205, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                      goto LABEL_23;
                    }

                    v1 = v214;
                    v168 = v214[60];
                    v167 = v214[61];
                    v169 = v214[58];
                    v170 = v214[59];
                    v171 = v214[57];
                    v172 = v214[51];
                    v173 = *(v214[52] + 8);
                    v173(v214[56], v172);
                    v173(v171, v172);
                    v174 = *(v170 + 8);
                    v174(v168, v169);
                    v174(v167, v169);
                    goto LABEL_44;
                  }

                  v1 = v214;
                  v134 = v214[60];
                  v133 = v214[61];
                  v135 = v214[58];
                  v136 = v214[59];
                  v137 = v214[45];
                  (*(v214[52] + 8))(v214[57], v214[51]);
                  v138 = *(v136 + 8);
                  v138(v134, v135);
                  v138(v133, v135);
                  v127 = v137;
                }

                outlined destroy of AceOutput?(v127, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              }

              else
              {
              }
            }

LABEL_44:
            v139 = v1[81];
            logb = v1[78];
            v224 = v1[80];
            v228 = v1[67];
            v140 = v1[66];
            v141 = v1[64];
            v142 = v1[62];
            v143 = v1[44];
            v231 = v1[39];
            v144 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
            UUID.init()();
            v145 = UUID.uuidString.getter();
            v147 = v146;
            v139(v141, v142);
            v148 = MEMORY[0x277C66D70](v145, v147);

            [v144 setAceId_];

            [v144 setDialogPhase_];
            [v144 setResponseMode_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v149 = swift_allocObject();
            *(v149 + 16) = xmmword_274C6CC60;
            *(v149 + 32) = v224;
            type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
            v150 = Array._bridgeToObjectiveC()().super.isa;

            [v144 setViews_];

            [v144 setImmersiveExperience_];
            v151 = type metadata accessor for NLContextUpdate();
            (*(*(v151 - 8) + 56))(v143, 1, 1, v151);
            v1[11] = 0;
            *(v1 + 9) = 0u;
            *(v1 + 7) = 0u;
            MEMORY[0x277C668C0](v144, v143, MEMORY[0x277D84F90], v1 + 7);

            outlined destroy of AceOutput?((v1 + 7), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
            outlined destroy of AceOutput?(v143, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
            outlined destroy of AceOutput?(v228, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            (logb)(v140, 0, 1, v231);
            outlined init with take of AceOutput?(v140, v228, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
LABEL_45:
            v152 = v1[65];
            v154 = v1[39];
            v153 = v1[40];
            outlined init with copy of AceOutput?(v1[67], v152);
            v155 = (*(v153 + 48))(v152, 1, v154);
            v156 = v1[77];
            v157 = v1[67];
            v158 = v1[65];
            if (v155 == 1)
            {
              outlined destroy of AceOutput?(v1[65], &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
              static ExecuteResponse.complete()();

              outlined destroy of AceOutput?(v157, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            }

            else
            {
              v159 = v1[42];
              v160 = v1[43];
              v161 = v1[40];
              v162 = v1[39];
              v240 = v1[67];
              v163 = v1;
              v164 = *(v161 + 32);
              v164(v160, v158, v162);
              static OutputPublisherFactory.makeOutputPublisherAsync()();
              (*(v161 + 16))(v159, v160, v162);
              v165 = (*(v161 + 80) + 16) & ~*(v161 + 80);
              v166 = swift_allocObject();
              v164(v166 + v165, v159, v162);
              v1 = v163;
              type metadata accessor for SimpleOutputFlowAsync();
              swift_allocObject();
              v163[35] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
              static ExecuteResponse.complete<A>(next:)();

              (*(v161 + 8))(v160, v162);
              outlined destroy of AceOutput?(v240, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
      }

      v65 = v1[72];
      v66 = v1[69];
      v67 = v1[68];
      v68 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v66 + 16))(v65, v68, v67);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_274C46000, v69, v70, "There was no synchronousBurstIndex present in the data. Exiting silently.", v71, 2u);
        MEMORY[0x277C67550](v71, -1, -1);
      }

      v72 = v1[72];
      v73 = v1[69];
      v74 = v1[68];

      (*(v73 + 8))(v72, v74);
      static ExecuteResponse.complete()();

      goto LABEL_23;
    }

    v55 = v1[71];
    v56 = v1[69];
    v57 = v1[68];
    v58 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v56 + 16))(v55, v58, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_274C46000, v59, v60, "Could not get a workout voice feedback object from the data. Exiting silently.", v61, 2u);
      MEMORY[0x277C67550](v61, -1, -1);
    }

    v62 = v1[71];
    v63 = v1[69];
    v64 = v1[68];

    (*(v63 + 8))(v62, v64);
  }

  else
  {
    v43 = v0[70];
    v44 = v0[69];
    v45 = v0[68];
    v46 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v44 + 16))(v43, v46, v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v1[70];
    v51 = v1[69];
    v52 = v1[68];
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v241[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000274C6CC70, v241);
      _os_log_impl(&dword_274C46000, v47, v48, "No data was given to %s. Exiting silently.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x277C67550](v54, -1, -1);
      MEMORY[0x277C67550](v53, -1, -1);
    }

    (*(v51 + 8))(v50, v52);
  }

  static ExecuteResponse.complete()();
LABEL_23:

  v75 = v1[1];

  return v75();
}

{

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = [objc_allocWithZone(MEMORY[0x277D47B98]) init];
  [v4 setName_];

  v5 = [v3 voiceLanguage];
  [v4 setLanguageString_];

  [v2 setPreferredSpeakableTextVoice_];
  v6 = [v3 feedbackIntensity];
  if (v6 <= 2)
  {
    v7 = *(v0 + 640);
    v8 = **(&unk_279EF7D30 + v6);
    [v7 setPreferredSpeakableTextPromptStyle_];

    v4 = v8;
  }

  v9 = *(v0 + 648);
  v40 = *(v0 + 624);
  v37 = *(v0 + 640);
  v38 = *(v0 + 536);
  v10 = *(v0 + 528);
  v11 = *(v0 + 512);
  v12 = *(v0 + 496);
  v13 = *(v0 + 352);
  v39 = *(v0 + 312);
  v14 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v9(v11, v12);
  v18 = MEMORY[0x277C66D70](v15, v17);

  [v14 setAceId_];

  [v14 setDialogPhase_];
  [v14 setResponseMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_274C6CC60;
  *(v19 + 32) = v37;
  type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setViews_];

  [v14 setImmersiveExperience_];
  v21 = type metadata accessor for NLContextUpdate();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x277C668C0](v14, v13, MEMORY[0x277D84F90], v0 + 56);

  outlined destroy of AceOutput?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of AceOutput?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  outlined destroy of AceOutput?(v38, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  v40(v10, 0, 1, v39);
  outlined init with take of AceOutput?(v10, v38, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  v22 = *(v0 + 520);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  outlined init with copy of AceOutput?(*(v0 + 536), v22);
  v25 = (*(v24 + 48))(v22, 1, v23);
  v26 = *(v0 + 616);
  v27 = *(v0 + 536);
  if (v25 == 1)
  {
    outlined destroy of AceOutput?(*(v0 + 520), &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    static ExecuteResponse.complete()();

    outlined destroy of AceOutput?(v27, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  else
  {
    v28 = *(v0 + 336);
    v29 = *(v0 + 344);
    v30 = *(v0 + 320);
    v31 = *(v0 + 312);
    v32 = *(v30 + 32);
    v32(v29, *(v0 + 520), v31);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    (*(v30 + 16))(v28, v29, v31);
    v41 = v27;
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    v32(v34 + v33, v28, v31);
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 280) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v30 + 8))(v29, v31);
    outlined destroy of AceOutput?(v41, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  v35 = *(v0 + 8);

  return v35();
}

{

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);

  outlined consume of Data._Representation(v3, v2);
  v4 = *(v0 + 520);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  outlined init with copy of AceOutput?(*(v0 + 536), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = *(v0 + 616);
    v8 = *(v0 + 536);
    outlined destroy of AceOutput?(*(v0 + 520), &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    static ExecuteResponse.complete()();

    outlined destroy of AceOutput?(v8, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  else
  {
    v18 = *(v0 + 616);
    v19 = *(v0 + 536);
    v9 = *(v0 + 336);
    v10 = *(v0 + 344);
    v11 = *(v0 + 320);
    v12 = *(v0 + 312);
    v13 = *(v11 + 32);
    v13(v10, *(v0 + 520), v12);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    (*(v11 + 16))(v9, v10, v12);
    v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v15 = swift_allocObject();
    v13(v15 + v14, v9, v12);
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 280) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v11 + 8))(v10, v12);
    outlined destroy of AceOutput?(v19, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t VoiceFeedbackAnnouncementFlow.playTone()()
{
  v1 = type metadata accessor for Logger();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.playTone(), 0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  v0[15] = v1;
  type metadata accessor for VoiceFeedbackAnnouncementResourceAnchor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = MEMORY[0x277C66D70](0xD000000000000010, 0x8000000274C700C0);
  v5 = MEMORY[0x277C66D70](6709603, 0xE300000000000000);
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[13];
  v8 = v0[14];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v9, v7, 1, v10);
  outlined init with take of AceOutput?(v9, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = v0[14];
  if (v12 == 1)
  {
    outlined destroy of AceOutput?(v0[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v14 = 0;
  }

  else
  {
    v15 = URL.path(percentEncoded:)(1);
    (*(v11 + 8))(v13, v10);
    v14 = MEMORY[0x277C66D70](v15._countAndFlagsBits, v15._object);
  }

  [v1 setItemURL_];

  type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  [v1 setVolume_];

  static AceService.currentAsync.getter();
  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  v19 = swift_task_alloc();
  v0[16] = v19;
  v20 = type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  *v19 = v0;
  v19[1] = VoiceFeedbackAnnouncementFlow.playTone();

  return MEMORY[0x2821BB6A0](v1, v17, v20, v18);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{
  v22 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 136);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000274C6CC70, &v21);
    *(v14 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_274C46000, v7, v8, "%s caught an error in submitting Ace commands: %@", v14, 0x16u);
    outlined destroy of AceOutput?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x277C67550](v16, -1, -1);
    MEMORY[0x277C67550](v14, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t VoiceFeedbackAnnouncementFlow.playTone()(void *a1)
{
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = VoiceFeedbackAnnouncementFlow.playTone();
  }

  else
  {

    v4 = VoiceFeedbackAnnouncementFlow.playTone();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #1 in VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

uint64_t closure #1 in VoiceFeedbackAnnouncementFlow.execute()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for AceOutput();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v6 = v0[1];

  return v6();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return VoiceFeedbackAnnouncementFlow.execute()(a1);
}

uint64_t protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

{
  return a1();
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
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of AceOutput?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274C4BBF4()
{
  v1 = type metadata accessor for AceOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return closure #1 in VoiceFeedbackAnnouncementFlow.execute()(a1, v1 + v5);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    type metadata accessor for Locale.LanguageCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackAnnouncementFlow(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackAnnouncementFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined init with take of AceOutput?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for SAUIAudioDescription(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined destroy of AceOutput?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

WorkoutAnnouncements::GoalCompletionModel __swiftcall GoalCompletionModel.init(magnitude:unit:)(Swift::Double magnitude, Swift::String unit)
{
  *v2 = 1;
  *(v2 + 8) = magnitude;
  *(v2 + 16) = unit;
  result.alertType = unit._countAndFlagsBits;
  result.unit._countAndFlagsBits = unit._object;
  result.magnitude = magnitude;
  return result;
}

uint64_t static GoalCompletionModel.== infix(_:_:)(double *a1, double *a2, __n128 a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GoalCompletionModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GoalCompletionModel.CodingKeys()
{
  v1 = 0x647574696E67616DLL;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GoalCompletionModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized GoalCompletionModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v11[1] = *(v1 + 3);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v14 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t GoalCompletionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16[15];
  v16[13] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v16[12] = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GoalCompletionModel(double *a1, double *a2, __n128 a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  result = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GoalCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GoalCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GoalCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void __swiftcall VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)(WorkoutAnnouncements::VoiceFeedbackTargetZone *__return_ptr retstr, Swift::Double minMagnitude, Swift::Double maxMagnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackMetricType metricType, WorkoutAnnouncements::VoiceFeedbackPaceFormat_optional paceFormat, Swift::Int_optional zoneIndex)
{
  v7 = *metricType;
  v8 = *paceFormat.value;
  retstr->minMagnitude = minMagnitude;
  retstr->maxMagnitude = maxMagnitude;
  retstr->unit = unit;
  retstr->metricType = v7;
  retstr->paceFormat.value = v8;
  *(&retstr->zoneIndex.value + 6) = zoneIndex.value;
  LOBYTE(retstr[1].minMagnitude) = zoneIndex.is_nil;
  BYTE1(retstr[1].minMagnitude) = minMagnitude == maxMagnitude;
}

uint64_t VoiceFeedbackTargetZone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v38[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v38[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v38[0]) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v38[0]) = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  VoiceFeedbackMetricType.init(rawValue:)(v17);
  if (LOBYTE(v38[0]) == 8)
  {
    LOBYTE(v38[0]) = 3;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>();
LABEL_6:
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v33 = LOBYTE(v38[0]);
  LOBYTE(v38[0]) = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v19)
  {
    v20 = 2;
  }

  else
  {
    if (!v18)
    {
      v32 = 0;
      goto LABEL_13;
    }

    if (v18 != 1)
    {
      LOBYTE(v38[0]) = 4;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>();
      goto LABEL_6;
    }

    v20 = 1;
  }

  v32 = v20;
LABEL_13:
  LOBYTE(v38[0]) = 5;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v21 & 1;
  v45 = 6;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v23 = v22 & 1;
  v30 = v22 & 1;
  *&v34 = v10;
  *(&v34 + 1) = v12;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  v24 = v32;
  v25 = v33;
  LOBYTE(v36) = v33;
  BYTE1(v36) = v32;
  v26 = v31;
  *(&v36 + 1) = v31;
  v27 = v44;
  LOBYTE(v37) = v44;
  HIBYTE(v37) = v23;
  v28 = v35;
  *a2 = v34;
  *(a2 + 16) = v28;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  outlined init with copy of VoiceFeedbackTargetZone(&v34, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v10;
  v38[1] = v12;
  v38[2] = v14;
  v38[3] = v16;
  v39 = v25;
  v40 = v24;
  v41 = v26;
  v42 = v27;
  v43 = v30;
  return outlined destroy of VoiceFeedbackTargetZone(v38);
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>);
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance VoiceFeedbackTargetZone.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696E67614D6E696DLL;
  v3 = 0x65646E49656E6F7ALL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x795463697274656DLL;
  if (v1 != 3)
  {
    v4 = 0x6D726F4665636170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696E67614D78616DLL;
  if (v1 != 1)
  {
    v5 = 1953066613;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceFeedbackTargetZone.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized VoiceFeedbackTargetZone.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceFeedbackTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceFeedbackTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceFeedbackTargetZone.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  LODWORD(v7) = *(v1 + 32);
  v16 = *(v1 + 33);
  v17 = v7;
  v8 = *(v1 + 48);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 0;
  v13 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LODWORD(v20) = v8;
    v28 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v17;
    v25 = 3;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v16;
    v23 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t specialized static VoiceFeedbackTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 33);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 49);
    v10 = *(a2 + 32);
    v11 = *(a2 + 33);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 49);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
    {
      if (v5 != v10)
      {
        return 0;
      }

LABEL_9:
      if (v6 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }
      }

      else if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
      {
        return 0;
      }

      if (v8)
      {
        if (!v13)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v12)
        {
          v16 = v13;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          return 0;
        }
      }

      return v9 ^ v14 ^ 1u;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v15 & 1) != 0 && v5 == v10)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for VoiceFeedbackTargetZone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackTargetZone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackTargetZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackTargetZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized VoiceFeedbackTargetZone.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x696E67614D6E696DLL && a2 == 0xEC00000065647574;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696E67614D78616DLL && a2 == 0xEC00000065647574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795463697274656DLL && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646E49656E6F7ALL && a2 == 0xE900000000000078 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000274C6FF80 == a2)
  {

    return 6;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void __swiftcall DistanceSplitModel.init(index:paceMagnitude:duration:unit:paceFormat:)(WorkoutAnnouncements::DistanceSplitModel *__return_ptr retstr, Swift::Int index, Swift::Double paceMagnitude, Swift::Double_optional duration, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackPaceFormat paceFormat)
{
  v7 = *v6;
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_transitionedNotableDistance;
  retstr->index = index;
  retstr->magnitude = paceMagnitude;
  retstr->duration.value = *&duration.is_nil;
  retstr->duration.is_nil = unit._countAndFlagsBits & 1;
  retstr->unit._countAndFlagsBits = unit._object;
  retstr->unit._object = paceFormat;
  retstr->paceFormat = v7;
  retstr->shouldOmitDuration = unit._countAndFlagsBits & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DistanceSplitModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0x6D726F4665636170;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 1953066613;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x647574696E67616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DistanceSplitModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized DistanceSplitModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DistanceSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DistanceSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DistanceSplitModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v17 = *(v1 + 3);
  v18 = v9;
  v16 = v1[32];
  v10 = *(v1 + 5);
  v14 = *(v1 + 6);
  v15 = v10;
  LODWORD(v10) = v1[56];
  v12 = v1[57];
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v8;
  v26 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v25 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v13;
    v20 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DistanceSplitModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v29) = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v32[0];
  v32[0] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v32[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v32[0] = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v13 & 1;
  v32[0] = 4;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v14;
  LOBYTE(v29) = 5;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v32[0];
  v41 = 6;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v23 = v15 & 1;
  LOBYTE(v29) = v9;
  *(&v29 + 1) = v10;
  *&v30 = v12;
  v16 = v27;
  v17 = v28;
  *(&v30 + 1) = v28;
  v24 = v42;
  v31[0] = v42;
  v18 = v26;
  *&v31[8] = v26;
  *&v31[16] = v27;
  v19 = v25;
  v31[24] = v25;
  v31[25] = v23;
  v20 = v30;
  *a2 = v29;
  a2[1] = v20;
  *(a2 + 42) = *&v31[10];
  a2[2] = *v31;
  outlined init with copy of DistanceSplitModel(&v29, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v32[0] = v9;
  v33 = v10;
  v34 = v12;
  v35 = v17;
  v36 = v24;
  v37 = v18;
  v38 = v16;
  v39 = v19;
  v40 = v23;
  return outlined destroy of DistanceSplitModel(v32);
}

uint64_t specialized static DistanceSplitModel.== infix(_:_:)(unsigned __int8 *a1, double *a2, __n128 a3)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == a2[2])
  {
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
    v7 = a1[56];
    v8 = a1[57];
    v9 = *(a2 + 56);
    v10 = *(a2 + 57);
    if (a1[32])
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 3) == a2[3])
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    if (v5 == *(a2 + 5) && v6 == *(a2 + 6))
    {
      if (v7 != v9)
      {
        return 0;
      }

      return v8 ^ v10 ^ 1u;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v12 & 1) != 0 && ((v7 ^ v9) & 1) == 0)
    {
      return v8 ^ v10 ^ 1u;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DistanceSplitModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  a1[2] = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  result = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel()
{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DistanceSplitModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DistanceSplitModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized DistanceSplitModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000274C70010 == a2)
  {

    return 6;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

WorkoutAnnouncements::HalfwayGoalCompletionModel __swiftcall HalfwayGoalCompletionModel.init(magnitude:unit:)(Swift::Double magnitude, Swift::String unit)
{
  *v2 = 2;
  *(v2 + 8) = magnitude;
  *(v2 + 16) = unit;
  result.alertType = unit._countAndFlagsBits;
  result.unit._countAndFlagsBits = unit._object;
  result.magnitude = magnitude;
  return result;
}

uint64_t static HalfwayGoalCompletionModel.== infix(_:_:)(double *a1, double *a2, __n128 a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HalfwayGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HalfwayGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HalfwayGoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v11[1] = *(v1 + 3);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v14 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HalfwayGoalCompletionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16[15];
  v16[13] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v16[12] = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HalfwayGoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  result = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackAlertType_optional __swiftcall VoiceFeedbackAlertType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 7;
  switch(rawValue)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v2 = 1;
      goto LABEL_19;
    case 2:
      v2 = 2;
      goto LABEL_19;
    case 3:
      v2 = 3;
      goto LABEL_19;
    case 4:
      v2 = 4;
      goto LABEL_19;
    case 5:
      v2 = 5;
      goto LABEL_19;
    case 6:
      v2 = 6;
LABEL_19:
      v3 = v2;
      goto LABEL_20;
    case 7:
LABEL_20:
      *v1 = v3;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    default:
      *v1 = 25;
      break;
  }

  return rawValue;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackAlertType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackAlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

WorkoutAnnouncements::WorkoutReminderControlsFlow __swiftcall WorkoutReminderControlsFlow.init(invocation:)(WorkoutAnnouncements::WorkoutReminderControlsFlow invocation)
{
  *v1 = **&invocation.invocation.action;
  *(v1 + 8) = *(*&invocation.invocation.action + 8);
  return invocation;
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow;
  if (!lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow);
  }

  return result;
}

uint64_t WorkoutReminderControlsFlow.execute()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderControlsFlow.execute(), 0, 0);
}

{
  v17 = v1;
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[7];
  v9 = v1[8];
  v11 = v1[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000274C6D810, &v16);
    _os_log_impl(&dword_274C46000, v6, v7, "%s should only be called on Apple Watch", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x277C67550](v13, -1, -1);
    MEMORY[0x277C67550](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  static ExecuteResponse.complete()();

  v14 = v1[1];

  return v14();
}

uint64_t protocol witness for Flow.execute() in conformance WorkoutReminderControlsFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return WorkoutReminderControlsFlow.execute()(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReminderControlsFlow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutReminderControlsFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
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

void __swiftcall LapCompletionModel.init(index:paceMagnitude:unit:paceFormat:)(WorkoutAnnouncements::LapCompletionModel *__return_ptr retstr, Swift::Int index, Swift::Double paceMagnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackPaceFormat paceFormat)
{
  v5 = *paceFormat;
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_lapCompletion;
  retstr->index = index;
  retstr->magnitude = paceMagnitude;
  retstr->unit = unit;
  retstr->paceFormat = v5;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LapCompletionModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0x647574696E67616DLL;
  v4 = 1953066613;
  if (v1 != 3)
  {
    v4 = 0x6D726F4665636170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LapCompletionModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized LapCompletionModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LapCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LapCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LapCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 4);
  v16 = *(v1 + 3);
  v17 = v9;
  v15 = v10;
  v14 = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v8;
  v23 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v14;
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v11;
    v18 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LapCompletionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v26;
  v24 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v22 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v13;
  v20 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v14 = v21;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  v15 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t specialized static LapCompletionModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    v5 = a1[40];
    v6 = a2[40];
    if (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4))
    {
      return v5 ^ v6 ^ 1u;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v7)
    {
      return v5 ^ v6 ^ 1u;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LapCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  a1[2] = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  result = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel()
{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LapCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LapCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LapCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LapCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LapCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461)
  {

    return 4;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t WorkoutReminderAnnouncementFlow.__allocating_init(flowConfig:deviceResolutionService:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  swift_storeEnumTagMultiPayload();
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a1, v4 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a2, v4 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService);
  return v4;
}

uint64_t WorkoutReminderAnnouncementFlow.init(flowConfig:deviceResolutionService:)(__int128 *a1, __int128 *a2)
{
  type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  swift_storeEnumTagMultiPayload();
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a1, v2 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a2, v2 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService);
  return v2;
}

uint64_t _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t WorkoutReminderAnnouncementFlow.on(input:)()
{
  v0 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse.DirectInvocation();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  Input.parse.getter();
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D5C150])
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  (*(v4 + 96))(v6, v3);
  (*(v8 + 32))(v13, v6, v7);
  v14 = Parse.DirectInvocation.identifier.getter();
  if (one-time initialization token for identifier != -1)
  {
    v25 = v14;
    v26 = v15;
    swift_once();
    v14 = v25;
    v15 = v26;
  }

  if (v14 == static WorkoutReminderAnnouncementDirectInvocation.identifier && v15 == *algn_28099C0A8)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      (*(v8 + 8))(v13, v7);
      return 0;
    }
  }

  (*(v8 + 16))(v11, v13, v7);
  WorkoutReminderAnnouncementDirectInvocation.init(directInvocation:)(v11, &v28);
  (*(v8 + 8))(v13, v7);
  if (v28)
  {
    v18 = v32;
    v19 = v31;
    v20 = v30;
    v21 = v29;
    *v2 = v28;
    *(v2 + 8) = v21;
    v2[24] = v20 & 1;
    *(v2 + 4) = v19;
    *(v2 + 5) = v18;
    swift_storeEnumTagMultiPayload();
    v22 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
    v23 = v27[1];
    swift_beginAccess();
    outlined assign with take of WorkoutReminderAnnouncementFlow.State(v2, v23 + v22);
    swift_endAccess();
    return 1;
  }

  return 0;
}

uint64_t WorkoutReminderAnnouncementFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkoutReminderAnnouncementFlow(0);
  lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow, type metadata accessor for WorkoutReminderAnnouncementFlow, &protocol conformance descriptor for WorkoutReminderAnnouncementFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WorkoutReminderAnnouncementFlow.execute()(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  v2[54] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[58] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[59] = v4;
  v2[60] = *(v4 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.execute(), 0, 0);
}

{
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.execute(), 0, 0);
}

{
  v2 = v1[65];
  v4 = v1[56];
  v3 = v1[57];
  v5 = v1[55];
  if (v1[68])
  {
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    static ExecuteResponse.complete()();
  }

  (*(v4 + 8))(v3, v5);

  v6 = v1[1];

  return v6();
}

uint64_t WorkoutReminderAnnouncementFlow.execute()()
{
  v70 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);
  v3 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkoutReminderAnnouncementFlow.State(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 512);
      v7 = *(v0 + 448);
      v6 = *(v0 + 456);
      v8 = *(v0 + 440);
      v9 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMR) + 48));
      v10 = *v9;
      *(v0 + 520) = *v9;
      v11 = v9[1];
      v12 = v9[2];
      *(v0 + 528) = v12;
      v13 = *(v9 + 24);
      v14 = v9[4];
      v15 = v9[5];
      (*(v7 + 32))(v6, v5, v8);
      *(v0 + 64) = v10;
      *(v0 + 72) = v11;
      *(v0 + 80) = v12;
      *(v0 + 88) = v13;
      *(v0 + 96) = v14;
      *(v0 + 104) = v15;
      v16 = swift_task_alloc();
      *(v0 + 536) = v16;
      *v16 = v0;
      v16[1] = WorkoutReminderAnnouncementFlow.execute();
      v17 = *(v0 + 456);

      return WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(v17, (v0 + 64));
    }

    v49 = *(v0 + 496);
    v50 = *(v0 + 472);
    v51 = *(v0 + 480);
    v52 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v51 + 16))(v49, v52, v50);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 496);
    v58 = *(v0 + 472);
    v57 = *(v0 + 480);
    if (v55)
    {
      v68 = *(v0 + 496);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69[0] = v60;
      *v59 = 136315394;
      v61 = _typeName(_:qualified:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v69);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = _typeName(_:qualified:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v69);

      *(v59 + 14) = v66;
      _os_log_impl(&dword_274C46000, v53, v54, "%s.execute() called before %s.on(input:) returned true", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C67550](v60, -1, -1);
      MEMORY[0x277C67550](v59, -1, -1);

      (*(v57 + 8))(v68, v58);
    }

    else
    {

      (*(v57 + 8))(v56, v58);
    }

    static ExecuteResponse.complete()();
  }

  else
  {
    v19 = *(v0 + 512);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 472);
    v24 = v19[1];
    v23 = v19[2];
    *(v0 + 16) = *v19;
    *(v0 + 32) = v24;
    *(v0 + 48) = v23;
    v25 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v21 + 16))(v20, v25, v22);
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 112);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    outlined destroy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = *(v0 + 16);
      *(v28 + 4) = v30;
      *v29 = v30;
      v31 = v30;
      _os_log_impl(&dword_274C46000, v26, v27, "Making an annoucement for %@", v28, 0xCu);
      outlined destroy of AceOutput?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x277C67550](v29, -1, -1);
      MEMORY[0x277C67550](v28, -1, -1);
    }

    v33 = *(v0 + 480);
    v32 = *(v0 + 488);
    v34 = *(v0 + 472);
    v35 = *(v0 + 424);

    (*(v33 + 8))(v32, v34);
    v36 = type metadata accessor for WorkoutRemindersCATPatternsExecutor(0);
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 160);
    static CATOption.defaultMode.getter();
    v37 = CATWrapper.__allocating_init(options:globals:)();
    v38 = type metadata accessor for ResponseFactory();
    swift_allocObject();
    v39 = ResponseFactory.init()();
    v40 = MEMORY[0x277D5BD58];
    *(v0 + 280) = v38;
    *(v0 + 288) = v40;
    *(v0 + 256) = v39;
    *(v0 + 320) = v36;
    *(v0 + 328) = &protocol witness table for WorkoutRemindersCATPatternsExecutor;
    *(v0 + 296) = v37;
    type metadata accessor for WorkoutReminderPromptStrategy();
    v41 = swift_allocObject();
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v36);
    v43 = *(v36 - 8);
    v44 = swift_task_alloc();
    (*(v43 + 16))(v44, v42, v36);
    v45 = *v44;
    *(v41 + 88) = v36;
    *(v41 + 96) = &protocol witness table for WorkoutRemindersCATPatternsExecutor;
    *(v41 + 64) = v45;
    v46 = *(v0 + 48);
    *(v41 + 32) = *(v0 + 32);
    *(v41 + 48) = v46;
    *(v41 + 16) = *(v0 + 16);
    _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0((v0 + 256), v41 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));

    static OutputPublisherFactory.makeOutputPublisherAsync()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMR);
    swift_allocObject();
    lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type WorkoutReminderPromptStrategy and conformance WorkoutReminderPromptStrategy, type metadata accessor for WorkoutReminderPromptStrategy, &protocol conformance descriptor for WorkoutReminderPromptStrategy);
    *(v0 + 408) = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
    v47 = swift_allocObject();
    *(v47 + 16) = v35;
    v48 = *(v0 + 32);
    *(v47 + 24) = *(v0 + 16);
    *(v47 + 40) = v48;
    *(v47 + 56) = *(v0 + 48);
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 208);
    lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMR, MEMORY[0x277D5B478]);

    static ExecuteResponse.replan<A>(next:childCompletion:)();
    outlined destroy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16);
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t closure #1 in WorkoutReminderAnnouncementFlow.execute()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMR) + 48)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = a3[1];
  *v9 = *a3;
  v9[1] = v11;
  v9[2] = a3[2];
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(a3, v15);
  outlined assign with take of WorkoutReminderAnnouncementFlow.State(v8, a2 + v12);
  return swift_endAccess();
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 248) = v6;
  *(v3 + 256) = *(v6 - 8);
  *(v3 + 264) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 272) = v7;
  *(v3 + 280) = v8;
  *(v3 + 288) = *(a2 + 1);
  *(v3 + 338) = *(a2 + 24);
  *(v3 + 304) = a2[4];
  *(v3 + 312) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponse(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(uint64_t a1)
{
  v63 = v1;
  v2 = *(v1 + 272);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  v5 = *(v1 + 240);
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = *(v1 + 200);
  v9 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v59 = *(v4 + 16);
  v60 = v9;
  v59(v2, v9, v3);
  v61 = *(v7 + 16);
  v61(v5, v8, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 272);
  v14 = *(v1 + 248);
  v15 = *(v1 + 256);
  v16 = *(v1 + 240);
  v18 = *(v1 + 216);
  v17 = *(v1 + 224);
  if (v12)
  {
    v58 = v11;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v62 = v20;
    *v19 = 136315138;
    lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(&lazy protocol witness table cache variable for type PromptResult<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR, MEMORY[0x277D5BC48]);
    v56 = v14;
    v57 = v13;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    log = v10;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v62);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_274C46000, log, v58, "ExitValue from Workout Reminder prompt: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x277C67550](v20, -1, -1);
    MEMORY[0x277C67550](v19, -1, -1);

    v26 = v24;
    v27 = *(v15 + 8);
    v27(v57, v56);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = *(v15 + 8);
    v27(v13, v14);
  }

  v28 = *(v1 + 224);
  v29 = *(v1 + 232);
  v30 = *(v1 + 216);
  v61(v29, *(v1 + 200), v30);
  if ((*(v28 + 88))(v29, v30) == *MEMORY[0x277D5BC38])
  {
    v31 = *(v1 + 338);
    v32 = *(v1 + 232);
    v33 = *(v1 + 208);
    (*(*(v1 + 224) + 96))(v32, *(v1 + 216));
    v34 = *v32;
    v35 = (v33 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
    v36 = *(v33 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig + 24);
    v37 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v37 + 8))(v36, v37);
    __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
    LOBYTE(v32) = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 112));
    v38 = *(v1 + 312);
    v40 = *(v1 + 296);
    v39 = *(v1 + 304);
    v42 = *(v1 + 280);
    v41 = *(v1 + 288);
    if (v32)
    {
      *(v1 + 337) = v34;
      *(v1 + 64) = v42;
      *(v1 + 72) = v41;
      *(v1 + 80) = v40;
      *(v1 + 88) = v31;
      *(v1 + 96) = v39;
      *(v1 + 104) = v38;
      v43 = swift_task_alloc();
      *(v1 + 320) = v43;
      *v43 = v1;
      v43[1] = WorkoutReminderAnnouncementFlow.handleResponse(_:to:);

      return WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)((v1 + 337), (v1 + 64));
    }

    else
    {
      *(v1 + 336) = v34;
      *(v1 + 16) = v42;
      *(v1 + 24) = v41;
      *(v1 + 32) = v40;
      *(v1 + 40) = v31;
      *(v1 + 48) = v39;
      *(v1 + 56) = v38;
      v54 = swift_task_alloc();
      *(v1 + 328) = v54;
      *v54 = v1;
      v54[1] = WorkoutReminderAnnouncementFlow.handleResponse(_:to:);

      return WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)((v1 + 336), (v1 + 16));
    }
  }

  else
  {
    v45 = *(v1 + 264);
    v46 = *(v1 + 248);
    v26(*(v1 + 232), *(v1 + 216));
    swift_beginAccess();
    v59(v45, v60, v46);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v1 + 264);
    v51 = *(v1 + 248);
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_274C46000, v47, v48, "Did not receive a response from the strategy, treating as an ignore", v52, 2u);
      MEMORY[0x277C67550](v52, -1, -1);
    }

    v27(v50, v51);

    v53 = *(v1 + 8);

    return v53(0);
  }
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)(_BYTE *a1, uint64_t *a2)
{
  v4 = v2;
  *(v3 + 160) = v4;
  *(v3 + 168) = *v4;
  v7 = type metadata accessor for Logger();
  *(v3 + 176) = v7;
  *(v3 + 184) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v3 + 257) = *a1;
  v9 = *a2;
  *(v3 + 192) = v8;
  *(v3 + 200) = v9;
  *(v3 + 208) = *(a2 + 1);
  *(v3 + 258) = *(a2 + 24);
  *(v3 + 224) = a2[4];
  *(v3 + 232) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)()
{
  v28 = v0;
  v1 = (*(v0 + 160) + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v4 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  if (v4)
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 224);
    v7 = *(v0 + 258);
    v8 = *(v0 + 200);
    *(v0 + 256) = *(v0 + 257);
    *(v0 + 16) = v8;
    *(v0 + 24) = *(v0 + 208);
    *(v0 + 40) = v7;
    *(v0 + 48) = v6;
    *(v0 + 56) = v5;
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:);

    return specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)((v0 + 256), (v0 + 16));
  }

  else
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 176);
    v14 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v12 + 16))(v11, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 176);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_274C46000, v15, v16, "%s.handleResponseForLocalControl should only be called from a watch", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x277C67550](v22, -1, -1);
      MEMORY[0x277C67550](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);

    v26 = *(v0 + 8);

    return v26(0);
  }
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 257);
  v3 = [*(v0 + 200) predictionIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 128) = v2;
  *(v0 + 136) = v4;
  *(v0 + 144) = v6;
  lazy protocol witness table accessor for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow();
  v7 = Flow.eraseToAnyFlow()();

  if (v1)
  {
    v8 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_274C6DB30;
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;
    type metadata accessor for SequenceFlow();
    swift_allocObject();

    *(v0 + 152) = SequenceFlow.init(with:)();
    lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type SequenceFlow and conformance SequenceFlow, MEMORY[0x277D10CA0], MEMORY[0x277D10C98]);
    v10 = Flow.eraseToAnyFlow()();

    v7 = v10;
  }

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(_BYTE *a1, uint64_t *a2)
{
  v4 = v2;
  *(v3 + 256) = v4;
  *(v3 + 264) = *v4;
  v7 = type metadata accessor for Logger();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v3 + 401) = *a1;
  v9 = *a2;
  *(v3 + 304) = v8;
  *(v3 + 312) = v9;
  *(v3 + 320) = *(a2 + 1);
  *(v3 + 402) = *(a2 + 24);
  *(v3 + 336) = a2[4];
  *(v3 + 344) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)()
{
  v33 = v0;
  v1 = *(v0 + 256);
  v2 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig;
  *(v0 + 352) = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  (*(v5 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v6 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  if (v6)
  {
    v7 = *(v0 + 304);
    v8 = *(v0 + 272);
    v9 = *(v0 + 280);
    v10 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 304);
    v15 = *(v0 + 272);
    v16 = *(v0 + 280);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v32);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_274C46000, v11, v12, "%s.handleResponseForRemoteControl should not be called from a watch", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x277C67550](v18, -1, -1);
      MEMORY[0x277C67550](v17, -1, -1);
    }

    (*(v16 + 8))(v14, v15);

    v22 = *(v0 + 8);

    return v22(0);
  }

  else
  {
    v24 = *(v0 + 401);
    v25 = [*(v0 + 312) predictionIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    LOBYTE(v32[0]) = v24;
    v32[1] = v26;
    v32[2] = v28;
    v29 = v3[3];
    v30 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v29);
    (*(v30 + 8))(v29, v30);
    *(v0 + 360) = WorkoutReminderControlsDirectInvocation.asStartLocalRequest(device:)((v0 + 104));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

    v31 = swift_task_alloc();
    *(v0 + 368) = v31;
    *v31 = v0;
    v31[1] = WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:);

    return WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()();
  }
}

{
  v1 = *(v0 + 376);

  v2 = *(v0 + 392);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

{
  v46 = v1;
  v2 = *(v1 + 376);
  v3 = *(v1 + 272);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = *(v1 + 296);
    v6 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v4 + 16))(v5, v6, v3);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v1 + 376);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v7;
      *v12 = v10;
      v13 = v7;
      _os_log_impl(&dword_274C46000, v8, v9, "Submitting startLocalRequest to remote device: %@", v11, 0xCu);
      outlined destroy of AceOutput?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x277C67550](v12, -1, -1);
      MEMORY[0x277C67550](v11, -1, -1);
    }

    v14 = *(v1 + 352);
    v15 = *(v1 + 344);
    v42 = *(v1 + 402);
    v43 = *(v1 + 336);
    v41 = *(v1 + 328);
    v40 = *(v1 + 312);
    v16 = *(v1 + 401);
    v17 = *(v1 + 296);
    v18 = *(v1 + 272);
    v19 = *(v1 + 280);
    v20 = *(v1 + 256);

    (*(v19 + 8))(v17, v18);
    v21 = *(v20 + v14 + 24);
    v22 = *(v20 + v14 + 32);
    __swift_project_boxed_opaque_existential_1((v20 + v14), v21);
    (*(v22 + 16))(v21, v22);
    __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
    DeviceUnit.assistantId.getter();
    type metadata accessor for SABaseCommand();
    dispatch thunk of AceServiceInvoker.submitToRemote<A>(_:_:completion:)();

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 144));
    *(v1 + 400) = v16;
    *(v1 + 16) = v40;
    *(v1 + 32) = v41;
    *(v1 + 40) = v42;
    *(v1 + 48) = v43;
    *(v1 + 56) = v15;
    v23 = swift_task_alloc();
    *(v1 + 384) = v23;
    *v23 = v1;
    v23[1] = WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:);

    return specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)((v1 + 400), (v1 + 16));
  }

  else
  {
    v25 = *(v1 + 288);
    v26 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v4 + 16))(v25, v26, v3);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 360);
    v32 = *(v1 + 280);
    v31 = *(v1 + 288);
    v33 = *(v1 + 272);
    if (v29)
    {
      v44 = *(v1 + 288);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v45);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_274C46000, v27, v28, "%s cannot find remote Watch", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x277C67550](v35, -1, -1);
      MEMORY[0x277C67550](v34, -1, -1);

      (*(v32 + 8))(v44, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v39 = *(v1 + 8);

    return v39(0);
  }
}

{
  *(*v1 + 392) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

uint64_t closure #1 in WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  outlined init with copy of Result<SABaseCommand, SubmitCommandError>(a1, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    outlined init with copy of Result<SABaseCommand, SubmitCommandError>(v7, v5);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    outlined destroy of AceOutput?(v7, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_274C46000, v13, v14, "Received response from sending startLocalRequest: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x277C67550](v16, -1, -1);
    MEMORY[0x277C67550](v15, -1, -1);
  }

  else
  {

    outlined destroy of AceOutput?(v7, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()()
{
  v1[7] = v0;
  v2 = type metadata accessor for DeviceIdiom();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

{
  v1 = v0[7];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D61C10], v0[8]);
  v2 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = WorkoutReminderAnnouncementFlow.findRemoteIfAvailable();
  v4 = v0[10];

  return MEMORY[0x282169240](v4, v1 + v2);
}

{
  v1 = v0[12];
  if (v1)
  {
    static AceService.currentAsync.getter();
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = WorkoutReminderAnnouncementFlow.findRemoteIfAvailable();

    return MEMORY[0x282169250](v1, v0 + 2);
  }

  else
  {

    v3 = v0[1];

    return v3(0);
  }
}

{
  v1 = *(v0 + 96);
  if ((*(v0 + 112) & 1) == 0)
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()(char a1)
{
  v2 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.deinit()
{
  outlined destroy of WorkoutReminderAnnouncementFlow.State(v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService));
  return v0;
}

uint64_t WorkoutReminderAnnouncementFlow.__deallocating_deinit()
{
  outlined destroy of WorkoutReminderAnnouncementFlow.State(v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Flow.execute() in conformance WorkoutReminderAnnouncementFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return WorkoutReminderAnnouncementFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WorkoutReminderAnnouncementFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutReminderAnnouncementFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t outlined assign with take of WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274C54AAC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t outlined destroy of WorkoutReminderAnnouncementFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for WorkoutReminderAnnouncementFlow(uint64_t a1)
{
  result = type metadata accessor for WorkoutReminderAnnouncementFlow.State(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of WorkoutReminderAnnouncementFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return v6(a1);
}

void type metadata completion function for WorkoutReminderAnnouncementFlow.State(uint64_t a1)
{
  type metadata accessor for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation)(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation));
    }
  }
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)(_BYTE *a1, uint64_t *a2)
{
  type metadata accessor for DialogPhase();
  *(v2 + 168) = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 200) = v6;
  *(v2 + 208) = *(v6 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  type metadata accessor for CATOption();
  v7 = swift_task_alloc();
  *(v2 + 352) = *a1;
  v8 = *a2;
  *(v2 + 240) = v7;
  *(v2 + 248) = v8;

  return MEMORY[0x2822009F8](specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:), 0, 0);
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  v53 = v3;
  if (*(v3 + 352) > 1u || *(v3 + 352))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v10 = *(v3 + 224);
      v11 = *(v3 + 200);
      v12 = *(v3 + 208);
      v13 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v12 + 16))(v10, v13, v11);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v3 + 224);
      v18 = *(v3 + 200);
      v19 = *(v3 + 208);
      if (v16)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_274C46000, v14, v15, "User did not accept, no dialog will be spoken", v20, 2u);
        MEMORY[0x277C67550](v20, -1, -1);
      }

      (*(v19 + 8))(v17, v18);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [*(v3 + 248) predictionType];
  if (v5 == 3)
  {
    type metadata accessor for WorkoutRemindersCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    *(v3 + 320) = CATWrapper.__allocating_init(options:globals:)();
    v6 = "deviceResolutionService";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v7 = swift_allocObject();
    *(v7 + 32) = 0xD000000000000017;
    *(v7 + 40) = 0x8000000274C701C0;
    *(v7 + 72) = MEMORY[0x277D839B0];
    v50 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v3 + 328) = v7;
    *(v7 + 16) = xmmword_274C6DB40;
    *(v7 + 48) = 0;
    v24 = swift_task_alloc();
    *(v3 + 336) = v24;
    *v24 = v3;
    v24[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v9 = 0xD000000000000026;
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    type metadata accessor for WorkoutRemindersCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    *(v3 + 288) = CATWrapper.__allocating_init(options:globals:)();
    v6 = "executeSashGroupOnWatch";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v7 = swift_allocObject();
    *(v7 + 32) = 0xD000000000000017;
    *(v7 + 40) = 0x8000000274C701C0;
    *(v7 + 72) = MEMORY[0x277D839B0];
    v50 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v3 + 296) = v7;
    *(v7 + 16) = xmmword_274C6DB40;
    *(v7 + 48) = 0;
    v23 = swift_task_alloc();
    *(v3 + 304) = v23;
    *v23 = v3;
    v23[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v9 = 0xD000000000000023;
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    type metadata accessor for WorkoutRemindersCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    *(v3 + 256) = CATWrapper.__allocating_init(options:globals:)();
    v6 = "#acceptedEndWorkout";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v7 = swift_allocObject();
    *(v7 + 32) = 0xD000000000000017;
    *(v7 + 40) = 0x8000000274C701C0;
    *(v7 + 72) = MEMORY[0x277D839B0];
    v50 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v3 + 264) = v7;
    *(v7 + 16) = xmmword_274C6DB40;
    *(v7 + 48) = 0;
    v8 = swift_task_alloc();
    *(v3 + 272) = v8;
    *v8 = v3;
    v8[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v9 = 0xD000000000000025;
LABEL_17:

    return v50(v9, v6 | 0x8000000000000000, v7);
  }

  [*(v3 + 248) predictionType];
  v25 = AFWorkoutPredictionTypeGetName();
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v29 = 0xE90000000000003ELL;
    v27 = 0x4E574F4E4B4E553CLL;
  }

  v30 = *(v3 + 232);
  v31 = *(v3 + 200);
  v32 = *(v3 + 208);
  v33 = [*(v3 + 248) predictionIdentifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v32 + 16))(v30, v37, v31);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v3 + 232);
  v43 = *(v3 + 200);
  v42 = *(v3 + 208);
  if (v40)
  {
    v51 = *(v3 + 200);
    v44 = v34;
    v45 = swift_slowAlloc();
    v49 = v41;
    v46 = swift_slowAlloc();
    v52 = v46;
    *v45 = 136315394;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v52);

    *(v45 + 4) = v47;
    *(v45 + 12) = 2080;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v36, &v52);

    *(v45 + 14) = v48;
    _os_log_impl(&dword_274C46000, v38, v39, "Unknown workout reminder prediction type %s for prediction id %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C67550](v46, -1, -1);
    MEMORY[0x277C67550](v45, -1, -1);

    (*(v42 + 8))(v49, v51);
  }

  else
  {

    (*(v42 + 8))(v41, v43);
  }

LABEL_12:

  v21 = *(v3 + 8);

  return v21(0);
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {

    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[39] = v1;

  if (v1)
  {
    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {

    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[43] = v1;

  if (v1)
  {
    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {

    v4 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 96);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  ResponseFactory.init()();
  type metadata accessor for PatternFlowProvider();
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v5 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = v0[35];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_274C46000, v7, v8, "Failed to create accept start/end workout pattern: %@", v9, 0xCu);
    outlined destroy of AceOutput?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v10, -1, -1);
    MEMORY[0x277C67550](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);

  v13 = v0[1];

  return v13(0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 120);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  ResponseFactory.init()();
  type metadata accessor for PatternFlowProvider();
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v5 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = v0[39];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_274C46000, v7, v8, "Failed to create accept start/end workout pattern: %@", v9, 0xCu);
    outlined destroy of AceOutput?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v10, -1, -1);
    MEMORY[0x277C67550](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);

  v13 = v0[1];

  return v13(0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  ResponseFactory.init()();
  type metadata accessor for PatternFlowProvider();
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v5 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = v0[43];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_274C46000, v7, v8, "Failed to create accept start/end workout pattern: %@", v9, 0xCu);
    outlined destroy of AceOutput?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v10, -1, -1);
    MEMORY[0x277C67550](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);

  v13 = v0[1];

  return v13(0);
}

uint64_t outlined init with copy of Result<SABaseCommand, SubmitCommandError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Encodable.asDictionary()(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v2)
  {

    lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors();
    swift_allocError();
    *v5 = 2;
    return swift_willThrow();
  }

  v7 = v3;
  v8 = v4;

  v9 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16[0] = 0;
  v11 = [v9 propertyListWithData:isa options:0 format:0 error:v16];

  if (v11)
  {
    v12 = v16[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      outlined consume of Data._Representation(v7, v8);
      return v15;
    }

    lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors();
    swift_allocError();
    *v14 = 3;
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  return outlined consume of Data._Representation(v7, v8);
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackKeys_optional __swiftcall VoiceFeedbackKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VoiceFeedbackKeys.rawValue.getter()
{
  result = 0x7079547472656C61;
  switch(*v0)
  {
    case 1:
      result = 0x6574656C706D6F63;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x7865646E69;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x647574696E67616DLL;
      break;
    case 7:
      result = 0x795463697274656DLL;
      break;
    case 8:
    case 0xB:
      result = 0x706574537478656ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x6D726F4665636170;
      break;
    case 0xD:
      result = 0x746E656D676573;
      break;
    case 0xF:
      result = 1953066613;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoiceFeedbackKeys()
{
  v0 = VoiceFeedbackKeys.rawValue.getter();
  v2 = v1;
  if (v0 == VoiceFeedbackKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoiceFeedbackKeys()
{
  Hasher.init(_seed:)();
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoiceFeedbackKeys(uint64_t a1)
{
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoiceFeedbackKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceFeedbackKeys@<X0>(unint64_t *a1@<X8>)
{
  result = VoiceFeedbackKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall AboveTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::AboveTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v10 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneExitedAbove;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v10;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AboveTargetZoneModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0xD000000000000011;
  v4 = 0x6D726F4665636170;
  if (v1 != 4)
  {
    v4 = 0x795463697274656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x647574696E67616DLL;
  if (v1 != 1)
  {
    v5 = 1953066613;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AboveTargetZoneModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized AboveTargetZoneModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AboveTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AboveTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AboveTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v9;
  LODWORD(v9) = v1[32];
  v14 = v1[33];
  v15 = v9;
  HIDWORD(v13) = v1[34];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = v8;
  v25 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v14;
    v11 = BYTE4(v13);
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v10;
    v20 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v11;
    v18 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AboveTargetZoneModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v26 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v25 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v24;
  v21 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v19 & 1;
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 33) = v18;
  *(a2 + 34) = v17;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL specialized static AboveTargetZoneModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v5 = a1[32];
    v6 = a1[33];
    v7 = a1[34];
    v8 = a2[32];
    v9 = a2[33];
    v10 = a2[34];
    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
    {
      if (v5 != v8)
      {
        return 0;
      }

LABEL_9:
      if (v6 == 2)
      {
        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (v9 == 2 || ((v9 ^ v6) & 1) != 0)
      {
        return 0;
      }

      return v7 == v10;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) != 0 && ((v5 ^ v8) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AboveTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  result = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AboveTargetZoneModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AboveTargetZoneModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AboveTargetZoneModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AboveTargetZoneModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized AboveTargetZoneModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000274C6FF80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795463697274656DLL && a2 == 0xEA00000000006570)
  {

    return 5;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

WorkoutAnnouncements::TimeSplitModel __swiftcall TimeSplitModel.init(duration:)(Swift::Double duration)
{
  *v1 = 21;
  *(v1 + 8) = duration;
  result.duration = duration;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeSplitModel.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeSplitModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  *a3 = v9;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimeSplitModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v8;
  v10[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

uint64_t TimeSplitModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13[14] = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13[15];
    v13[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for TimeSplitModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  a1[2] = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  result = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel()
{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeSplitModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE8 && a1[16])
  {
    return (*a1 + 232);
  }

  v3 = *a1;
  v4 = v3 >= 0x19;
  v5 = v3 - 25;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSplitModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE7)
  {
    *result = a2 - 232;
    *(result + 8) = 0;
    if (a3 >= 0xE8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeSplitModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSplitModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutRemindersCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutRemindersCATs;
  if (!type metadata singleton initialization cache for WorkoutRemindersCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutRemindersCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  outlined init with copy of URL?(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t WorkoutRemindersCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutReminderAnnouncementDirectInvocation.init(directInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  v14 = Parse.DirectInvocation.identifier.getter();
  if (one-time initialization token for identifier != -1)
  {
    v68 = v14;
    v69 = v15;
    swift_once();
    v14 = v68;
    v15 = v69;
  }

  if (v14 == static WorkoutReminderAnnouncementDirectInvocation.identifier && v15 == *algn_28099C0A8)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v18 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v5 + 16))(v13, v18, v4);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v75[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v75);
        _os_log_impl(&dword_274C46000, v19, v20, "%s does not support invocation identifier", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x277C67550](v22, -1, -1);
        MEMORY[0x277C67550](v21, -1, -1);
      }

      v23 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v23 - 8) + 8))(a1, v23);
      result = (*(v5 + 8))(v13, v4);
LABEL_32:
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }
  }

  v25 = Parse.DirectInvocation.userData.getter();
  if (!v25)
  {
LABEL_29:
    v56 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v5 + 16))(v8, v56, v4);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v75[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v75);
      _os_log_impl(&dword_274C46000, v57, v58, "%s Failed to deserialize invocation payload", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x277C67550](v60, -1, -1);
      MEMORY[0x277C67550](v59, -1, -1);
    }

    v61 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v61 - 8) + 8))(a1, v61);
    result = (*(v5 + 8))(v8, v4);
    goto LABEL_32;
  }

  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v26 + 16))
  {
    goto LABEL_27;
  }

  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v29, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v32 = LOBYTE(v75[0]);
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v26 + 16))
  {
    goto LABEL_27;
  }

  v74 = v32;
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v35, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = v75[0];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v26 + 16))
  {
LABEL_27:

LABEL_28:

    goto LABEL_29;
  }

  v73 = v38;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v41, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v44 = v75[0];
  type metadata accessor for AFSiriWorkoutReminder();

  v46 = AFSiriWorkoutReminder.init(data:)(v45);
  if (!v46)
  {

    v62 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v5 + 16))(v11, v62, v4);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v75[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v75);
      _os_log_impl(&dword_274C46000, v63, v64, "%s Unable to create a workout reminder from the payload", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x277C67550](v66, -1, -1);
      MEMORY[0x277C67550](v65, -1, -1);
    }

    v67 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v67 - 8) + 8))(a1, v67);
    result = (*(v5 + 8))(v11, v4);
    goto LABEL_32;
  }

  v47 = v46;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v26 + 16))
  {
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
    v52 = v51;

    if (v52)
    {
      outlined init with copy of Any(*(v26 + 56) + 32 * v50, v76);
      v53 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v53 - 8) + 8))(a1, v53);

      result = swift_dynamicCast();
      v54 = v75[0];
      v55 = v75[1];
      if (!result)
      {
        v54 = 0;
        v55 = 0;
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  v70 = type metadata accessor for Parse.DirectInvocation();
  result = (*(*(v70 - 8) + 8))(a1, v70);
  v54 = 0;
  v55 = 0;
LABEL_39:
  v72 = v73;
  v71 = v74;
  *a2 = v47;
  *(a2 + 8) = v54;
  *(a2 + 16) = v55;
  *(a2 + 24) = v71;
  *(a2 + 32) = v72;
  *(a2 + 40) = v44;
  return result;
}

uint64_t one-time initialization function for identifier()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static WorkoutReminderAnnouncementDirectInvocation.identifier = result;
  *algn_28099C0A8 = v1;
  return result;
}

uint64_t static WorkoutReminderAnnouncementDirectInvocation.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static WorkoutReminderAnnouncementDirectInvocation.identifier;

  return v0;
}

id AFSiriWorkoutReminder.init(data:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 workoutReminderFromPayload_];

  if (v8)
  {
    v9 = AFSiriWorkoutReminder.tryInferWorkoutType()();
    v22 = AFSiriWorkoutReminder.tryInferWorkoutActivityLocationType()();
    v10 = v22._0;
    v11 = v22._1;
    v12 = v22._2;
    v13 = [v8 predictionIdentifier];
    if (!v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = MEMORY[0x277C66D70](v14);
    }

    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPredictionIdentifier:v13 predictionType:objc_msgSend(v8 workoutType:sel_predictionType) workoutActivityType:v9 locationType:v10 swimmingLocationType:{v11, v12}];
  }

  else
  {
    v16 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v3 + 16))(v5, v16, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_274C46000, v17, v18, "Failed to parse workout reminder from payload.", v19, 2u);
      MEMORY[0x277C67550](v19, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v15;
}

uint64_t AFSiriWorkoutReminder.tryInferWorkoutType()()
{
  v1 = [v0 workoutType];
  if ([v0 workoutType])
  {
    return v1;
  }

  v2 = [v0 workoutActivityType];
  if (v2 > 36)
  {
    switch(v2)
    {
      case '%':
        v3 = [v0 workoutLocationType] == 2;
        v4 = 5;
        break;
      case '.':
        v3 = [v0 workoutSwimmingLocationType] == 1;
        v4 = 7;
        break;
      case '4':
        v3 = [v0 workoutLocationType] == 2;
        v4 = 9;
        break;
      default:
        goto LABEL_13;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return v4 + 1;
    }
  }

  switch(v2)
  {
    case 13:
      return 2 * ([v0 workoutLocationType] != 2);
    case 16:
      return 3;
    case 35:
      return 4;
  }

LABEL_13:

  return [v0 workoutType];
}

Swift::tuple_HKWorkoutActivityType_HKWorkoutSessionLocationType_HKWorkoutSwimmingLocationType __swiftcall AFSiriWorkoutReminder.tryInferWorkoutActivityLocationType()()
{
  v1 = [v0 workoutActivityType];
  v2 = [v0 workoutLocationType];
  v3 = [v0 workoutSwimmingLocationType];
  if ([v0 workoutActivityType])
  {
    goto LABEL_2;
  }

  v7 = [v0 workoutType];
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v3 = 0;
        v1 = 37;
        v2 = 2;
      }

      else if (v7 == 6)
      {
        v3 = 0;
        v1 = 37;
        v2 = 3;
      }

      else
      {
        v1 = 46;
        v3 = 1;
        v2 = 1;
      }

      goto LABEL_2;
    }

    switch(v7)
    {
      case 8:
        v1 = 46;
        v2 = 1;
        v3 = 2;
        goto LABEL_2;
      case 9:
        v3 = 0;
        v1 = 52;
        v2 = 2;
        goto LABEL_2;
      case 10:
        v3 = 0;
        v1 = 52;
        v2 = 3;
        goto LABEL_2;
    }

LABEL_19:
    v1 = [v0 workoutActivityType];
    v2 = [v0 workoutLocationType];
    v3 = [v0 workoutSwimmingLocationType];
    goto LABEL_2;
  }

  if (v7 <= 1)
  {
    if (v7 == 1)
    {
      v3 = 0;
      v1 = 13;
      v2 = 2;
      goto LABEL_2;
    }

    goto LABEL_19;
  }

  if (v7 == 2)
  {
    v3 = 0;
    v1 = 13;
    v2 = 3;
  }

  else
  {
    v3 = 0;
    if (v7 == 3)
    {
      v1 = 16;
    }

    else
    {
      v1 = 35;
    }

    v2 = 1;
  }

LABEL_2:
  v4 = v1;
  v5 = v2;
  v6 = v3;
  result._2 = v6;
  result._1 = v5;
  result._0 = v4;
  return result;
}

unint64_t type metadata accessor for AFSiriWorkoutReminder()
{
  result = lazy cache variable for type metadata for AFSiriWorkoutReminder;
  if (!lazy cache variable for type metadata for AFSiriWorkoutReminder)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSiriWorkoutReminder);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReminderAnnouncementDirectInvocation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutReminderAnnouncementDirectInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);
      result = swift_dynamicCast();
      if (!result)
      {
        return result;
      }

      VoiceFeedbackAlertType.init(rawValue:)(rawValue);
      if (v8[0] != 25)
      {
        return v8[0] == *v2;
      }
    }
  }

  return 0;
}

uint64_t specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(uint64_t a1, unsigned __int8 a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9);
  result = swift_dynamicCast();
  if (result)
  {
    VoiceFeedbackAlertType.init(rawValue:)(rawValue);
    return v9[0] != 25 && v9[0] == a2;
  }

  return result;
}

Swift::Bool __swiftcall VoiceFeedbackAlerting.hasValidAlertType(in:)(Swift::OpaquePointer in)
{
  if (!*(in._rawValue + 2))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(in._rawValue + 7) + 32 * v6, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  VoiceFeedbackAlertType.init(rawValue:)(rawValue);
  v8 = LOBYTE(v11[0]);
  if (LOBYTE(v11[0]) == 25)
  {
    return 0;
  }

  (*(v3 + 32))(v11, v4, v3);
  return v8 == LOBYTE(v11[0]);
}

BOOL static VoiceFeedbackAlerting.hasValidKeys(in:)(uint64_t a1)
{
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(a1);
  v2 = *(valid + 16);
  if (v2)
  {
    v3 = (valid + 32);
    v4 = v2 - 1;
    do
    {
      v6 = *v3++;
      v5 = v6;
      v8 = v4-- != 0;
      v9 = v5 != 17;
    }

    while (v5 != 17 && v8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

{
  return static VoiceFeedbackAlerting.hasValidKeys(in:)(a1);
}

uint64_t specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2, __n128 a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a2 + 32);
  while (2)
  {
    v6 = *v5++;
    v7 = a1;
    v8 = 0xE900000000000065;
    v9 = 0x7079547472656C61;
    switch(v6)
    {
      case 0:
        break;
      case 1:
        v9 = 0x6574656C706D6F63;
        v8 = 0xED00007065745364;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x6E6F697461727564;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x7865646E69;
        break;
      case 4:
        v7 = 17;
        v9 = 0xD000000000000014;
        v8 = 0x8000000274C6FF60;
        break;
      case 5:
        v9 = 0xD000000000000011;
        v8 = 0x8000000274C6FF80;
        break;
      case 6:
        v9 = 0x647574696E67616DLL;
        break;
      case 7:
        v8 = 0xEA00000000006570;
        v9 = 0x795463697274656DLL;
        break;
      case 8:
        v8 = 0xE800000000000000;
        v9 = 0x706574537478656ELL;
        break;
      case 9:
        v9 = 0xD000000000000011;
        v8 = 0x8000000274C6FFB0;
        break;
      case 10:
        v7 = 17;
        v9 = 0xD000000000000012;
        v8 = 0x8000000274C6FFD0;
        break;
      case 11:
        v9 = 0x706574537478656ELL;
        v8 = 0xEC00000074696E55;
        break;
      case 12:
        v7 = 25968;
        v8 = 0xEA00000000007461;
        v9 = 0x6D726F4665636170;
        break;
      case 13:
        v8 = 0xE700000000000000;
        v9 = 0x746E656D676573;
        break;
      case 14:
        v7 = 17;
        v9 = 0xD000000000000012;
        v8 = 0x8000000274C70010;
        break;
      case 15:
        v8 = 0xE400000000000000;
        v9 = 1953066613;
        break;
      case 16:
        v7 = 17;
        v9 = 0xD000000000000017;
        v8 = 0x8000000274C70030;
        break;
      default:
        if (a1 != 17)
        {
          goto LABEL_4;
        }

        return 1;
    }

    v10 = 0x7079547472656C61;
    v11 = 0xE900000000000065;
    switch(v7)
    {
      case 0:
        goto LABEL_52;
      case 1:
        v11 = 0xED00007065745364;
        if (v9 != 0x6574656C706D6F63)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 2:
        v11 = 0xE800000000000000;
        if (v9 != 0x6E6F697461727564)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 3:
        v11 = 0xE500000000000000;
        if (v9 != 0x7865646E69)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 4:
        v11 = 0x8000000274C6FF60;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 5:
        v11 = 0x8000000274C6FF80;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 6:
        if (v9 != 0x647574696E67616DLL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 7:
        v11 = 0xEA00000000006570;
        if (v9 != 0x795463697274656DLL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 8:
        v11 = 0xE800000000000000;
        if (v9 != 0x706574537478656ELL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 9:
        v11 = 0x8000000274C6FFB0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 10:
        v10 = 0xD000000000000012;
        v11 = 0x8000000274C6FFD0;
LABEL_52:
        if (v9 == v10)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      case 11:
        v11 = 0xEC00000074696E55;
        if (v9 != 0x706574537478656ELL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 12:
        v11 = 0xEA00000000007461;
        if (v9 != 0x6D726F4665636170)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 13:
        v11 = 0xE700000000000000;
        if (v9 != 0x746E656D676573)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 14:
        v11 = 0x8000000274C70010;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 15:
        v11 = 0xE400000000000000;
        if (v9 != 1953066613)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 16:
        v11 = 0x8000000274C70030;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

LABEL_53:
        if (v8 != v11)
        {
LABEL_54:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {
            return 1;
          }

LABEL_4:
          if (!--v3)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_4;
    }
  }
}

char _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v29;
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = v4;
    v6 = a1;
    v7 = 0;
    v26 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v27 = *(v6 + 36);
      v11 = (*(v6 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];

      v14._countAndFlagsBits = v12;
      v14._object = v13;
      LOBYTE(v4) = VoiceFeedbackKeys.init(rawValue:)(v14);
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        LOBYTE(v4) = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v29 + 16) = v16 + 1;
      *(v29 + v16 + 32) = v28;
      v8 = 1 << *(v6 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v10);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v27 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v26;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (a1 + 72 + 8 * v10);
        v9 = v26;
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            LOBYTE(v4) = outlined consume of [String : Any].Index._Variant(v5, v27, 0);
            v6 = a1;
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        LOBYTE(v4) = outlined consume of [String : Any].Index._Variant(v5, v27, 0);
        v6 = a1;
      }

LABEL_4:
      ++v7;
      v5 = v8;
      if (v7 == v9)
      {
        goto LABEL_19;
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
  }

  else
  {
LABEL_19:
    LOBYTE(v4) = v2;
  }

  return v4;
}

BOOL protocol witness for static VoiceFeedbackAlerting.hasValidKeys(in:) in conformance GoalCompletionModel(uint64_t a1)
{
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(a1);
  v3 = specialized Sequence<>.contains(_:)(0x11u, valid, v2);

  return (v3 & 1) == 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20WorkoutAnnouncements17VoiceFeedbackKeysOSgGMd, &_ss23_ContiguousArrayStorageCy20WorkoutAnnouncements17VoiceFeedbackKeysOSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

void __swiftcall PacerGoalCompletionModel.init(magnitude:unit:duration:)(WorkoutAnnouncements::PacerGoalCompletionModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, Swift::Double duration)
{
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_pacerGoalCompletion;
  retstr->magnitude = magnitude;
  retstr->unit = unit;
  retstr->duration = duration;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PacerGoalCompletionModel.CodingKeys()
{
  v1 = 0x7079547472656C61;
  v2 = 1953066613;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x647574696E67616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PacerGoalCompletionModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized PacerGoalCompletionModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PacerGoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v11[0] = *(v1 + 3);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v8;
  v15 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PacerGoalCompletionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v22 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v19 = v12;
  v20 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL specialized static PacerGoalCompletionModel.== infix(_:_:)(double *a1, double *a2, __n128 a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  v7 = *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3);
  return (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v5 == v6;
}

unint64_t lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PacerGoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  result = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerGoalCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerGoalCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerGoalCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerGoalCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PacerGoalCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t static BasicVoiceFeedbackAlerts.exerciseRingCompleted.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.exerciseRingCompleted;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.exerciseRingCompleted.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.exerciseRingCompleted = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.intervalEnded.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.intervalEnded;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.intervalEnded.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.intervalEnded = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.moveRingCompleted.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.moveRingCompleted;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.moveRingCompleted.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.moveRingCompleted = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceAheadOfGhost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceAheadOfGhost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceAheadOfGhost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceAheadOfGhost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceBehindGhost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceBehindGhost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceBehindGhost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceBehindGhost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceExpired.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceExpired;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceExpired.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceExpired = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOffRoute.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOffRoute;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOffRoute.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOffRoute = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOnRoute.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOnRoute;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceOnRoute.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOnRoute = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.trackStatusChanged.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.trackStatusChanged;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.trackStatusChanged.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.trackStatusChanged = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutPaused.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutPaused;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutPaused.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutPaused = v1;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutResumed.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutResumed;
  return result;
}

uint64_t static BasicVoiceFeedbackAlerts.workoutResumed.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutResumed = v1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BasicVoiceFeedbackAlerts.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BasicVoiceFeedbackAlerts.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079547472656C61 && a2 == 0xE900000000000065)
  {

    v8 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v6 ^ 1;
  }

  *a3 = v8 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BasicVoiceFeedbackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicVoiceFeedbackAlerts.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys);
  }

  return result;
}

uint64_t BasicVoiceFeedbackAlerts.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24BasicVoiceFeedbackAlertsV10CodingKeys33_FFD12A5356160AA1271CAF13B365BACELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts.CodingKeys and conformance BasicVoiceFeedbackAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for BasicVoiceFeedbackAlerts(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  a1[2] = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  result = lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts()
{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts;
  if (!lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts);
  }

  return result;
}