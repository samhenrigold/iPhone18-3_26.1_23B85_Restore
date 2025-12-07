void PhoneAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v241 = v2;
  v233 = type metadata accessor for AppResolutionResult();
  OUTLINED_FUNCTION_7();
  v232 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v231 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v235 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v229 - v12;
  __chkstk_darwin(v14);
  v16 = (&v229 - v15);
  v236 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  v23 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v240 = v24;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_12_5();
  v238 = v26 - v27;
  __chkstk_darwin(v28);
  v242 = (&v229 - v29);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v30 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);

  v239 = v0;
  v31 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    v32 = OUTLINED_FUNCTION_42();
    v234 = v13;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_36();
    v230 = v23;
    OUTLINED_FUNCTION_95_2(v34);
    *v33 = 136315138;
    v237 = v22;
    v35 = v16;
    v36 = v18;
    v37 = v0[45];
    v38 = v0[46];
    OUTLINED_FUNCTION_114();
    v249 = 0;
    v250 = v39;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v37, v38, 0xD000000000000023, 0x8000000000426000);
    v1 = v0;

    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_34_0();

    *(v33 + 4) = v37;
    v18 = v36;
    v16 = v35;
    v22 = v237;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v45 = v23;
    v23 = v230;
    OUTLINED_FUNCTION_26_0(v45);
    v46 = v33;
    v13 = v234;
    OUTLINED_FUNCTION_26_0(v46);
  }

  v47 = v242;
  Input.parse.getter();
  v48 = v240;
  v49 = (*(v240 + 88))(v47, v23);
  if (v49 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v49 != enum case for Parse.directInvocation(_:))
    {
      v87 = v49 == enum case for Parse.NLv4IntentOnly(_:) || v49 == enum case for Parse.uso(_:);
      if (!v87)
      {

        v88 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_137_1();
        if (OUTLINED_FUNCTION_108())
        {
          OUTLINED_FUNCTION_42();
          v89 = OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_95_2(v89);
          *v47 = 136315138;
          v90 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v90, v91, v92, v93, v94);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_128_0();
          *(v47 + 4) = v48;
          v48 = v240;
          OUTLINED_FUNCTION_26(&dword_0, v95, v96, "%s parseDisambiguationResponse: unrecognized parse type, ignoring input");
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.ignore()();
        (*(v48 + 8))(v242, v23);
        goto LABEL_54;
      }

      goto LABEL_6;
    }

    v72 = v242;
    v73 = OUTLINED_FUNCTION_0();
    v74(v73);
    v75 = v236;
    (*(v18 + 4))(v22, v72, v236);
    static CommonDirectAction.from(_:)(v16);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v16, v13, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    type metadata accessor for CommonDirectAction(0);
    OUTLINED_FUNCTION_1_0(v13);
    v237 = v22;
    if (!v87)
    {
      v76 = v235;
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v13, v235, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        v234 = v13;

        v133 = v239;
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = OUTLINED_FUNCTION_86_1();
          v242 = v16;
          v137 = v136;
          v138 = OUTLINED_FUNCTION_16_13();
          OUTLINED_FUNCTION_138_1(v138);
          *v137 = 136315394;
          v139 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v139, v140, v141, v142, v143);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v249, v250, &v246);
          OUTLINED_FUNCTION_40_0();

          *(v137 + 4) = v133;
          *(v137 + 12) = 2080;
          v144 = OUTLINED_FUNCTION_72();
          *(v137 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v146);
          _os_log_impl(&dword_0, v134, v135, "%s parseDisambiguationResponse: item selected by button tap: %s", v137, 0x16u);
          OUTLINED_FUNCTION_60_4();
          OUTLINED_FUNCTION_14_0();
          v147 = v137;
          v16 = v242;
          v75 = v236;
          OUTLINED_FUNCTION_26_0(v147);
        }

        type metadata accessor for App();
        OUTLINED_FUNCTION_5();
        App.__allocating_init(appIdentifier:)();
        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        OUTLINED_FUNCTION_125_1();

        OUTLINED_FUNCTION_20_6(v16);
        (*(v18 + 1))(v237, v75);
        v148 = v234;
        goto LABEL_53;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v242 = v18;

        v78 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_137_1();
        if (OUTLINED_FUNCTION_108())
        {
          OUTLINED_FUNCTION_42();
          v79 = OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_95_2(v79);
          *v47 = 136315138;
          v80 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_92_2(v80, v81, v82, v83, v84);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_128_0();
          *(v47 + 4) = v75;
          OUTLINED_FUNCTION_26(&dword_0, v85, v86, "%s parseDisambiguationResponse: directInvocation .no -> cancel");
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.cancel()();
        OUTLINED_FUNCTION_20_6(v16);
        (v242[1])(v237, v75);
LABEL_52:
        v148 = v13;
LABEL_53:
        OUTLINED_FUNCTION_20_6(v148);
        goto LABEL_54;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v76, type metadata accessor for CommonDirectAction);
    }

    v242 = v18;

    v149 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v150 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v150);
      *v47 = 136315138;
      v151 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v151, v152, v153, v154, v155);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v47 + 4) = v75;
      OUTLINED_FUNCTION_26(&dword_0, v156, v157, "%s parseDisambiguationResponse: unsupported direct invocation, ignoring");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.ignore()();
    OUTLINED_FUNCTION_20_6(v16);
    (v242[1])(v237, v75);
    goto LABEL_52;
  }

LABEL_6:
  v52 = *(v48 + 8);
  v51 = v48 + 8;
  v50 = v52;
  (v52)(v242, v23);
  v53 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v54 = OUTLINED_FUNCTION_40_0();
  v55(v54, v53);
  Input.parse.getter();
  OUTLINED_FUNCTION_41_0();
  v56 = OUTLINED_FUNCTION_121_1();
  v57(v56);

  v58 = OUTLINED_FUNCTION_8_2();
  v52(v58);
  if (!v247)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v246, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

    v97 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v98 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v98);
      *v50 = 136315138;
      v99 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v99, v100, v101, v102, v103);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v50 + 4) = v51;
      OUTLINED_FUNCTION_26(&dword_0, v104, v105, "%s could not transform input to NLIntent, ignoring input");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.ignore()();
    goto LABEL_54;
  }

  outlined init with take of SPHConversation(&v246, &v249);
  __swift_project_boxed_opaque_existential_1(&v249, v251);
  if (PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_no) || (__swift_project_boxed_opaque_existential_1(&v249, v251), PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_cancel)))
  {
    outlined init with copy of SignalProviding(&v249, &v246);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_157())
    {
      v61 = OUTLINED_FUNCTION_86_1();
      v245 = OUTLINED_FUNCTION_16_13();
      *v61 = 136315394;
      v62 = OUTLINED_FUNCTION_9_43();
      v243 = 0;
      v244 = v63;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v62, v64, v65, v66);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v243, v244, &v245);
      OUTLINED_FUNCTION_40_0();

      *(v61 + 4) = &v243;
      *(v61 + 12) = 2080;
      v67 = v248;
      __swift_project_boxed_opaque_existential_1(&v246, v247);
      v68 = OUTLINED_FUNCTION_40_0();
      v70 = v69(v68, v67);
      if (v70 == 5)
      {
        v71 = 7104878;
      }

      else
      {
        v71 = PhoneCallConfirmation.rawValue.getter(v70);
      }

      __swift_destroy_boxed_opaque_existential_1(&v246);
      v114 = OUTLINED_FUNCTION_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v116);
      OUTLINED_FUNCTION_40_0();

      *(v61 + 14) = v71;
      _os_log_impl(&dword_0, v59, v60, "%s Received %s -> cancel", v61, 0x16u);
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_26_0(v61);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v246);
    }

    type metadata accessor for AppDisambiguationResponse();
    static AppDisambiguationResponse.cancel()();
    goto LABEL_38;
  }

  v106 = v252;
  __swift_project_boxed_opaque_existential_1(&v249, v251);
  v107 = OUTLINED_FUNCTION_40_0();
  v109 = v108(v107, v106);
  if (v109 != 35)
  {
    v110 = v109;
    if (v109 == 25 && (v111 = , v106 = specialized BidirectionalCollection.last.getter(v111), , v106))
    {

      v112 = v239;
      v113 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();

      if (!OUTLINED_FUNCTION_31_13())
      {
LABEL_43:

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        OUTLINED_FUNCTION_125_1();
        goto LABEL_44;
      }
    }

    else
    {
      PhoneCallReference.ordinalIndex.getter(v110);
      if ((v117 & 1) != 0 || (, v118 = OUTLINED_FUNCTION_19_0(), specialized Array.subscript.getter(v118, v119), OUTLINED_FUNCTION_107_1(), !v106))
      {

        v174 = v239;
        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = OUTLINED_FUNCTION_36();
          v243 = swift_slowAlloc();
          *v177 = 136315650;
          v178 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_136_1(v178, v179, v180, v181, v182);
          OUTLINED_FUNCTION_94_4();
          OUTLINED_FUNCTION_40_0();

          *(v177 + 4) = v174;
          *(v177 + 12) = 2080;
          LOBYTE(v246) = v110;
          v183 = String.init<A>(describing:)();
          OUTLINED_FUNCTION_164(v183, v184);
          OUTLINED_FUNCTION_40_0();

          *(v177 + 14) = v174;
          *(v177 + 22) = 2080;
          v185 = v1[2];
          type metadata accessor for App();
          OUTLINED_FUNCTION_40_0();

          v186 = Array.description.getter();
          v188 = v187;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, &v243);
          OUTLINED_FUNCTION_141_0();

          *(v177 + 24) = v185;
          _os_log_impl(&dword_0, v175, v176, "%s parseDisambiguationResponse: unable to resolve reference value '%s' in app list: '%s'", v177, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_35();
        }

        type metadata accessor for AppDisambiguationResponse();

        static AppDisambiguationResponse.disambiguate(apps:)();
        OUTLINED_FUNCTION_125_1();

        goto LABEL_38;
      }

      v112 = v239;
      v113 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();

      if (!OUTLINED_FUNCTION_31_13())
      {
        goto LABEL_43;
      }
    }

    OUTLINED_FUNCTION_86_1();
    v243 = OUTLINED_FUNCTION_55_4();
    *v51 = 136315394;
    v120 = OUTLINED_FUNCTION_9_43();
    OUTLINED_FUNCTION_136_1(v120, v121, v122, v123, v124);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_40_0();

    *(v51 + 4) = v112;
    OUTLINED_FUNCTION_99_0();
    *&v246 = App.appIdentifier.getter();
    *(&v246 + 1) = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v126 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_164(v126, v127);
    OUTLINED_FUNCTION_40_0();

    *(v51 + 14) = v106;
    OUTLINED_FUNCTION_9_38();
    _os_log_impl(v128, v129, v130, v131, v132, 0x16u);
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1_3();
  if (!PhoneCallNLIntent.hasApplicationNameOrId()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v249);

    v189 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_137_1();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      v190 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_95_2(v190);
      *v50 = 136315138;
      v191 = OUTLINED_FUNCTION_9_43();
      OUTLINED_FUNCTION_92_2(v191, v192, v193, v194, v195);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_128_0();
      *(v50 + 4) = v51;
      OUTLINED_FUNCTION_26(&dword_0, v196, v197, "%s parseDisambiguationResponse: unable to disambiguate");
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();

    static AppDisambiguationResponse.disambiguate(apps:)();
    OUTLINED_FUNCTION_125_1();

    goto LABEL_54;
  }

  v158 = OUTLINED_FUNCTION_1_3();
  v160 = PhoneCallNLIntent.applicationId.getter(v158, v159);
  if (!v161)
  {
    v162 = OUTLINED_FUNCTION_1_3();
    v160 = PhoneCallNLIntent.appName.getter(v162, v163);
  }

  v164 = v160;
  v242 = v161;
  v165 = v1[2];
  v166 = specialized Array.count.getter(v165);
  v167 = v165 & 0xC000000000000001;

  for (i = 0; ; ++i)
  {
    if (v166 == i)
    {

      PhoneAppResolutionOnDeviceFlowStrategy.resolveAppByQuery(phoneCallIntent:)(&v249);
      v198 = v231;
      AppResolutionAction.result.getter();

      v199 = v232;
      v200 = v233;
      if ((*(v232 + 88))(v198, v233) != enum case for AppResolutionResult.selected(_:))
      {
        (*(v199 + 8))(v198, v200);

        v218 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_31_13())
        {
          OUTLINED_FUNCTION_42();
          v243 = OUTLINED_FUNCTION_14_2();
          *v166 = 136315138;
          v219 = OUTLINED_FUNCTION_9_43();
          OUTLINED_FUNCTION_136_1(v219, v220, v221, v222, v223);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, *(&v246 + 1), &v243);
          OUTLINED_FUNCTION_63_1();
          *(v166 + 4) = v167;

          OUTLINED_FUNCTION_9_38();
          _os_log_impl(v224, v225, v226, v227, v228, 0xCu);
          OUTLINED_FUNCTION_9_28();
          OUTLINED_FUNCTION_14_0();
        }

        else
        {
        }

        type metadata accessor for AppDisambiguationResponse();
        static AppDisambiguationResponse.ignore()();
        goto LABEL_38;
      }

      (*(v199 + 96))(v198, v200);
      v201 = *v198;

      v202 = v239;
      v203 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_147_0();

      if (OUTLINED_FUNCTION_126())
      {
        OUTLINED_FUNCTION_86_1();
        v243 = OUTLINED_FUNCTION_54_1();
        *v167 = 136315394;
        v204 = OUTLINED_FUNCTION_9_43();
        OUTLINED_FUNCTION_136_1(v204, v205, v206, v207, v208);
        OUTLINED_FUNCTION_94_4();
        OUTLINED_FUNCTION_40_0();

        *(v167 + 4) = v202;
        OUTLINED_FUNCTION_98_3();
        *&v246 = v201;
        type metadata accessor for App();
        OUTLINED_FUNCTION_1_75();
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v209, 255, v210, &protocol conformance descriptor for App);
        v211 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_164(v211, v212);
        OUTLINED_FUNCTION_40_0();

        *(v167 + 14) = &v246;

        OUTLINED_FUNCTION_24_22();
        _os_log_impl(v213, v214, v215, v216, v217, 0x16u);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_5_7();
      }

      else
      {
      }

      type metadata accessor for AppDisambiguationResponse();
      OUTLINED_FUNCTION_61();
      static AppDisambiguationResponse.select(app:)();
      OUTLINED_FUNCTION_141_0();
LABEL_44:

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(&v249);
LABEL_54:
      OUTLINED_FUNCTION_65();
      return;
    }

    if (v167)
    {
      v169 = v1;
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_95;
      }

      v169 = v1;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v170 = App.appIdentifier.getter();
    if (!v171)
    {
      if (!v242)
      {
        goto LABEL_89;
      }

LABEL_73:

      goto LABEL_75;
    }

    if (v242)
    {
      if (v170 == v164 && v171 == v242)
      {

        goto LABEL_89;
      }

      v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v173)
      {

LABEL_89:

        PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)();
        goto LABEL_44;
      }

      goto LABEL_73;
    }

LABEL_75:
    v1 = v169;
  }

  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)()
{
  OUTLINED_FUNCTION_15();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[38] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[39] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v5);
  v1[40] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[41] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[42] = v7;
  v1[43] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[44] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[45] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for CommonDirectAction(0);
  v1[46] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[47] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for YesNoConfirmationModel(0);
  v1[48] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[49] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for Locale();
  v1[50] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[51] = v12;
  v1[52] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v1[53] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v0[58] = *(v0[37] + 248);
  v1 = App.appIdentifier.getter();
  static PhoneCallAppNameConstants.isPhone(appId:)(v1, v2);

  OUTLINED_FUNCTION_24_5();
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_81_3(v3);

  return v5(v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[60] = v6;
  v3[61] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    v13 = (v10 + *v10);
    v11 = swift_task_alloc();
    v3[62] = v11;
    *v11 = v5;
    v11[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:);

    return v13();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 504) = v4;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = *(v0 + 296);

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v142 = OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    v145 = v5;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v6, v7, v8);
    OUTLINED_FUNCTION_132(v9, v10, v11, v12, v13, v14, v15, v16, v123, v125, v127, v129, v131, v133, v135, v137, v138, v139, v140, v142, 0, v145);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v22 = [*(v0 + 480) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  OUTLINED_FUNCTION_5();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v23))
  {
    v24 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v24, v25, v23);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v23 + 32);
    }

    v27 = v26;
    v28 = *(v0 + 504);

    v29 = [v27 fullPrint];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = [v28 dialog];
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v34))
    {
      v134 = v32;
      v35 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v35, v36, v34);
      v130 = v30;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v34 + 32);
      }

      v38 = v37;
      v39 = *(v0 + 384);
      v40 = *(v0 + 392);
      v41 = *(v0 + 376);
      v132 = *(v0 + 360);
      v136 = *(v0 + 352);
      v141 = *(v0 + 448);
      v42 = *(v0 + 296);

      v43 = [v38 fullPrint];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v45;
      v128 = v44;

      swift_storeEnumTagMultiPayload();
      v47 = v42[28];
      v46 = v42[29];
      __swift_project_boxed_opaque_existential_1(v42 + 25, v47);
      (*(v46 + 8))(v47, v46);
      v124 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 56));
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v41, type metadata accessor for CommonDirectAction);
      swift_storeEnumTagMultiPayload();
      v48 = v42[29];
      __swift_project_boxed_opaque_existential_1(v42 + 25, v42[28]);
      v49 = OUTLINED_FUNCTION_40_0();
      v50(v49, v48);
      v51 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v41, type metadata accessor for CommonDirectAction);
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      Loggable.init(wrappedValue:)();
      v52 = (v40 + *(v39 + 36));
      *v52 = 0xD000000000000011;
      v52[1] = 0x8000000000456DF0;
      *(v0 + 232) = v130;
      *(v0 + 240) = v134;
      Loggable.init(wrappedValue:)();
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      v53 = v124;
      CodableAceObject.init(wrappedValue:)();
      *(v0 + 248) = v128;
      *(v0 + 256) = v126;
      Loggable.init(wrappedValue:)();
      v54 = v51;
      CodableAceObject.init(wrappedValue:)();
      *(v0 + 264) = 0;
      *(v0 + 272) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      Loggable.wrappedValue.setter();

      outlined init with copy of YesNoConfirmationModel(v40, v132, type metadata accessor for YesNoConfirmationModel);
      swift_storeEnumTagMultiPayload();
      *(v0 + 160) = v39;
      *(v0 + 168) = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, 255, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      outlined init with copy of YesNoConfirmationModel(v40, boxed_opaque_existential_1, type metadata accessor for YesNoConfirmationModel);
      static DialogPhase.confirmation.getter();
      *(swift_task_alloc() + 16) = v0 + 136;
      OutputGenerationManifest.init(dialogPhase:_:)();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 136, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMR);
      v56 = v42[35];
      v57 = v42[36];
      OUTLINED_FUNCTION_28_0(v42 + 32, v56);
      *(v0 + 200) = v136;
      OUTLINED_FUNCTION_14_38();
      *(v0 + 208) = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v58, 255, v59, &protocol conformance descriptor for PhoneSnippetDataModels);
      __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      OUTLINED_FUNCTION_11_37();
      outlined init with copy of YesNoConfirmationModel(v132, v60, v61);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v63 = OUTLINED_FUNCTION_48_0(v62);
      *(v0 + 520) = v63;
      *(v63 + 16) = xmmword_426260;
      *(v63 + 32) = v141;
      v64 = v141;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 528) = v65;
      *v65 = v66;
      v65[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:);
      v67 = *(v0 + 344);
      v68 = *(v0 + 280);

      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v68, v0 + 176, v63, v67, v56, v57);
    }

    v93 = *(v0 + 296);

    v94 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_42();
      v144 = OUTLINED_FUNCTION_83();
      v95 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v147 = v96;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v95, v97, v98, v99);
      OUTLINED_FUNCTION_132(v100, v101, v102, v103, v104, v105, v106, v107, v123, v125, v127, v129, v131, v133, v135, v137, v138, v139, v140, v144, 0, v147);
      OUTLINED_FUNCTION_63_1();
      *(v93 + 4) = v30;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v90 = *(v0 + 504);
    v92 = *(v0 + 480);
    v91 = 235;
    v89 = v90;
  }

  else
  {
    v69 = *(v0 + 296);

    v70 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_42();
      v143 = OUTLINED_FUNCTION_83();
      v71 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v146 = v72;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v71, v73, v74, v75);
      OUTLINED_FUNCTION_132(v76, v77, v78, v79, v80, v81, v82, v83, v123, v125, v127, v129, v131, v133, v135, v137, v138, v139, v140, v143, 0, v146);
      OUTLINED_FUNCTION_63_1();
      *(v69 + 4) = v1;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v89 = *(v0 + 504);
    v90 = *(v0 + 480);
    v91 = 230;
    v92 = v90;
  }

  v113 = *(v0 + 448);
  v114 = *(v0 + 312);
  v115 = [v90 catId];
  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v117;

  *v114 = v116;
  v114[1] = v118;
  v114[2] = 0xD000000000000048;
  v114[3] = 0x800000000045D560;
  v114[4] = 0xD00000000000001CLL;
  v114[5] = 0x800000000045D5B0;
  v114[6] = v91;
  OUTLINED_FUNCTION_0();
  swift_storeEnumTagMultiPayload();
  _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v119);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v114, type metadata accessor for PhoneError);
  swift_willThrow();

  v120 = *(v0 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v120, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();

  return v121();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_39_4();
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 360);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_48_15();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v5, v9);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v4, type metadata accessor for YesNoConfirmationModel);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();

  return v10();
}

void PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = v0[37];
  v3 = type metadata accessor for Logger();
  v0[54] = OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v5 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    OUTLINED_FUNCTION_104_0(v5, v6, v7, v8);
    OUTLINED_FUNCTION_39_15(v9, v10, v11, v12, v13, v14, v15, v16, v39, v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v23 = v0[51];
  v22 = v0[52];
  v24 = v0[50];
  v25 = v0[37];
  __swift_project_boxed_opaque_existential_1(v25 + 25, v25[28]);
  v26 = OUTLINED_FUNCTION_25_0();
  v27(v26);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_25_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  OUTLINED_FUNCTION_28_0(v25 + 9, v25[12]);
  OUTLINED_FUNCTION_139();
  v28();
  v30 = v29;
  (*(v23 + 8))(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v30)
  {
    OUTLINED_FUNCTION_53_1();
    SpeakableString.init(print:speak:)();
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v0[53];
  v33 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
  v34 = App.appIdentifier.getter();
  static PhoneCallAppNameConstants.isPhone(appId:)(v34, v35);

  OUTLINED_FUNCTION_24_5();
  v36 = swift_task_alloc();
  v0[55] = v36;
  *v36 = v0;
  OUTLINED_FUNCTION_81_3(v36);
  OUTLINED_FUNCTION_152();

  __asm { BRAA            X2, X16 }
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeConfirmationPrompt(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 448);

  v14 = *(v12 + 424);
  OUTLINED_FUNCTION_19_27();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[14] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[18] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[19] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[20] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for AppDescription(0);
  v1[21] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ResponseMode();
  v1[24] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[25] = v11;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v12 = type metadata accessor for NLContextUpdate();
  v1[28] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[29] = v13;
  v1[30] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  v39 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);

  specialized static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)(v4, (v3 + 152), v2);

  v5 = *(v3 + 16);
  v6 = specialized Array.count.getter(v5);
  v7 = (v5 & 0xFFFFFFFFFFFFFF8);

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_92();
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_42;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (App.isFaceTime()())
    {
      goto LABEL_31;
    }

    v9 = App.appIdentifier.getter();
    if (!v10)
    {

      break;
    }

    v1 = v9;
    v11 = v10;
    v12 = v9 == 0xD000000000000017 && v10 == 0x8000000000459750;
    if (v12 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000012 ? (v13 = v11 == 0x800000000045B700) : (v13 = 0), v13 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000013 ? (v14 = v11 == 0x800000000045B720) : (v14 = 0), v14 || (OUTLINED_FUNCTION_103_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0xD000000000000015 ? (v15 = v11 == 0x8000000000452BD0) : (v15 = 0), v15))))
    {

LABEL_31:

      continue;
    }

    OUTLINED_FUNCTION_103_0();
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      break;
    }
  }

  v7 = v34;

  PhoneAppResolutionOnDeviceFlowStrategy.getAppSpeakableString(apps:)();
  v34[31] = v16;

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_36;
  }

LABEL_43:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_36:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    v19 = OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_36();
    v36 = v20;
    v37 = 0;
    *v19 = 136315138;
    v21 = OUTLINED_FUNCTION_4_47();
    v38 = v22;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v21, v23, v24, v25);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v36);
    OUTLINED_FUNCTION_111_2();
    *(v19 + 4) = v1;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  v7[32] = *(v7[13] + 240);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_24_5();
  v35 = (v31 + *v31);
  v32 = swift_task_alloc();
  v7[33] = v32;
  *v32 = v7;
  v32[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:);

  return v35(v6 == i);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v4 = v0[13];
  v5 = v4[29];
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  v6 = OUTLINED_FUNCTION_40_0();
  if (v7(v6, v5))
  {
    v1 = v0[24];
    CurrentRequest.responseMode.getter();

    OUTLINED_FUNCTION_143_0();
    v8();
    if (ResponseMode.isVoiceMode()())
    {
      OUTLINED_FUNCTION_24_5();
      v9 = swift_task_alloc();
      v0[36] = v9;
      *v9 = v0;
      v9[1] = PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:);
      OUTLINED_FUNCTION_100_2(v0[31]);
      OUTLINED_FUNCTION_46_6();

      __asm { BRAA            X1, X16 }
    }

    (*(v0[25] + 8))(v0[27], v0[24]);
  }

  v12 = v0[34];

  v13 = v0[34];
  v0[39] = v13;
  OUTLINED_FUNCTION_123_2();
  v14 = v12;
  specialized Array.count.getter(v1);
  OUTLINED_FUNCTION_151_0();
  v71 = v13;

  v15 = 0;
  v73 = _swiftEmptyArrayStorage;
  while (v77 != v15)
  {
    if (v76)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v75 + 16))
      {
        goto LABEL_31;
      }

      v3 = v1[v15 + 4];
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_25;
    }

    v16 = v0[20];
    v17 = v0[13];
    v2 = *(v17 + 224);
    __swift_project_boxed_opaque_existential_1((v17 + 200), v2);
    v18 = OUTLINED_FUNCTION_3_13();
    v20 = v19(v18);
    OUTLINED_FUNCTION_133_1(v20, v21, v22, v23, v24, v25, v26, v27, v70, v71, v73, v74);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_1_0(v16);
    if (v28)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[20], &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
      ++v15;
    }

    else
    {
      outlined init with take of AppDescription(v0[20], v0[23]);
      v29 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v38 = v29[3];
      if (v29[2] >= v38 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v38);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_70_4(isUniquelyReferenced_nonNull_native, v31, v32, v33, v34, v35, v36, v37, v70);
      ++v15;
    }
  }

  v39 = v0[34];

  v40 = [v39 dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v41))
  {
    v42 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v42, v43, v41);
    if ((v41 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    v44 = *(v41 + 32);
LABEL_25:
    OUTLINED_FUNCTION_160();
    v41 = [v1 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_27;
  }

LABEL_27:
  OUTLINED_FUNCTION_62_12(v45, v46, v47, v48, v49, v50, v51, v52, v70, v71, v73);

  static DialogPhase.clarification.getter();
  v53 = swift_task_alloc();
  OUTLINED_FUNCTION_43_16(v53);

  __swift_project_boxed_opaque_existential_1((v3 + 256), *(v3 + 280));
  v0[10] = v2;
  OUTLINED_FUNCTION_14_38();
  v0[11] = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v54, 255, v55, &protocol conformance descriptor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_11_37();
  outlined init with copy of YesNoConfirmationModel(v41, v56, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v59 = OUTLINED_FUNCTION_48_0(v58);
  v0[40] = v59;
  *(v59 + 16) = xmmword_426260;
  *(v59 + 32) = v72;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v60;
  *v60 = v61;
  OUTLINED_FUNCTION_35_13(v60);
  OUTLINED_FUNCTION_46_6();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v62, v63, v64, v65, v66, v67);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  (*(v0[25] + 8))(v0[27], v0[24]);
  v4 = v0[38];
  v0[39] = v4;
  OUTLINED_FUNCTION_123_2();
  specialized Array.count.getter(v1);
  OUTLINED_FUNCTION_151_0();
  v61 = v4;

  v5 = 0;
  v63 = _swiftEmptyArrayStorage;
  while (v67 != v5)
  {
    if (v66)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v65 + 16))
      {
        goto LABEL_25;
      }

      v3 = v1[v5 + 4];
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_19;
    }

    v6 = v0[20];
    v7 = v0[13];
    v2 = *(v7 + 224);
    __swift_project_boxed_opaque_existential_1((v7 + 200), v2);
    v8 = OUTLINED_FUNCTION_3_13();
    v10 = v9(v8);
    OUTLINED_FUNCTION_133_1(v10, v11, v12, v13, v14, v15, v16, v17, v60, v61, v63, v64);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_1_0(v6);
    if (v18)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[20], &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMd, &_s27PhoneCallFlowDelegatePlugin14AppDescriptionVSgMR);
      ++v5;
    }

    else
    {
      outlined init with take of AppDescription(v0[20], v0[23]);
      v19 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = isUniquelyReferenced_nonNull_native;
      }

      v28 = v19[3];
      if (v19[2] >= v28 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v28);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_70_4(isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, v26, v27, v60);
      ++v5;
    }
  }

  v29 = v0[34];

  v30 = [v29 dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v31))
  {
    v32 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v32, v33, v31);
    if ((v31 & 0xC000000000000001) != 0)
    {
      goto LABEL_26;
    }

    v34 = *(v31 + 32);
LABEL_19:
    OUTLINED_FUNCTION_160();
    v31 = [v1 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_21;
  }

LABEL_21:
  OUTLINED_FUNCTION_62_12(v35, v36, v37, v38, v39, v40, v41, v42, v60, v61, v63);

  static DialogPhase.clarification.getter();
  v43 = swift_task_alloc();
  OUTLINED_FUNCTION_43_16(v43);

  __swift_project_boxed_opaque_existential_1((v3 + 256), *(v3 + 280));
  v0[10] = v2;
  OUTLINED_FUNCTION_14_38();
  v0[11] = _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v44, 255, v45, &protocol conformance descriptor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_11_37();
  outlined init with copy of YesNoConfirmationModel(v31, v46, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v49 = OUTLINED_FUNCTION_48_0(v48);
  v0[40] = v49;
  *(v49 + 16) = xmmword_426260;
  *(v49 + 32) = v62;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v50;
  *v50 = v51;
  OUTLINED_FUNCTION_35_13(v50);
  OUTLINED_FUNCTION_46_6();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v52, v53, v54, v55, v56, v57);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  v3 = OUTLINED_FUNCTION_19_0();
  v4(v3);
  OUTLINED_FUNCTION_48_15();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v2, v5);
  v6 = OUTLINED_FUNCTION_92();
  v7(v6);

  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v12 = OUTLINED_FUNCTION_58_7();
  v13(v12);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = OUTLINED_FUNCTION_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_58_7();
  v16(v15);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t specialized static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v49 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v43 - v14;
  v15 = type metadata accessor for NLContextUpdate();
  v46 = *(v15 - 8);
  v47 = v15;
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5();
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_426980;
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  *(v18 + 32) = TerminalOntologyNode.name.getter();
  *(v18 + 40) = v19;
  if (one-time initialization token for reference != -1)
  {
    swift_once();
  }

  *(v18 + 48) = TerminalOntologyNode.name.getter();
  *(v18 + 56) = v20;
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  *(v18 + 64) = TerminalOntologyNode.name.getter();
  *(v18 + 72) = v21;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v22 = swift_allocObject();
  v45 = xmmword_424FD0;
  *(v22 + 16) = xmmword_424FD0;
  v57 = String.uppercased()();
  v55 = 32;
  v56 = 0xE100000000000000;
  v58 = 95;
  v59 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v57._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(6);
  v57._object = v23;
  v24._countAndFlagsBits = 0x2E65756C61562ELL;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  v25 = String.uppercased()();
  String.append(_:)(v25);

  object = v57._object;
  *(v22 + 32) = v57._countAndFlagsBits;
  *(v22 + 40) = object;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v27 = NLContextUpdate.displayHints.setter();
  __chkstk_darwin(v27);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5();
  v28 = v50;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v51 + 16))(v12, v28, v52);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v49;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v57._countAndFlagsBits = v35;
    *v34 = 136315138;
    swift_beginAccess();
    v36 = v44;
    (*(v5 + 16))(v44, v9, v33);
    v37 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v36);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v57._countAndFlagsBits);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v30, v31, "#PhoneCallNLContextProvider makeNLContextUpdateForDisambiguation: sending disambiguation system dialog acts: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v45;
  swift_beginAccess();
  (*(v5 + 16))(v41 + v40, v9, v33);
  NLContextUpdate.nluSystemDialogActs.setter();
  static PhoneReferenceResolution.appsToRrEntities(apps:device:)(v53, v54);
  NLContextUpdate.rrEntities.setter();
  (*(v51 + 8))(v50, v52);
  (*(v46 + 32))(v48, v17, v47);
  return (*(v5 + 8))(v9, v33);
}

uint64_t closure #3 in PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponseType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v10 = type metadata accessor for NLContextUpdate();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v4 + 104))(v6, enum case for ResponseType.disambiguation(_:), v3);
  OutputGenerationManifest.responseType.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(char a1)
{
  v43[4] = a1;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = *(v1 + 16);
  v42 = specialized Array.count.getter(v3);
  if (!v42)
  {
    return v2;
  }

  v41 = v3 & 0xC000000000000001;
  v39 = v3 & 0xFFFFFFFFFFFFFF8;

  v4 = 0;
  v40 = v3;
  while (1)
  {
    if (v41)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v39 + 16))
      {
        goto LABEL_28;
      }
    }

    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v6 = App.appIdentifier.getter();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    v13 = *(v2 + 16);
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_26;
    }

    v16 = v11;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin19AppResolutionSourceOGMd, &_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin19AppResolutionSourceOGMR);
    v18 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
    if (v18)
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_29;
      }

      v16 = v18;
    }

    if (v17)
    {

      v2 = v44;
      OUTLINED_FUNCTION_154(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40, v41, v42, *v43, v43[4]);
    }

    else
    {
      v2 = v44;
      *(v44 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      v34 = (*(v44 + 48) + 16 * v16);
      *v34 = v8;
      v34[1] = v9;
      OUTLINED_FUNCTION_154(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, *v43, v43[4]);
      v35 = *(v44 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_27;
      }

      *(v44 + 16) = v37;
    }

    ++v4;
    if (v5 == v42)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.selectAppConfirmation(by:)()
{
  v3 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_147_0();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_86_1();
    v55[0] = OUTLINED_FUNCTION_54_1();
    *v1 = 136315394;
    v6 = OUTLINED_FUNCTION_17_27();
    v50 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v50, v55);
    OUTLINED_FUNCTION_111_2();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_98_3();
    v48 = App.appIdentifier.getter();
    v49 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v55);
    OUTLINED_FUNCTION_111_2();
    *(v1 + 14) = v2;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  App.appIdentifier.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = *(v0 + 344);

  v22 = OUTLINED_FUNCTION_53_1();
  specialized Dictionary.subscript.getter(v22, v23, v21);

  v24 = OUTLINED_FUNCTION_121_1();
  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v24, v25, v26);
  if (v48)
  {
    type metadata accessor for AppConfirmationResponse();
    OUTLINED_FUNCTION_61();
    static AppConfirmationResponse.select(app:)();
    OUTLINED_FUNCTION_141_0();

    v54 = v49;
    OUTLINED_FUNCTION_20_6(&v54);
    *v55 = v51;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_sSSSgMd, &_sSSSgMR);
    v56 = v52;
    OUTLINED_FUNCTION_20_6(&v56);
  }

  else if (*(v0 + 24))
  {

    v27 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_157())
    {
      OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_14_2();
      *&v53 = v28;
      *v21 = 136315138;
      v29 = OUTLINED_FUNCTION_17_27();
      v55[0] = 0;
      v55[1] = v30;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v29, v31, v32, v33);
      v3 = v55[1];
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55[0], v55[1], &v53);
      OUTLINED_FUNCTION_40_0();

      *(v21 + 4) = v55;
      OUTLINED_FUNCTION_112_2();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    type metadata accessor for AppConfirmationResponse();
    OUTLINED_FUNCTION_61();
    static AppConfirmationResponse.confirm(app:)();
    OUTLINED_FUNCTION_141_0();
  }

  else
  {

    v39 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      *&v53 = OUTLINED_FUNCTION_83();
      *v20 = 136315138;
      v40 = OUTLINED_FUNCTION_17_27();
      v55[0] = 0;
      v55[1] = v41;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v42, v43, v44);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55[0], v55[1], &v53);
      OUTLINED_FUNCTION_40_0();

      *(v20 + 4) = v55;
      OUTLINED_FUNCTION_26(&dword_0, v45, v46, "%s selectAppConfirmation: no app to reprompt with, cancelling");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppConfirmationResponse();
    return static AppConfirmationResponse.cancel()();
  }

  return v3;
}

void PhoneAppResolutionOnDeviceFlowStrategy.selectAppDisambiguation(by:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v9);
  v10 = OUTLINED_FUNCTION_3_13();
  v11(v10);
  OUTLINED_FUNCTION_24_2();
  (*(v12 + 88))();

  v13 = type metadata accessor for AppResolverResult();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v13);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_28_0(v2 + 38, v2[41]);
    v15 = OUTLINED_FUNCTION_72();
    v16(v15);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_86_1();
    *&v55 = OUTLINED_FUNCTION_54_1();
    *v9 = 136315394;
    v19 = OUTLINED_FUNCTION_17_27();
    v49 = 0;
    v50 = v20;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v19, v21, v22, v23);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v55);
    OUTLINED_FUNCTION_111_2();
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_98_3();
    v49 = App.appIdentifier.getter();
    v50 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v25 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v55);
    OUTLINED_FUNCTION_111_2();
    *(v9 + 14) = v1;
    OUTLINED_FUNCTION_24_22();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  App.appIdentifier.getter();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  v34 = v2[44];

  v35 = OUTLINED_FUNCTION_53_1();
  v37 = specialized Dictionary.subscript.getter(v35, v36, v34);

  if (v37 == 5)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v4, v38, &v49);
  if (v49)
  {
    v39 = v50;
    v40 = v52;
    v53 = v51;
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_5();
    static AppDisambiguationResponse.select(app:)();
    OUTLINED_FUNCTION_125_1();

    v54 = v39;
    OUTLINED_FUNCTION_20_6(&v54);
    v55 = v53;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v55, &_sSSSgMd, &_sSSSgMR);
    v56 = v40;
    OUTLINED_FUNCTION_20_6(&v56);
  }

  else
  {

    v41 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (OUTLINED_FUNCTION_108())
    {
      OUTLINED_FUNCTION_42();
      *&v53 = OUTLINED_FUNCTION_83();
      *v33 = 136315138;
      v42 = OUTLINED_FUNCTION_17_27();
      *&v55 = 0;
      *(&v55 + 1) = v43;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v42, v44, v45, v46);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, *(&v55 + 1), &v53);
      OUTLINED_FUNCTION_63_1();
      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_26(&dword_0, v47, v48, "%s selectAppDisambiguation: reprompt");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    type metadata accessor for AppDisambiguationResponse();

    static AppDisambiguationResponse.disambiguate(apps:)();
    OUTLINED_FUNCTION_125_1();
  }

  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v3[7];
  v9 = v3[8];
  v10 = __swift_project_boxed_opaque_existential_1(v3 + 4, v8);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v11 = OUTLINED_FUNCTION_103_0();
  v12(v11);
  (*(v9 + 16))(&v71, a1, &v77, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v13 = v71;
  if (v71)
  {
    v64 = v72;
    v65 = v71;
    v77 = v71;
    v78 = v72;
    v62 = *(&v73 + 1);
    v63 = v73;
    v79 = v73;
    v60 = v76;
    v61 = v74;
    v80 = v74;
    *v81 = *v75;
    *&v81[3] = *&v75[3];
    v82 = v76;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
    v83 = v78;
    v84 = v79;
    v85[0] = v82;

    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v83, &v67, &_sShySSGMd, &_sShySSGMR);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v84, &v67, &_sSSSgMd, &_sSSSgMR);
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v85, &v67, &_sShySSGMd, &_sShySSGMR);
    v15 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_158();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v84, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, &_sShySSGMd, &_sShySSGMR);
    if (os_log_type_enabled(v15, a2))
    {
      v16 = OUTLINED_FUNCTION_36();
      v59 = swift_slowAlloc();
      v66[0] = v59;
      *v16 = 136315650;
      v17 = v4[45];
      v18 = v4[46];
      log = v15;
      OUTLINED_FUNCTION_114();
      v67 = 0;
      v68 = v19;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v18, 0xD00000000000002BLL, v15 | 0x8000000000000000);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v66);
      OUTLINED_FUNCTION_63_1();
      *(v16 + 4) = v17;
      *(v16 + 12) = 2080;
      v67 = a1;
      v20 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_75();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v21, 255, v22, &protocol conformance descriptor for App);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v66);
      OUTLINED_FUNCTION_34_0();

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;

      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v83, &v67, &_sShySSGMd, &_sShySSGMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v84, &v67, &_sSSSgMd, &_sSSSgMR);
      _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v85, &v67, &_sShySSGMd, &_sShySSGMR);
      AnnotatedApp.description.getter();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_sShySSGMd, &_sShySSGMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v84, &_sSSSgMd, &_sSSSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, &_sShySSGMd, &_sShySSGMR);
      v25 = OUTLINED_FUNCTION_53_1();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);

      *(v16 + 24) = v28;
      v15 = log;
      _os_log_impl(&dword_0, log, a2, "%s for %s: %s with current NL intent", v16, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v59);
      OUTLINED_FUNCTION_36_16();
    }

    v29 = v4[29];
    __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
    v30 = OUTLINED_FUNCTION_61();
    v31(v30, v29);
    v32 = v69;
    v33 = v70;
    OUTLINED_FUNCTION_28_0(&v67, v69);
    swift_beginAccess();
    OUTLINED_FUNCTION_139();
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v34, v35, v36, v37);
    (*(v33 + 8))(&v77, v66, v32, v33);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v38 = v64;
    v13 = v65;
    v40 = v62;
    v39 = v63;
    v42 = v60;
    v41 = v61;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);

    v44 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_147_0();

    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_86_1();
      v67 = OUTLINED_FUNCTION_54_1();
      *v9 = 136315394;
      v46 = v3[45];
      v45 = v3[46];
      OUTLINED_FUNCTION_114();
      v77 = 0;
      v78 = v47;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v46, v45, 0xD00000000000002BLL, v10 | 0x8000000000000000);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v67);
      OUTLINED_FUNCTION_107_1();
      *(v9 + 4) = v45;
      OUTLINED_FUNCTION_98_3();
      v77 = a1;
      v48 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_75();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(v49, 255, v50, &protocol conformance descriptor for App);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v67);
      OUTLINED_FUNCTION_107_1();
      *(v9 + 14) = v48;
      OUTLINED_FUNCTION_24_22();
      _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_16();
      OUTLINED_FUNCTION_5_7();
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  *a3 = v13;
  a3[1] = v38;
  a3[2] = v39;
  a3[3] = v40;
  a3[4] = v41;
  a3[5] = v42;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for AppResolverResult();
  v1[5] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for AppResolutionResult();
  v1[8] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_39_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  *(v0 + 88) = OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v5 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    OUTLINED_FUNCTION_104_0(v5, v6, v7, v8);
    OUTLINED_FUNCTION_39_15(v9, v10, v11, v12, v13, v14, v15, v16, v47, v48, v49, v51, v52, v53);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v22 = *(*(v0 + 24) + 296);
  OUTLINED_FUNCTION_41_0();
  if ((*(v23 + 176))())
  {
    v24 = swift_task_alloc();
    *(v0 + 96) = v24;
    *v24 = v0;
    v24[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
    OUTLINED_FUNCTION_100_2(*(v0 + 16));

    return PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:)();
  }

  else
  {
    OUTLINED_FUNCTION_41_0();
    if ((*(v26 + 192))())
    {
      static Signpost.begin(_:)();
      *(v0 + 112) = v27;
      *(v0 + 120) = v28;
      *(v0 + 128) = v29;
      *(v0 + 192) = v30;
      OUTLINED_FUNCTION_41_0();
      v50 = (*(v31 + 168) + **(v31 + 168));
      v32 = swift_task_alloc();
      *(v0 + 136) = v32;
      *v32 = v0;
      v32[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
      v33 = OUTLINED_FUNCTION_100_2(*(v0 + 16));

      return v50(v33);
    }

    else
    {
      OUTLINED_FUNCTION_86(*(v0 + 16));
      OUTLINED_FUNCTION_142_0();
      if (PhoneCallNLIntent.hasApplicationNameOrId()())
      {
        v35 = *(v0 + 16);
        v34 = *(v0 + 24);
        v36 = v34[41];
        v37 = v34[42];
        OUTLINED_FUNCTION_28_0(v34 + 38, v36);
        (*(v37 + 16))(4, v36, v37);

        OUTLINED_FUNCTION_165(v34 + 25);
        v38 = OUTLINED_FUNCTION_25_0();
        v39(v38);
        type metadata accessor for App();
        OUTLINED_FUNCTION_86(v35);
        OUTLINED_FUNCTION_120_1();
        PhoneCallNLIntent.applicationId.getter(v40, v41);
        App.__allocating_init(appIdentifier:)();
        v42 = PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(v35, v34 + 25);

        v43 = OUTLINED_FUNCTION_19_0();
        v44(v43);
      }

      else if ((*(*v22 + 208))())
      {
        OUTLINED_FUNCTION_28_0((*(v0 + 24) + 304), *(*(v0 + 24) + 328));
        OUTLINED_FUNCTION_144_0();
        v45();
      }

      OUTLINED_FUNCTION_129_1();

      OUTLINED_FUNCTION_17_5();

      return v46(0);
    }
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  if (v0[13])
  {

    AppResolutionAction.result.getter();
    v1 = OUTLINED_FUNCTION_92();
    if (v2(v1) == enum case for AppResolutionResult.needsDisambiguation(_:))
    {
      v4 = v0[2];
      v3 = v0[3];
      v5 = OUTLINED_FUNCTION_146_0();
      v6(v5);
      PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(v4);
      OUTLINED_FUNCTION_28_0((v3 + 304), *(v3 + 328));
      OUTLINED_FUNCTION_143_0();
      v7();

      goto LABEL_6;
    }

    v8 = OUTLINED_FUNCTION_146_0();
    v9(v8);
  }

  OUTLINED_FUNCTION_28_0((v0[3] + 304), *(v0[3] + 328));
  OUTLINED_FUNCTION_144_0();
  v10();
LABEL_6:

  v11 = OUTLINED_FUNCTION_3_20();

  return v12(v11);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[3];
  *(v1 + 16) = v0[19];

  v2 = *(v1 + 16);
  v0[20] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v3;
  *v3 = v4;
  v3[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);
  v5 = v0[4];
  v6 = v0[2];

  return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(v5, v6, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_1();
  v22 = v0;
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_1_0(v3);
  if (v4)
  {
    v5 = v0[3];
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);

    v6 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_42();
      v20[0] = OUTLINED_FUNCTION_83();
      v20[1] = 0;
      v7 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      v21 = v8;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v7, v9, v10, v11);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v21, v20);
      OUTLINED_FUNCTION_63_1();
      *(v5 + 4) = v1;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(0);

    OUTLINED_FUNCTION_129_1();

    OUTLINED_FUNCTION_17_5();

    return v17(0);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v3, v2);
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = PhoneAppResolutionOnDeviceFlowStrategy.shouldSmartAppSelectOrForceAppDisambiguate(phoneCallNLIntent:);

    return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelectAction(phoneCallNLIntent:recommendation:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 184);
  Signpost.OpenSignpost.end()();
  PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(v1);

  v2 = OUTLINED_FUNCTION_92();
  v3(v2);

  v4 = OUTLINED_FUNCTION_3_20();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_39_4();
  v16 = v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_42();
    v5 = OUTLINED_FUNCTION_36();
    v13 = v5;
    v14 = 0;
    *v4 = 136315138;
    v6 = OUTLINED_FUNCTION_4_47();
    v15 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v13);
    OUTLINED_FUNCTION_111_2();
    *(v4 + 4) = v1;
    _os_log_impl(&dword_0, v2, v3, "%s shouldSmartAppSelectOrForceAppDisambiguate: Couldn't get intent to find eligible apps. Skipping Smart App Selection ..", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_36_16();
    OUTLINED_FUNCTION_5_7();
  }

  OUTLINED_FUNCTION_129_1();

  OUTLINED_FUNCTION_17_5();

  return v11(0);
}

void *PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_36();
    v47 = v9;
    v48 = 0;
    *v8 = 136315138;
    v10 = OUTLINED_FUNCTION_17_27();
    v49 = v11;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v12, v13, v14);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);
    OUTLINED_FUNCTION_160();
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_110_1();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_26_0(v8);
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  (*(v21 + 80))(&v48, v20, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  OUTLINED_FUNCTION_72();
  specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
  v23 = v22;

  outlined destroy of SKTransformer(&v48);
  if (v23)
  {
    v24 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v23);
    if (v24)
    {
      v25 = v24;
      if (specialized Array.count.getter(v24))
      {
        v26 = (v25 & 0xC000000000000001);
        v27 = OUTLINED_FUNCTION_3_36();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v28, v25);
        if ((v25 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v25 + 32);
        }

        OUTLINED_FUNCTION_40_0();

        v30 = INPerson.asBase64()();
        outlined bridged method (mbnn) of @objc INPerson.contactIdentifier.setter(v30._countAndFlagsBits, v30._object, (v25 & 0xC000000000000001));
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v32 = OUTLINED_FUNCTION_48_0(v31);
        *(v32 + 16) = xmmword_426260;
        *(v32 + 32) = v26;
        v33 = v26;
        INStartCallIntent.overwriteContacts(newContacts:)(v32);
      }
    }
  }

  else
  {

    v34 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v35 = OUTLINED_FUNCTION_14_2();
      v47 = v35;
      v48 = 0;
      *a2 = 136315138;
      v36 = OUTLINED_FUNCTION_17_27();
      v49 = v37;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v36, v38, v39, v40);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);
      OUTLINED_FUNCTION_40_0();

      *(a2 + 4) = &v48;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }
  }

  return v23;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v5, v6, v7);
}

void PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)()
{
  v5 = specialized Array.count.getter(*(v0 + 48));
  if (v5 >= 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v6 = *(v0 + 56);
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.siriPhone);

      v8 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_158();

      if (OUTLINED_FUNCTION_157())
      {
        v9 = *(v0 + 48);
        OUTLINED_FUNCTION_86_1();
        v135 = OUTLINED_FUNCTION_55_4();
        v136 = 0;
        *v6 = 136315394;
        v10 = OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_104_0(v10, v11, v12, v13);
        OUTLINED_FUNCTION_39_15(v14, v15, v16, v17, v18, v19, v20, v21, v132, v133, v134, v135, v136, v137);
        OUTLINED_FUNCTION_111_2();
        *(v6 + 4) = v4;
        OUTLINED_FUNCTION_99_0();
        type metadata accessor for App();
        v22 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v135);
        OUTLINED_FUNCTION_125();
        *(v6 + 14) = v9;
        OUTLINED_FUNCTION_112_2();
        _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
        OUTLINED_FUNCTION_97_1();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_14_0();
      }

      v29 = *(v0 + 48);
      v30 = specialized Array.count.getter(v29);
      v1 = 0;
      v31 = v29 & 0xC000000000000001;
      v32 = v29 & 0xFFFFFFFFFFFFFF8;
      v4 = v29 + 32;
      while (1)
      {
        if (v30 == v1)
        {
          v62 = *(v0 + 56);

          v35 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_87();
          if (OUTLINED_FUNCTION_86_0())
          {
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_56_5();
            v63 = OUTLINED_FUNCTION_2_72(4.8149e-34);
            OUTLINED_FUNCTION_104_0(v63, v64, v65, v66);
            OUTLINED_FUNCTION_39_15(v67, v68, v69, v70, v71, v72, v73, v74, v132, v133, v134, v135, v136, v137);
            OUTLINED_FUNCTION_63_1();
            *(v62 + 4) = v31;
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        if (v31)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v1 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_41;
          }

          v33 = *(v4 + 8 * v1);
        }

        *(v0 + 64) = v33;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (App.isFirstParty()())
        {
          v98 = *(v0 + 56);
          v99 = PhoneAppResolutionOnDeviceFlowStrategy.buildUpInputIntent(phoneCallNLIntent:sharedGlobals:app:)(*(v0 + 40), (v98 + 200));
          *(v0 + 72) = v99;
          v101 = *(v0 + 56);
          if (v99)
          {
            v102 = v99;
            v103 = v100;
            v104 = *(v0 + 48);
            v105 = *(v101 + 232);
            __swift_project_boxed_opaque_existential_1((v98 + 200), *(v101 + 224));
            v106 = OUTLINED_FUNCTION_40_0();
            v107(v106, v105);
            OUTLINED_FUNCTION_24_2();
            v109 = *(v108 + 176);
            v110 = v102;
            v109(v102, v103);

            OUTLINED_FUNCTION_2_0();
            *(v0 + 80) = (*(v111 + 240))(v104);
            OUTLINED_FUNCTION_2_0();
            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            *(v0 + 88) = v112;
            *v112 = v113;
            v112[1] = PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:);
            OUTLINED_FUNCTION_152();

            __asm { BRAA            X5, X16 }
          }

          v116 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_158();
          if (OUTLINED_FUNCTION_156())
          {
            OUTLINED_FUNCTION_42();
            v117 = OUTLINED_FUNCTION_14_2();
            v135 = v117;
            v136 = 0;
            *v101 = 136315138;
            v118 = OUTLINED_FUNCTION_4_47();
            OUTLINED_FUNCTION_104_0(v118, v119, v120, v121);
            OUTLINED_FUNCTION_39_15(v122, v123, v124, v125, v126, v127, v128, v129, v132, v133, v134, v135, v136, v137);
            OUTLINED_FUNCTION_125();
            *(v101 + 4) = v32;
            OUTLINED_FUNCTION_91_4(&dword_0, v130, v131, "%s executeSmartAppSelect: couldn't convert phoneCallNLIntent to an INStartCallIntent (using a 1P Phone app)..");
            __swift_destroy_boxed_opaque_existential_1(v117);
            OUTLINED_FUNCTION_5_7();
            OUTLINED_FUNCTION_14_0();
          }

LABEL_30:
          v94 = *(v0 + 32);
          v95 = type metadata accessor for AppResolverResult();
          __swift_storeEnumTagSinglePayload(v94, 1, 1, v95);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_152();

          __asm { BRAA            X1, X16 }
        }

        ++v1;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }
  }

  if (v5 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);

    v35 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();

    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_29;
    }

    v36 = *(v0 + 48);
    v37 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_56_5();
    v38 = OUTLINED_FUNCTION_2_72(4.8151e-34);
    OUTLINED_FUNCTION_104_0(v38, v39, v40, v41);
    OUTLINED_FUNCTION_39_15(v42, v43, v44, v45, v46, v47, v48, v49, v132, v133, v134, v135, v136, v137);
    OUTLINED_FUNCTION_125();
    *(v37 + 4) = v3;
    *(v37 + 12) = 2080;
    v50 = OUTLINED_FUNCTION_3_36();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v50, v51, v36);
    if ((v36 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v52 = App.appIdentifier.getter();
    v54 = v53;

    *(v0 + 16) = v52;
    *(v0 + 24) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v55 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v135);
    OUTLINED_FUNCTION_63_1();
    *(v37 + 14) = v52;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
    OUTLINED_FUNCTION_60_4();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v75 = *(v0 + 56);
    v76 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v76, static Logger.siriPhone);

    v35 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v77 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    OUTLINED_FUNCTION_104_0(v77, v78, v79, v80);
    OUTLINED_FUNCTION_39_15(v81, v82, v83, v84, v85, v86, v87, v88, v132, v133, v134, v135, v136, v137);
    OUTLINED_FUNCTION_63_1();
    *(v75 + 4) = v2;
LABEL_27:
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();
LABEL_29:

  goto LABEL_30;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  v3 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelectAction(phoneCallNLIntent:recommendation:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v3 = type metadata accessor for AppResolverResult();
  v1[12] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v243 = v0;
  countAndFlagsBits = v0[7]._countAndFlagsBits;
  v2 = v0[6]._countAndFlagsBits;
  (*(v0[6]._object + 2))(countAndFlagsBits, v0[5]._countAndFlagsBits, v2);
  v3 = OUTLINED_FUNCTION_0();
  v5 = v4(v3);
  v6 = &dword_54B000;
  v239 = v0;
  if (v5 != enum case for AppResolverResult.resolved(_:))
  {
    if (v5 == enum case for AppResolverResult.needsConfirmation(_:))
    {
      v42 = OUTLINED_FUNCTION_140_1();
      v43(v42);
      v44 = countAndFlagsBits[1];
      v15 = *(v2 + 296);
      OUTLINED_FUNCTION_41_0();
      object = v15;
      v10 = (*(v45 + 248))();
      v11 = v46;

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v47 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);

      v238 = v15;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        object = v0[5]._object;
        v50 = OUTLINED_FUNCTION_86_1();
        v51 = OUTLINED_FUNCTION_16_13();
        v240 = v51;
        v241 = 0;
        *v50 = 136315394;
        v52 = OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_105_2(v52, v53, v54, v55);
        OUTLINED_FUNCTION_41_15(v56, v57, v58, v59, v60, v61, v62, v63, v233, v234, v235, v15, v0, v240, v241, v242);
        OUTLINED_FUNCTION_128_0();
        *(v50 + 4) = v44;
        *(v50 + 12) = 2080;

        v64 = OUTLINED_FUNCTION_146_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v66);
        OUTLINED_FUNCTION_5();

        *(v50 + 14) = object;
        OUTLINED_FUNCTION_110_1();
        _os_log_impl(v67, v68, v69, v70, v71, 0x16u);
        OUTLINED_FUNCTION_134();
        v0 = v239;
        OUTLINED_FUNCTION_26_0(v51);
        OUTLINED_FUNCTION_26_0(v50);
      }

      v72 = *(v0[5]._object + 2);
      v73 = specialized Array.count.getter(v72);
      v0 = (v72 & 0xC000000000000001);
      v13 = v72 & 0xFFFFFFFFFFFFFF8;

      for (i = 0; v73 != i; ++i)
      {
        if (v0)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_93;
          }

          v75 = *(v72 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        OUTLINED_FUNCTION_41_0();
        object = v15;
        if ((*(v76 + 264))(v75, v10, v11))
        {
          v119 = v239[5]._object;

          v119[3] = v75;

          v119[43] = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(3);

          type metadata accessor for AppResolutionAction();
          static AppResolutionAction.confirmAfterAuthorizationChecks(app:)();
          goto LABEL_82;
        }
      }

      v92 = v239[5]._object;

      v77 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v93 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      OUTLINED_FUNCTION_105_2(v93, v94, v95, v96);
      OUTLINED_FUNCTION_41_15(v97, v98, v99, v100, v101, v102, v103, v104, v233, v234, v235, v238, v239, v240, v241, v242);
      OUTLINED_FUNCTION_63_1();
      *(v92 + 4) = v72;
    }

    else if (v5 == enum case for AppResolverResult.needsDisambiguation(_:))
    {
      v78 = v0[7]._countAndFlagsBits;
      (*(v0[6]._object + 12))(v78, v0[6]._countAndFlagsBits);
      v15 = *v78;
      v79 = *(*v78 + 16);
      if (v79)
      {
        v80 = v0[5]._object;
        v241 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v81 = _swiftEmptyArrayStorage;
        v82 = *(*v80[37] + 248);
        v83 = (v15 + 40);
        do
        {
          v84 = v81;
          v85 = *(v83 - 1);
          v86 = *v83;

          v87 = v82(v85, v86);
          v81 = v84;
          v88 = v87;
          v90 = v89;

          v241 = v84;
          v15 = v84[2];
          if (v15 >= v81[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v81 = v241;
          }

          v81[2] = v15 + 1;
          v91 = &v81[2 * v15];
          v91[4] = v88;
          v91[5] = v90;
          v83 += 2;
          --v79;
        }

        while (v79);

        v0 = v239;
        v6 = &dword_54B000;
      }

      else
      {

        v81 = _swiftEmptyArrayStorage;
      }

      if (*(v6 + 369) != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v234 = &v0[4];
      v159 = v0[5]._object;
      v160 = type metadata accessor for Logger();
      v161 = __swift_project_value_buffer(v160, static Logger.siriPhone);

      v235 = v161;
      v237 = v81;
      object = v161;
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v162, v163))
      {
        OUTLINED_FUNCTION_86_1();
        v240 = OUTLINED_FUNCTION_54_1();
        v241 = 0;
        *v159 = 136315394;
        v164 = OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_105_2(v164, v165, v166, v167);
        OUTLINED_FUNCTION_41_15(v168, v169, v170, v171, v172, v173, v174, v175, v233, v234, v235, v237, v239, v240, v241, v242);
        OUTLINED_FUNCTION_111_2();
        *(v159 + 4) = &unk_426000;
        OUTLINED_FUNCTION_98_3();
        v176 = Array.description.getter();
        object = v177;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, &v240);
        OUTLINED_FUNCTION_111_2();
        *(v159 + 14) = &unk_426000;
        _os_log_impl(&dword_0, v162, v163, "%s executeSmartAppSelect: AppSelection recommends to disambiguate apps: '%s'.", v159, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_5_7();
      }

      v233 = v0[5]._object;
      v13 = *(v233 + 16);
      v241 = _swiftEmptyArrayStorage;
      v178 = specialized Array.count.getter(v13);
      v0 = (v13 & 0xC000000000000001);

      v11 = 0;
      v10 = 0;
LABEL_61:
      for (j = v10; v178 != j; ++j)
      {
        if (v0)
        {
          v180 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_95;
          }

          v180 = *(v13 + 8 * j + 32);
        }

        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        object = v180;
        v181 = App.appIdentifier.getter();
        if (v182)
        {
          object = v182;
          v183 = HIBYTE(v182) & 0xF;
          if ((v182 & 0x2000000000000000) == 0)
          {
            v183 = v181 & 0xFFFFFFFFFFFFLL;
          }

          if (v183)
          {
            v184 = String.lowercased()();
            v15 = v184._object;

            v239[4] = v184;
            object = swift_task_alloc();
            object[2] = v234;
            v185 = specialized Sequence.contains(where:)();

            if (v185)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              object = &v241;
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            goto LABEL_61;
          }
        }

        else
        {
        }
      }

      v186 = v239;

      v187 = v241;

      v188 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v188, v17))
      {
        v189 = OUTLINED_FUNCTION_86_1();
        v190 = OUTLINED_FUNCTION_16_13();
        v240 = v190;
        v241 = 0;
        *v189 = 136315394;
        v191 = OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_105_2(v191, v192, v193, v194);
        v203 = OUTLINED_FUNCTION_41_15(v195, v196, v197, v198, v199, v200, v201, v202, v233, v234, v235, v237, v239, v240, v241, v242);

        *(v189 + 4) = v203;
        *(v189 + 12) = 2080;
        type metadata accessor for App();
        v204 = Array.description.getter();
        v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v205, &v240);

        *(v189 + 14) = v206;
        v186 = v239;
        OUTLINED_FUNCTION_155(&dword_0, v207, v208, "%s executeSmartAppSelect: disambiguateApps after filter out: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v190);
        OUTLINED_FUNCTION_36_16();
      }

      v209 = specialized Array.count.getter(v187);
      v210 = *(v237 + 16);

      v211 = v186[5]._object;
      if (v209 == v210)
      {
        OUTLINED_FUNCTION_2_0();
        *(v233 + 16) = (*(v212 + 272))(v187);

        v211[44] = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(3);

        type metadata accessor for AppResolutionAction();
        OUTLINED_FUNCTION_5();
        static AppResolutionAction.disambiguateAfterAuthorizationChecks(apps:)();
        OUTLINED_FUNCTION_5();
LABEL_82:

        goto LABEL_87;
      }

      v77 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

LABEL_84:
      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v213 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      OUTLINED_FUNCTION_105_2(v213, v214, v215, v216);
      OUTLINED_FUNCTION_41_15(v217, v218, v219, v220, v221, v222, v223, v224, v233, v234, v235, v237, v239, v240, v241, v242);
      OUTLINED_FUNCTION_63_1();
      *(v10 + 4) = v17;
    }

    else
    {
      if (v5 != enum case for AppResolverResult.noMatchFound(_:))
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v139 = v0[5]._object;
        v140 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v140, static Logger.siriPhone);

        v141 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_87();
        if (OUTLINED_FUNCTION_86_0())
        {
          OUTLINED_FUNCTION_67_7();
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_93_4();
          v142 = OUTLINED_FUNCTION_2_72(4.8149e-34);
          OUTLINED_FUNCTION_105_2(v142, v143, v144, v145);
          OUTLINED_FUNCTION_41_15(v146, v147, v148, v149, v150, v151, v152, v153, v233, v234, v235, v236, v0, v240, v241, v242);
          OUTLINED_FUNCTION_63_1();
          *(v139 + 4) = &dword_54B000;
          OUTLINED_FUNCTION_7_44();
          _os_log_impl(v154, v155, v156, v157, v158, 0xCu);
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_35();
        }

        (*(v0[6]._object + 1))(v0[7]._countAndFlagsBits, v0[6]._countAndFlagsBits);
        goto LABEL_87;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v105 = v0[5]._object;
      v106 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v106, static Logger.siriPhone);

      v77 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
LABEL_86:

        goto LABEL_87;
      }

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_93_4();
      v107 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      OUTLINED_FUNCTION_105_2(v107, v108, v109, v110);
      OUTLINED_FUNCTION_41_15(v111, v112, v113, v114, v115, v116, v117, v118, v233, v234, v235, v236, v0, v240, v241, v242);
      OUTLINED_FUNCTION_63_1();
      *(v105 + 4) = &dword_54B000;
    }

    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v225, v226, v227, v228, v229, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
    goto LABEL_86;
  }

  v7 = OUTLINED_FUNCTION_140_1();
  v8(v7);
  v9 = *countAndFlagsBits;
  v10 = countAndFlagsBits[1];
  v11 = *(v2 + 296);
  object = v11;
  v13 = ((*v11)[31])(v9, v10);
  v15 = v14;

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_96:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);

  v237 = object;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[5]._object;
    v20 = OUTLINED_FUNCTION_86_1();
    v21 = OUTLINED_FUNCTION_16_13();
    v240 = v21;
    v241 = 0;
    *v20 = 136315394;
    v22 = OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_105_2(v22, v23, v24, v25);
    OUTLINED_FUNCTION_41_15(v26, v27, v28, v29, v30, v31, v32, v33, v233, v234, v235, v237, v239, v240, v241, v242);
    OUTLINED_FUNCTION_160();
    *(v20 + 4) = v10;
    *(v20 + 12) = 2080;

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v240);
    OUTLINED_FUNCTION_40_0();

    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_110_1();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    OUTLINED_FUNCTION_134();
    v0 = v239;
    OUTLINED_FUNCTION_26_0(v21);
    OUTLINED_FUNCTION_26_0(v20);
  }

  object = *(v0[5]._object + 2);

  PhoneAppResolutionOnDeviceFlowStrategy.getSeASPredictableAppsList(apps:)(v39);
  OUTLINED_FUNCTION_125();
  v40 = specialized Array.count.getter(v18);
  v41 = 0;
  v0 = (v18 & 0xC000000000000001);
  v10 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v40 == v41)
    {
      v10 = v239[5]._object;

      v77 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

    if (v0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_91;
      }

      v17 = *(v18 + 8 * v41 + 32);
    }

    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    object = v11;
    if (((*v11)[33])(v17, v13, v15))
    {
      break;
    }

    ++v41;
  }

  PhoneAppResolutionOnDeviceFlowStrategy.findAndCacheAppForAppSelection(app:source:)(v17, 3, &v239[1]._countAndFlagsBits);
  if (v239[1]._countAndFlagsBits)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v239[1], &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    type metadata accessor for AppResolutionAction();
    static AppResolutionAction.select(app:)();
    goto LABEL_82;
  }

  v120 = v239[5]._object;

  v121 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_67_7();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_93_4();
    v122 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    OUTLINED_FUNCTION_105_2(v122, v123, v124, v125);
    OUTLINED_FUNCTION_41_15(v126, v127, v128, v129, v130, v131, v132, v133, v233, v234, v235, v237, v239, v240, v241, v242);
    OUTLINED_FUNCTION_125();
    *(v120 + 4) = v18;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v134, v135, v136, v137, v138, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_87:

  v230 = OUTLINED_FUNCTION_3_20();

  return v231(v230);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for Date();
  v1[14] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v0[17] = *(v0[13] + 296);
  OUTLINED_FUNCTION_2_0();
  v5 = (*(v1 + 168) + **(v1 + 168));
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = PhoneAppResolutionOnDeviceFlowStrategy.executeForceAppDisambiguate(phoneCallNLIntent:);
  v3 = OUTLINED_FUNCTION_100_2(v0[12]);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v106 = v0;
  v3 = *(v0 + 104);
  *(v3 + 16) = *(v0 + 160);

  if (specialized Array.count.getter(*(v3 + 16)) < 2)
  {
    if (specialized Array.count.getter(*(v3 + 16)) == 1)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);

      v10 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_131_1();
      if (!OUTLINED_FUNCTION_156())
      {
        goto LABEL_36;
      }

      v12 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_56_5();
      *v12 = 136315394;
      v13 = OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_104_0(v13, v14, v15, v16);
      OUTLINED_FUNCTION_39_15(v17, v18, v19, v20, v21, v22, v23, v24, v102, v103, v104, v105[0], v105[1], v105[2]);
      OUTLINED_FUNCTION_63_1();
      *(v12 + 4) = v2;
      *(v12 + 12) = 2080;
      v25 = *(v3 + 16);
      v26 = v25 & 0xC000000000000001;
      v27 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v28, v25);
      if ((v25 & 0xC000000000000001) != 0)
      {

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        OUTLINED_FUNCTION_63_1();
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v29 = App.appIdentifier.getter();
      v31 = v30;

      *(v0 + 80) = v29;
      *(v0 + 88) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v32 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v105);
      OUTLINED_FUNCTION_63_1();
      *(v12 + 14) = v26;
      _os_log_impl(&dword_0, v10, v1, "%s executeForceAppDisambiguate: Found a single app '%s'. Skipping Forced App disambiguation..", v12, 0x16u);
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_14_0();
      v34 = v12;
      goto LABEL_35;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = *(v0 + 104);
    v68 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v68, static Logger.siriPhone);

    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_36;
    }

LABEL_34:
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_56_5();
    v69 = OUTLINED_FUNCTION_2_72(4.8149e-34);
    OUTLINED_FUNCTION_104_0(v69, v70, v71, v72);
    OUTLINED_FUNCTION_39_15(v73, v74, v75, v76, v77, v78, v79, v80, v102, v103, v104, v105[0], v105[1], v105[2]);
    OUTLINED_FUNCTION_63_1();
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
    OUTLINED_FUNCTION_3_7();
    v34 = v8;
LABEL_35:
    OUTLINED_FUNCTION_26_0(v34);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 184);

  v7 = v5(v6);

  if (v7)
  {
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v35 = *(v0 + 104);
    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);

    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_56_5();
      v38 = OUTLINED_FUNCTION_2_72(4.8149e-34);
      OUTLINED_FUNCTION_104_0(v38, v39, v40, v41);
      OUTLINED_FUNCTION_39_15(v42, v43, v44, v45, v46, v47, v48, v49, v102, v103, v104, v105[0], v105[1], v105[2]);
      OUTLINED_FUNCTION_63_1();
      *(v35 + 4) = v2;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    v55 = *(v0 + 136);
    v104 = v0;
    v56 = *(v0 + 104);
    OUTLINED_FUNCTION_2_0();
    v0 = *(v57 + 272);

    (v0)(v58);
    OUTLINED_FUNCTION_5();

    *(v3 + 16) = v55;

    *(v56 + 352) = PhoneAppResolutionOnDeviceFlowStrategy.getAppResolutionSourceMap(source:)(4);

    v103 = v3;
    v59 = *(v3 + 16);
    v60 = specialized Array.count.getter(v59);

    v61 = 0;
    v62 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v60 == v61)
      {
        v87 = *(v104 + 120);
        v86 = *(v104 + 128);
        v88 = *(v104 + 104);
        v89 = *(v104 + 112);

        v90 = v88[29];
        __swift_project_boxed_opaque_existential_1(v88 + 25, v88[28]);
        v91 = OUTLINED_FUNCTION_5();
        v92(v91, v90);
        v93 = *(v104 + 40);
        v94 = *(v104 + 48);
        __swift_project_boxed_opaque_existential_1((v104 + 16), v93);
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v96 = v95;
        (*(v87 + 8))(v86, v89);
        *(v104 + 56) = 0;
        *(v104 + 64) = v96;
        *(v104 + 72) = v62;
        v97 = *(v94 + 16);
        v98 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
        v97(2, v104 + 56, &type metadata for ForcedAppDisambiguationHistory, v98, v93, v94);

        __swift_destroy_boxed_opaque_existential_1((v104 + 16));
        type metadata accessor for AppResolutionAction();

        static AppResolutionAction.disambiguateAfterAuthorizationChecks(apps:)();
        OUTLINED_FUNCTION_40_0();

        goto LABEL_38;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }
      }

      if (__OFADD__(v61, 1))
      {
        break;
      }

      v2 = App.appIdentifier.getter();
      v64 = v63;

      if (!v64)
      {
        v2 = 0;
        v64 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v66;
      }

      v0 = v62[2];
      if (v0 >= v62[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v67;
      }

      v62[2] = v0 + 1;
      v65 = &v62[2 * v0];
      v65[4] = v2;
      v65[5] = v64;
      ++v61;
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_4:
  v8 = *(v0 + 104);
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    goto LABEL_34;
  }

LABEL_36:

LABEL_38:

  v99 = OUTLINED_FUNCTION_3_20();

  return v100(v99);
}

{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_131_1();
  if (OUTLINED_FUNCTION_156())
  {
    OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_14_2();
    *v0 = 136315138;
    v5 = OUTLINED_FUNCTION_4_47();
    v22 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    OUTLINED_FUNCTION_127(v10, v11, v12, v13, v14, v15, v16, v17, v4, 0, v22);
    OUTLINED_FUNCTION_125();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_91_4(&dword_0, v18, v19, "%s executeForceAppDisambiguate: Couldn't get intent to find eligible apps. Skipping Forced App disambiguation ..");
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  OUTLINED_FUNCTION_17_5();

  return v20(0);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.tryAppQueryFromCallNotifications(phoneCallNLIntent:sharedGlobals:)(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_86(a1);
  OUTLINED_FUNCTION_120_1();
  PhoneCallNLIntent.applicationId.getter(v6, v7);
  if (v8)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_86(a1);
  OUTLINED_FUNCTION_120_1();
  PhoneCallNLIntent.appName.getter(v9, v10);
  if (v11)
  {
    goto LABEL_3;
  }

  v13 = *(a2 + 32);
  v14 = OUTLINED_FUNCTION_72();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = OUTLINED_FUNCTION_61();
  v17(v16, v13);
  OUTLINED_FUNCTION_24_2();
  v19 = (*(v18 + 176))();

  if (v19)
  {
    v20 = *(a2 + 32);
    v21 = OUTLINED_FUNCTION_72();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v23 = OUTLINED_FUNCTION_61();
    if (v24(v23, v20))
    {
      v25 = CurrentRequest.refId.getter();
      v27 = v26;

      if (v27)
      {
        OUTLINED_FUNCTION_116_1();
        v28 = OUTLINED_FUNCTION_25_0();
        v29(v28);
        OUTLINED_FUNCTION_28_0(&v58, v60);
        OUTLINED_FUNCTION_139();
        v31 = v30();
        __swift_destroy_boxed_opaque_existential_1(&v58);
        if ((v31 & 1) == 0 || (OUTLINED_FUNCTION_116_1(), v32 = OUTLINED_FUNCTION_25_0(), v33(v32), __swift_project_boxed_opaque_existential_1(&v58, v60), v34 = OUTLINED_FUNCTION_25_0(), v35(v34), v36 = v57[4], OUTLINED_FUNCTION_165(v57), v37 = OUTLINED_FUNCTION_25_0(), v39 = v38(v37), __swift_destroy_boxed_opaque_existential_1(v57), __swift_destroy_boxed_opaque_existential_1(&v58), v39))
        {
LABEL_3:

          return OUTLINED_FUNCTION_72();
        }

        OUTLINED_FUNCTION_116_1();
        v40 = OUTLINED_FUNCTION_25_0();
        v41(v40);
        v42 = v60;
        v43 = v61;
        OUTLINED_FUNCTION_28_0(&v58, v60);
        (*(v43 + 24))(v25, v27, v42, v43);

        __swift_destroy_boxed_opaque_existential_1(&v58);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.siriPhone);
        OUTLINED_FUNCTION_40_0();

        v45 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_147_0();

        if (OUTLINED_FUNCTION_126())
        {
          OUTLINED_FUNCTION_86_1();
          v57[0] = OUTLINED_FUNCTION_54_1();
          *v36 = 136315394;
          v47 = *(v3 + 360);
          v46 = *(v3 + 368);
          OUTLINED_FUNCTION_114();
          v58 = 0;
          v59 = v48;

          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v46, 0xD000000000000042, 0x8000000000000000);

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v57);
          OUTLINED_FUNCTION_40_0();

          *(v36 + 4) = &v58;
          OUTLINED_FUNCTION_98_3();
          v49 = OUTLINED_FUNCTION_72();
          *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v51);
          OUTLINED_FUNCTION_24_22();
          _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_36_16();
          OUTLINED_FUNCTION_5_7();
        }
      }
    }
  }

  return OUTLINED_FUNCTION_72();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeAppQueryForIncomingCall(phoneCallNLIntent:sharedGlobals:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(a1, v53);
  AppQuery.Builder.__allocating_init(intent:)(v53);
  OUTLINED_FUNCTION_24_2();
  (*(v6 + 160))();
  v8 = v7;
  v10 = v9;

  if (!v8 || (type metadata accessor for App(), OUTLINED_FUNCTION_40_0(), , OUTLINED_FUNCTION_5_26(), App.__allocating_init(appIdentifier:)(), v11 = App.isFirstParty()(), , v11))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v14))
    {
      goto LABEL_21;
    }

    v15 = OUTLINED_FUNCTION_42();
    v53[0] = OUTLINED_FUNCTION_36();
    *v15 = 136315138;
    OUTLINED_FUNCTION_119();
    *(v15 + 4) = OUTLINED_FUNCTION_159(v16, v17, v53);
    v18 = "#PhoneAppResolutionOnDeviceFlowStrategy %s Not a 3P-specific incoming call request, use existing query";
    goto LABEL_20;
  }

  v19 = one-time initialization token for siriPhone;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v50 = v10;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_86_1();
    v24 = OUTLINED_FUNCTION_16_13();
    v53[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = OUTLINED_FUNCTION_159(v24, 0x800000000045D760, v53);
    *(v23 + 12) = 2080;
    v25 = OUTLINED_FUNCTION_5_26();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_0, v21, v22, "#PhoneAppResolutionOnDeviceFlowStrategy %s Requested 3P app %s", v23, 0x16u);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_26_0(v24);
    OUTLINED_FUNCTION_26_0(v23);
  }

  else
  {
  }

  v29 = v3[7];
  v30 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v29);
  v32 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  (*(v31 + 8))(v52, v32, v31);
  v33 = OUTLINED_FUNCTION_5_26();
  AnnotatedAppFinding.find(appQuery:device:)(v33, v34, v50, v35, v29, v30, v36);
  __swift_destroy_boxed_opaque_existential_1(v52);
  if (!v53[0])
  {
LABEL_18:
    v13 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v46))
    {
LABEL_21:

      return OUTLINED_FUNCTION_5_26();
    }

    v15 = OUTLINED_FUNCTION_42();
    v51 = OUTLINED_FUNCTION_36();
    *v15 = 136315138;
    OUTLINED_FUNCTION_119();
    *(v15 + 4) = OUTLINED_FUNCTION_159(v47, v48, &v51);
    v18 = "#PhoneAppResolutionOnDeviceFlowStrategy %s 3P app has support, so use their SiriKit implementation";
LABEL_20:
    _os_log_impl(&dword_0, v13, v3, v18, v15, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0(v15);
    goto LABEL_21;
  }

  v37 = v55;
  v56 = v54;
  if ((specialized Set._isDisjoint<A>(with:)(v3[24], v53[1]) & 1) == 0)
  {

    *v52 = v54;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_sSSSgMd, &_sSSSgMR);
    v57[0] = v37;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_sShySSGMd, &_sShySSGMR);
    goto LABEL_18;
  }

  v38 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v39 = OUTLINED_FUNCTION_86_1();
    v40 = OUTLINED_FUNCTION_16_13();
    v52[0] = v40;
    *v39 = 136315394;
    OUTLINED_FUNCTION_119();
    *(v39 + 4) = OUTLINED_FUNCTION_159(v41, v42, v52);
    *(v39 + 12) = 2080;
    v43 = Array.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v52);

    *(v39 + 14) = v45;
    _os_log_impl(&dword_0, v38, v53, "#PhoneAppResolutionOnDeviceFlowStrategy %s 3P app does not declare support for %s, so fallback to system extension", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v40);
    OUTLINED_FUNCTION_26_0(v39);
  }

  *v52 = v56;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_sSSSgMd, &_sSSSgMR);
  v57[0] = v37;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_sShySSGMd, &_sShySSGMR);
  return OUTLINED_FUNCTION_5_26();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.makeAppQuery(phoneCallNLIntent:sharedGlobals:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(a1, v25);
  v6 = AppQuery.Builder.__allocating_init(intent:)(v25);
  v7 = a2[3];
  OUTLINED_FUNCTION_165(a2);
  v8 = OUTLINED_FUNCTION_25_0();
  v10 = *v9(v8);
  v11 = (*(v10 + 264))();

  if (v11)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_8(v15))
    {
      OUTLINED_FUNCTION_42();
      v16 = OUTLINED_FUNCTION_14_2();
      v25[0] = v16;
      *v7 = 136315138;
      OUTLINED_FUNCTION_119();
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, v17, v25);
      _os_log_impl(&dword_0, v14, v11, "#PhoneAppResolutionOnDeviceFlowStrategy %s Request requires a userFacingAppId override", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    OUTLINED_FUNCTION_86(a1);
    OUTLINED_FUNCTION_120_1();
    if (PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()() && (OUTLINED_FUNCTION_86(a1), OUTLINED_FUNCTION_120_1(), PhoneCallNLIntent.isFaceTimeCall()()))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v18, (v3 + 152));
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_424FD0;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    (*(*v6 + 152))();
  }

  v23 = (*(*v6 + 160))(v12);

  return v23;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.logAppSelectionActionToSelf(action:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppResolutionResult();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  if (a1)
  {

    AppResolutionAction.result.getter();

    v5 = OUTLINED_FUNCTION_8_2();
    v7 = v6(v5);
    if (v7 == enum case for AppResolutionResult.needsConfirmation(_:))
    {
      v8 = OUTLINED_FUNCTION_8_2();
      v9(v8);
      v10 = 1;
    }

    else
    {
      v11 = v7;
      if (v7 == enum case for AppResolutionResult.needsDisambiguation(_:))
      {
        v12 = OUTLINED_FUNCTION_8_2();
        v13(v12);
        v10 = 2;
      }

      else
      {
        v14 = enum case for AppResolutionResult.selected(_:);
        v15 = OUTLINED_FUNCTION_8_2();
        v16(v15);
        if (v11 == v14)
        {
          v10 = 0;
        }

        else
        {
          v10 = 6;
        }
      }
    }
  }

  else
  {
    v10 = 5;
  }

  v17 = v2[41];
  v18 = v2[42];
  __swift_project_boxed_opaque_existential_1(v2 + 38, v17);
  (*(v18 + 16))(v10, v17, v18);
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  outlined init with copy of SignalProviding(a1, v11);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  outlined init with take of SPHConversation(v11, (v8 + 5));

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:), 0, 0);
}

uint64_t closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[2] + 16);
  v0[8] = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:);
  v4 = v0[7];
  v5 = v0[3];

  return PhoneAppResolutionOnDeviceFlowStrategy.executeSmartAppSelect(phoneCallNLIntent:inputApps:)(v4, v5, v1);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_39_4();
  v47 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = OUTLINED_FUNCTION_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v2, v3, v4, v5);

  v6 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  v7 = OUTLINED_FUNCTION_86_0();
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[5];
    v10 = OUTLINED_FUNCTION_86_1();
    v45 = OUTLINED_FUNCTION_16_13();
    v11 = OUTLINED_FUNCTION_2_72(4.8151e-34);
    v46 = v12;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v11, v13, v14, v15);
    v24 = OUTLINED_FUNCTION_127(v16, v17, v18, v19, v20, v21, v22, v23, v45, 0, v46);

    *(v10 + 4) = v24;
    *(v10 + 12) = 2080;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v8, v9, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v45);

    *(v10 + 14) = v28;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_60_4();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  }

  v34 = v0[7];
  v35 = v0[5];
  OUTLINED_FUNCTION_165((v0[2] + 200));
  v36 = OUTLINED_FUNCTION_25_0();
  v37(v36);
  OUTLINED_FUNCTION_139();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v38, v39, v40, v41);
  OUTLINED_FUNCTION_2_0();
  (*(v42 + 96))(v35);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);

  OUTLINED_FUNCTION_11();

  return v43();
}

void PhoneAppResolutionOnDeviceFlowStrategy.getAppSpeakableString(apps:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v46 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v44 = (v18 - v17);
  v19 = specialized Array.count.getter(v3);
  v49 = v3;
  v50 = v19;
  v20 = 0;
  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v48 = v3 & 0xC000000000000001;
  v42 = v15;
  v43 = (v15 + 32);
  v45 = _swiftEmptyArrayStorage;
  while (v50 != v20)
  {
    if (v48)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v47 + 16))
      {
        goto LABEL_22;
      }
    }

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      goto LABEL_17;
    }

    v22 = v1[29];
    __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
    v23 = OUTLINED_FUNCTION_61();
    v24(v23, v22);
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    OUTLINED_FUNCTION_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    App.toSpeakableStringAppName(forLocale:appInfoBuilder:)(v9, v1 + 9, v13);

    (*(v5 + 8))(v9, v46);
    __swift_destroy_boxed_opaque_existential_1(&v53);
    if (__swift_getEnumTagSinglePayload(v13, 1, v51) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v20;
    }

    else
    {
      v25 = *v43;
      (*v43)(v44, v13, v51);
      v26 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v30;
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v27);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v31;
      }

      v26[2] = v28 + 1;
      v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = v26;
      v25(v26 + v29 + *(v42 + 72) * v28, v44, v51);
      v20 = v21;
    }
  }

  v32 = specialized Array.count.getter(v49);
  if (v32 == v45[2])
  {
    goto LABEL_20;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v34 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_42();
    v52 = OUTLINED_FUNCTION_83();
    v53 = 0;
    *v9 = 136315138;
    v35 = OUTLINED_FUNCTION_17_27();
    v54 = v36;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v35, v37, v38, v39);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v52);
    OUTLINED_FUNCTION_40_0();

    *(v9 + 4) = &v53;
    OUTLINED_FUNCTION_26(&dword_0, v40, v41, "%s error on finding all app names, set app names as an empty array");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.getSeASPredictableAppsList(apps:)(uint64_t a1)
{
  type metadata accessor for App();
  OUTLINED_FUNCTION_119();
  v2 = App.__allocating_init(appIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  *(inited + 32) = v2;

  specialized Array.append<A>(contentsOf:)(inited);
  return a1;
}

void *PhoneAppResolutionOnDeviceFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  __swift_destroy_boxed_opaque_existential_1(v0 + 25);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 38);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 57), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  return v0;
}

uint64_t PhoneAppResolutionOnDeviceFlowStrategy.__deallocating_deinit()
{
  PhoneAppResolutionOnDeviceFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.resolveApp(input:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 360) + **(**v1 + 360));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>;

  return v6(a1);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationPrompt(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 392) + **(**v2 + 392));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 400) + **(**v2 + 400));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:) in conformance PhoneAppResolutionOnDeviceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t specialized closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v42 = a3;
  v37 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v37);
  v36 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v35 = &v35 - v6;
  v7 = type metadata accessor for Locale();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  Siri_Nlu_External_UserStatedTask.init()();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v18 = v41;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A93for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5(v40, v9);
  if (v18)
  {
    v20 = v35;
    v21 = v36;
    (*(v38 + 8))(v9, v39);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmMd, &_sSo26SIRINLUUserWantedToProceedCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmmMd, &_sSo26SIRINLUUserWantedToProceedCmmMR);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    *v21 = v23;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v20);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v21, type metadata accessor for PhoneError);
    _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    v28 = Error.localizedDescription.getter();
    v30 = v29;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(v20, type metadata accessor for PhoneError);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);
      _os_log_impl(&dword_0, v31, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v38 + 8))(v9, v39);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v12 + 16))(v14, v17, v11);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    return (*(v12 + 8))(v17, v11);
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A9LL3for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  swift_allocObject();
  UsoEntityBuilder_common_PhoneCall.init()();
  App.toUsoEntityBuilder(locale:)(a2);
  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

  type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  swift_allocObject();
  UsoTaskBuilder_call_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  UsoTaskBuilder.asUsoGraph()();
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

void outlined bridged method (mbnn) of @objc INPerson.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setContactIdentifier:v4];
}

uint64_t specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v64 = a8;
  v65 = a1;
  v67 = a5;
  v72 = a4;
  v69 = a2;
  v70 = a3;
  v68 = a11;
  v71 = a10;
  v66 = a9;
  v20 = type metadata accessor for AppResolver();
  __chkstk_darwin(v20 - 8);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85[3] = a15;
  v85[4] = a18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, a6, a15);
  v84[3] = a14;
  v84[4] = a17;
  v62 = a17;
  v23 = __swift_allocate_boxed_opaque_existential_1(v84);
  v24 = *(*(a14 - 8) + 32);
  v63 = a14;
  v24(v23, a7, a14);
  v83[3] = a13;
  v83[4] = a16;
  v25 = v72;
  v26 = __swift_allocate_boxed_opaque_existential_1(v83);
  v27 = v67;
  (*(*(a13 - 8) + 32))(v26, v64, a13);
  *(a12 + 16) = _swiftEmptyArrayStorage;
  *(a12 + 24) = 0;
  *(a12 + 344) = Dictionary.init(dictionaryLiteral:)();
  v28 = v69;
  v29 = v70;
  *(a12 + 352) = Dictionary.init(dictionaryLiteral:)();
  v30 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
  *(a12 + 360) = v30;
  *(a12 + 368) = &outlined read-only object #0 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 376) = 0;
  *(a12 + 384) = 0;
  *(a12 + 392) = v30;
  *(a12 + 400) = &outlined read-only object #1 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 408) = 0;
  *(a12 + 416) = 0;
  *(a12 + 424) = v30;
  *(a12 + 432) = &outlined read-only object #2 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 440) = 0u;
  *(a12 + 456) = 0u;
  *(a12 + 472) = 0u;
  *(a12 + 488) = 0;
  *(a12 + 192) = v65;
  outlined init with copy of SignalProviding(v28, a12 + 32);
  v31 = v29[3];
  v32 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v31);
  v33 = v31;
  v34 = v71;
  (*(v32 + 8))(v73, v33, v32);
  outlined init with take of SPHConversation(v73, a12 + 152);
  outlined init with copy of SignalProviding(v29, a12 + 200);
  outlined init with copy of SignalProviding(v84, a12 + 112);
  outlined init with copy of SignalProviding(v83, a12 + 72);
  *(a12 + 240) = v25;
  *(a12 + 248) = v27;
  outlined init with copy of SignalProviding(v85, a12 + 256);
  if (v34)
  {

    v35 = v34;
  }

  else
  {
    outlined init with copy of SignalProviding(v29, v73);
    outlined init with copy of SignalProviding(v84, &v80);
    type metadata accessor for AppUsageProvider();
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    v65 = swift_allocObject();
    v36 = v66;

    v37 = v61;
    AppResolver.init(appResolutionRules:)();
    type metadata accessor for PhoneAppResolutionHelper(0);
    v38 = swift_allocObject();
    v39 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v81);
    v64 = &v60;
    v40 = __chkstk_darwin(v39);
    v42 = v28;
    v43 = &v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43, v40);
    v45 = v43;
    v28 = v42;
    v35 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(v73, v45, v36, &v77, v65, v37, v38, v63, v62);
    __swift_destroy_boxed_opaque_existential_1(&v80);
  }

  *(a12 + 296) = v35;
  v46 = v68;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v68, &v80, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (v81)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    outlined init with take of SPHConversation(&v80, v73);
    outlined init with take of SPHConversation(v73, a12 + 304);
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v80, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(v29, &v77);
    v47 = [objc_opt_self() sharedAnalytics];
    v48 = [v47 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v49 = static EligibleAppFinder.instance;
    v75 = type metadata accessor for EligibleAppFinder();
    v76 = &protocol witness table for EligibleAppFinder;
    *&v74 = v49;
    v81 = &type metadata for PhoneAppResolutionLogger;
    v82 = &protocol witness table for PhoneAppResolutionLogger;
    v50 = swift_allocObject();
    *&v80 = v50;
    v51 = *(&v78 + 1);
    v52 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v53 = *(v52 + 112);

    if (v53(v51, v52))
    {
      v54 = CurrentRequest.executionRequestId.getter();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    *&v73[0] = v54;
    *(&v73[0] + 1) = v56;
    *&v73[1] = v48;
    outlined init with copy of SignalProviding(&v77, &v73[1] + 8);
    v57 = *(&v78 + 1);
    v58 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    (*(v58 + 216))(v57, v58);
    outlined init with take of SPHConversation(&v74, &v73[6] + 8);
    memcpy((v50 + 16), v73, 0x90uLL);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    outlined init with take of SPHConversation(&v80, a12 + 304);
    v29 = v70;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return a12;
}

uint64_t outlined assign with take of PhoneCallNLIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  v4 = OUTLINED_FUNCTION_19_0();
  v5(v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of AppDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_143_0();

  return closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(v5, v6, v7, v2, v8);
}

uint64_t OUTLINED_FUNCTION_36_16()
{
}

unint64_t OUTLINED_FUNCTION_38_13()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 168));
}

unint64_t OUTLINED_FUNCTION_39_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a13;
  v16 = a14;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &a12);
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(v12 + 184);
  *(v11 + 16) = v10;
  v15 = v11 + ((*(a9 + 80) + 32) & ~*(a9 + 80)) + *(a9 + 72) * v9;

  return outlined init with take of AppDescription(v14, v15);
}

void OUTLINED_FUNCTION_91_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_94_4()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 192));
}

uint64_t OUTLINED_FUNCTION_97_1()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_105_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_107_1()
{
}

uint64_t OUTLINED_FUNCTION_111_2()
{
}

uint64_t OUTLINED_FUNCTION_128_0()
{
}

uint64_t OUTLINED_FUNCTION_129_1()
{
}

uint64_t OUTLINED_FUNCTION_131_1()
{
}

unint64_t OUTLINED_FUNCTION_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  v23 = a21;
  v24 = a22;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &a20);
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return App.toAppDescription(deviceState:appInfoBuilder:)((v13 + 16), (a12 + 72), v12);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_136_1(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 168) = 0;
  *(v5 - 160) = a5;

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_137_1()
{
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  *(*(v15 + 56) + v14) = a14;
}

void OUTLINED_FUNCTION_155(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

BOOL OUTLINED_FUNCTION_156()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_157()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_158()
{
}

unint64_t OUTLINED_FUNCTION_159(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_160()
{
}

BOOL OUTLINED_FUNCTION_161()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_163()
{
}

unint64_t OUTLINED_FUNCTION_164(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 192));
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t one-time initialization function for domainAffinityScoresSignalUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_427BC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DomainUseCase.phoneCall(_:), v0);
  v6(v5 + v2, enum case for DomainUseCase.phoneCallSiri(_:), v0);
  v6(v5 + 2 * v2, enum case for DomainUseCase.phoneCallReceived(_:), v0);
  v6(v5 + 3 * v2, enum case for DomainUseCase.messageSend(_:), v0);
  v6(v5 + 4 * v2, enum case for DomainUseCase.messageSendSiri(_:), v0);
  result = (v6)(v5 + 5 * v2, enum case for DomainUseCase.messageReceived(_:), v0);
  static PhoneAppSelectionSignalsGatherer.domainAffinityScoresSignalUseCases = v4;
  return result;
}

uint64_t one-time initialization function for domainToContactAffinityScoresSignalUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_427BC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DomainUseCase.phoneCallToContact(_:), v0);
  v6(v5 + v2, enum case for DomainUseCase.phoneCallToContactSiri(_:), v0);
  v6(v5 + 2 * v2, enum case for DomainUseCase.phoneCallReceivedFromContact(_:), v0);
  v6(v5 + 3 * v2, enum case for DomainUseCase.messageSendToContact(_:), v0);
  v6(v5 + 4 * v2, enum case for DomainUseCase.messageSendToContactSiri(_:), v0);
  result = (v6)(v5 + 5 * v2, enum case for DomainUseCase.messageReceivedFromContact(_:), v0);
  static PhoneAppSelectionSignalsGatherer.domainToContactAffinityScoresSignalUseCases = v4;
  return result;
}

uint64_t PhoneAppSelectionSignalsGatherer.__allocating_init(messageStream:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhoneAppSelectionSignalsGatherer.init(messageStream:)(a1);
  return v2;
}

uint64_t PhoneAppSelectionSignalsGatherer.execute(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:phoneAppSelectionSignalsGathererType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    oslog = a6;
    v17 = swift_slowAlloc();
    *&v27[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = Array.description.getter();
    v20 = a1;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v27);

    *(v17 + 4) = v21;
    a1 = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v27);
    _os_log_impl(&dword_0, v15, v16, "PhoneAppSelectionSignalsGatherer execute with candidateApps:%s selectedAppId:%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    a6 = oslog;
    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  v22 = (*(*v7 + 152))(a1, a3, a2);
  specialized _arrayForceCast<A, B>(_:)(v22);

  type metadata accessor for SignalGatherer();
  swift_allocObject();

  SignalGatherer.init(signals:candidateAppBundleIds:)();
  outlined init with copy of SignalProviding(a2, v27);
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  *(v23 + 24) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(v27, v23 + 32);
  *(v23 + 72) = a3;
  *(v23 + 80) = a4;
  *(v23 + 88) = a5;
  *(v23 + 96) = a6 & 1;
  v24 = a1;

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(timeoutSeconds:completion:)();
}

uint64_t closure #1 in PhoneAppSelectionSignalsGatherer.execute(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:phoneAppSelectionSignalsGathererType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v57 = a8;
  v59 = a6;
  v60 = a7;
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v10 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v50 - v18, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v11 + 32))(v16, v19, v10);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);
    (*(v11 + 16))(v13, v16, v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v54 = v11;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v52 = v26;
      v31 = v30;
      v51 = swift_slowAlloc();
      v61 = v51;
      *v31 = 136315138;
      SignalGatherer.ValuesWithTimings.values.getter();
      type metadata accessor for SignalValue();
      v32 = a2;
      v33 = Dictionary.Keys.description.getter();
      v53 = v16;
      v34 = v10;
      v36 = v35;

      v37 = *(v11 + 8);
      v37(v13, v34);
      v38 = v33;
      a2 = v32;
      v39 = v37;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v36, &v61);
      v10 = v34;
      v16 = v53;

      *(v31 + 4) = v40;
      _os_log_impl(&dword_0, v27, v28, "PhoneAppSelectionSignalsGatherer gathered values: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {

      v39 = *(v11 + 8);
      v39(v13, v10);
    }

    SignalGatherer.ValuesWithTimings.values.getter();
    PhoneAppSelectionSignalsGatherer.buildMetrics(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)();
    v42 = v41;

    if (v42)
    {
      v43 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_messageStream);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v43 emitMessage:v42 isolatedStreamUUID:isa];

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v45, v46))
      {

        return (v39)(v16, v10);
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "PhoneAppSelectionSignalsGatherer emitMessage is done.", v47, 2u);
    }

    else
    {
      v45 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_0, v45, v48, "PhoneAppSelectionSignalsGatherer failed on build metrics object", v49, 2u);
      }
    }

    return (v39)(v16, v10);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "PhoneAppSelectionSignalsGatherer gathering failed", v23, 2u);
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
}

uint64_t PhoneAppSelectionSignalsGatherer.getSignals(person:candidateAppBundleIds:phoneCallNLIntent:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v147 = a2;
  v141 = a1;
  v158 = type metadata accessor for SignalDefinitionParametersProvider();
  OUTLINED_FUNCTION_7();
  v148 = v4;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  v150 = &v123 - v12;
  v149 = type metadata accessor for SignalComputationContext();
  OUTLINED_FUNCTION_7();
  v152 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
  v19 = OUTLINED_FUNCTION_21(v18);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v20 = static ClientLocaleSignal.instances()();
  v21 = static ClientLanguageSignal.instances()();
  v169 = v20;
  specialized Array.append<A>(contentsOf:)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
  inited = swift_initStackObject();
  v145 = xmmword_424FD0;
  *(inited + 16) = xmmword_424FD0;
  v144 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v23 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  OUTLINED_FUNCTION_43_14();
  static AppSelectionSignalsGatheringHelper.getCommunicationType(phoneCallNLIntent:skIntent:)(v24, v25, v26);

  *(inited + 56) = type metadata accessor for CommunicationTypeSignal();
  *(inited + 64) = &protocol witness table for CommunicationTypeSignal;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  CommunicationTypeSignal.init(communicationType:)();
  specialized Array.append<A>(contentsOf:)(inited);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v139 = type metadata accessor for DomainUseCase();
  v27 = *(v139 - 8);
  v153 = *(v27 + 72);
  v28 = *(v27 + 80);
  v29 = v27;
  v156 = (v28 + 32) & ~v28;
  v137 = v156 + v153;
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_45_12(v30, &v168);
  v146 = enum case for DomainUseCase.phoneCall(_:);
  v32 = *(v29 + 104);
  v140 = v29 + 104;
  (v32)(v33 + ((v28 + 32) & ~v28), v31);
  OUTLINED_FUNCTION_23_20();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v34 = static DomainUserPersonaSignal.instances(context:)();
  v36 = v152 + 8;
  v35 = *(v152 + 8);
  v37 = v149;
  v35(v17, v149);
  specialized Array.append<A>(contentsOf:)(v34);
  v38 = static TimeSpentInAppAffinityScore.instances()();

  OUTLINED_FUNCTION_23_20();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v39 = static ForegroundAppBiomeSignal.instances(context:)();
  v135 = v17;
  v152 = v36;
  v134 = v35;
  v35(v17, v37);
  v162 = v38;
  specialized Array.append<A>(contentsOf:)(v39);
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  specialized Array.append<A>(contentsOf:)(Launched);
  v41 = static TotalTimeSpentInApp.instances()();
  specialized Array.append<A>(contentsOf:)(v41);
  v42 = v162;
  v151 = type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_allocObject();
  SignalDefinitionParametersProvider.Builder.init()();
  v43 = v156;
  v44 = v153;
  v155 = v28;
  v45 = v139;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_42BF10;
  OUTLINED_FUNCTION_20_28();
  v32();
  (v32)(v46 + v43 + v44, enum case for DomainUseCase.phoneCallSiri(_:), v45);
  v131 = enum case for DomainUseCase.messageSend(_:);
  (v32)(v46 + v43 + 2 * v44);
  v142 = 3 * v44;
  v132 = v32;
  (v32)(v46 + v43 + 3 * v44, enum case for DomainUseCase.messageSendSiri(_:), v45);
  dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
  OUTLINED_FUNCTION_49_11();

  OUTLINED_FUNCTION_51_15();
  dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();
  v47 = v148;

  v48 = v158;
  v160 = v158;
  v161 = &protocol witness table for SignalDefinitionParametersProvider;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
  v50 = v47;
  v52 = v47[2];
  v51 = v47 + 2;
  v154 = v52;
  (v52)(boxed_opaque_existential_1, v46, v48);
  v53 = static DomainTotalFrequencySignal.instances(with:)();
  OUTLINED_FUNCTION_7_45(v53);
  specialized Array.append<A>(contentsOf:)(v42);
  v54 = *v144;
  if (*v144)
  {
    v138 = 4 * v44;
    v144 = (2 * v44);
    OUTLINED_FUNCTION_43_17();
    v55 = v54;
    SignalDefinitionParametersProvider.Builder.init()();
    OUTLINED_FUNCTION_36_17();
    v56 = swift_allocObject();
    v57 = OUTLINED_FUNCTION_45_12(v56, &v168);
    LODWORD(v145) = enum case for DomainUseCase.phoneCallToContact(_:);
    v136 = v51;
    v59 = v132;
    (v132)(v58 + v156, v57);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v60 = v55;
    v129 = v60;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    OUTLINED_FUNCTION_51_15();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v61 = v158;
    v160 = v158;
    v62 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v154)(v62, v56, v61);
    v63 = static DomainToContactTimeSinceLastUsedSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v63);
    OUTLINED_FUNCTION_43_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v64 = v156;
    v65 = swift_allocObject();
    v130 = xmmword_424FF0;
    *(v65 + 16) = xmmword_424FF0;
    LODWORD(v137) = enum case for DomainUseCase.messageSendToContact(_:);
    (v59)(v65 + v64);
    v66 = v153;
    OUTLINED_FUNCTION_20_28();
    v59();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v67 = v129;
    v124 = v67;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    OUTLINED_FUNCTION_51_15();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v160 = v61;
    v68 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v154)(v68, v67, v61);
    v69 = static DomainToContactFrequencyByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v69);
    OUTLINED_FUNCTION_43_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v70 = v156;
    v129 = (v156 + 6 * v66);
    OUTLINED_FUNCTION_36_17();
    v71 = swift_allocObject();
    v128 = xmmword_427BC0;
    *(v71 + 16) = xmmword_427BC0;
    v72 = v71 + v70;
    OUTLINED_FUNCTION_20_28();
    v59();
    v127 = enum case for DomainUseCase.phoneCallToContactSiri(_:);
    (v59)(v72 + v66);
    v73 = v144;
    (v59)(v144 + v72, enum case for DomainUseCase.phoneCallToContactHaptic(_:), v45);
    OUTLINED_FUNCTION_20_28();
    v59();
    v126 = enum case for DomainUseCase.messageSendToContactSiri(_:);
    (v59)(v72 + v138);
    v125 = 5 * v66;
    (v59)(v72 + 5 * v66, enum case for DomainUseCase.messageSendToContactHaptic(_:), v45);
    v74 = dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();

    v75 = v124;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();

    OUTLINED_FUNCTION_51_15();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v160 = v158;
    v76 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v154)(v76, v74, v158);
    v77 = static DomainToContactTotalFrequencyByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v77);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    OUTLINED_FUNCTION_36_17();
    v78 = swift_allocObject();
    OUTLINED_FUNCTION_45_12(v78, &v149);
    v80 = v79 + v156;
    OUTLINED_FUNCTION_20_28();
    v59();
    OUTLINED_FUNCTION_20_28();
    v59();
    (v59)(v73 + v80, enum case for DomainUseCase.phoneCallReceivedFromContact(_:), v45);
    OUTLINED_FUNCTION_20_28();
    v59();
    OUTLINED_FUNCTION_20_28();
    v59();
    v81 = v80 + v125;
    v82 = v158;
    (v59)(v81, enum case for DomainUseCase.messageReceivedFromContact(_:), v45);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v83 = v75;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(bundleIds:)();

    v84 = v143;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v160 = v82;
    v85 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v154)(v85, v84, v82);
    v86 = static DomainToContactAffinityScoreByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v86);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v87 = swift_allocObject();
    OUTLINED_FUNCTION_45_12(v87, &v153);
    OUTLINED_FUNCTION_20_28();
    v59();
    OUTLINED_FUNCTION_20_28();
    v59();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v88 = v83;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v160 = v82;
    v161 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v159);
    OUTLINED_FUNCTION_46_14();
    v89 = v154;
    v154();
    v90 = static DomainTotalFrequencyByCountryCodeSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v90);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v91 = v88;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();

    v92 = v133;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v160 = v82;
    v161 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v159);
    OUTLINED_FUNCTION_46_14();
    v89();
    v93 = static DomainDefaultAppSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v93);
    v160 = v82;
    v161 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v159);
    OUTLINED_FUNCTION_46_14();
    v89();
    v94 = static DomainRequestByLabelSignal.instances(with:)();
    __swift_destroy_boxed_opaque_existential_1(&v159);
    specialized Array.append<A>(contentsOf:)(v94);
    v160 = v82;
    v161 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v159);
    OUTLINED_FUNCTION_46_14();
    v89();
    v95 = static DomainRequestByHandleSignal.instances(with:)();
    __swift_destroy_boxed_opaque_existential_1(&v159);
    specialized Array.append<A>(contentsOf:)(v95);

    v50 = v148;
    v96 = v148[1];
    v96(v92, v82);
    v97 = OUTLINED_FUNCTION_57_10(v167);
    (v96)(v97);
    v98 = OUTLINED_FUNCTION_57_10(v166);
    (v96)(v98);
    v99 = OUTLINED_FUNCTION_57_10(&v165);
    (v96)(v99);
    v100 = OUTLINED_FUNCTION_57_10(&v164);
    (v96)(v100);
    v101 = OUTLINED_FUNCTION_57_10(&v163);
    (v96)(v101);
  }

  v102 = v50;
  if (v141)
  {
    v103 = v141;
    v104 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v103);
    if (v104)
    {
      v105 = v104;
      if (specialized Array.count.getter(v104))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v105 & 0xC000000000000001) == 0, v105);
        if ((v105 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v106 = *(v105 + 32);
        }

        OUTLINED_FUNCTION_49_11();

        INPerson.siriRemembersContactName.getter();

        goto LABEL_11;
      }
    }

    INPerson.siriRemembersContactName.getter();
LABEL_11:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, static Logger.siriPhone);

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    v110 = os_log_type_enabled(v108, v109);
    v157 = v103;
    if (v110)
    {
      v111 = swift_slowAlloc();
      v112 = v102;
      v113 = swift_slowAlloc();
      v159 = v113;
      *v111 = 136315138;
      v114 = OUTLINED_FUNCTION_33_4();
      *(v111 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v116);
      _os_log_impl(&dword_0, v108, v109, "PhoneAppSelectionSignalsGatherer gathering contactName:%s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v102 = v112;
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v117 = v149;
    v118 = v135;
    v119 = v134;
    if (one-time initialization token for domainAffinityScoresSignalUseCases != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23_20();
    SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
    v120 = static DomainAffinityScoreSignal.instances(context:)();
    v119(v118, v117);
    specialized Array.append<A>(contentsOf:)(v120);
    if (one-time initialization token for domainToContactAffinityScoresSignalUseCases != -1)
    {
      swift_once();
    }

    SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
    v121 = static DomainToContactAffinityScoreByNameSignal.instances(context:)();
    v119(v118, v117);
    specialized Array.append<A>(contentsOf:)(v121);
  }

  v102[1](v150, v158);
  return v169;
}

double PhoneAppSelectionSignalsGatherer.parseValue(val:appBundleId:isIndependentKey:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v37 - v7, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v9 = type metadata accessor for SignalValue();
  v10 = -1.0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v8, v5, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    v11 = OUTLINED_FUNCTION_33_4();
    v13 = v12(v11);
    if (v13 == enum case for SignalValue.independent(_:))
    {
      v14 = OUTLINED_FUNCTION_22_18();
      v15(v14);
      goto LABEL_19;
    }

    if (v13 == enum case for SignalValue.dependent(_:))
    {
      v16 = OUTLINED_FUNCTION_22_18();
      v17(v16);
      OUTLINED_FUNCTION_38_14();
      if (v18)
      {
        OUTLINED_FUNCTION_8_2();
        PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)();

        goto LABEL_19;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_65_0();
        *v31 = 0;
        v32 = "PhoneAppSelectionSignalsGatherer dependent bundleId shouldn't be empty";
LABEL_18:
        _os_log_impl(&dword_0, v29, v30, v32, v31, 2u);
        OUTLINED_FUNCTION_8();

        goto LABEL_19;
      }

      goto LABEL_25;
    }

    if (v13 == enum case for SignalValue.independentDouble(_:))
    {
      v19 = OUTLINED_FUNCTION_22_18();
      v20(v19);
      v10 = *v5;
      goto LABEL_19;
    }

    if (v13 != enum case for SignalValue.dependentDouble(_:))
    {
      v34 = OUTLINED_FUNCTION_33_4();
      v35(v34);
      goto LABEL_19;
    }

    v21 = OUTLINED_FUNCTION_22_18();
    v22(v21);
    OUTLINED_FUNCTION_38_14();
    if (!v23)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_65_0();
        *v31 = 0;
        v32 = "PhoneAppSelectionSignalsGatherer dependentDouble bundleId shouldn't be empty";
        goto LABEL_18;
      }

LABEL_25:

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_8_2();
    PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)();
    v25 = v24;
    v27 = v26;

    if (v27)
    {
      v10 = -1.0;
    }

    else
    {
      v10 = v25;
    }
  }

LABEL_19:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  return v10;
}

PhoneCallFlowDelegatePlugin::SignalValueObject __swiftcall SignalValueObject.init()()
{
  v0 = -1.0;
  v1 = -1;
  result.doubleValue = v0;
  result.intValue = v1;
  return result;
}

void *PhoneAppSelectionSignalsGatherer.getInputINIntent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v2 = v1;
  return v1;
}

void PhoneAppSelectionSignalsGatherer.setInputINIntent(intent:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = a1;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "PhoneAppSelectionSignalsGatherer update input intent: %@", v10, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v13 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v15 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  *v13 = a1;
  v13[1] = a2;
  v14 = v7;
}

void PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_21(v3, v4, v5);
  v6 = 0;
  while (v2)
  {
LABEL_7:
    OUTLINED_FUNCTION_28_17();
    OUTLINED_FUNCTION_43_14();
    v10 = PhoneAppSelectionSignalsGatherer.areKeysEqual(appId:mappingKey:)(v8, v9);

    if (v10)
    {
LABEL_8:

      OUTLINED_FUNCTION_65();
      return;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v1)
    {
      goto LABEL_8;
    }

    v2 = *(v0 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t PhoneAppSelectionSignalsGatherer.areKeysEqual(appId:mappingKey:)(uint64_t a1, uint64_t a2)
{
  v2 = String.lowercased()();
  v3 = String.lowercased()();
  if (v2._countAndFlagsBits == v3._countAndFlagsBits && v2._object == v3._object)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_8_2();
  v6 = String.lowercased()();
  v7 = String.lowercased()();
  if (v6._countAndFlagsBits == v7._countAndFlagsBits && v6._object == v7._object)
  {
    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_33_4();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10 = OUTLINED_FUNCTION_8_2();
  v12 = static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v10, v11);

  if (v12)
  {
    v13 = String.lowercased()();
    v14 = String.lowercased()();
    if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
    {
      v16 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v16 = 0;
  }

  return (v9 | v16) & 1;
}

id PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionGroundTruthGenerated(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = a6;
  v11 = a5;
  if (a7)
  {
    v13 = 9;
  }

  else
  {
    v13 = 3;
  }

  PhoneAppSelectionSignalsGatherer.buildIndependentSignals(person:phoneCallNLIntent:signalMap:resolutionType:)(a1, a2, a6, v13, a5, a6, a7, a8, v42, v43, v45, v46, v47, v48, v50, v52, a2, a4, v57, v58);
  v44 = v14;
  v58 = _swiftEmptyArrayStorage;
  v15 = *(a3 + 16);
  v16 = &dword_54B000;
  if (v15)
  {
    v17 = (a3 + 40);
    v53 = _swiftEmptyArrayStorage;
    v49 = v11;
    v51 = v10;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionAppDependentSignals(person:phoneCallNLIntent:signalMap:appBundleId:selectedAppId:)(v20, v54, v10, v18, v19, v56, v11);
      if (v21)
      {
        v22 = v21;

        v23 = v22;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v58 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v53 = v58;
      }

      else
      {
        if (*(v16 + 369) != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v9;
          v29 = v16;
          v30 = swift_slowAlloc();
          v57 = v30;
          *v27 = 136315138;
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v57);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_0, v25, v26, "PhoneAppSelectionSignalsGatherer dependentSignal is nil appBundleId:%s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v16 = v29;
          v9 = v28;
          v10 = v51;
          OUTLINED_FUNCTION_8();

          v11 = v49;
          OUTLINED_FUNCTION_8();
        }

        else
        {
        }
      }

      v17 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v32 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated) init];
  if (v32)
  {
    v33 = v32;
    v34 = v44;
    [v32 setInferenceCommsAppSelectionTrainingAppIndependentSignals:v44];
    outlined bridged method (mbnn) of @objc INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.inferenceCommsAppSelectionTrainingAppDependentSignals.setter(v53, v33);
  }

  else
  {

    if (*(v16 + 369) != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v37))
    {
      v38 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v38);
      OUTLINED_FUNCTION_33(&dword_0, v39, v40, "PhoneAppSelectionSignalsGatherer CommsAppSelectionGroundTruthGenerated can't be constructed");
      OUTLINED_FUNCTION_8();
    }

    v33 = 0;
    v34 = v44;
  }

  return v33;
}

void PhoneAppSelectionSignalsGatherer.buildIndependentSignals(person:phoneCallNLIntent:signalMap:resolutionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v28 = OUTLINED_FUNCTION_21(v27);
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  v31 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals) init];
  if (v31)
  {
    v32 = v31;
    specialized Dictionary.subscript.getter(0x61636F6C2E776172, 0xEA0000000000656CLL, v26, v30);
    v33 = *(*v20 + 160);
    v34 = OUTLINED_FUNCTION_14_39();
    v35 = v33(v34);
    OUTLINED_FUNCTION_41_16();
    [v32 setRequestOriginLocale:v35];
    specialized Dictionary.subscript.getter(0x676E616C2E776172, 0xEC00000065676175, v26, v30);
    v36 = OUTLINED_FUNCTION_14_39();
    v37 = v33(v36);
    OUTLINED_FUNCTION_41_16();
    [v32 setRequestOriginLanguage:v37];
    [v32 setAppResolutionType:v24];
    specialized Dictionary.subscript.getter(0xD000000000000015, 0x800000000045A850, v26, v30);
    v38 = OUTLINED_FUNCTION_14_39();
    v39 = v33(v38);
    OUTLINED_FUNCTION_41_16();
    [v32 setCommunicationType:v39];
    if (one-time initialization token for userPersonaKey != -1)
    {
      swift_once();
    }

    specialized Dictionary.subscript.getter(static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey, *(&static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey + 1), v26, v30);
    v40 = OUTLINED_FUNCTION_14_39();
    v41 = v33(v40);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_12_40();
    if (v42 != v43)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_38();
      if (v42 ^ v43 | v44)
      {
        [v32 setUserPersona:v41];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v45, static Logger.siriPhone);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v47))
  {
    v48 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v48);
    OUTLINED_FUNCTION_33(&dword_0, v49, v50, "PhoneAppSelectionSignalsGatherer CommsAppSelectionAppIndependentSignals can't be constructed");
    OUTLINED_FUNCTION_8();
  }

LABEL_12:
  OUTLINED_FUNCTION_65();
}

uint64_t SignalValueObject.int32Value.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionAppDependentSignals(person:phoneCallNLIntent:signalMap:appBundleId:selectedAppId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v312 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  __chkstk_darwin(v15);
  v17 = &v306 - v16;
  v18 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals) init];
  if (v18)
  {
    v19 = v18;
    v20 = a6 == a4 && a7 == a5;
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_43_14();
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    [v19 setIsResolvedApp:v21 & 1];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v28 = App.isFirstParty()();

    [v19 setIsFirstPartyApp:v28];
    [v19 setIsResolvedContactInApp:PhoneAppSelectionSignalsGatherer.getIsResolvedContactInApp(phoneCallNLIntent:appBundleId:)(a2) & 1];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_8_49();
    specialized Dictionary.subscript.getter(v29, v30, v312, v31);
    v32 = *(*v8 + 160);
    v33 = *v8 + 160;
    v34 = OUTLINED_FUNCTION_25_21();
    v35 = v32(v34);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    *&v36 = v35;
    [v19 setAppTimeSpentAffinityScore:v36];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_6_52();
    specialized Dictionary.subscript.getter(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_25_21();
    v32(v41);
    v42 = OUTLINED_FUNCTION_33_3();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_26_19();
    [v19 setIsForegroundApp:?];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_6_52();
    specialized Dictionary.subscript.getter(v43, v44, v45, v46);
    v47 = OUTLINED_FUNCTION_25_21();
    v309 = v33;
    v32(v47);
    v48 = OUTLINED_FUNCTION_33_3();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_12_40();
    if (v49 != v50)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_38();
      if (v49 ^ v50 | v20)
      {
        [v19 setTimeSinceAppLastLaunchedInSec:v8];
        OUTLINED_FUNCTION_8_49();
        specialized Dictionary.subscript.getter(v51, v52, v312, v53);
        v54 = OUTLINED_FUNCTION_9_44();
        v33 = v8;
        v8 = v309;
        v55 = (v32)(v54);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
        [v19 setAppTimeSpentInSec:v55];
        OUTLINED_FUNCTION_6_52();
        specialized Dictionary.subscript.getter(v56, v57, v58, v59);
        v308 = a4;
        v60 = v33;
        (v32)(v17, a4, a5, 0);
        v61 = OUTLINED_FUNCTION_33_3();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
        OUTLINED_FUNCTION_12_40();
        if (v49 == v50)
        {
          OUTLINED_FUNCTION_11_38();
          if (v49 ^ v50 | v20)
          {
            [v19 setTimeSinceAppContactLastLaunchedInSec:v33];
            OUTLINED_FUNCTION_3_63();
            v63 = v62 - 38;
            OUTLINED_FUNCTION_8_49();
            v64 = v312;
            specialized Dictionary.subscript.getter(v63, v65, v312, v66);
            v33 = v309;
            OUTLINED_FUNCTION_10_44();
            (v32)();
            v311 = v19;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v311 setIsDefaultApp:?];
            OUTLINED_FUNCTION_3_63();
            v313 = a5;
            OUTLINED_FUNCTION_8_49();
            specialized Dictionary.subscript.getter(v67, v68, v64, v69);
            OUTLINED_FUNCTION_10_44();
            (v32)();
            v70 = OUTLINED_FUNCTION_33_3();
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v311 setIsRequestByHandleType:?];
            OUTLINED_FUNCTION_8_49();
            specialized Dictionary.subscript.getter(v63, v71, v64, v72);
            OUTLINED_FUNCTION_10_44();
            (v32)();
            v73 = OUTLINED_FUNCTION_33_3();
            v74 = v311;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v74 setIsRequestByLabel:?];
            v75 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals) init];
            v310 = v60;
            if (!v75)
            {
              goto LABEL_34;
            }

            v8 = v75;
            if (one-time initialization token for messageSendKey == -1)
            {
LABEL_20:
              v76 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageSendKey);
              v77 = v312;
              specialized Dictionary.subscript.getter(v76, v78, v312, v79);
              v80 = OUTLINED_FUNCTION_2_73();
              v81 = v32(v80);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v82 = v81;
              [v8 setAppAffinityScoreForMessages:v82];
              if (one-time initialization token for messageUsingSiriKey != -1)
              {
                swift_once();
              }

              v83 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageUsingSiriKey);
              specialized Dictionary.subscript.getter(v83, v84, v77, v85);
              v86 = OUTLINED_FUNCTION_1_76();
              v87 = v32(v86);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v88 = v87;
              [v8 setAppAffinityScoreForMessagesUsingSiri:v88];
              if (one-time initialization token for messageReceivedKey != -1)
              {
                swift_once();
              }

              v89 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageReceivedKey);
              specialized Dictionary.subscript.getter(v89, v90, v77, v91);
              OUTLINED_FUNCTION_9_44();
              OUTLINED_FUNCTION_10_44();
              v92 = (v32)();
              v93 = v32;
              v32 = v33;
              v94 = v93;
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v95 = v92;
              [v8 setAppAffinityScoreForMessagesReceived:v95];
              OUTLINED_FUNCTION_3_63();
              OUTLINED_FUNCTION_8_49();
              specialized Dictionary.subscript.getter(v96, v97, v77, v98);
              v99 = OUTLINED_FUNCTION_9_44();
              v94(v99);
              v100 = OUTLINED_FUNCTION_33_3();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v100, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v49 != v50)
              {
                __break(1u);
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v49 ^ v50 | v20))
              {
                goto LABEL_129;
              }

              OUTLINED_FUNCTION_42_14(v101, "setAppFreqForMessages:");
              OUTLINED_FUNCTION_3_63();
              OUTLINED_FUNCTION_8_49();
              specialized Dictionary.subscript.getter(v102, v103, v312, v104);
              v105 = OUTLINED_FUNCTION_1_76();
              v32 = v94;
              v94(v105);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v49 != v50)
              {
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v49 ^ v50 | v20))
              {
                goto LABEL_131;
              }

              OUTLINED_FUNCTION_42_14(v106, "setAppFreqForMessagesUsingSiri:");
              v107 = OUTLINED_FUNCTION_4_48();
              specialized Dictionary.subscript.getter(v107, v108, v312, v109);
              v110 = OUTLINED_FUNCTION_1_76();
              v94(v110);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v49 != v50)
              {
                goto LABEL_134;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v49 ^ v50 | v20))
              {
                goto LABEL_136;
              }

              OUTLINED_FUNCTION_42_14(v111, "setAppFreqForMessagesForCountryCode:");
              v74 = v311;
              [v311 setMessageSignals:v8];

LABEL_34:
              v112 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals) init];
              if (!v112)
              {
                goto LABEL_50;
              }

              v8 = v112;
              if (one-time initialization token for phoneCallKey == -1)
              {
LABEL_36:
                v113 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallKey);
                v114 = v312;
                specialized Dictionary.subscript.getter(v113, v115, v312, v116);
                v117 = OUTLINED_FUNCTION_2_73();
                v118 = v32(v117);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v119 = v118;
                [v8 setAppAffinityScoreForPhoneCall:v119];
                if (one-time initialization token for phoneCallSiriKey != -1)
                {
                  swift_once();
                }

                v120 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallSiriKey);
                specialized Dictionary.subscript.getter(v120, v121, v114, v122);
                v123 = OUTLINED_FUNCTION_1_76();
                v124 = v32(v123);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v125 = v124;
                [v8 setAppAffinityScoreForPhoneCallUsingSiri:v125];
                if (one-time initialization token for phoneCallReceivedKey != -1)
                {
                  swift_once();
                }

                v126 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallReceivedKey);
                specialized Dictionary.subscript.getter(v126, v127, v114, v128);
                OUTLINED_FUNCTION_9_44();
                OUTLINED_FUNCTION_10_44();
                v129 = (v32)();
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v130 = v129;
                [v8 setAppAffinityScoreForPhoneCallReceived:v130];
                OUTLINED_FUNCTION_3_63();
                OUTLINED_FUNCTION_8_49();
                specialized Dictionary.subscript.getter(v131, v132, v114, v133);
                v134 = OUTLINED_FUNCTION_9_44();
                v32(v134);
                v135 = OUTLINED_FUNCTION_33_3();
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v135, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                OUTLINED_FUNCTION_12_40();
                if (v49 == v50)
                {
                  OUTLINED_FUNCTION_11_38();
                  if (!(v49 ^ v50 | v20))
                  {
                    goto LABEL_135;
                  }

                  OUTLINED_FUNCTION_42_14(v136, "setAppFreqForPhoneCall:");
                  OUTLINED_FUNCTION_3_63();
                  OUTLINED_FUNCTION_8_49();
                  specialized Dictionary.subscript.getter(v137, v138, v312, v139);
                  v140 = OUTLINED_FUNCTION_1_76();
                  v32(v140);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                  OUTLINED_FUNCTION_12_40();
                  if (v49 != v50)
                  {
LABEL_137:
                    __break(1u);
LABEL_138:
                    __break(1u);
                    goto LABEL_139;
                  }

                  OUTLINED_FUNCTION_11_38();
                  if (!(v49 ^ v50 | v20))
                  {
                    goto LABEL_138;
                  }

                  OUTLINED_FUNCTION_42_14(v141, "setAppFreqForPhoneCallUsingSiri:");
                  OUTLINED_FUNCTION_3_63();
                  OUTLINED_FUNCTION_8_49();
                  specialized Dictionary.subscript.getter(v142, v143, v312, v144);
                  v145 = OUTLINED_FUNCTION_1_76();
                  v32(v145);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                  OUTLINED_FUNCTION_12_40();
                  if (v49 != v50)
                  {
LABEL_139:
                    __break(1u);
LABEL_140:
                    __break(1u);
                    goto LABEL_141;
                  }

                  OUTLINED_FUNCTION_11_38();
                  if (!(v49 ^ v50 | v20))
                  {
                    goto LABEL_140;
                  }

                  OUTLINED_FUNCTION_42_14(v146, "setAppFreqForPhoneCallForCountryCode:");
                  v74 = v311;
                  [v311 setPhoneCallSignals:v8];

LABEL_50:
                  v147 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals) init];
                  if (!v147)
                  {
                    return;
                  }

                  v148 = v147;
                  v149 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals) init];
                  v150 = v312;
                  v307 = v148;
                  if (v149)
                  {
                    v151 = v149;
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v152, v153, v150, v154);
                    OUTLINED_FUNCTION_9_44();
                    OUTLINED_FUNCTION_10_44();
                    v155 = (v32)();
                    OUTLINED_FUNCTION_19_28();
                    *&v156 = v155;
                    [v151 setAppContactAffinityScoreForMessages:v156];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v157, v158, v159, v160);
                    v161 = OUTLINED_FUNCTION_5_55();
                    v162 = v32(v161);
                    OUTLINED_FUNCTION_19_28();
                    *&v163 = v162;
                    [v151 setAppContactAffinityScoreForMessagesUsingSiri:v163];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v164, v165, v166, v167);
                    v168 = OUTLINED_FUNCTION_5_55();
                    v169 = v32(v168);
                    OUTLINED_FUNCTION_19_28();
                    *&v170 = v169;
                    [v151 setAppContactAffinityScoreForMessagesReceived:v170];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v171, v172, v173, v174);
                    v175 = OUTLINED_FUNCTION_5_55();
                    v32(v175);
                    v176 = OUTLINED_FUNCTION_33_3();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v176, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
                      __break(1u);
LABEL_143:
                      __break(1u);
                      goto LABEL_144;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_143;
                    }

                    OUTLINED_FUNCTION_30_19(v177, "setAppContactFreqForMessages2Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    v150 = v312;
                    specialized Dictionary.subscript.getter(v178, v179, v312, v180);
                    v181 = OUTLINED_FUNCTION_1_76();
                    v32(v181);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    v74 = v311;
                    v148 = v307;
                    if (v49 != v50)
                    {
LABEL_144:
                      __break(1u);
LABEL_145:
                      __break(1u);
                      goto LABEL_146;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_145;
                    }

                    OUTLINED_FUNCTION_30_19(v182, "setAppContactFreqForMessages10Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v183, v184, v150, v185);
                    v186 = OUTLINED_FUNCTION_1_76();
                    v32(v186);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_146:
                      __break(1u);
LABEL_147:
                      __break(1u);
                      goto LABEL_148;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_147;
                    }

                    OUTLINED_FUNCTION_30_19(v187, "setAppContactFreqForMessages1Hr:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v188, v189, v150, v190);
                    v191 = OUTLINED_FUNCTION_1_76();
                    v32(v191);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_148:
                      __break(1u);
LABEL_149:
                      __break(1u);
                      goto LABEL_150;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_149;
                    }

                    OUTLINED_FUNCTION_30_19(v192, "setAppContactFreqForMessages6Hr:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v193, v194, v150, v195);
                    v196 = OUTLINED_FUNCTION_1_76();
                    v32(v196);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_150:
                      __break(1u);
LABEL_151:
                      __break(1u);
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_151;
                    }

                    OUTLINED_FUNCTION_30_19(v197, "setAppContactFreqForMessages1Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v198, v199, v150, v200);
                    v201 = OUTLINED_FUNCTION_1_76();
                    v32(v201);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_152:
                      __break(1u);
LABEL_153:
                      __break(1u);
                      goto LABEL_154;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_153;
                    }

                    OUTLINED_FUNCTION_30_19(v202, "setAppContactFreqForMessages7Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v203, v204, v150, v205);
                    v206 = OUTLINED_FUNCTION_1_76();
                    v32(v206);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_154:
                      __break(1u);
LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_155;
                    }

                    OUTLINED_FUNCTION_30_19(v207, "setAppContactFreqForMessages28Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v208, v209, v150, v210);
                    v211 = OUTLINED_FUNCTION_1_76();
                    v32(v211);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_157:
                      __break(1u);
LABEL_158:
                      __break(1u);
LABEL_159:
                      __break(1u);
                      goto LABEL_160;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_159;
                    }

                    OUTLINED_FUNCTION_30_19(v212, "setAppContactFreqForMessagesInf:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v213, v214, v150, v215);
                    v216 = OUTLINED_FUNCTION_1_76();
                    v32(v216);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_161:
                      __break(1u);
LABEL_162:
                      __break(1u);
LABEL_163:
                      __break(1u);
                      goto LABEL_164;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_163;
                    }

                    OUTLINED_FUNCTION_30_19(v217, "setAppContactFreqForMessages:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v218, v219, v150, v220);
                    v221 = OUTLINED_FUNCTION_1_76();
                    v32(v221);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_165:
                      __break(1u);
LABEL_166:
                      __break(1u);
LABEL_167:
                      __break(1u);
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_167;
                    }

                    OUTLINED_FUNCTION_30_19(v222, "setAppContactFreqForMessagesUsingSiri:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v223, v224, v150, v225);
                    v226 = OUTLINED_FUNCTION_1_76();
                    v32(v226);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_169:
                      __break(1u);
LABEL_170:
                      __break(1u);
LABEL_171:
                      __break(1u);
                      goto LABEL_172;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_171;
                    }

                    OUTLINED_FUNCTION_30_19(v227, "setAppContactFreqForMessagesHaptic:");
                    [v148 setContactDependentMessageSignals:v151];
                  }

                  v228 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals) init];
                  if (v228)
                  {
                    v229 = v228;
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v230, v231, v150, v232);
                    OUTLINED_FUNCTION_9_44();
                    OUTLINED_FUNCTION_10_44();
                    v233 = (v32)();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    *&v234 = v233;
                    [v229 setAppContactAffinityScoreForPhoneCall:v234];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v235, v236, v237, v238);
                    v239 = OUTLINED_FUNCTION_5_55();
                    v240 = v32(v239);
                    OUTLINED_FUNCTION_19_28();
                    *&v241 = v240;
                    [v229 setAppContactAffinityScoreForPhoneCallUsingSiri:v241];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v242, v243, v244, v245);
                    v246 = OUTLINED_FUNCTION_5_55();
                    v247 = v32(v246);
                    OUTLINED_FUNCTION_19_28();
                    *&v248 = v247;
                    [v229 setAppContactAffinityScoreForPhoneCallReceived:v248];
                    v249 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v249, v250, v150, v251);
                    v252 = OUTLINED_FUNCTION_5_55();
                    v32(v252);
                    v253 = OUTLINED_FUNCTION_33_3();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v253, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_156:
                      __break(1u);
                      goto LABEL_157;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_158;
                    }

                    OUTLINED_FUNCTION_30_19(v254, "setAppContactFreqForPhoneCall2Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    v255 = v312;
                    specialized Dictionary.subscript.getter(v256, v257, v312, v258);
                    v259 = OUTLINED_FUNCTION_1_76();
                    v32(v259);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    v74 = v311;
                    v148 = v307;
                    if (v49 != v50)
                    {
LABEL_160:
                      __break(1u);
                      goto LABEL_161;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_162;
                    }

                    OUTLINED_FUNCTION_30_19(v260, "setAppContactFreqForPhoneCall10Min:");
                    v261 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v261, v262, v255, v263);
                    v264 = OUTLINED_FUNCTION_1_76();
                    v32(v264);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_164:
                      __break(1u);
                      goto LABEL_165;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_166;
                    }

                    OUTLINED_FUNCTION_30_19(v265, "setAppContactFreqForPhoneCall1Hr:");
                    v266 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v266, v267, v255, v268);
                    v269 = OUTLINED_FUNCTION_1_76();
                    v32(v269);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_168:
                      __break(1u);
                      goto LABEL_169;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_170;
                    }

                    OUTLINED_FUNCTION_30_19(v270, "setAppContactFreqForPhoneCall6Hr:");
                    v271 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v271, v272, v255, v273);
                    v274 = OUTLINED_FUNCTION_1_76();
                    v32(v274);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_172:
                      __break(1u);
LABEL_173:
                      __break(1u);
                      goto LABEL_174;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_173;
                    }

                    OUTLINED_FUNCTION_30_19(v275, "setAppContactFreqForPhoneCall1Day:");
                    v276 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v276, v277, v255, v278);
                    v279 = OUTLINED_FUNCTION_1_76();
                    v32(v279);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_174:
                      __break(1u);
LABEL_175:
                      __break(1u);
                      goto LABEL_176;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_175;
                    }

                    OUTLINED_FUNCTION_30_19(v280, "setAppContactFreqForPhoneCall7Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v281, v282, v255, v283);
                    v284 = OUTLINED_FUNCTION_1_76();
                    v32(v284);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_176:
                      __break(1u);
LABEL_177:
                      __break(1u);
                      goto LABEL_178;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_177;
                    }

                    OUTLINED_FUNCTION_30_19(v285, "setAppContactFreqForPhoneCall28Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v286, v287, v255, v288);
                    v289 = OUTLINED_FUNCTION_1_76();
                    v32(v289);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_178:
                      __break(1u);
LABEL_179:
                      __break(1u);
                      goto LABEL_180;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_179;
                    }

                    OUTLINED_FUNCTION_30_19(v290, "setAppContactFreqForPhoneCallInf:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v291, v292, v255, v293);
                    v294 = OUTLINED_FUNCTION_1_76();
                    v32(v294);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_180:
                      __break(1u);
LABEL_181:
                      __break(1u);
                      goto LABEL_182;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_181;
                    }

                    OUTLINED_FUNCTION_30_19(v295, "setAppContactFreqForPhoneCall:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v296, v297, v255, v298);
                    v299 = OUTLINED_FUNCTION_1_76();
                    v32(v299);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_182:
                      __break(1u);
LABEL_183:
                      __break(1u);
                      goto LABEL_184;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_183;
                    }

                    OUTLINED_FUNCTION_30_19(v300, "setAppContactFreqForPhoneCallUsingSiri:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v301, v302, v255, v303);
                    v304 = OUTLINED_FUNCTION_1_76();
                    v32(v304);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v49 != v50)
                    {
LABEL_184:
                      __break(1u);
LABEL_185:
                      __break(1u);
                      return;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v49 ^ v50 | v20))
                    {
                      goto LABEL_185;
                    }

                    OUTLINED_FUNCTION_30_19(v305, "setAppContactFreqForPhoneCallHaptic:");
                    [v148 setContactDependentPhoneCallSignals:v229];
                  }

                  [v74 setContactDependentSignals:v148];

                  return;
                }

                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

LABEL_132:
              swift_once();
              goto LABEL_36;
            }

LABEL_127:
            swift_once();
            goto LABEL_20;
          }

LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    __break(1u);
    goto LABEL_125;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_141:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v24))
  {
    v25 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v25);
    OUTLINED_FUNCTION_33(&dword_0, v26, v27, "PhoneAppSelectionSignalsGatherer CommsAppSelectionAppDependentSignals can't be constructed");
    OUTLINED_FUNCTION_8();
  }
}

void PhoneAppSelectionSignalsGatherer.buildMetrics(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v41 = v10;
  v42 = v11;
  v40 = v12;
  v13 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
  if (!v20)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v27, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v28))
    {
      v29 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v29);
      OUTLINED_FUNCTION_33(&dword_0, v30, v31, "#PhoneAppSelectionSignalsGatherer: failed to generate top-level SELF message");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_14;
  }

  v21 = v20;
  v22 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
  if (!v22)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#PhoneAppSelectionSignalsGatherer: failed to generate event metadata", v35, 2u);
      OUTLINED_FUNCTION_8();
    }

LABEL_14:
    goto LABEL_15;
  }

  v23 = v22;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
  (*(v15 + 16))(v19, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid, v13);
  v24 = SISchemaUUID.__allocating_init(nsuuid:)(v19);
  [v23 setInferenceId:v24];

  [v21 setEventMetadata:v23];
  v25 = (*(*v1 + 208))(v40, v41, v42, v9, v7, v5, v3 & 1);
  if (v25)
  {
    v26 = v25;
    [v21 setCommsAppSelectionGroundTruthGenerated:v25];
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_65_0();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "PhoneAppSelectionSignalsGatherer error on building appSelectionGroundTruth object", v39, 2u);
      OUTLINED_FUNCTION_8();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppSelectionSignalsGatherer.getIsResolvedContactInApp(phoneCallNLIntent:appBundleId:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 24);
  v4 = *(v3(v1, v2) + 16);

  if (v4 != 1)
  {
    return 0;
  }

  result = v3(v1, v2);
  if (*(result + 16))
  {
    outlined init with copy of SignalProviding(result + 32, v16);

    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = SiriPhoneContact.getVocabularyAppsBundleSet()(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v9 = OUTLINED_FUNCTION_20_0();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v9, v10) & 1) != 0 || (v11 = OUTLINED_FUNCTION_20_0(), (static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v11, v12))) && specialized Set.contains(_:)(0x73746361746E6F43, 0xE800000000000000, v8))
    {
      v13 = 1;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_20_0();
      v13 = specialized Set.contains(_:)(v14, v15, v8);
    }

    return v13;
  }

  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional __swiftcall PhoneAppSelectionSignalsGathererType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneAppSelectionSignalsGathererType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppSelectionSignalsGathererType_appNameSpecifiedByUser;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppSelectionSignalsGathererType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t PhoneAppSelectionSignalsGathererType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneAppSelectionSignalsGathererType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional *a2@<X8>)
{
  result.value = PhoneAppSelectionSignalsGathererType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneAppSelectionSignalsGathererType@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneAppSelectionSignalsGathererType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INPerson.siriMatches.getter(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.inferenceCommsAppSelectionTrainingAppDependentSignals.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals, INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setInferenceCommsAppSelectionTrainingAppDependentSignals:isa];
}

unint64_t lazy protocol witness table accessor for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType()
{
  result = lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType;
  if (!lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType);
  }

  return result;
}

uint64_t type metadata completion function for PhoneAppSelectionSignalsGatherer(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for SignalValueObject(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalValueObject(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneAppSelectionSignalsGathererType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_45_12@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_54_15@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 176) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 208));
}

uint64_t PhoneCallActivityNotificationFlow.__allocating_init(_:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  PhoneCallActivityNotificationFlow.init(_:sharedGlobals:)(a1, a2);
  return v4;
}

uint64_t PhoneCallActivityNotificationFlow.init(_:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 8))(v7, v4, v5);
  outlined init with take of SPHConversation(v7, v2 + 32);
  outlined init with take of SPHConversation(a2, v2 + 72);
  return v2;
}

uint64_t PhoneCallActivityNotificationFlow.on(input:)(uint64_t a1)
{

  v1 = dispatch thunk of AnyFlow.on(input:)();

  return v1 & 1;
}

uint64_t PhoneCallActivityNotificationFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneCallActivityNotificationFlow();
  lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(&lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow, v2, type metadata accessor for PhoneCallActivityNotificationFlow, &protocol conformance descriptor for PhoneCallActivityNotificationFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneCallActivityNotificationFlow.execute()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(PhoneCallActivityNotificationFlow.execute(), 0, 0);
}

uint64_t PhoneCallActivityNotificationFlow.execute()()
{
  if (*(v0[9] + 16))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v4, v5, "Activity Notification: Posted");
    }

    v6 = v0[9];

    v0[2] = *(v6 + 24);
    type metadata accessor for AnyFlow();
    Flow.eraseToAnyFlow()();
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v10, v11, "Activity Notification: Posting");
    }

    v12 = v0[9];

    v13 = v12[12];
    v14 = v12[13];
    __swift_project_boxed_opaque_existential_1(v12 + 9, v13);
    (*(v14 + 104))(v13, v14);
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v17 = type metadata accessor for PhoneCallNotificationFlowStrategy();
    v0[7] = swift_allocObject();
    v18 = *(v16 + 80);
    v19 = lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(&lazy protocol witness table cache variable for type PhoneCallNotificationFlowStrategy and conformance PhoneCallNotificationFlowStrategy, 255, type metadata accessor for PhoneCallNotificationFlowStrategy, &protocol conformance descriptor for PhoneCallNotificationFlowStrategy);
    v18(v0 + 7, v17, v19, v15, v16);

    static ExecuteResponse.ongoing(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v20 = v0[1];

  return v20();
}

uint64_t PhoneCallActivityNotificationFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  return v0;
}

uint64_t PhoneCallActivityNotificationFlow.__deallocating_deinit()
{
  PhoneCallActivityNotificationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneCallActivityNotificationFlow(uint64_t a1)
{
  v6 = (*(**v1 + 184) + **(**v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneCallActivityNotificationFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneCallActivityNotificationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State()
{
  result = lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State;
  if (!lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallActivityNotificationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_46();
  if (v6 == 0xD000000000000017 && v5 == v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000012 && v8 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000013 && v10 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000015 && v12 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_74(&one-time initialization token for macFaceTimeBundleId);
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  if ((static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2) & 1) == 0)
  {
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_39();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  object = String.lowercased()()._object;
  if (v5)
  {
    OUTLINED_FUNCTION_11_39();
    v10 = v10 && v5 == object;
    if (v10)
    {
      goto LABEL_41;
    }

    v11 = OUTLINED_FUNCTION_8_50(v7, v8, v9);

    if (v11)
    {
      goto LABEL_30;
    }

    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_13_39();
  v13 = v12;
LABEL_14:
  OUTLINED_FUNCTION_2_7();
  v14 = String.lowercased()()._object;
  if (!v13)
  {

    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_11_39();
  if (v10 && v13 == v14)
  {
    goto LABEL_41;
  }

  v19 = OUTLINED_FUNCTION_8_50(v15, v16, v17);

  if ((v19 & 1) == 0)
  {
    if (a2)
    {
LABEL_21:
      OUTLINED_FUNCTION_13_39();
      v21 = v20;
      goto LABEL_24;
    }

LABEL_23:
    v21 = 0;
LABEL_24:
    v22 = String.lowercased()()._object;
    if (v21)
    {
      OUTLINED_FUNCTION_11_39();
      if (v10 && v21 == v22)
      {
        goto LABEL_41;
      }

      v27 = OUTLINED_FUNCTION_8_50(v23, v24, v25);

      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (a2)
    {
      a1 = OUTLINED_FUNCTION_13_39();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = String.lowercased()();
    if (!v30)
    {
      v28 = 0;
      goto LABEL_43;
    }

    if (a1 != v31._countAndFlagsBits || v30 != v31._object)
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_42:

LABEL_43:

      return v28 & 1;
    }

LABEL_41:
    v28 = 1;
    goto LABEL_42;
  }

LABEL_30:
  v28 = 1;
  return v28 & 1;
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0;
  }

  v5 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v5._countAndFlagsBits && object == v5._object)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_0();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v5, v6) & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_0();

      return static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v7, v8);
    }

    return 1;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000017 && v10 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000012 && v12 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_0();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000013 && v14 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000015 && v16 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  v18 = OUTLINED_FUNCTION_0();

  return static PhoneCallAppNameConstants.isFaceTime(appId:)(v18);
}

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  *algn_599C28 = v3;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_74(&one-time initialization token for macFaceTimeBundleId);
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120;
    if (v5 || (v6 = OUTLINED_FUNCTION_12_41(a1, 0xEE006F6964754120), (v6 & 1) != 0))
    {
      v7 = [objc_allocWithZone(FTNUServiceNames) init];
      v8 = [v7 faceTimeAudioServiceName];
    }

    else
    {
      v11 = v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620;
      if (v11 || (OUTLINED_FUNCTION_12_41(v6, 0xEE006F6564695620) & 1) != 0)
      {
        v7 = [objc_allocWithZone(FTNUServiceNames) init];
        v8 = [v7 faceTimeVideoServiceName];
      }

      else
      {
        v7 = [objc_allocWithZone(FTNUServiceNames) init];
        v8 = [v7 faceTimeServiceName];
      }
    }

    v9 = v8;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

void PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  swift_allocObject();
  PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.nlIntent.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35_0();
  v4 = *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v1 + v4, a1, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
}

uint64_t PhoneCallBaseCatTemplatingService.nlIntent.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0();
  v4 = *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  swift_beginAccess();
  outlined assign with take of PhoneCallNLIntent?(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t (*PhoneCallBaseCatTemplatingService.nlIntent.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  return ActionableCallControlFlow.state.modify;
}

void PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  v40 = v1;
  v45 = v2;
  v46 = v3;
  v44 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_13(v11);
  v42 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v41 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_17_28((v0 + *(v17 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16)));
  OUTLINED_FUNCTION_2_0();
  v19 = v0 + *(v18 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  OUTLINED_FUNCTION_2_0();
  outlined init with copy of SignalProviding(v8, v0 + *(v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v21 = v8[3];
  v22 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v21);
  (*(v22 + 8))(&v48, v21, v22);
  OUTLINED_FUNCTION_21_24();
  v24 = *(v23 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(&v48, v0 + v24);
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v25 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v6;
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v44;
  OUTLINED_FUNCTION_21_24();
  outlined init with copy of SignalProviding(v28, v0 + *(v27 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_21_24();
  outlined init with copy of SignalProviding(v46, v0 + *(v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v40;
  outlined init with copy of SignalProviding(v0 + v24, &v48);
  __swift_project_boxed_opaque_existential_1(&v48, v49);

  dispatch thunk of DeviceState.siriLocale.getter();
  v47[5] = Locale.identifier.getter();
  v47[6] = v31;
  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  v47[10] = 95;
  v47[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v41 + 8))(v16, v42);

  type metadata accessor for INIntentSlotValueType(0);
  OUTLINED_FUNCTION_9_45();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v32, v33, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v34 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v35 = OUTLINED_FUNCTION_19_7();
  v36(v35, v34);
  outlined init with copy of SignalProviding(v0 + v24, v47);
  v37 = type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_27_19(v43, v38, v39, v37);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.faceTimeSettings(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v37 = v2;
  v38 = v3;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v35 = v5;
  v36 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  type metadata accessor for App();
  v34 = App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_26_1();
  v14 = (v0 + *(v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v16 = v14[3];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  (*(v15 + 168))(v40, v16, v15);
  v17 = v41;
  v18 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v19 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v20 = OUTLINED_FUNCTION_19_7();
  v21(v20, v19);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  OUTLINED_FUNCTION_19_7();
  v22 = v34;
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v18 + 16))(v22, v8, v17, v18);
  v24 = v23;
  (*(v35 + 8))(v8, v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v24)
  {
    String.toSpeakableString.getter();

    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    v29 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_27_19(v12, v30, v31, v29);
  }

  OUTLINED_FUNCTION_26_1();
  (*(**(v1 + *(v32 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) + class metadata base offset for PhoneCallDisplayTextCATs + 32))(v12, v37, v38);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.callButtonText(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = *(v3 + *(*v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_19(v11, v14, v15, v13);
  (*(*v12 + class metadata base offset for PhoneCallDisplayTextCATs + 64))(v11, a1, a2);
  v16 = OUTLINED_FUNCTION_32_14();
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

uint64_t PhoneCallBaseCatTemplatingService.cancelButtonText(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42();
  return (*(v0 + class metadata base offset for PhoneCallDisplayTextCATs + 96))();
}

uint64_t PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  *(v11 - v10) = 500;
  (*(v13 + 104))(v11 - v10, enum case for DispatchTimeInterval.milliseconds(_:));
  static DispatchQoS.userInteractive.getter();
  type metadata accessor for TemplatingParallelizer(0);
  swift_allocObject();
  TemplatingParallelizer.init(name:timeout:qos:)("CallCancel", 10, 2, v12, v8);
  implicit closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)();
  OUTLINED_FUNCTION_2_0();
  v15 = (*(v14 + 176))();

  v16 = implicit closure #3 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)();
  (*(*v15 + 176))(v16);
  OUTLINED_FUNCTION_19_7();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  OUTLINED_FUNCTION_2_0();
  v19 = *(v18 + 184);

  v19(partial apply for closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:), v17);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v15, &v20[-v12], &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (v14 == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
LABEL_4:
    v20[0] = 0;
    *v6 = 0xD000000000000053;
    *(v6 + 1) = 0x800000000045DC30;
    *(v6 + 2) = 0xD000000000000043;
    *(v6 + 3) = 0x800000000045D9F0;
    *(v6 + 4) = 0xD00000000000001ELL;
    *(v6 + 5) = 0x800000000045DC90;
    *(v6 + 6) = 74;
    v6[56] = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    v16 = swift_allocError();
    PhoneError.logged()(v17);
    outlined destroy of PhoneError(v6);
    v21[0] = v16;
    memset(&v21[1], 0, 24);
    v22 = 1;
    a2(v21);
  }

  v19 = outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v15 + *(v8 + 72), v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v19);
  *&v20[-16] = v10;
  _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSS4call_SS6canceltTg5(partial apply for closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:), v21);
  a2(v21);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_ss6ResultOySS4call_SS6cancelts5Error_pGMd, &_ss6ResultOySS4call_SS6cancelts5Error_pGMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

void *closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = (&v17 - v9);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v17 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  result = swift_getEnumCaseMultiPayload();
  v12 = result;
  if (result == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v10;
LABEL_6:
    *a2 = v16;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v12 == 1;
    return result;
  }

  (*(v5 + 32))(v7, v10, v4);
  result = TemplatingResult.print.getter();
  if (result[2])
  {
    v16 = result[4];
    v13 = result[5];

    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v14 = result[4];
      v15 = result[5];

      result = (*(v5 + 8))(v7, v4);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallBaseCatTemplatingService.emergencyCallSashTitle(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42();
  return (*(v0 + class metadata base offset for PhoneCallDisplayTextCATs + 256))();
}

void PhoneCallBaseCatTemplatingService.snippetDisplayHandleLabelWithType(handleLabel:handleType:_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_30_20();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42_13();
  DucTemplatingService.locale.getter();
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v30 = v3;
  switch(v6)
  {
    case 0:
      v14 = @"Unknown";
      goto LABEL_9;
    case 1:
      v14 = @"EmailAddress";
      goto LABEL_9;
    case 2:
      v14 = @"PhoneNumber";
      goto LABEL_9;
    case 3:
      v14 = @"Website";
      goto LABEL_9;
    case 4:
      v14 = @"InstantMessage";
LABEL_9:
      v15 = v14;
      break;
    default:
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      break;
  }

  v16 = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_35_0();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v17);
  OUTLINED_FUNCTION_35_0();
  (*(v27 + class metadata base offset for PhoneCallDisplayTextCATs + 352))(v1, v0, v11, v31, v30);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v28 = OUTLINED_FUNCTION_32_14();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, v29, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.emergencyServicesDisplayText(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42();
  return (*(v0 + class metadata base offset for PhoneCallDisplayTextCATs + 288))();
}

void PhoneCallBaseCatTemplatingService.formatPhoneNumber(countryCode:phoneNumber:_:)()
{
  OUTLINED_FUNCTION_66();
  v35 = v3;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_29_3();
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v34 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_12_5();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_30_20();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_42_13();

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  type metadata accessor for DialogPhoneNumber.Builder();
  swift_allocObject();
  DialogPhoneNumber.Builder.init(value:)();
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v9);
  dispatch thunk of DialogPhoneNumber.Builder.withCountryCode(_:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogPhoneNumber.Builder.build()();
  OUTLINED_FUNCTION_5();

  dispatch thunk of DialogPhoneNumber.toString.getter();

  v26 = OUTLINED_FUNCTION_32_14();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v26, v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v9) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_68_0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_424FD0;
    *(v28 + 32) = v7;
    *(v28 + 40) = v5;
    OUTLINED_FUNCTION_68_0();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_424FD0;
    *(v29 + 32) = v7;
    *(v29 + 40) = v5;
    swift_bridgeObjectRetain_n();
    TemplatingResult.init(templateIdentifier:speak:print:)();
    swift_storeEnumTagMultiPayload();
    v35(v0);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v34 + 32))(v14, v20, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_68_0();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_424FD0;
    *(v30 + 32) = SpeakableString.speak.getter();
    *(v30 + 40) = v31;
    OUTLINED_FUNCTION_68_0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_424FD0;
    *(v32 + 32) = SpeakableString.print.getter();
    *(v32 + 40) = v33;
    TemplatingResult.init(templateIdentifier:speak:print:)();
    swift_storeEnumTagMultiPayload();
    v35(v0);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    (*(v34 + 8))(v14, v9);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v35 = v2;
  v36 = v3;
  v34 = v4;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v32 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_27_3();
  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_27_3();
  v33 = v12;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35_0();
  __swift_project_boxed_opaque_existential_1((v0 + *(v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)), *(v0 + *(v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48) + 24));
  v15 = (v0 + *(*v0 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_19_7();
  dispatch thunk of DeviceState.siriLocale.getter();
  v16 = OUTLINED_FUNCTION_32_14();
  v18 = v17(v16);
  v20 = v19;
  v21 = OUTLINED_FUNCTION_55();
  v22(v21);
  if (v20)
  {
    v23 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_27_19(v33, v24, v25, v23);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v1;
    v26[5] = v18;
    v26[6] = v20;
    v26[7] = v34;
    v26[8] = v35;
    v26[9] = v36;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    *v32 = 0xD000000000000023;
    *(v32 + 8) = 0x800000000045D9C0;
    *(v32 + 16) = 0xD000000000000043;
    *(v32 + 24) = 0x800000000045D9F0;
    *(v32 + 32) = 0xD000000000000019;
    *(v32 + 40) = 0x800000000045DA40;
    *(v32 + 48) = 113;
    *(v32 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v27, v28, &protocol conformance descriptor for PhoneError);
    v29 = swift_allocError();
    PhoneError.logged()(v30);
    outlined destroy of PhoneError(v32);
    *v31 = v29;
    swift_storeEnumTagMultiPayload();
    v35(v31);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v8[9] = swift_task_alloc();
  v9 = type metadata accessor for TemplatingResult();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:), 0, 0);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)()
{
  v1 = (v0[2] + *(*v0[2] + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);

  App.isFirstParty()();
  AppDisplayInfo.init(displayName:isFirstParty:)();
  type metadata accessor for AppDisplayInfo();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v11 = (*(v3 + 24) + **(v3 + 24));
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  v9 = v0[13];

  return v11(v9, v2, v3);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 32) = v1;
  *(v8 + 40) = v2;
  TemplatingResult.init(templateIdentifier:speak:print:)();
  (*(v4 + 16))(v6, v3, v5);
  swift_storeEnumTagMultiPayload();
  v7(v6);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v9 = OUTLINED_FUNCTION_55();
  v10(v9);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[9];
  v2 = v0[6];
  *v1 = v0[15];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[15] = v2;

  v7 = v6[13];
  if (v2)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v8 = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v8 = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  }

  return _swift_task_switch(v8, 0, 0);
}

void PhoneCallBaseCatTemplatingService.tryWithApp(app:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v27 = v2;
  v28 = v3;
  v25 = v4;
  v26 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  OUTLINED_FUNCTION_35_0();
  v16 = (v0 + *(v15 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_26_1();
  __swift_project_boxed_opaque_existential_1((v0 + *(v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)), *(v0 + *(v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40) + 24));
  OUTLINED_FUNCTION_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v18 + 16))(v25, v10, v17, v18);
  v21 = v20;
  (*(v6 + 8))(v10, v26);
  if (v21)
  {
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, v22, 1, v23);
  OUTLINED_FUNCTION_26_1();
  (*(**(v1 + *(v24 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) + class metadata base offset for PhoneCallDisplayTextCATs + 576))(v14, 0, v27, v28);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.updateSettings(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42();
  return (*(v0 + class metadata base offset for PhoneCallDisplayTextCATs + 640))();
}

uint64_t PhoneCallBaseCatTemplatingService.makeOpenAppFailedDialog(app:_:)()
{
  OUTLINED_FUNCTION_35_0();
  v2 = v1 + class metadata base offset for PhoneCallBaseCatTemplatingService;
  type metadata accessor for SirikitDeviceState();
  outlined init with copy of SignalProviding(v0 + *(v2 + 40), v5);
  SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_26_1();
  (*(v3 + class metadata base offset for StartCallCATs + 576))();
}

void PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)()
{
  OUTLINED_FUNCTION_66();
  v94 = v1;
  v95 = v0;
  v93 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  v90 = v5 - v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_13(&v86 - v8);
  v97 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v100 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v88 = (v11 - v12);
  __chkstk_darwin(v13);
  v87 = &v86 - v14;
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  v18 = SiriKitDisambiguationList.rawItems.getter();
  v104 = _swiftEmptyArrayStorage;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    v21 = _swiftEmptyArrayStorage;
    v22 = v95;
    do
    {
      outlined init with copy of Any(v20, v103);
      outlined init with take of Any(v103, v101);
      type metadata accessor for INPerson();
      if ((swift_dynamicCast() & 1) != 0 && v102)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v104;
        v22 = v95;
      }

      v20 += 32;
      --v19;
    }

    while (v19);
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
    v22 = v95;
  }

  v23 = specialized Array.count.getter(v21);
  v24 = &unk_599000;
  v98 = v17;
  if (!v23)
  {
    goto LABEL_18;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

  for (i = *(v21 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v26 = i;
    v27 = specialized Array.count.getter(v21);
    v17 = v98;
    if (v27 == 1 && (v28 = INPerson.hasHandleLabel.getter(), v22 = v95, v28))
    {
      OUTLINED_FUNCTION_35_0();
      v29 = v22 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v31 = OUTLINED_FUNCTION_25_22(v30 + v24[390]);
      SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)((v31 & 1) == 0);
      v33 = v32;

      *&v103[0] = v33;
    }

    else
    {

LABEL_18:

      v35 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v34);

      OUTLINED_FUNCTION_35_0();
      v29 = v22 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v37 = (OUTLINED_FUNCTION_25_22(v36 + v24[390]) ^ 1) & 1;
      if (v35)
      {
        SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)(v37);
      }

      else
      {
        v38 = dispatch thunk of SiriKitDisambiguationList.makeSpeakableListItems(deviceIsLocked:)();
      }

      v33 = v38;
      *&v103[0] = v38;
    }

    v22 = v95;
    static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(v21);
    v96 = v39;
    v92 = v29;
    if (v39)
    {
      v33 = static PicsUtils.splitPicsPerson(persons:speakableStrings:)(v21, v103);
      v41 = v40;
      v43 = v42;

      *&v103[0] = v33;
      v44 = one-time initialization token for siriPhone;

      if (v44 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      v48 = os_log_type_enabled(v46, v47);
      v17 = v98;
      v49 = v43;
      v91 = v43;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v101[0] = v51;
        *v50 = 136315138;
        if (v49)
        {
          v52 = v41;
        }

        else
        {
          v52 = 7104878;
        }

        if (!v49)
        {
          v49 = 0xE300000000000000;
        }

        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v49, v101);

        *(v50 + 4) = v53;
        _os_log_impl(&dword_0, v46, v47, "PLUS contact %s is detected", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_26_0(v51);
        OUTLINED_FUNCTION_26_0(v50);
      }

      else
      {
      }

      v22 = v95;
    }

    else
    {

      v41 = 0;
      v91 = 0;
    }

    v86 = v41;
    v54 = v33[2];
    v99 = v33;
    if (!v54)
    {
      break;
    }

    *&v101[0] = _swiftEmptyArrayStorage;

    OUTLINED_FUNCTION_33_15();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v22 = v95;
    v55 = 0;
    v21 = *&v101[0];
    v56 = v33[2];
    v24 = v33 + 5;
    while (v56 != v55)
    {
      if (v55 >= v33[2])
      {
        goto LABEL_56;
      }

      v57 = closure #2 in PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)(v55, *(v24 - 1), *v24, v103, v96 & 1, v22);
      v59 = v58;
      *&v101[0] = v21;
      v60 = *(v21 + 16);
      if (v60 >= *(v21 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v95;
        v21 = *&v101[0];
      }

      *(v21 + 16) = v60 + 1;
      v61 = v21 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v59;
      ++v55;
      v24 += 2;
      v17 = v98;
      v33 = v99;
      if (v54 == v55)
      {

        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_44:
  v62 = *(v21 + 16);
  if (v62)
  {
    *&v101[0] = _swiftEmptyArrayStorage;
    v63 = OUTLINED_FUNCTION_33_15();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v64, v65);
    v66 = *&v101[0];
    v67 = v21 + 40;
    do
    {

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      *&v101[0] = v66;
      v69 = v66[2];
      v68 = v66[3];
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
        v66 = *&v101[0];
      }

      v66[2] = v69 + 1;
      (*(v100 + 32))(v66 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v69, v17, v97);
      v67 += 16;
      --v62;
    }

    while (v62);

    v22 = v95;
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
  }

  if (v91)
  {

    v70 = v87;
    SpeakableString.init(print:speak:)();
    v71 = v88;
    SpeakableString.init(print:speak:)();
    v72 = *(v22 + *(*v22 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));
    v73 = v100;
    v74 = *(v100 + 16);
    v75 = v89;
    v76 = v97;
    v74(v89, v70, v97);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
    v80 = v90;
    v74(v90, v71, v76);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v76);
    (*(*v72 + class metadata base offset for PhoneCallCommonCATs + 32))(v66, v75, v80, v93, v94);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v84 = *(v73 + 8);
    v84(v71, v76);
    v84(v70, v76);
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    (*(v85 + class metadata base offset for PhoneCallCommonCATs))(v66, v93, v94);
  }

  OUTLINED_FUNCTION_65();
}