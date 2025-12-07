void CallsControlsRecipeGenerator.makeOngoingThirdPartyVoIPCall(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v214 = v24;
  v26 = v25;
  v227 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  v31 = OUTLINED_FUNCTION_16(v30);
  v213 = type metadata accessor for SystemApertureIcon(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_1();
  v225 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_1();
  v226 = v43;
  v44 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  v48 = v46 - v47;
  v50.n128_f64[0] = MEMORY[0x1EEE9AC00](v49);
  v52 = &v205 - v51;
  v53 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x2A0);
  v210 = (*MEMORY[0x1E69E7D40] & *v26) + 672;
  v209 = v53;
  v54 = v53(v50);
  v56 = v55;
  ObjectType = swift_getObjectType();
  if (((*(v56 + 104))(ObjectType, v56) & 1) == 0 && ((*(v56 + 128))(ObjectType, v56) & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v114 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v114, &static Logger.conversationControls);
    swift_unknownObjectRetain();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = OUTLINED_FUNCTION_42();
      v118 = OUTLINED_FUNCTION_23();
      v119 = v56;
      v120 = v118;
      v232[0] = v118;
      *v117 = 136315138;
      v231[0] = v54;
      v231[1] = v119;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v121 = String.init<A>(reflecting:)();
      v123 = v44;
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v232);

      *(v117 + 4) = v124;
      v44 = v123;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_4_4();
    }

    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  v208 = v35;
  v222 = v52;
  v224 = v44;
  v58 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v54, v23, ObjectType, v56);
  v59 = v58;
  v220 = v60;
  v221 = v61;
  if (v58)
  {
    v62 = v58;
  }

  v63 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v64 = [objc_opt_self() clearColor];
  v65 = swift_unknownObjectRetain();
  v219 = v59;
  v218 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v65, 0, v59, v64, v63, ObjectType, v56);
  ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v26, v218);
  v229 = v66;
  v67 = v56;
  v69 = v68;
  v228 = v70;
  v231[0] = 8;
  memset(&v231[1], 0, 32);
  LOBYTE(v231[5]) = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v71 = *(v67 + 72);
  v223 = v54;
  v206 = ObjectType;
  v207 = v67;
  v72._countAndFlagsBits = v71(ObjectType, v67);
  v73.super.isa = NSAttributedString.__allocating_init(string:)(v72).super.isa;
  OUTLINED_FUNCTION_49_0(v73.super.isa);
  v216 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v26);
  v74 = type metadata accessor for AttributedString();
  v75 = v225;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_9_3();
  v80 = *(v79 + 72);
  v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  v211 = v26;
  static ConversationControlsAction.rejectCall(controlsManager:)(v26, (v83 + v82 + v80));
  v44 = v224;
  v84 = v224[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v74);
  v88 = (v48 + v44[10]);
  v89 = v48 + v44[15];
  *(v89 + 32) = 0;
  *v89 = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 40) = -2;
  *(v48 + v44[16]) = 0;
  v90 = v48 + v44[17];
  v91 = (v48 + v44[18]);
  *v91 = 1;
  OUTLINED_FUNCTION_13_7(v91, 0);
  outlined init with copy of ConversationControlsType(v231, v48);
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  v92 = v216;
  *(v48 + 80) = v217;
  *(v48 + 88) = v92;
  *v88 = 0;
  v88[1] = 0;
  LOBYTE(v82) = v228 & 1;
  v88[2] = 0;
  v93 = v75;
  v94 = v229;
  outlined copy of PreCallControlsContext(v229);
  outlined assign with copy of AttributedString?(v93, v48 + v84);
  *(v48 + v44[11]) = 2;
  *(v48 + v44[12]) = 0;
  *(v48 + v44[13]) = 1;
  *(v48 + v44[14]) = 1;
  *v90 = v94;
  *(v90 + 8) = v69;
  v217 = v69;
  *(v90 + 16) = v82;
  v95 = *(v83 + 16);
  if (v95 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v231);
    *v89 = v83;
    *(v89 + 8) = 0u;
    *(v89 + 24) = 0u;
    *(v89 + 40) = 0;
    OUTLINED_FUNCTION_1_181();
    v108 = v226;
    _s15ConversationKit0A14ControlsActionOWOcTm_1(v48, v226);
    v109 = OUTLINED_FUNCTION_21_3();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v44);
    OUTLINED_FUNCTION_0_214();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v48, v112);
    v100 = v227;
    v113 = v222;
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v96 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v96, &static Logger.conversationControls);

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    v99 = os_log_type_enabled(v97, v98);
    v100 = v227;
    if (v99)
    {
      v101 = OUTLINED_FUNCTION_42();
      v102 = OUTLINED_FUNCTION_23();
      v232[0] = v102;
      *v101 = 136315138;
      v230 = v95;
      v103 = String.init<A>(reflecting:)();
      v105 = v93;
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v232);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_1BBC58000, v97, v98, "Too many trailing actions (%s)", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();

      v107 = v105;
      v100 = v227;
    }

    else
    {

      v107 = v93;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v231);
    v113 = v222;
    v108 = v226;
    OUTLINED_FUNCTION_0_214();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v48, v130);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v44);
  }

  v134 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v134, v135, v44) != 1)
  {
    v137 = OUTLINED_FUNCTION_13_79();
    _s15ConversationKit0A14ControlsRecipeVWObTm_2(v137, v113);
    if (SBUIIsSystemApertureEnabled())
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v138 = type metadata accessor for Logger();
      v139 = __swift_project_value_buffer(v138, &static Logger.conversationControls);
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = OUTLINED_FUNCTION_33();
        *v142 = 0;
        OUTLINED_FUNCTION_24_6();
        _os_log_impl(v143, v144, v145, v146, v142, 2u);
        OUTLINED_FUNCTION_27();
      }

      *(v113 + 88) = MEMORY[0x1E69E7CC0];
      v147 = v215;
      v148 = type metadata completion function for SyncedScreeningAlphaGradientView();
      SystemApertureIconFactory.makeStatusIcon(with:for:)(v148, v149, v211);
      OUTLINED_FUNCTION_61_12(v147, 1, &a11);
      if (!v150)
      {
        OUTLINED_FUNCTION_4_147();
        v164 = v212;
        _s15ConversationKit0A14ControlsRecipeVWObTm_2(v147, v212);
        v165 = *(v207 + 400);
        v166 = v165(v206);
        if (v166)
        {
          OUTLINED_FUNCTION_26_3();
          _s15ConversationKit0A14ControlsActionOWOcTm_1(v167, v168);
          v169 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
          OUTLINED_FUNCTION_55_3();
          SystemApertureIconView.init(icon:isDetached:)();
          v171 = v170;
          v172 = &protocol witness table for SystemApertureIconView;
        }

        else
        {
          type metadata accessor for SystemApertureInCallLeadingView(0);
          OUTLINED_FUNCTION_14_73();
          v173 = v208;
          _s15ConversationKit0A14ControlsActionOWOcTm_1(v164, v208);
          OUTLINED_FUNCTION_85_0();
          v174 = v209();
          v176 = v175;
          v177 = swift_getObjectType();
          v231[0] = v174;
          v171 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v173, v231, v139, v177, *(v176 + 8));
          v172 = &protocol witness table for SystemApertureInCallLeadingView;
        }

        v226 = v172;
        if ((v165)(v206, v207))
        {
          type metadata accessor for SystemApertureEmptyTrailingView();
          v178 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v179 = &protocol witness table for SystemApertureEmptyTrailingView;
        }

        else
        {
          objc_opt_self();
          v180 = swift_dynamicCastObjCClass();
          if (v180)
          {
            swift_unknownObjectRetain();
          }

          type metadata accessor for SystemApertureInCallWaveformTrailingView();
          v181 = static WaveformConfigurations.inCallNumberOfBands.getter();
          v178 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v180, v181);
          v179 = &protocol witness table for SystemApertureInCallWaveformTrailingView;
        }

        v225 = v179;
        v182 = v208;
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v164, v208);
        v183 = v164;
        v184 = type metadata accessor for SystemApertureIconView(0);
        v185 = objc_allocWithZone(v184);
        v186 = v171;
        v187 = v178;
        v216 = v171;
        v188 = v187;
        SystemApertureIconView.init(icon:isDetached:)();
        v190 = v189;
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v183, v182);
        v191 = objc_allocWithZone(v184);
        SystemApertureIconView.init(icon:isDetached:)();
        v193 = v192;
        OUTLINED_FUNCTION_85_0();
        v194 = ConversationControlsManager.maximumLayoutMode.getter();

        OUTLINED_FUNCTION_54_18();
        OUTLINED_FUNCTION_25_51();
        OUTLINED_FUNCTION_24_53();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_3_160();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v183, v196);
        v197 = v224;
        v198 = v222;
        v199 = &v222[v224[18]];
        memcpy(v231, v199, 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v231, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
        v200 = v225;
        v201 = v226;
        *v199 = v216;
        v199[1] = v201;
        v199[2] = v178;
        v199[3] = v200;
        v199[4] = v190;
        v199[5] = &protocol witness table for SystemApertureIconView;
        v199[6] = v193;
        v199[7] = &protocol witness table for SystemApertureIconView;
        v199[8] = v194;
        *(v199 + 72) = 0x80;
        OUTLINED_FUNCTION_1_181();
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v198, v100);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v202, v203, v204, v197);
        OUTLINED_FUNCTION_0_214();
        v160 = v198;
        goto LABEL_42;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
      v151 = v139;
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v153))
      {
        v154 = OUTLINED_FUNCTION_33();
        *v154 = 0;
        _os_log_impl(&dword_1BBC58000, v152, v151, "ongoingCall: [SystemAperture] missing status icon", v154, 2u);
        OUTLINED_FUNCTION_27();
      }

      OUTLINED_FUNCTION_24_53();
      OUTLINED_FUNCTION_25_51();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_24_53();
      OUTLINED_FUNCTION_25_51();
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_54_18();

    OUTLINED_FUNCTION_1_181();
    _s15ConversationKit0A14ControlsActionOWOcTm_1(v113, v100);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v44);
    OUTLINED_FUNCTION_0_214();
    v160 = v113;
LABEL_42:
    _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v160, v159);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_24_53();
  OUTLINED_FUNCTION_25_51();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_54_18();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_32:
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v44);
LABEL_43:
  OUTLINED_FUNCTION_30_0();
}

void CallsControlsRecipeGenerator.callAgainHUDRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v213 = v0;
  v2 = v1;
  v217 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = OUTLINED_FUNCTION_16(v6);
  v8 = type metadata accessor for SystemApertureIcon(v7);
  OUTLINED_FUNCTION_88_8(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v12 = OUTLINED_FUNCTION_16(v11);
  v13 = type metadata accessor for ConversationControlsRecipe(v12);
  OUTLINED_FUNCTION_39_22(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v25);
  v209 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v206 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v30 = OUTLINED_FUNCTION_16(v29 - v28);
  v211 = type metadata accessor for Participant(v30);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v199 - v37;
  v39 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  v45 = v44 - v43;
  OUTLINED_FUNCTION_13_2();
  v46 = MEMORY[0x1E69E7D40];
  v48 = *((*MEMORY[0x1E69E7D40] & v47) + 0x2A0);
  v218 = v2;
  v48();
  v50 = v49;
  ObjectType = swift_getObjectType();
  LOBYTE(v50) = (*(v50 + 544))(ObjectType, v50);
  swift_unknownObjectRelease();
  if (v50)
  {
    OUTLINED_FUNCTION_8_66();
    v53 = (*(v52 + 744))();
    if (v53 || (OUTLINED_FUNCTION_8_66(), (v53 = (*(v54 + 704))()) != 0))
    {
      v55 = v53;
      if (static Platform.current.getter() == 3 || (specialized Conversation.cnk_allowsVideoMessaging.getter() & 1) != 0)
      {
        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v56 = v46;
        v57 = objc_opt_self();
        v58 = v55;
        v59 = [v57 clearColor];
        OUTLINED_FUNCTION_5_6();
        v64 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v60, v61, v62, 0, v63);
        v201 = [v64 view];
        (*((*v56 & *v218) + 0x2A8))();
        v65 = *((*v56 & *v64) + 0x58);
        v203 = v64;
        v200 = v65(v45);
        (*(v41 + 8))(v45, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
        v66 = OUTLINED_FUNCTION_24_1();
        type metadata accessor for ConversationControlsAction(v66);
        OUTLINED_FUNCTION_9_3();
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = swift_allocObject();
        v199 = xmmword_1BC4BA940;
        *(v69 + 16) = xmmword_1BC4BA940;
        v202 = v69;
        swift_storeEnumTagMultiPayload();
        v70 = ConversationController.visibleParticipants.getter();
        specialized Collection.first.getter(v70, v38);

        OUTLINED_FUNCTION_26_3();
        outlined init with copy of Participant?(v71, v72);
        v73 = OUTLINED_FUNCTION_18_12();
        v75 = &off_1E7FE9000;
        if (__swift_getEnumTagSinglePayload(v73, v74, v211) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        }

        else
        {
          OUTLINED_FUNCTION_35_29();
          _s15ConversationKit0A14ControlsRecipeVWObTm_2(v68, v207);
          Participant.contactDetails.getter();
          OUTLINED_FUNCTION_38_37();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v76 = v220[0];

          if (v76)
          {
            v77 = [v76 givenName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v78 = [v76 familyName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v58;

            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v80, v81, v82, v209);
            v83 = v205;
            type metadata completion function for SyncedScreeningAlphaGradientView();
            PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
            v84 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_40_0();
            OUTLINED_FUNCTION_5_5();
            OUTLINED_FUNCTION_29_41();
            v228._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v87, v88, v228);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v89 = swift_allocObject();
            *(v89 + 16) = v199;
            v90 = objc_opt_self();
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v92 = [v90 localizedStringFromPersonNameComponents:isa style:1 options:0];

            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v94;

            *(v89 + 56) = MEMORY[0x1E69E6158];
            *(v89 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v89 + 32) = v93;
            *(v89 + 40) = v95;
            v96 = String.init(format:_:)();
            v98 = v97;

            v99._countAndFlagsBits = v96;
            v99._object = v98;
            v58 = v79;
            v100.super.isa = NSAttributedString.__allocating_init(string:)(v99).super.isa;

            v101 = v83;
            v75 = &off_1E7FE9000;
            (*(v206 + 8))(v101, v209);
            v102 = v100.super.isa;
LABEL_11:
            v222 = 9;
            v223 = 0u;
            v224 = 0u;
            v225 = 7;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
            v211 = v58;
            v103._countAndFlagsBits = TUConversation.participantListDisplayName.getter();
            v104.super.isa = NSAttributedString.__allocating_init(string:)(v103).super.isa;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSAttributedStringCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSAttributedStringCSgGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BC4BAA20;
            v106 = [objc_opt_self() v75[465]];
            v227._object = 0x80000001BC51AA80;
            OUTLINED_FUNCTION_5_5();
            OUTLINED_FUNCTION_29_41();
            v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, v108, v109, v110, v227);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
            v112 = 0;
            *(inited + 32) = NSAttributedString.__allocating_init(string:)(v111);
            *(inited + 40) = v100;
            v113 = MEMORY[0x1E69E7CC0];
            v221 = MEMORY[0x1E69E7CC0];
            v114 = v216;
            v115 = v212;
            while (v112 != 2)
            {
              v116 = *(inited + 8 * v112++ + 32);
              if (v116)
              {
                v117 = v116;
                MEMORY[0x1BFB20CC0]();
                if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v113 = v221;
              }
            }

            v210 = v100.super.isa;
            swift_setDeallocating();
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            v118 = type metadata accessor for AttributedString();
            v119 = v215;
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v120, v121, v122, v118);
            v123 = v114[9];
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v124, v125, v126, v118);
            v127 = (&v115->super.isa + v114[10]);
            v128 = v115 + v114[15];
            v129.n128_f64[0] = OUTLINED_FUNCTION_60_17();
            *(&v115->super.isa + v114[16]) = 0;
            v130 = v115 + v114[17];
            v131 = (&v115->super.isa + v114[18]);
            *v131 = 1;
            OUTLINED_FUNCTION_13_7(v131, v129);
            outlined init with copy of ConversationControlsType(&v222, v115);
            v132 = v201;
            v115[6].super.isa = 0;
            v115[7].super.isa = v132;
            v133 = v200;
            v115[8].super.isa = 0;
            v115[9].super.isa = v133;
            v115[10].super.isa = v104.super.isa;
            v115[11].super.isa = v113;
            v127[1] = 0;
            v127[2] = 0;
            *v127 = 0;
            v209 = v132;
            outlined assign with copy of AttributedString?(v119, v115 + v123);
            *(&v115->super.isa + v114[11]) = 2;
            *(&v115->super.isa + v114[12]) = 0;
            *(&v115->super.isa + v114[13]) = 1;
            *(&v115->super.isa + v114[14]) = 1;
            *v130 = 0;
            *(v130 + 1) = 0;
            v130[16] = -1;
            v134 = v202;
            v135 = *(v202 + 16);
            if (v135 <= 2)
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
              outlined destroy of ConversationControlsType(&v222);
              *v128 = v134;
              *(v128 + 8) = 0u;
              *(v128 + 24) = 0u;
              v128[40] = 0;
              OUTLINED_FUNCTION_1_181();
              v136 = v214;
              _s15ConversationKit0A14ControlsActionOWOcTm_1(v115, v214);
              OUTLINED_FUNCTION_12();
              __swift_storeEnumTagSinglePayload(v151, v152, v153, v114);
              OUTLINED_FUNCTION_0_214();
              _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v115, v154);
              OUTLINED_FUNCTION_80_7();
              v146 = v210;
            }

            else
            {
              v136 = v214;
              if (one-time initialization token for conversationControls != -1)
              {
                OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
              }

              v137 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v137, &static Logger.conversationControls);

              v119 = Logger.logObject.getter();
              v138 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v119, v138))
              {
                v139 = OUTLINED_FUNCTION_42();
                v140 = OUTLINED_FUNCTION_23();
                v220[0] = v140;
                *v139 = 136315138;
                v219 = v135;
                v141 = String.init<A>(reflecting:)();
                v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v220);

                *(v139 + 4) = v143;
                OUTLINED_FUNCTION_93_7(&dword_1BBC58000, v144, v145, "Too many trailing actions (%s)");
                __swift_destroy_boxed_opaque_existential_1(v140);
                OUTLINED_FUNCTION_4_4();
                OUTLINED_FUNCTION_26();
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v215, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
              outlined destroy of ConversationControlsType(&v222);
              v146 = v210;
              OUTLINED_FUNCTION_0_214();
              _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v115, v147);
              OUTLINED_FUNCTION_10_0();
              __swift_storeEnumTagSinglePayload(v148, v149, v150, v114);
              OUTLINED_FUNCTION_80_7();
            }

            v155 = type metadata completion function for SyncedScreeningAlphaGradientView();
            SystemApertureIconFactory.makeStatusIcon(with:for:)(v155, v156, v218);
            v157 = OUTLINED_FUNCTION_18_12();
            OUTLINED_FUNCTION_61_12(v157, v158, &v226);
            if (v159)
            {

              OUTLINED_FUNCTION_23_23();
              OUTLINED_FUNCTION_44_2();

              v162 = &_s15ConversationKit18SystemApertureIconVSgMd;
              v163 = &_s15ConversationKit18SystemApertureIconVSgMR;
              v164 = v119;
            }

            else
            {
              OUTLINED_FUNCTION_4_147();
              v165 = v208;
              _s15ConversationKit0A14ControlsRecipeVWObTm_2(v119, v208);
              if (__swift_getEnumTagSinglePayload(v136, 1, v114))
              {
                OUTLINED_FUNCTION_3_160();
                _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v165, v167);

                OUTLINED_FUNCTION_23_23();
                OUTLINED_FUNCTION_44_2();

LABEL_37:
                outlined init with take of ConversationControlsRecipe?(v136, v217);
                goto LABEL_38;
              }

              v184 = v204;
              _s15ConversationKit0A14ControlsActionOWOcTm_1(v165, v204);
              v185 = type metadata accessor for SystemApertureIconView(0);
              v186 = objc_allocWithZone(v185);
              OUTLINED_FUNCTION_55_3();
              SystemApertureIconView.init(icon:isDetached:)();
              OUTLINED_FUNCTION_49_0(v187);
              type metadata accessor for SystemApertureEmptyTrailingView();
              v188 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              _s15ConversationKit0A14ControlsActionOWOcTm_1(v165, v184);
              v189 = objc_allocWithZone(v185);
              OUTLINED_FUNCTION_55_3();
              SystemApertureIconView.init(icon:isDetached:)();
              v191 = v190;
              _s15ConversationKit0A14ControlsActionOWOcTm_1(v165, v184);
              v192 = objc_allocWithZone(v185);
              OUTLINED_FUNCTION_18_12();
              SystemApertureIconView.init(icon:isDetached:)();
              v194 = v193;
              OUTLINED_FUNCTION_44_2();

              OUTLINED_FUNCTION_23_23();
              OUTLINED_FUNCTION_3_160();
              _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v165, v197);
              v198 = (v136 + v114[18]);
              memcpy(v220, v198, 0x49uLL);
              *v198 = v218;
              v198[1] = &protocol witness table for SystemApertureIconView;
              v198[2] = v188;
              v198[3] = &protocol witness table for SystemApertureEmptyTrailingView;
              v198[4] = v191;
              v198[5] = &protocol witness table for SystemApertureIconView;
              v198[6] = v194;
              v198[7] = &protocol witness table for SystemApertureIconView;
              v198[8] = 3;
              *(v198 + 72) = 0x80;
              v162 = &_s15ConversationKit21SystemApertureElementVSgMd;
              v163 = &_s15ConversationKit21SystemApertureElementVSgMR;
              v164 = v220;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v164, v162, v163);
            goto LABEL_37;
          }
        }

        v100.super.isa = 0;
        goto LABEL_11;
      }
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v170 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v170, &static Logger.conversationControls);
  OUTLINED_FUNCTION_91_11();
  v172 = v171;
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v173, v174))
  {
    v175 = OUTLINED_FUNCTION_42();
    v176 = OUTLINED_FUNCTION_23();
    v222 = v176;
    *v175 = 136315138;
    v220[0] = (v48)();
    v220[1] = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v178 = String.init<A>(reflecting:)();
    v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, &v222);

    *(v175 + 4) = v180;
    _os_log_impl(&dword_1BBC58000, v173, v174, "Failed to acquire video message call again recipe for call %s", v175, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v176);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v216);
LABEL_38:
  OUTLINED_FUNCTION_30_0();
}

void CallsControlsRecipeGenerator.podcastRecordingRequest(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v153 = v2;
  v3 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v151 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v13);
  *&v149 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v143 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = OUTLINED_FUNCTION_16(v17 - v16);
  *&v150 = type metadata accessor for Participant(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v142 - v28;
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v36 = v35 - v34;
  v37 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v147 = v3;
    v38 = objc_opt_self();
    v146 = v37;
    swift_unknownObjectRetain();
    v39 = [v38 clearColor];
    OUTLINED_FUNCTION_5_6();
    v44 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v40, v41, v42, v43);
    v144 = [v44 view];
    v45 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A8))();
    v46 = *((*v45 & *v44) + 0x58);
    v145 = v44;
    v47 = v46(v36);
    OUTLINED_FUNCTION_39_22(v47);
    v49 = *(v32 + 8);
    v48 = v32 + 8;
    v49(v36, v30);
    OUTLINED_FUNCTION_43_28();
    v50 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v51 = objc_opt_self();
    v52 = [v51 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    v53.super.isa = v52;
    OUTLINED_FUNCTION_17_0(v54, v55, v56, v48, v53);
    OUTLINED_FUNCTION_18_8();

    v57._countAndFlagsBits = OUTLINED_FUNCTION_15_14();
    isa = NSAttributedString.__allocating_init(string:)(v57).super.isa;
    v58 = ConversationController.visibleParticipants.getter();
    specialized Collection.first.getter(v58, v29);

    outlined init with copy of Participant?(v29, v26);
    v59 = &stru_1BC4BA000;
    if (__swift_getEnumTagSinglePayload(v26, 1, v150) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    else
    {
      *&v150 = v50;
      OUTLINED_FUNCTION_35_29();
      _s15ConversationKit0A14ControlsRecipeVWObTm_2(v26, v148);
      Participant.contactDetails.getter();
      OUTLINED_FUNCTION_38_37();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v65 = v154;

      if (v65)
      {
        v66 = [v65 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_18_8();

        v67 = [v65 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_80_7();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v68, v69, v70, v149);
        v142[0] = v67;
        v71 = v142[2];
        type metadata completion function for SyncedScreeningAlphaGradientView();
        PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
        v72 = [v51 conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v73.super.isa = v72;
        OUTLINED_FUNCTION_17_0(v74, v75, v76, v77, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1BC4BAA20;
        v78 = objc_opt_self();
        v79 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v80 = [v78 localizedStringFromPersonNameComponents:v79 style:1 options:0];

        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        v84 = MEMORY[0x1E69E6158];
        *(v48 + 56) = MEMORY[0x1E69E6158];
        v85 = lazy protocol witness table accessor for type String and conformance String();
        *(v48 + 32) = v81;
        *(v48 + 40) = v83;
        *(v48 + 96) = v84;
        *(v48 + 104) = v85;
        *(v48 + 64) = v85;
        *(v48 + 72) = 63;
        *(v48 + 80) = 0xE100000000000000;
        OUTLINED_FUNCTION_57_1();
        OUTLINED_FUNCTION_43_28();
        String.init(format:_:)();

        v86._countAndFlagsBits = OUTLINED_FUNCTION_46();
        v87 = NSAttributedString.__allocating_init(string:)(v86).super.isa;

        v88 = v71;
        v59 = &stru_1BC4BA000;
        (*(v143 + 8))(v88, v149);
        isa = v87;
      }
    }

    v154 = 27;
    v155 = 0u;
    v156 = 0u;
    v157 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1BC4BAC30;
    v90 = [v51 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    v91.super.isa = v90;
    OUTLINED_FUNCTION_17_0(v92, v93, v94, v48, v91);
    OUTLINED_FUNCTION_18_8();

    OUTLINED_FUNCTION_15_14();
    String.init(format:_:)();

    v95._countAndFlagsBits = OUTLINED_FUNCTION_46();
    *(v89 + 32) = NSAttributedString.__allocating_init(string:)(v95);
    v96 = type metadata accessor for AttributedString();
    v97 = v151;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    type metadata accessor for ConversationControlsAction(0);
    OUTLINED_FUNCTION_9_3();
    v101 = swift_allocObject();
    *(v101 + 16) = v59[162];
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v160);
    v149 = v160[1];
    v150 = v160[0];
    v102 = v161;
    v103 = v147;
    v104 = v147[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v96);
    v108 = (v7 + v103[10]);
    v109 = v7 + v103[15];
    v110.n128_f64[0] = OUTLINED_FUNCTION_59_15();
    *(v7 + v103[16]) = 0;
    v111 = v7 + v103[17];
    v112 = (v7 + v103[18]);
    *v112 = 1;
    OUTLINED_FUNCTION_13_7(v112, v110);
    outlined init with copy of ConversationControlsType(&v154, v7);
    v113 = v144;
    v7[6] = 0;
    v7[7] = v113;
    OUTLINED_FUNCTION_51_19();
    v7[8] = 0;
    v7[9] = v114;
    v7[10] = isa;
    v7[11] = v89;
    v108[1] = 0;
    v108[2] = 0;
    *v108 = 0;
    outlined assign with copy of AttributedString?(v97, v7 + v104);
    *(v7 + v103[11]) = 2;
    *(v7 + v103[12]) = 0;
    *(v7 + v103[13]) = 1;
    *(v7 + v103[14]) = 1;
    *v111 = 0;
    *(v111 + 1) = 0;
    v111[16] = -1;
    v115 = *(v101 + 16);
    if (v115 <= 5)
    {
      OUTLINED_FUNCTION_74_9();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_91_11();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v154);
      *v109 = v101;
      v132 = v150;
      *(v109 + 24) = v149;
      *(v109 + 8) = v132;
      v109[40] = v102 | 0x80;
      OUTLINED_FUNCTION_1_181();
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v7, v153);
      v133 = OUTLINED_FUNCTION_21_3();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v103);
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v7, v136);
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v116 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v116, &static Logger.conversationControls);

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = v97;
        v120 = OUTLINED_FUNCTION_42();
        v121 = OUTLINED_FUNCTION_23();
        v158 = v115;
        v159 = v121;
        *v120 = 136315138;
        v122 = String.init<A>(reflecting:)();
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v159);

        *(v120 + 4) = v124;
        OUTLINED_FUNCTION_24_6();
        _os_log_impl(v125, v126, v127, v128, v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_2_2();
        OUTLINED_FUNCTION_74_9();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_91_11();

        v130 = v119;
      }

      else
      {
        OUTLINED_FUNCTION_74_9();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_91_11();

        v130 = v97;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v154);
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v7, v138);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v103);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }
}

void CallsControlsRecipeGenerator.swapCallsRecipe(shownCall:controlsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v203 = v24;
  v202 = v25;
  v204 = v26;
  v28 = v27;
  v30 = v29;
  v206 = v31;
  v32 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_49_0(v32);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_1();
  v41 = OUTLINED_FUNCTION_16(v40);
  v42 = type metadata accessor for SystemApertureIcon(v41);
  OUTLINED_FUNCTION_88_8(v42);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v46 = OUTLINED_FUNCTION_16(v45);
  v47 = type metadata accessor for ConversationControlsRecipe(v46);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_8();
  v51 = (v50 - v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v215._object - v57;
  ObjectType = swift_getObjectType();
  v60 = (*(v28 + 184))(ObjectType, v28);
  v61 = [v60 isSystemProvider];

  v201 = v47;
  if (v61)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = static UIImageView.appIcon(for:)(v62, v63);

    v65 = [v64 image];
  }

  else
  {
    v65 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v30, v23, ObjectType, v28);
    if (v65)
    {
    }
  }

  v66 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v67 = objc_opt_self();
  v68 = v65;
  v191 = v67;
  v69 = [v67 clearColor];
  v70 = swift_unknownObjectRetain();
  v192 = v66;
  v71 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v70, 0, v65, v69, v66, ObjectType, v28);
  v72 = ObjectType;
  v73 = v71;
  v199 = [v71 view];
  (*(v28 + 56))(v72, v28);
  UUID.init(uuidString:)();

  v74 = v207;
  if (__swift_getEnumTagSinglePayload(v58, 1, v207) != 1)
  {
    v197 = v68;
    v75 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x58);
    v208 = v73;
    v195 = v75(v58);
    v76 = *(v34 + 8);
    v216._object = (v34 + 8);
    v185 = v76;
    (v76)(v58, v74);
    v77 = (*(v28 + 72))(v72, v28);
    v79 = v78;
    objc_opt_self();
    v80 = swift_dynamicCastObjCClass();
    v190 = v72;
    if (v80)
    {
      v81 = [objc_opt_self() sharedInstance];
      v82 = TUCall.associatedCallGroup(in:)(v81);

      v83 = v201;
      if (v82)
      {

        v84 = [v82 displayName];
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v85;
      }
    }

    else
    {
      v83 = v201;
    }

    OUTLINED_FUNCTION_43_28();
    v212[0] = v30;
    v212[1] = v28;
    v198 = v28;
    v213 = 6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v86 = objc_opt_self();
    v196 = v30;
    swift_unknownObjectRetain();
    v188 = v86;
    v87 = [v86 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v189 = "Record your video for ";
    OUTLINED_FUNCTION_29_41();
    v215._countAndFlagsBits = 0;
    v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, v90, v91, v215);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    isa = NSAttributedString.__allocating_init(string:)(v92).super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSAttributedStringCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSAttributedStringCSgGMR);
    inited = swift_initStackObject();
    v193 = xmmword_1BC4BA940;
    *(inited + 16) = xmmword_1BC4BA940;
    v94._countAndFlagsBits = v77;
    v94._object = v79;
    *(inited + 32) = NSAttributedString.__allocating_init(string:)(v94);
    v95 = MEMORY[0x1E69E7CC0];
    v211 = MEMORY[0x1E69E7CC0];
    v96 = *(inited + 32);
    if (v96)
    {
      v97 = v96;
      MEMORY[0x1BFB20CC0]();
      if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v95 = v211;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v98 = type metadata accessor for AttributedString();
    v99 = 1;
    v100 = v200;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    v104 = OUTLINED_FUNCTION_24_1();
    type metadata accessor for ConversationControlsAction(v104);
    OUTLINED_FUNCTION_9_3();
    v105 = swift_allocObject();
    *(v105 + 16) = v193;
    swift_storeEnumTagMultiPayload();
    v106 = v83[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v98);
    v110 = (v51 + v83[10]);
    v111 = v51 + v83[15];
    v112.n128_f64[0] = OUTLINED_FUNCTION_59_15();
    *(v51 + v83[16]) = 0;
    v113 = v51 + v83[17];
    v114 = (v51 + v83[18]);
    *v114 = 1;
    OUTLINED_FUNCTION_13_7(v114, v112);
    outlined init with copy of ConversationControlsType(v212, v51);
    v115 = v199;
    v51[6] = 0;
    v51[7] = v115;
    v116 = v195;
    v51[8] = 0;
    v51[9] = v116;
    v51[10] = isa;
    v51[11] = v95;
    v117 = v100;
    v110[1] = 0;
    v110[2] = 0;
    *v110 = 0;
    v118 = v115;
    outlined assign with copy of AttributedString?(v117, v51 + v106);
    *(v51 + v83[11]) = 2;
    *(v51 + v83[12]) = 0;
    *(v51 + v83[13]) = 1;
    *(v51 + v83[14]) = 1;
    *v113 = 0;
    *(v113 + 1) = 0;
    v113[16] = -1;
    v119 = *(v105 + 16);
    if (v119 <= 2)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(v212);
      *v111 = v105;
      *(v111 + 8) = 0u;
      *(v111 + 24) = 0u;
      *(v111 + 40) = 0;
      OUTLINED_FUNCTION_1_181();
      v130 = v206;
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v51, v206);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v83);
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v51, v134);
      v135 = v205;
      v136 = v204;
      OUTLINED_FUNCTION_81_6();
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v120 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v120, &static Logger.conversationControls);

      v111 = Logger.logObject.getter();
      v121 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v111, v121))
      {
        v110 = OUTLINED_FUNCTION_42();
        v99 = OUTLINED_FUNCTION_23();
        v210[0] = v99;
        *v110 = 136315138;
        v209 = v119;
        v122 = String.init<A>(reflecting:)();
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v210);
        v199 = v118;
        v125 = v117;
        v126 = v124;

        *(v110 + 4) = v126;
        OUTLINED_FUNCTION_93_7(&dword_1BBC58000, v127, v128, "Too many trailing actions (%s)");
        __swift_destroy_boxed_opaque_existential_1(v99);
        OUTLINED_FUNCTION_2_2();
        OUTLINED_FUNCTION_26();

        v129 = v125;
        v118 = v199;
      }

      else
      {

        v129 = v117;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(v212);
      v130 = v206;
      v135 = v205;
      OUTLINED_FUNCTION_81_6();
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v51, v137);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v138, v139, v140, v83);
      v136 = v204;
    }

    OUTLINED_FUNCTION_85_0();
    v141 = Features.callManagerEnabled.getter();
    v142 = v208;
    if (v141)
    {
      v111 = 1;
      if (!__swift_getEnumTagSinglePayload(v130, 1, v83))
      {
        *(v130 + v83[16]) = 1;
      }
    }

    OUTLINED_FUNCTION_80_7();
    SystemApertureIconFactory.makeStatusIcon(with:for:)(v99, v110, v136);
    v143 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_61_12(v143, v144, &v214);
    if (v145)
    {

      OUTLINED_FUNCTION_30_5();
      v147 = &_s15ConversationKit18SystemApertureIconVSgMd;
      v148 = &_s15ConversationKit18SystemApertureIconVSgMR;
      v149 = v111;
    }

    else
    {
      OUTLINED_FUNCTION_4_147();
      _s15ConversationKit0A14ControlsRecipeVWObTm_2(v111, v135);
      v150 = [v191 clearColor];
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_5_6();
      v154 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v151, v152, v153, v150, v192, v190, v110);
      v155 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
      v156 = [v188 conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_29_41();
      v216._countAndFlagsBits = 0;
      v161 = NSLocalizedString(_:tableName:bundle:value:comment:)(v157, v158, v159, v160, v216);

      outlined bridged method (mbnn) of @objc UILabel.text.setter(v161._countAndFlagsBits, v161._object, v155);
      if (__swift_getEnumTagSinglePayload(v130, 1, v83))
      {
        OUTLINED_FUNCTION_3_160();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v135, v163);

        OUTLINED_FUNCTION_54_18();
        OUTLINED_FUNCTION_30_5();

LABEL_32:
        OUTLINED_FUNCTION_30_0();
        return;
      }

      v166 = [v154 view];
      v167 = *v136;
      v199 = v118;
      v168 = MEMORY[0x1E69E7D40];
      v169 = v186;
      (*((*MEMORY[0x1E69E7D40] & v167) + 0x2A8))();
      v170 = (*((*v168 & *v154) + 0x58))(v169);
      OUTLINED_FUNCTION_62_16();
      v185();
      v171 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
      v172 = SystemApertureIncomingCallLeadingView.init(leadingViewType:)(v166, v170, 0);
      OUTLINED_FUNCTION_36_38(v172, &a15);
      v173 = v187;
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v135, v187);
      v174 = v135;
      v175 = type metadata accessor for SystemApertureIconView(0);
      v176 = objc_allocWithZone(v175);
      SystemApertureIconView.init(icon:isDetached:)();
      v177 = OUTLINED_FUNCTION_85_7();
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v177, v173);
      v178 = objc_allocWithZone(v175);
      SystemApertureIconView.init(icon:isDetached:)();
      v180 = v179;
      OUTLINED_FUNCTION_30_5();

      OUTLINED_FUNCTION_54_18();
      OUTLINED_FUNCTION_3_160();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v174, v183);
      v184 = (v130 + v83[18]);
      memcpy(v210, v184, 0x49uLL);
      *v184 = v207;
      v184[1] = &protocol witness table for SystemApertureIncomingCallLeadingView;
      v184[2] = v155;
      v184[3] = &protocol witness table for UILabel;
      v184[4] = v169;
      v184[5] = &protocol witness table for SystemApertureIconView;
      v184[6] = v180;
      v184[7] = &protocol witness table for SystemApertureIconView;
      v184[8] = 4;
      *(v184 + 72) = 64;
      v147 = &_s15ConversationKit21SystemApertureElementVSgMd;
      v148 = &_s15ConversationKit21SystemApertureElementVSgMR;
      v149 = v210;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v149, v147, v148);
    goto LABEL_32;
  }

  __break(1u);
}

void CallsControlsRecipeGenerator.videoUpgradeRequest(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  v90 = v9;
  v10 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_13_2();
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v18) + 0x2A0))();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v89 = v1;
    objc_opt_self();
    OUTLINED_FUNCTION_85_7();
    swift_unknownObjectRetain();
    v21 = [v1 clearColor];
    OUTLINED_FUNCTION_5_6();
    v26 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v22, v23, v24, v25);
    v87 = [v26 view];
    OUTLINED_FUNCTION_13_2();
    (*((*v17 & v27) + 0x2A8))();
    v88 = v26;
    v86 = (*((*v17 & *v26) + 0x58))(v16);
    (*(v12 + 8))(v16, v10);
    v28 = outlined bridged method (pb) of @objc TUCall.displayFirstName.getter(v20);
    if (v29)
    {
      v30 = v29;
      v83 = v28;
    }

    else
    {
      v36 = [v20 displayName];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v37;
    }

    v92 = 31;
    v93 = 0u;
    v94 = 0u;
    v95 = 7;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v38 = objc_opt_self();
    v39 = [v38 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v40.super.isa = v39;
    v41 = OUTLINED_FUNCTION_17_0(0xD000000000000013, 0x80000001BC51AB70, 0x61737265766E6F43, 0xEF74694B6E6F6974, v40);
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    isa = NSAttributedString.__allocating_init(string:)(v44).super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BC4BAC30;
    v46 = [v38 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v47.super.isa = v46;
    OUTLINED_FUNCTION_17_0(0xD000000000000019, 0x80000001BC51AB90, 0x61737265766E6F43, 0xEF74694B6E6F6974, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BC4BA940;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v48 + 32) = v84;
    *(v48 + 40) = v30;
    v49 = String.init(format:_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    *(v45 + 32) = NSAttributedString.__allocating_init(string:)(v52);
    v53 = type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    type metadata accessor for ConversationControlsAction(0);
    OUTLINED_FUNCTION_9_3();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BC4BAA20;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v58 = v2[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v53);
    v62 = (v6 + v2[10]);
    v63 = v6 + v2[15];
    v64.n128_f64[0] = OUTLINED_FUNCTION_60_17();
    *(v6 + v2[16]) = 0;
    v65 = v6 + v2[17];
    v66 = (v6 + v2[18]);
    *v66 = 1;
    OUTLINED_FUNCTION_13_7(v66, v64);
    outlined init with copy of ConversationControlsType(&v92, v6);
    v6[6] = 0;
    v6[7] = v87;
    v6[8] = 0;
    v6[9] = v86;
    v6[10] = isa;
    v6[11] = v45;
    v62[1] = 0;
    v62[2] = 0;
    *v62 = 0;
    outlined assign with copy of AttributedString?(v90, v6 + v58);
    *(v6 + v2[11]) = 2;
    *(v6 + v2[12]) = 0;
    *(v6 + v2[13]) = 1;
    *(v6 + v2[14]) = 1;
    *v65 = 0;
    *(v65 + 1) = 0;
    v65[16] = -1;
    if (*(v57 + 16) <= 2uLL)
    {
      swift_unknownObjectRelease();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v92);
      *v63 = v57;
      *(v63 + 8) = 0u;
      *(v63 + 24) = 0u;
      v63[40] = 0;
      OUTLINED_FUNCTION_1_181();
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v6, v89);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v2);
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v6, v82);
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v67 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v67, &static Logger.conversationControls);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = OUTLINED_FUNCTION_42();
        v71 = OUTLINED_FUNCTION_23();
        v91 = v71;
        *v70 = 136315138;
        v72 = String.init<A>(reflecting:)();
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v91);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_1BBC58000, v68, v69, "Too many trailing actions (%s)", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        OUTLINED_FUNCTION_2_2();
        OUTLINED_FUNCTION_4_4();
      }

      swift_unknownObjectRelease();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v92);
      OUTLINED_FUNCTION_0_214();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v6, v75);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v2);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }
}

id CallsControlsRecipeGenerator.subtitleBadgeView(incomingCall:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 184))(ObjectType, a2);
  v5 = [v4 isTelephonyProvider];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPBadgeView, 0x1E69D8998);
    (*(a2 + 48))(v17, ObjectType, a2);
    v6 = TPBadgeView.init(telephonyCall:)(v17);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 title];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v17[0] = v9;
      v17[1] = v11;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.hash.getter();
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Logger.conversationControls);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BBC58000, v13, v14, "[SystemAperture][Badge] Not showing badge view for non-telephony calls", v15, 2u);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    return 0;
  }

  return v7;
}

id specialized Conversation.cnk_allowsVideoMessaging.getter()
{
  result = [v0 avMode];
  if (result)
  {
    v2 = [v0 remoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized Set.count.getter();

    return (v3 == 1);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_18_8();
  }

  return OUTLINED_FUNCTION_15_14();
}

uint64_t outlined bridged method (pb) of @objc TUCall.displayFirstName.getter(void *a1)
{
  v1 = [a1 displayFirstName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_2(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_6(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL OUTLINED_FUNCTION_70_7()
{
  *(v2 - 524) = v0;

  return os_log_type_enabled(v1, v0);
}

void InCallControlsPTTTitleCell.configure(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  static UIBackgroundConfiguration.listPlainCell()();
  v7 = [objc_opt_self() clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v8 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  MEMORY[0x1BFB216F0](v6);
  InCallControlsPTTTitleCell.setupAvatarViewController(viewModel:)(a1);
  InCallControlsPTTTitleCell.setupTitleLabel()();
  v10 = *a1;
  v9 = a1[1];
  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel);
  outlined bridged method (mbgnn) of @objc UILabel.text.setter(v10, v9, v11);
}

id InCallControlsPTTTitleCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsPTTTitleCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarView) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabelTopConstraint) = 0;
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  [v6 setAutomaticallyUpdatesBackgroundConfiguration_];
  return v6;
}

id InCallControlsPTTTitleCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTTitleCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabelTopConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InCallControlsPTTTitleCell.setupAvatarViewController(viewModel:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarView;
  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v1[v4];
    *&v1[v4] = 0;

    v7 = *&v1[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController];
    *&v1[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController] = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
  v8 = static UIImageView.appIcon(for:)(*(a1 + 16), *(a1 + 24));
  v9 = [v8 image];

  v10 = *(a1 + 48);
  v35 = v9;
  _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall10badgeImageACSg20CommunicationsUICore05BasicI0_p_So7UIImageCSgtcfCTf4enn_nAA0i6CenterI0V_Tt1g5(v10, v9);
  v11 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController;
  v12 = *&v2[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController];
  *&v2[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarViewController] = v13;

  v14 = *&v2[v11];
  if (v14 && (v15 = [v14 view]) != 0)
  {
    v16 = *&v2[v4];
    *&v2[v4] = v15;
    v17 = v15;

    v18 = [v2 contentView];
    [v18 addSubview_];

    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BC4BA7F0;
    v21 = [v17 widthAnchor];
    v22 = [v21 constraintEqualToConstant_];

    *(v20 + 32) = v22;
    v23 = [v17 heightAnchor];
    v24 = [v23 constraintEqualToConstant_];

    *(v20 + 40) = v24;
    v25 = [v17 centerXAnchor];
    v26 = [v2 contentView];
    v27 = [v26 centerXAnchor];

    v28 = [v25 constraintEqualToAnchor_];
    *(v20 + 48) = v28;
    v29 = [v17 topAnchor];
    v30 = [v2 contentView];
    v31 = [v30 topAnchor];

    v32 = [v29 constraintEqualToAnchor_];
    *(v20 + 56) = v32;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints_];

    v34 = isa;
  }

  else
  {
    v34 = v35;
  }
}

void InCallControlsPTTTitleCell.setupTitleLabel()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_avatarView];
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabelTopConstraint;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabelTopConstraint];
  if (!v3)
  {
    v13 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel;
    v14 = *&v0[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel];
    v15 = one-time initialization token for tableViewHeaderTitleLabel;
    v44 = v1;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    [v16 setTextColor_];

    v17 = one-time initialization token for detailTitleLabel;
    v18 = *&v0[v13];
    if (v17 != -1)
    {
      swift_once();
    }

    [v18 setFont_];

    [*&v0[v13] setNumberOfLines_];
    [*&v0[v13] setTextAlignment_];
    v19 = [v0 contentView];
    [v19 addSubview_];

    [*&v0[v13] setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [*&v0[v13] topAnchor];
    v21 = [v44 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:14.0];

    v23 = *&v0[v2];
    *&v0[v2] = v22;
    v24 = v22;

    if (!v24)
    {
      goto LABEL_14;
    }

    v43 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BA920;
    v26 = [*&v0[v13] centerXAnchor];
    v27 = [v0 contentView];
    v28 = [v27 centerXAnchor];

    v29 = [v26 constraintEqualToAnchor_];
    *(v25 + 32) = v29;
    v30 = [*&v0[v13] leadingAnchor];
    v31 = [v0 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v30 constraintEqualToAnchor_];
    *(v25 + 40) = v33;
    v34 = [*&v0[v13] trailingAnchor];
    v35 = [v0 contentView];
    v36 = [v35 trailingAnchor];

    v37 = [v34 constraintEqualToAnchor_];
    *(v25 + 48) = v37;
    *(v25 + 56) = v24;
    v38 = *&v0[v13];
    v12 = v24;
    v39 = [v38 &off_1E7FE9D20 + 5];
    v40 = [v0 contentView];
    v41 = [v40 &off_1E7FE9D20 + 5];

    v42 = [v39 constraintEqualToAnchor:v41 constant:-20.0];
    *(v25 + 64) = v42;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 activateConstraints_];
    goto LABEL_12;
  }

  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel;
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit26InCallControlsPTTTitleCell_titleLabel];
  v44 = v3;
  isa = v1;
  [v5 removeConstraint_];
  v7 = [*&v0[v4] topAnchor];
  v8 = [(objc_class *)isa bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:14.0];

  v10 = *&v0[v2];
  *&v0[v2] = v9;

  v11 = *&v0[v2];
  if (v11)
  {
    v12 = v11;
    [v12 setActive_];
LABEL_12:
  }

LABEL_14:
}

id InCallControlsPTTTitleCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall TUCall.channelDisplayName()()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 provider];
  v7 = [v6 localizedName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = outlined bridged method (pb) of @objc TUCall.callerNameFromNetwork.getter(v0);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v11;
  v14 = v12;
  v22[0] = v11;
  v22[1] = v12;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  (*(v2 + 8))(v5, v1);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_7:
    v13 = v8;
    goto LABEL_8;
  }

  v10 = v14;
LABEL_8:
  v19 = v13;
  v20 = v10;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

id @objc TUCall.channelDisplayName()(void *a1)
{
  v1 = a1;
  v2 = TUCall.channelDisplayName()();

  v3 = MEMORY[0x1BFB209B0](v2._countAndFlagsBits, v2._object);

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCall.callerNameFromNetwork.getter(void *a1)
{
  v1 = [a1 callerNameFromNetwork];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t CallScreeningListeningState.init(prevState:canScreenCall:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_7_106(v0);
  return OUTLINED_FUNCTION_3_161();
}

uint64_t CallScreeningListeningState.init(prevState:canScreenCall:)(uint64_t a1)
{

  v4 = *(a1 + 16);
  outlined destroy of String(&v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_106(v2);
  return OUTLINED_FUNCTION_3_161();
}

uint64_t CallScreeningListeningState.init(prevState:canScreenCall:)(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  outlined destroy of CallScreening.EndingAction(&v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_7_106(v1);
  return OUTLINED_FUNCTION_3_161();
}

uint64_t CallScreeningListeningState.willExit(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for Logger();
  v14 = OUTLINED_FUNCTION_5_139(v13);
  v28 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_2();
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v17 = type metadata accessor for CallScreeningListeningState(0, a5, a6, v16);
  OUTLINED_FUNCTION_0_215();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(v17, WitnessTable);
  if (result)
  {
    (*(a6 + 16))(a5, a6);

    outlined init with copy of CallScreening.State(a1, v29);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(a1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v22 = 136446466;

      v23 = OUTLINED_FUNCTION_1_182();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, 0xEE00657461745367, v29);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = CallScreening.State.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v29);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1BBC58000, v20, v21, "%{public}s Exiting to %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    return (*(v28 + 8))(v6, v29[8]);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningListeningState.enteredState()()
{
  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = v0;
  v11 = type metadata accessor for Logger();
  v12 = OUTLINED_FUNCTION_5_139(v11);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  v24[0] = v10;
  v24[1] = v9;
  v24[2] = v8;
  v16 = type metadata accessor for CallScreeningListeningState(0, v7, v6, v15);
  OUTLINED_FUNCTION_0_215();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v16, WitnessTable))
  {
    (*(v6 + 16))(v7, v6);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      v21 = v24[0];
      *v20 = 136446210;

      v22 = OUTLINED_FUNCTION_1_182();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, 0xEE00657461745367, v24);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v18, v19, "EnteredState %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    (*(v14 + 8))(v5, v24[4]);
  }
}

uint64_t closure #1 in CallScreeningListeningState.update(with:)(uint64_t result)
{
  if (*(result + 48) >> 61 != 1)
  {
    lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningListeningState<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningListeningState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ClarityUIFavorite.id.getter()
{
  v1 = *v0;

  return v1;
}

double ClarityUIFavorite.contact.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  v6 = v2;
  v7 = v3;

  return result;
}

__n128 ClarityUIFavorite.contact.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = v1[3];
  v6 = v1[4];

  result = *a1;
  *(v1 + 3) = *a1;
  v1[5] = v3;
  v1[6] = v4;
  return result;
}

void __swiftcall ClarityUIFavorite.init(id:actions:contact:)(ConversationKit::ClarityUIFavorite *__return_ptr retstr, Swift::String id, Swift::OpaquePointer actions, ConversationKit::ClarityUIContact contact)
{
  v4 = *(contact.cnContact.super.isa + 2);
  v5 = *(contact.cnContact.super.isa + 3);
  retstr->id = id;
  retstr->actions = actions;
  *&retstr->contact.cnContact.super.isa = *contact.cnContact.super.isa;
  retstr->contact.id._countAndFlagsBits = v4;
  retstr->contact.id._object = v5;
}

uint64_t static ClarityUIFavorite.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int ClarityUIFavorite.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClarityUIFavorite(uint64_t a1)
{
  Hasher.init(_seed:)();
  ClarityUIFavorite.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Void __swiftcall CNFavoritesEntry.makeCall()()
{
  v2[4] = closure #1 in CNFavoritesEntry.makeCall();
  v2[5] = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v2[3] = &block_descriptor_109;
  v1 = _Block_copy(v2);
  [v0 performActionWithCompletion_];
  _Block_release(v1);
}

void closure #1 in CNFavoritesEntry.makeCall()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    v5 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = a1;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in closure #1 in CNFavoritesEntry.makeCall()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CNFavoritesEntry.makeCall(), v6, v5);
}

uint64_t closure #1 in closure #1 in CNFavoritesEntry.makeCall()()
{
  v14 = v0;

  if (one-time initialization token for clarityUI != -1)
  {
    OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.clarityUI);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Unable to call favorite. Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t CNFavoritesEntry.callType.getter()
{
  v1 = [v0 actionType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {

    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_13(v5);

  if (v8)
  {
LABEL_6:

    return 0;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10 == v13 && v12 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_13(v13);

    if ((v16 & 1) == 0)
    {
      if (one-time initialization token for clarityUI != -1)
      {
        OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, &static Log.clarityUI);
      v18 = v0;
      v1 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v1, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        [v18 actionType];
        type metadata accessor for CNActionType(0);
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v25);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1BBC58000, v1, v19, "Unhandled action type for favorite: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t partial apply for closure #1 in closure #1 in CNFavoritesEntry.makeCall()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in CNFavoritesEntry.makeCall()(a1, v4, v5, v6);
}

uint64_t specialized _resumeUnsafeContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DED8]();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_109();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  OUTLINED_FUNCTION_109();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v6, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMd, &_ss18_DictionaryStorageCy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_11:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v9, __src);
      outlined init with copy of Any(*(a1 + 56) + 32 * v9, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      outlined init with copy of AnyHashable(__dst, v10);
      if (!swift_dynamicCast())
      {
        break;
      }

      v5 &= v5 - 1;
      outlined init with copy of Any(&__dst[40], v11);
      outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      outlined init with take of Any(v11, v12);
      outlined init with take of Any(v12, v13);
      outlined init with take of Any(v13, v10);
      specialized _NativeDictionary._unsafeInsertNew(key:value:)(v10, v2);
      v7 = v8;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
  }

  else
  {
LABEL_8:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return;
      }

      v5 = *(a1 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v9, __src);
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of AnyHashable(__dst, v22);
    if (!swift_dynamicCast())
    {
      outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

LABEL_22:

      return;
    }

    outlined init with copy of Any(&__dst[40], v22);
    outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v20;
      v13[1] = v21;

      v14 = v2[7];
      v15 = *(v14 + 8 * v11);
      *(v14 + 8 * v11) = v20;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v16 = (v2[6] + 16 * v10);
      *v16 = v20;
      v16[1] = v21;
      *(v2[7] + 8 * v10) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo11IDSEndpointCGGMd, &_ss18_DictionaryStorageCySSSaySo11IDSEndpointCGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v9, __src);
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of AnyHashable(__dst, v20);
    if (!swift_dynamicCast())
    {
      outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

LABEL_22:

      return;
    }

    outlined init with copy of Any(&__dst[40], v20);
    outlined destroy of TapInteractionHandler?(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11IDSEndpointCGMd, &_sSaySo11IDSEndpointCGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v18;
      v13[1] = v19;

      *(v2[7] + 8 * v11) = v18;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v14 = (v2[6] + 16 * v10);
      *v14 = v18;
      v14[1] = v19;
      *(v2[7] + 8 * v10) = v18;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_25;
      }

      v2[2] = v17;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Class static CNKFaceTimeAvailabilityHelper.queryTimeout.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD000000000000020, 0x80000001BC51ACB0, result);

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    v6[0] = v4;
    v6[1] = v5;
    if (*(&v5 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        return v3;
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v6, &_sypSgMd, &_sypSgMR);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    return NSNumber.init(integerLiteral:)(1).super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CNKFaceTimeAvailabilityHelper.preferredFromID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNKFaceTimeAvailabilityHelper_preferredFromID);
  v2 = v1;
  return v1;
}

CNKFaceTimeAvailabilityHelper __swiftcall CNKFaceTimeAvailabilityHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.preferredFromID = v3;
  result.queryController = v2;
  result.super.isa = v1;
  return result;
}

id CNKFaceTimeAvailabilityHelper.init()()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *&v0[OBJC_IVAR___CNKFaceTimeAvailabilityHelper_queryController] = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSURI, 0x1E69A5428);
    v2 = [objc_opt_self() outgoingRelayCallerID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    *&v0[OBJC_IVAR___CNKFaceTimeAvailabilityHelper_preferredFromID] = IDSURI.__allocating_init(unprefixedURI:)(v3, v5);
    v6.receiver = v0;
    v6.super_class = CNKFaceTimeAvailabilityHelper;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id IDSURI.__allocating_init(unprefixedURI:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1BFB209B0](a1, a2);

  v6 = [v4 initWithUnprefixedURI_];

  return v6;
}

uint64_t CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = TUCopyIDSCanonicalAddressForHandle();
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    v11 = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for CNKFaceTimeAvailabilityHelper(v11);
    v12 = static CNKFaceTimeAvailabilityHelper.queryTimeout.getter();
    MEMORY[0x1BFB21050]();

    static Duration.seconds(_:)();
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = v4;
    v13[4] = v6;
    v14 = v3;
    v15 = MEMORY[0x1E69E6370];
    v16 = Task<>.init(priority:timeout:operation:)();
    v0[5] = v16;
    v17 = swift_task_alloc();
    v0[6] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v17 = v0;
    v17[1] = CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:);
    v19 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v16, v15, v18, v19);
  }

  else
  {

    v20 = OUTLINED_FUNCTION_27_52();

    return v21(v20);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v2, v3, "FaceTimeAvailabilityHelper: Timeout reached querying availability of FaceTime, returning false", v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  v7 = OUTLINED_FUNCTION_27_52();

  return v8(v7);
}

uint64_t closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), 0, 0);
}

uint64_t closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v9;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:);
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E6370];
  v6 = MEMORY[0x1E69E6370];
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), v2, v7);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySb_GMd, &_sScG8IteratorVySb_GMR);
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), 0, 0);
}

uint64_t closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  v56 = v0 + 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v3;
  v58 = inited;
  v4 = type metadata accessor for TaskPriority();
  v5 = 0;
  v59 = v4;
  v6 = v4;
  while (v5 != 32)
  {
    v8 = v0[42];
    v7 = v0[43];
    v10 = v0[35];
    v9 = v0[36];
    v11 = v0[34];
    v60 = v5;
    v12 = v0;
    v13 = *(v58 + v5 + 32);
    v14 = *(v58 + v5 + 40);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v11;
    v18[5] = v10;
    v18[6] = v9;
    v18[7] = v13;
    v19 = v14;
    v0 = v12;
    v18[8] = v19;
    outlined init with copy of TaskPriority?(v7, v8);
    LODWORD(v8) = __swift_getEnumTagSinglePayload(v8, 1, v6);
    swift_bridgeObjectRetain_n();
    v20 = v11;

    v21 = v12[42];
    if (v8 == 1)
    {
      outlined destroy of TapInteractionHandler?(v12[42], &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(*(v6 - 8) + 8))(v21, v6);
    }

    if (v18[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = *v12[33];
    v26 = swift_allocObject();
    *(v26 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:);
    *(v26 + 24) = v18;

    if (v24 | v22)
    {
      v27 = v56;
      *v56 = 0;
      v56[1] = 0;
      v12[20] = v22;
      v12[21] = v24;
    }

    else
    {
      v27 = 0;
    }

    v28 = v12[43];
    v12[26] = 1;
    v12[27] = v27;
    v12[28] = v25;
    swift_task_create();

    outlined destroy of TapInteractionHandler?(v28, &_sScPSgMd, &_sScPSgMR);
    v5 = v60 + 16;
  }

  v55 = v0[41];
  v61 = v0[40];
  v29 = v0[36];
  v57 = v0[35];
  v30 = v0[34];
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v31 + 40) = v32;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  *(v31 + 48) = v33;
  *(v31 + 56) = v34;
  v37 = *(v31 + 32);
  v36 = *(v31 + 40);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v59);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v30;
  v41[5] = v57;
  v41[6] = v29;
  v41[7] = v37;
  v41[8] = v36;
  v41[9] = v33;
  v41[10] = v35;
  outlined init with copy of TaskPriority?(v55, v61);
  LODWORD(v37) = __swift_getEnumTagSinglePayload(v61, 1, v59);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v42 = v30;

  v43 = v0[40];
  if (v37 == 1)
  {
    outlined destroy of TapInteractionHandler?(v0[40], &_sScPSgMd, &_sScPSgMR);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v59 - 8) + 8))(v43, v59);
    if (v41[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v44 = dispatch thunk of Actor.unownedExecutor.getter();
      v45 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  v47 = v0[33];
  v48 = *v47;
  v49 = swift_allocObject();
  *(v49 + 16) = &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:);
  *(v49 + 24) = v41;
  v50 = (v45 | v44);
  if (v45 | v44)
  {
    v50 = v0 + 22;
    v0[22] = 0;
    v0[23] = 0;
    v0[24] = v44;
    v0[25] = v45;
  }

  v51 = v0[41];
  v0[29] = 1;
  v0[30] = v50;
  v0[31] = v48;
  swift_task_create();

  outlined destroy of TapInteractionHandler?(v51, &_sScPSgMd, &_sScPSgMR);

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v0[44] = *v47;
  TaskGroup.makeAsyncIterator()();
  v52 = swift_task_alloc();
  v0[45] = v52;
  *v52 = v0;
  v53 = OUTLINED_FUNCTION_9_101(v52);

  return MEMORY[0x1EEE6D8A8](v53);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 368);
  if (v1 == 2)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_14_40();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      OUTLINED_FUNCTION_27();
    }

    v10 = 0;
LABEL_13:
    **(v0 + 256) = v10;

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  if (v1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_14_40();
      _os_log_impl(v15, v16, v17, v18, v14, 2u);
      OUTLINED_FUNCTION_27();
    }

    v19 = *(v0 + 352);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 296);

    MEMORY[0x1BFB20ED0](v19, MEMORY[0x1E69E6370]);
    (*(v21 + 8))(v20, v22);
    v10 = 1;
    goto LABEL_13;
  }

  v32 = swift_task_alloc();
  *(v0 + 360) = v32;
  *v32 = v0;
  OUTLINED_FUNCTION_9_101(v32);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6D8A8](v33);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_25_52();
  v0[24] = MEMORY[0x1BFB209B0](v0[20], v0[21]);
  OUTLINED_FUNCTION_39_26();
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v3 = OUTLINED_FUNCTION_22_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
  OUTLINED_FUNCTION_4_148(v4);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_16_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_10_88();
  [v6 v7];

  return MEMORY[0x1EEE6DEC8](v1);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_88();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  **(v0 + 144) = *(v0 + 208);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v10;
  v8[25] = v11;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_25_52();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v0[26] = MEMORY[0x1BFB209B0](v0[20], v0[21]);
  v0[27] = MEMORY[0x1BFB209B0](v4, v3);
  v0[28] = MEMORY[0x1BFB209B0](v2, v1);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v5 = OUTLINED_FUNCTION_22_50();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
  OUTLINED_FUNCTION_4_148(v6);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_16_70();
  v0[13] = v7;
  v0[14] = v5;
  v8 = OUTLINED_FUNCTION_10_88();
  [v8 v9];
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6DEC8](v10);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_88();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  **(v0 + 144) = *(v0 + 232);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:);

  return CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)();
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v11 = v10;

  if (v7)
  {
    v12 = *(v4 + 32);
    v12[2](v12, v2 & 1);
    _Block_release(v12);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:), 0, 0);
}

uint64_t CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_25_52();
  isa = v0[20].super.isa;
  v2 = v0[19].super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_109();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  *(v3 + 32) = v2;
  *(v3 + 40) = isa;

  v0[24].super.isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_39_26();
  v0[25].super.isa = v4;
  v0[2].super.isa = v0;
  v0[7].super.isa = &v0[18];
  v5 = OUTLINED_FUNCTION_22_50();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGSgs5NeverOGMd, &_sSccySDySSSo8NSNumberCGSgs5NeverOGMR);
  OUTLINED_FUNCTION_4_148(v6);
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> () with result type [String : NSNumber]?;
  v0[13].super.isa = &block_descriptor_63_1;
  v0[14].super.isa = v5;
  v7 = OUTLINED_FUNCTION_10_88();
  [v7 v8];
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6DEC8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_88();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 144);
  if (v1)
  {
    OUTLINED_FUNCTION_23_55();
    v4 = v3 & v2;
    v6 = (63 - v5) >> 6;

    v7 = 0;
    while (v4)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      if ([*(*(v1 + 56) + ((v8 << 9) | (8 * v9))) integerValue] == 1)
      {
        v10 = 1;
LABEL_12:

        goto LABEL_14;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        v10 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_14:
    v11 = *(v0 + 192);

    v12 = *(v0 + 8);

    v12(v10);
  }
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:);

  return CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)(v6, v8, v9, v11);
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x1EEE6DFA0](CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:), 0, 0);
}

uint64_t CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)()
{
  OUTLINED_FUNCTION_48();
  v0[34] = MEMORY[0x1BFB209B0](v0[27], v0[28]);
  OUTLINED_FUNCTION_39_26();
  v0[35] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v2 = OUTLINED_FUNCTION_22_50();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[21] = &block_descriptor_52_0;
  v0[22] = v2;
  v3 = OUTLINED_FUNCTION_10_88();
  [v3 v4];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_88();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_88();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v13 = *(v12 + 272);
  v14 = *(v12 + 208);

  if (v14 == 1)
  {
    v16 = *(v12 + 216);
    v15 = *(v12 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_109();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BC4BA940;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;

    *(v12 + 288) = Array._bridgeToObjectiveC()();

    OUTLINED_FUNCTION_39_26();
    *(v12 + 296) = v18;
    *(v12 + 80) = v12;
    *(v12 + 120) = v12 + 208;
    *(v12 + 88) = CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:);
    v19 = swift_continuation_init();
    *(v12 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSaySo11IDSEndpointCGGSgs5NeverOGMd, &_sSccySDySSSaySo11IDSEndpointCGGSgs5NeverOGMR);
    *(v12 + 144) = MEMORY[0x1E69E9820];
    *(v12 + 152) = 1107296256;
    *(v12 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> () with result type [String : [IDSEndpoint]]?;
    *(v12 + 168) = &block_descriptor_55_0;
    *(v12 + 176) = v19;
    v20 = OUTLINED_FUNCTION_10_88();
    [v20 v21];
    OUTLINED_FUNCTION_17_3();

    return MEMORY[0x1EEE6DEC8](v22);
  }

  else
  {
    OUTLINED_FUNCTION_27_52();
    OUTLINED_FUNCTION_17_3();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

void CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)()
{
  v1 = v0 + 208;
  v2 = *(v0 + 208);
  v3 = *(v1 + 80);

  if (v2)
  {
    v4 = v2 + 64;
    OUTLINED_FUNCTION_23_55();
    v7 = v6 & v5;
    v9 = (63 - v8) >> 6;

    v10 = 0;
    v25 = v9;
    v26 = v2 + 64;
    v27 = v2;
    if (!v7)
    {
      goto LABEL_4;
    }

    while (2)
    {
      v11 = v10;
LABEL_7:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(*(v2 + 56) + 8 * (v12 | (v11 << 6)));
      v14 = specialized Array.count.getter();

      for (i = 0; v14 != i; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB22010](i, v13);
        }

        else
        {
          if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v19 = v28[31];
        v18 = v28[32];
        v20 = [v16 capabilities];
        v21 = MEMORY[0x1BFB209B0](v19, v18);
        v22 = [v20 valueForCapability_];

        if (v22)
        {

          v23 = 1;
          goto LABEL_21;
        }
      }

      v10 = v11;
      v4 = v26;
      v2 = v27;
      v9 = v25;
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    v23 = 0;
LABEL_21:
    v24 = v28[1];

    v24(v23);
  }
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v5[4] = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v5[5] = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v5[6] = v14;
  a5;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:);

  return CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)(v7, v9, v10, v12, v13, v15);
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_13();

  return v8();
}

uint64_t CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:), 0, 0);
}

uint64_t CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)()
{
  OUTLINED_FUNCTION_23_1();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *(v4 + 4) = OUTLINED_FUNCTION_38_38(4.8149e-34, v32, v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_14_40();
    _os_log_impl(v10, v11, v12, v13, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_24_54(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = swift_task_alloc();
  *(v0 + 64) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGSgMd, &_sSDySSSo8NSNumberCGSgMR);
  *v24 = v0;
  v24[1] = CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DDE0](v25, v26, v27, 0xD00000000000001ELL, v28, v29, v2, v30);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSo8NSNumberCGSgs5NeverOGMd, &_sScCySDySSSo8NSNumberCGSgs5NeverOGMR);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v29 = [a2 queryController];
  specialized _arrayForceCast<A, B>(_:)(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = MEMORY[0x1BFB209B0](a4, a5);
  v15 = [a2 preferredFromID];
  v16 = [objc_opt_self() mainBundle];
  v17 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v16);
  if (!v18)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = MEMORY[0x1BFB209B0](v17);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v20 = static OS_dispatch_queue.main.getter();
  (*(v11 + 16))(v14, a1, v10);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  (*(v11 + 32))(v22 + v21, v14, v10);
  aBlock[4] = partial apply for closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_44_3;
  v23 = _Block_copy(aBlock);

  v24 = isa;
  v25 = v27;
  [v29 requiredIDStatusForDestinations:isa service:v27 preferredFromID:v15 listenerID:v19 queue:v20 completionBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = @objc closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:);

  return CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)(v6, v7, v9);
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v9 = v8;

  if (v2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = OUTLINED_FUNCTION_28_51();
  v12(v11);

  _Block_release(v4);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:), 0, 0);
}

uint64_t CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)()
{
  OUTLINED_FUNCTION_23_1();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *(v4 + 4) = OUTLINED_FUNCTION_38_38(4.8149e-34, v32, v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_14_40();
    _os_log_impl(v10, v11, v12, v13, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_24_54(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = swift_task_alloc();
  *(v0 + 64) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySo11IDSEndpointCGGSgMd, &_sSDySSSaySo11IDSEndpointCGGSgMR);
  *v24 = v0;
  v24[1] = CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DDE0](v25, v26, v27, 0xD000000000000022, v28, v29, v2, v30);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSaySo11IDSEndpointCGGSgs5NeverOGMd, &_sScCySDySSSaySo11IDSEndpointCGGSgs5NeverOGMR);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v29 = [a2 queryController];
  specialized _arrayForceCast<A, B>(_:)(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = MEMORY[0x1BFB209B0](a4, a5);
  v15 = [a2 preferredFromID];
  v16 = [objc_opt_self() mainBundle];
  v17 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v16);
  if (!v18)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = MEMORY[0x1BFB209B0](v17);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v20 = static OS_dispatch_queue.main.getter();
  (*(v11 + 16))(v14, a1, v10);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  (*(v11 + 32))(v22 + v21, v14, v10);
  aBlock[4] = partial apply for closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_110;
  v23 = _Block_copy(aBlock);

  v24 = isa;
  v25 = v27;
  [v29 currentRemoteDevicesForDestinations:isa service:v27 preferredFromID:v15 listenerID:v19 queue:v20 completionBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationKit);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = a6;
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);
    *(v18 + 12) = 2080;
    if (a1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v26);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1BBC58000, v16, v17, a5, v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    a6 = v25;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_10:
      v22 = 0;
      goto LABEL_11;
    }
  }

  v22 = a6(a1);
LABEL_11:
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t @objc CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_109();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a7, v12);
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = @objc closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:);

  return CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)(v6, v7, v9);
}

uint64_t @objc closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v9 = v8;

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11IDSEndpointCGMd, &_sSaySo11IDSEndpointCGMR);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = OUTLINED_FUNCTION_28_51();
  v12(v11);

  _Block_release(v4);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of TaskPriority?(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of TapInteractionHandler?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      outlined destroy of TapInteractionHandler?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TapInteractionHandler?(a3, &_sScPSgMd, &_sScPSgMR);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

_OWORD *specialized _NativeDictionary._unsafeInsertNew(key:value:)(_OWORD *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v4 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 64 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  result = outlined init with take of Any(a1, (*(a2 + 56) + 32 * v4));
  ++*(a2 + 16);
  return result;
}

uint64_t partial apply for closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_13_5();

  return closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(v6, v7, v1, v2);
}

uint64_t partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.currentRemoteDevices(for:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_34_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_168(v1);
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_34_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_168(v1);
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA()
{
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_205_0();

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.requiredIDStatus(for:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_34_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_168(v1);
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:)()
{
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_205_0();

  return v3();
}

uint64_t objectdestroy_5Tm_3()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForService(_:service:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_34_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_168(v1);
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(v1, v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_205_0();
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_205_0();

  return closure #1 in closure #1 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(v8, v9, v10, v11, v1, v2, v3, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)()
{
  OUTLINED_FUNCTION_23_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_205_0();
  OUTLINED_FUNCTION_17_3();

  return closure #1 in closure #2 in closure #1 in closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

void TUStringShareItem.activityViewControllerPlaceholderItem(_:)(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

id @objc TUStringShareItem.activityViewControllerPlaceholderItem(_:)()
{
  TUStringShareItem.activityViewControllerPlaceholderItem(_:)(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v2);

  return v0;
}

double TUStringShareItem.activityViewController(_:itemForActivityType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_7:
      v10 = [v2 message];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(a2 + 24) = MEMORY[0x1E69E6158];
      *a2 = v11;
      *(a2 + 8) = v13;
      return result;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id @objc TUStringShareItem.activityViewController(_:itemForActivityType:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  TUStringShareItem.activityViewController(_:itemForActivityType:)(a4, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

LPLinkMetadata_optional __swiftcall TUStringShareItem.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  v1 = 0;
  result.value.super.isa = v1;
  return result;
}

uint64_t LinkDetailParticipantCollectionViewCell.style.setter(uint64_t a1)
{
  v10 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  *(v4 + 32) = v10;
  *(v4 + 48) = v3;
  outlined consume of LinkDetailParticipantCollectionViewCell.Style(v5, v6, v7);
  return LinkDetailParticipantCollectionViewCell.applyStyle()();
}

uint64_t LinkDetailParticipantCollectionViewCell.Style.title.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    v2 = [objc_opt_self() conversationKit];
    v8._object = 0xE000000000000000;
    v3._countAndFlagsBits = 0x454D495445434146;
    v3._object = 0xEE004C4542414C5FLL;
    v4.value._countAndFlagsBits = 0x61737265766E6F43;
    v4.value._object = 0xEF74694B6E6F6974;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v8)._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = *(v0 + 8);
  }

  return countAndFlagsBits;
}

double LinkDetailParticipantCollectionViewCell.style.getter@<D0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return outlined copy of LinkDetailParticipantCollectionViewCell.Style(v4, v5, v6);
}

double key path getter for LinkDetailParticipantCollectionViewCell.style : LinkDetailParticipantCollectionViewCell@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return outlined copy of LinkDetailParticipantCollectionViewCell.Style(v4, v5, v6);
}

uint64_t key path setter for LinkDetailParticipantCollectionViewCell.style : LinkDetailParticipantCollectionViewCell(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  outlined copy of LinkDetailParticipantCollectionViewCell.Style(v8[0], v1, v2);
  return LinkDetailParticipantCollectionViewCell.style.setter(v8);
}

uint64_t LinkDetailParticipantCollectionViewCell.applyStyle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for UICellAccessory();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - v7;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB21750](v10);
  v13 = v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = [objc_opt_self() conversationKit];
      v37._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0x454D495445434146;
      v16._object = 0xEE004C4542414C5FLL;
      v17.value._countAndFlagsBits = 0x61737265766E6F43;
      v17.value._object = 0xEF74694B6E6F6974;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v37._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v37);
    }

    else
    {
    }
  }

  UIListContentConfiguration.text.setter();
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  v20 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v20(v36, 0);
  UIListContentConfiguration.directionalLayoutMargins.setter();
  v36[3] = v8;
  v36[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
  v22 = MEMORY[0x1BFB216E0](v36);
  v36[0] = MEMORY[0x1E69E7CC0];
  v23 = LinkDetailParticipantCollectionViewCell.styleAccessories.getter(v22);
  specialized Array.append<A>(contentsOf:)(v23);
  LinkDetailParticipantCollectionViewCell.avatarAccessory()(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of TapInteractionHandler?(v3, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  }

  else
  {
    v24 = v35;
    v25 = v33;
    v32 = *(v35 + 32);
    v32(v33, v3, v4);
    (*(v24 + 16))(v34, v25, v4);
    v26 = v36[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v26 = v30;
    }

    v27 = *(v26 + 16);
    if (v27 >= *(v26 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v26 = v31;
    }

    v28 = v35 + 8;
    (*(v35 + 8))(v33, v4);
    *(v26 + 16) = v27 + 1;
    v32((v26 + ((*(v28 + 72) + 32) & ~*(v28 + 72)) + *(v28 + 64) * v27), v34, v4);
    v36[0] = v26;
  }

  UICollectionViewListCell.accessories.setter();
  return (*(v9 + 8))(v12, v8);
}

uint64_t (*LinkDetailParticipantCollectionViewCell.style.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return LinkDetailParticipantCollectionViewCell.style.modify;
}

uint64_t LinkDetailParticipantCollectionViewCell.style.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LinkDetailParticipantCollectionViewCell.applyStyle()();
  }

  return result;
}

void *LinkDetailParticipantCollectionViewCell.avatarController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void LinkDetailParticipantCollectionViewCell.avatarController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LinkDetailParticipantCollectionViewCell.joinButton.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void LinkDetailParticipantCollectionViewCell.joinButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LinkDetailParticipantCollectionViewCell.joinButtonExceedsMaxWidth.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonExceedsMaxWidth;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonExceedsMaxWidth);
  if (v2 == 2)
  {
    swift_getObjectType();
    LOBYTE(v2) = closure #1 in LinkDetailParticipantCollectionViewCell.joinButtonExceedsMaxWidth.getter(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

BOOL closure #1 in LinkDetailParticipantCollectionViewCell.joinButtonExceedsMaxWidth.getter(uint64_t a1)
{
  v2 = [objc_opt_self() conversationKit];
  v16._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC51B000;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v16);

  v7 = MEMORY[0x1BFB209B0](v6._countAndFlagsBits, v6._object);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = *(a1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButtonFont);
  *(inited + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  *(inited + 40) = v10;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v11 = v9;
  v12 = v10;
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = outlined bridged method (mbnn) of @objc NSString.size(withAttributes:)(v13, v7);

  return v14 > 80.0;
}

uint64_t LinkDetailParticipantCollectionViewCell.joinButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonConfiguration;
  swift_beginAccess();
  outlined init with copy of UIButton.Configuration?(v1 + v9, v8);
  v10 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of TapInteractionHandler?(v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  closure #1 in LinkDetailParticipantCollectionViewCell.joinButtonConfiguration.getter(v1);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of UIButton.Configuration?(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t closure #1 in LinkDetailParticipantCollectionViewCell.joinButtonConfiguration.getter(uint64_t a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  static UIButton.Configuration.filled()();
  if (LinkDetailParticipantCollectionViewCell.joinButtonExceedsMaxWidth.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    @nonobjc UIImage.__allocating_init(systemName:)(0x69662E6F65646976, 0xEA00000000006C6CLL);
    UIButton.Configuration.image.setter();
    v10 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }

  else
  {
    v11 = [objc_opt_self() conversationKit];
    v26._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._object = 0x80000001BC51B000;
    v13._countAndFlagsBits = 0xD000000000000012;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v26);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v15 = type metadata accessor for AttributedString();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    UIButton.Configuration.attributedTitle.setter();
    v16 = UIButton.Configuration.attributedTitle.modify();
    if (!__swift_getEnumTagSinglePayload(v17, 1, v15))
    {
      v24 = *(a1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButtonFont);
      v18 = v24;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      v19 = v18;
      AttributedString.subscript.setter();
    }

    v16(v25, 0);
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v2);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  if (one-time initialization token for systemGreenWithUserInterfaceStyleLight != -1)
  {
    swift_once();
  }

  v20 = static UIColor.systemGreenWithUserInterfaceStyleLight;
  v21 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  return v21(v25, 0);
}

id LinkDetailParticipantCollectionViewCell.imageView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___imageView);
  }

  else
  {
    v4 = closure #1 in LinkDetailParticipantCollectionViewCell.imageView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in LinkDetailParticipantCollectionViewCell.imageView.getter()
{
  v0 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v1 = v0;
  v2 = @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v4 = [objc_opt_self() labelColor];
  [v3 setTintColor_];

  return v3;
}

uint64_t LinkDetailParticipantCollectionViewCell.styleAccessories.getter(double a1)
{
  v2 = type metadata accessor for UICellAccessory.DisplayedState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v14 == 1)
  {
    v15 = LinkDetailParticipantCollectionViewCell.joinButtonExceedsMaxWidth.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    v16 = *(type metadata accessor for UICellAccessory() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    if (v15)
    {
      *(v19 + 16) = xmmword_1BC4BA940;
      v20 = v19 + v18;
    }

    else
    {
      *(v19 + 16) = xmmword_1BC4BAA20;
      LinkDetailParticipantCollectionViewCell.imageAccessory()(v19 + v18);
      v20 = v19 + v18 + v17;
    }

    LinkDetailParticipantCollectionViewCell.joinAccessory()(v20);
  }

  else
  {
    v21 = type metadata accessor for UICellAccessory.LayoutDimension();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v21);
    v22 = [objc_opt_self() secondaryLabelColor];
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    type metadata accessor for UICellAccessory();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BA940;
    (*(v3 + 104))(v5, *MEMORY[0x1E69DBF28], v2);
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
  }

  return v19;
}

uint64_t LinkDetailParticipantCollectionViewCell.joinAccessory()@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v25 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
  swift_beginAccess();
  v15 = *(v1 + v14);
  LinkDetailParticipantCollectionViewCell.joinButtonConfiguration.getter(v13);
  v16 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  UIButton.configuration.setter();

  v17 = *(v1 + v14);
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v19 = *MEMORY[0x1E69DBF28];
  v20 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  *v18 = OUTLINED_FUNCTION_14_0;
  v18[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v25);
  v21 = *MEMORY[0x1E69DBF30];
  v22 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v22 - 8) + 104))(v4, v21, v22);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v22);
  v23 = v17;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v8 + 8))(v10, v26);
}

uint64_t LinkDetailParticipantCollectionViewCell.imageAccessory()@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LinkDetailParticipantCollectionViewCell.imageView.getter();
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v13 = *MEMORY[0x1E69DBF28];
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = specialized Array._getCount();
  v12[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF58], v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

id LinkDetailParticipantCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id LinkDetailParticipantCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
  *(v0 + v3) = [objc_opt_self() buttonWithType_];
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButtonFont) = result;
    *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonExceedsMaxWidth) = 2;
    v5 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonConfiguration;
    v6 = type metadata accessor for UIButton.Configuration();
    __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
    *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___imageView) = 0;
    v7 = OUTLINED_FUNCTION_18_1();
    return objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id LinkDetailParticipantCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LinkDetailParticipantCollectionViewCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
  *(v0 + v2) = [objc_opt_self() buttonWithType_];
  v3 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButtonFont) = v3;
  *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonExceedsMaxWidth) = 2;
  v4 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___joinButtonConfiguration;
  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell____lazy_storage___imageView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LinkDetailParticipantCollectionViewCell.prepareForReuse()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LinkDetailParticipantCollectionViewCell.style.setter(v3);
  v1 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  UICollectionViewListCell.accessories.setter();
}

id LinkDetailParticipantCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LinkDetailParticipantCollectionViewCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkDetailParticipantCollectionViewCell;
  if (!type metadata singleton initialization cache for LinkDetailParticipantCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LinkDetailParticipantCollectionViewCell(uint64_t a1)
{
  type metadata accessor for UIButton.Configuration?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit39LinkDetailParticipantCollectionViewCellC5StyleO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LinkDetailParticipantCollectionViewCell.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkDetailParticipantCollectionViewCell.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for LinkDetailParticipantCollectionViewCell.Style(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t LinkDetailParticipantCollectionViewCell.avatarAccessory()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for UICellAccessory.Placement();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_style;
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (v14 >= 2 && (v50 = v6, v51 = v9, v56 = v5, v16 = *v13, v15 = *(v13 + 8), v52 = v10, v53 = v15, v17 = *(v13 + 32), v18 = *(v13 + 40), v19 = *(v13 + 48), v54 = *(v13 + 24), v55 = v18, v20 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController, swift_beginAccess(), (v21 = *(v1 + v20)) != 0))
  {
    v49 = a1;
    v22 = v16;

    v23 = [v21 view];
    if (v23)
    {
      v46 = v23;
      v47 = v17;
      v48 = v19;
      v24 = v22;
      v25 = v16;
      if (!v16)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
      }

      v26 = *(v1 + v20);
      v27 = v51;
      v28 = v56;
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1BC4BAC30;
        *(v29 + 32) = v24;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
        v30 = v27;
        v31 = v25;
        v32 = v22;
        v33 = v26;
        v34 = v24;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v33 setContacts_];

        v25 = v31;
        v27 = v30;
        v28 = v56;
      }

      else
      {
        v37 = v22;
      }

      v38 = v46;
      [v46 setFrame_];
      v39 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
      v40 = *MEMORY[0x1E69DBF28];
      v41 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v41 - 8) + 104))(v8, v40, v41);
      *v39 = specialized Array._getCount();
      v39[1] = 0;
      (*(v57 + 104))(v8, *MEMORY[0x1E69DBF58], v50);
      v42 = type metadata accessor for UICellAccessory.LayoutDimension();
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v42);
      v43 = v38;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      a1 = v49;
      static UICellAccessory.customView(configuration:)();
      outlined consume of LinkDetailParticipantCollectionViewCell.Style(v25, v53, v14);

      (*(v52 + 8))(v12, v27);
      v36 = 0;
    }

    else
    {
      outlined consume of LinkDetailParticipantCollectionViewCell.Style(v16, v53, v14);
      v36 = 1;
      a1 = v49;
    }
  }

  else
  {
    v36 = 1;
  }

  v44 = type metadata accessor for UICellAccessory();
  return __swift_storeEnumTagSinglePayload(a1, v36, 1, v44);
}

double outlined bridged method (mbnn) of @objc NSString.size(withAttributes:)(uint64_t a1, void *a2)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 sizeWithAttributes_];
  v5 = v4;

  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIAlertController.show()()
{
  UIAlertController.keyWindowScene.getter();
  v2 = v1;
  v3 = [v1 keyWindow];

  if (v3)
  {
LABEL_4:
    v5 = [v3 rootViewController];
    if (v5)
    {
      v6 = v5;
      [v5 presentViewController:v0 animated:1 completion:0];
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.conversationKit);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BBC58000, v8, v9, "SERIOUS ERROR: Failed to find a viewcontroller to preset UIAlertController", v10, 2u);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
      }

      lazy protocol witness table accessor for type UIAlertController.FailedToFindVCError and conformance UIAlertController.FailedToFindVCError();
      swift_allocError();
      *v11 = 0xD00000000000002CLL;
      v11[1] = 0x80000001BC51B050;
      swift_willThrow();
    }

    return;
  }

  v4 = UIAlertController.topLevelWindow.getter();
  if (v4)
  {
    v3 = v4;
    goto LABEL_4;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationKit);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBC58000, v13, v14, "SERIOUS ERROR: Failed to find top window to preset UIAlertController", v15, 2u);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  lazy protocol witness table accessor for type UIAlertController.FailedToFindWindowError and conformance UIAlertController.FailedToFindWindowError();
  swift_allocError();
  *v16 = 0xD000000000000023;
  v16[1] = 0x80000001BC51B020;
  swift_willThrow();
}

uint64_t UIAlertController.alertWindow.getter()
{
  v0 = static UIAlertController.alertWindow;
  v1 = static UIAlertController.alertWindow;
  return v0;
}

void key path setter for UIAlertController.alertWindow : UIAlertController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UIAlertController.alertWindow.setter(v1);
}

void UIAlertController.alertWindow.setter(uint64_t a1)
{
  v1 = static UIAlertController.alertWindow;
  static UIAlertController.alertWindow = a1;
}

void (*UIAlertController.alertWindow.modify(void *a1))(uint64_t *a1)
{
  v1 = static UIAlertController.alertWindow;
  *a1 = static UIAlertController.alertWindow;
  v2 = v1;
  return UIAlertController.alertWindow.modify;
}

void UIAlertController.alertWindow.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = static UIAlertController.alertWindow;
  static UIAlertController.alertWindow = v1;
}

void UIAlertController.keyWindowScene.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = UIApplication.connectedWindowScenes.getter();

  v2 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
LABEL_11:

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v4 _isKeyWindowScene])
    {
      type metadata accessor for ActivityScene();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id UIAlertController.topLevelWindow.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  UIApplication.connectedAppWindows.getter();

  v6 = specialized Array._copyToContiguousArray()(v1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(&v6);

  v2 = v6;
  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB22010](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
  }

  else
  {

    return 0;
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type UIAlertController.FailedToFindWindowError and conformance UIAlertController.FailedToFindWindowError()
{
  result = lazy protocol witness table cache variable for type UIAlertController.FailedToFindWindowError and conformance UIAlertController.FailedToFindWindowError;
  if (!lazy protocol witness table cache variable for type UIAlertController.FailedToFindWindowError and conformance UIAlertController.FailedToFindWindowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIAlertController.FailedToFindWindowError and conformance UIAlertController.FailedToFindWindowError);
  }

  return result;
}

uint64_t UIApplication.connectedWindowScenes.getter()
{
  v1 = [v0 connectedScenes];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v2);
  v4 = v3;

  return v4;
}

void UIApplication.connectedAppWindows.getter()
{
  v0 = UIApplication.connectedWindowScenes.getter();
  v40[0] = MEMORY[0x1E69E7CC0];
  v1 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {

      v5 = v40[0];
      v6 = specialized Array.count.getter();
      v7 = 0;
      v35 = v40[0] + 32;
      v36 = v40[0] & 0xC000000000000001;
      v39 = MEMORY[0x1E69E7CC0];
      v32 = v6;
      v33 = v40[0];
      while (1)
      {
        if (v7 == v6)
        {

          return;
        }

        v8 = v39;
        if (v36)
        {
          v9 = MEMORY[0x1BFB22010](v7, v5);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_53;
          }

          v9 = *(v35 + 8 * v7);
        }

        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
          goto LABEL_52;
        }

        v11 = v9;
        v12 = [v11 windows];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow, 0x1E69DD2E8);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = __CocoaSet.count.getter();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v39 >> 62;
        if (v39 >> 62)
        {
          v16 = __CocoaSet.count.getter();
        }

        else
        {
          v16 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v14;
        v10 = __OFADD__(v16, v14);
        v17 = v16 + v14;
        if (v10)
        {
          goto LABEL_54;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v15)
        {
          goto LABEL_28;
        }

        v18 = v39 & 0xFFFFFFFFFFFFFF8;
        if (v17 > *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }

LABEL_30:
        v39 = v8;
        v19 = *(v18 + 16);
        v20 = (*(v18 + 24) >> 1) - v19;
        v21 = v18 + 8 * v19;
        v37 = v18;
        if (v13 >> 62)
        {
          v23 = __CocoaSet.count.getter();
          if (!v23)
          {
            goto LABEL_44;
          }

          v24 = v23;
          v25 = __CocoaSet.count.getter();
          if (v20 < v25)
          {
            goto LABEL_58;
          }

          if (v24 < 1)
          {
            goto LABEL_59;
          }

          v34 = v25;
          lazy protocol witness table accessor for type [UIWindow] and conformance [A]();
          for (j = 0; j != v24; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8UIWindowCGMd, &_sSaySo8UIWindowCGMR);
            v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v40, j, v13);
            v29 = *v28;
            v27(v40, 0);
            *(v21 + 32 + 8 * j) = v29;
          }

          v6 = v32;
          v5 = v33;
          v22 = v34;
LABEL_40:

          if (v22 < v38)
          {
            goto LABEL_55;
          }

          if (v22 > 0)
          {
            v30 = *(v37 + 16);
            v10 = __OFADD__(v30, v22);
            v31 = v30 + v22;
            if (v10)
            {
              goto LABEL_56;
            }

            *(v37 + 16) = v31;
          }
        }

        else
        {
          v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            if (v20 < v22)
            {
              goto LABEL_57;
            }

            swift_arrayInitWithCopy();
            goto LABEL_40;
          }

LABEL_44:

          if (v38 > 0)
          {
            goto LABEL_55;
          }
        }
      }

      if (v15)
      {
LABEL_28:
        __CocoaSet.count.getter();
      }

LABEL_29:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v8 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB22010](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

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
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UIAlertController.FailedToFindVCError and conformance UIAlertController.FailedToFindVCError()
{
  result = lazy protocol witness table cache variable for type UIAlertController.FailedToFindVCError and conformance UIAlertController.FailedToFindVCError;
  if (!lazy protocol witness table cache variable for type UIAlertController.FailedToFindVCError and conformance UIAlertController.FailedToFindVCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIAlertController.FailedToFindVCError and conformance UIAlertController.FailedToFindVCError);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 windowLevel];
      [v15 windowLevel];
      type metadata accessor for UIWindowLevel(0);
      lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
      LOBYTE(v13) = dispatch thunk of static Comparable.< infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v30 = v4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v20 = v7;
    v21 = v18;
    v22 = *v18;
    v23 = *(v10 - 1);
    v24 = v22;
    [v23 windowLevel];
    [v24 windowLevel];
    type metadata accessor for UIWindowLevel(0);
    lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
    LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();

    v25 = v5 + 1;
    if (v22)
    {
      v17 = v25 == v6;
      v26 = v21;
      v6 = v21;
      v7 = v20;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_15;
    }

    if (v10 != v25)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v18 = v21;
    v7 = v20;
    v4 = v30;
  }

LABEL_28:
  v27 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, 8 * v27);
  }

  return 1;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

unint64_t lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel()
{
  result = lazy protocol witness table cache variable for type UIWindowLevel and conformance UIWindowLevel;
  if (!lazy protocol witness table cache variable for type UIWindowLevel and conformance UIWindowLevel)
  {
    type metadata accessor for UIWindowLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindowLevel and conformance UIWindowLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UIWindow] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIWindow] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIWindow] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8UIWindowCGMd, &_sSaySo8UIWindowCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIWindow] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

id InCallControlsSectionHeaderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsSectionHeaderView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit31InCallControlsSectionHeaderView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v34 = type metadata accessor for InCallControlsSectionHeaderView();
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v34);
  v6 = OBJC_IVAR____TtC15ConversationKit31InCallControlsSectionHeaderView_titleLabel;
  v7 = *&v5[OBJC_IVAR____TtC15ConversationKit31InCallControlsSectionHeaderView_titleLabel];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DDD28];
  v10 = v5;
  v11 = v7;
  v12 = [v8 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [v11 setFont_];
  v14 = one-time initialization token for collectionViewSectionHeaderTitleLabel;
  v15 = *&v5[v6];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setTextColor_];

  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v5[v6];
  v17 = v10;
  [v17 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA7F0;
  v20 = [*&v5[v6] leadingAnchor];
  v21 = [v17 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v19 + 32) = v22;
  v23 = [*&v5[v6] trailingAnchor];
  v24 = [v17 trailingAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:-16.0];
  *(v19 + 40) = v25;
  v26 = [*&v5[v6] topAnchor];
  v27 = [v17 topAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];
  *(v19 + 48) = v28;
  v29 = [*&v5[v6] bottomAnchor];
  v30 = [v17 bottomAnchor];

  v31 = [v29 constraintEqualToAnchor:v30 constant:-4.0];
  *(v19 + 56) = v31;
  type metadata accessor for NSLayoutConstraint();
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints_];

  return v17;
}

id InCallControlsSectionHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsSectionHeaderView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31InCallControlsSectionHeaderView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InCallControlsSectionHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsSectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double RosterVisibilityMonitor.sortedParticipantIDs.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double RosterVisibilityMonitor.participantVisibilityByID.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t RosterVisibilityMonitor.visibleParticipantRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

void RosterVisibilityMonitor.rosterVisibilityIndices.getter()
{
  OUTLINED_FUNCTION_3_162();
  partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
  OUTLINED_FUNCTION_3_162();
  v1 = MEMORY[0x1BFB20DB0]();

  if (v1 < 1)
  {
    return;
  }

  v2 = RosterVisibilityMonitor.participantVisibilityByID.getter();
  v3 = MEMORY[0x1BFB207D0](v2);

  if (v3 < 1)
  {
LABEL_13:
    v19 = partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
    v20 = MEMORY[0x1BFB20DB0](v19);

    if (v20 >= 1)
    {

      _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SNySiGTt0g5(1, v20);
      return;
    }

    goto LABEL_31;
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = __OFADD__(v7, 1);
  v8 = v7 + 1;
  if (v6)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8 < 1)
  {
    goto LABEL_13;
  }

  v9 = partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
  v10 = MEMORY[0x1BFB20DB0](v9);

  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
  v16 = MEMORY[0x1BFB20DB0](v15);

  if (v14 < v10)
  {
    v17 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
      if (v11)
      {
        if (v11 < 1)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SNySiGTt0g5(1, v11);
        specialized Sequence.reversed()(v18);
      }

      v21 = *(v0 + 32);
      v22 = *(v0 + 40);
      v6 = __OFSUB__(v22, v21);
      v23 = v22 - v21;
      if (!v6)
      {
        if (!__OFADD__(v23, 1))
        {
          v24 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v23 + 1);
          if (v12 == v17)
          {
            v25 = MEMORY[0x1E69E7CC0];
LABEL_28:
            specialized Array.append<A>(contentsOf:)(v24);
            specialized Array.append<A>(contentsOf:)(v25);
            return;
          }

          v26 = v17 - v12;
          if (!__OFSUB__(v17, v12))
          {
            if (v26 >= 1)
            {
              v25 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SNySiGTt0g5(1, v26);
              goto LABEL_28;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }

        goto LABEL_36;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v16);
}

void specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v1 = v9;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

Swift::Void __swiftcall RosterVisibilityMonitor.onRosterParticipantsDidUpdate(_:)(Swift::OpaquePointer a1)
{
  partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
  v1 = static Array<A>.== infix(_:_:)();

  if ((v1 & 1) == 0)
  {
    partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
    MEMORY[0x1EEE9AC00](v2);
    type metadata accessor for Array();
    OUTLINED_FUNCTION_2_17();
    swift_getWitnessTable();
    Sequence.forEach(_:)();

    RosterVisibilityMonitor.sortedParticipantIDs.setter(v3);
    RosterVisibilityMonitor.updateVisibleParticipantRange()();
  }
}

uint64_t closure #1 in RosterVisibilityMonitor.onRosterParticipantsDidUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Sequence<>.contains(_:)();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    return swift_endAccess();
  }

  return result;
}

void RosterVisibilityMonitor.onParticipant(_:didChangeVisibility:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_2_7();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v7[-v5], v4);
  v7[31] = a2;
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  RosterVisibilityMonitor.updateVisibleParticipantRange()();
}

void RosterVisibilityMonitor.updateVisibleParticipantRange()()
{
  v55 = *v0;
  v1 = *(v55 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v49 = &v47 - v3;
  OUTLINED_FUNCTION_2_7();
  v51 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_7();
  v57 = v11;
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v50 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v56 = v0;
  partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)();
  *&v59 = v21;
  v22 = type metadata accessor for Array();
  OUTLINED_FUNCTION_2_17();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB20C00](v63, v22, WitnessTable);

  v24 = *&v63[0];
  *&v59 = *&v63[0];
  v25 = type metadata accessor for EnumeratedSequence();
  v47 = v24;

  v53 = v25;
  EnumeratedSequence.makeIterator()();
  v54 = v22;
  type metadata accessor for EnumeratedSequence.Iterator();
  v57 += 4;
  v26 = (v51 + 32);
  v27 = (v51 + 8);
  while (1)
  {
    EnumeratedSequence.Iterator.next()();
    v28 = *v57;
    (*v57)(v20, v17, v58);
    if (__swift_getEnumTagSinglePayload(v20, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v51 = *v20;
    (*v26)(v9, &v20[*(TupleTypeMetadata2 + 48)], v1);
    v29 = v56;
    RosterVisibilityMonitor.participantVisibilityByID.getter();
    OUTLINED_FUNCTION_2_169();
    MEMORY[0x1BFB20800](v9, v29, v1, MEMORY[0x1E69E6370]);

    (*v27)(v9, v1);
    if (v59 != 2 && (v59 & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  v51 = 0;
LABEL_7:

  *&v63[0] = v47;
  v61 = swift_getWitnessTable();
  v30 = v53;
  v31 = swift_getWitnessTable();
  MEMORY[0x1BFB20870](&v59, v30, v31);
  v60 = v59;
  v47 = v59;
  v62 = v59;
  v32 = swift_getWitnessTable();
  EnumeratedSequence<>.startIndex.getter(v30, MEMORY[0x1E69E6628], v63);
  do
  {
    while (1)
    {
      EnumeratedSequence<>.startIndex.getter(v30, MEMORY[0x1E69E6600], &v59);
      if (static EnumeratedSequence<>.Index.== infix(_:_:)(v63, &v59, v54, v32))
      {
        v38 = 1;
        v37 = v50;
      }

      else
      {
        v59 = v63[0];
        EnumeratedSequence<>.index(before:)(&v59, v63);
        v33 = *(TupleTypeMetadata2 + 48);
        v34 = v30;
        v35 = v49;
        v36 = EnumeratedSequence<>.subscript.getter(&v49[v33], v63, v34, v32);
        v37 = v50;
        *v50 = v36;
        (*v26)((v37 + *(TupleTypeMetadata2 + 48)), &v35[v33], v1);
        v38 = 0;
      }

      __swift_storeEnumTagSinglePayload(v37, v38, 1, TupleTypeMetadata2);
      v39 = v52;
      v28(v52, v37, v58);
      if (__swift_getEnumTagSinglePayload(v39, 1, TupleTypeMetadata2) == 1)
      {

        v44 = 0;
        v45 = v51;
        goto LABEL_20;
      }

      v40 = *v39;
      v41 = v39 + *(TupleTypeMetadata2 + 48);
      v42 = v48;
      (*v26)(v48, v41, v1);
      v43 = v56;
      RosterVisibilityMonitor.participantVisibilityByID.getter();
      OUTLINED_FUNCTION_2_169();
      MEMORY[0x1BFB20800](v42, v43, v1, MEMORY[0x1E69E6370]);

      (*v27)(v42, v1);
      if (v59 != 2)
      {
        break;
      }

      v30 = v53;
    }

    v30 = v53;
  }

  while ((v59 & 1) == 0);

  v45 = v51;
  if (v40 <= v51)
  {
    v44 = v51;
  }

  else
  {
    v44 = v40;
  }

LABEL_20:
  v46 = v56;
  v56[4] = v45;
  v46[5] = v44;
}

uint64_t RosterVisibilityMonitor.deinit()
{

  return v0;
}

uint64_t RosterVisibilityMonitor.__deallocating_deinit()
{
  RosterVisibilityMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t RosterVisibilityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  RosterVisibilityMonitor.init()();
  return v0;
}

void *RosterVisibilityMonitor.init()()
{
  OUTLINED_FUNCTION_3_162();
  v0[2] = static Array._allocateUninitialized(_:)();
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_3_162();
  v1 = Dictionary.init(dictionaryLiteral:)();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  return v0;
}

uint64_t EnumeratedSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  a3(*(a1 + 16));
  result = type metadata accessor for EnumeratedSequence<>.Index();
  *(a4 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18 - v7;
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v9 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v10 = *(v6 + 8);
  result = v10(v8, AssociatedTypeWitness);
  if (v9)
  {
    dispatch thunk of Collection.endIndex.getter();
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = v10(v8, AssociatedTypeWitness);
    if (v12)
    {
      v13 = *(a2 + *(type metadata accessor for EnumeratedSequence<>.Index() + 36));
      v14 = dispatch thunk of Collection.subscript.read();
      v16 = v15;
      v17 = swift_getAssociatedTypeWitness();
      (*(*(v17 - 8) + 16))(v19, v16, v17);
      v14(v20, 0);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static EnumeratedSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t EnumeratedSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v17 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  dispatch thunk of BidirectionalCollection.index(before:)();
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v12)
  {
    result = dispatch thunk of Collection.count.getter();
  }

  else
  {
    result = *(a1 + *(type metadata accessor for EnumeratedSequence<>.Index() + 36));
  }

  v14 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v17;
    (*(v6 + 32))(v17, v11, AssociatedTypeWitness);
    result = type metadata accessor for EnumeratedSequence<>.Index();
    *(v15 + *(result + 36)) = v14;
  }

  return result;
}

uint64_t NameAndPhotoUtilities.pendingIncomingName(from:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  if (((*(*static Defaults.shared + 1000))() & 1) == 0)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_28_52();
    v5 = v4();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 value];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      NameAndPhotoUtilities.allContactHandlesFromHandle(_:)(v8, v10);
      v11 = NameAndPhotoUtilities.pendingIncomingIMNickname(from:)();

      if (v11)
      {

        v3 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v11);

        return v3;
      }

      if (one-time initialization token for nickname != -1)
      {
        OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
      }

      v18 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v18, &static Logger.nickname);

      v13 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (!OUTLINED_FUNCTION_24_55())
      {

        goto LABEL_18;
      }

      v14 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_23();
      v26 = v15;
      *v14 = 136315138;
      v19 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v26);
      OUTLINED_FUNCTION_27_3();
      *(v14 + 4) = v8;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v12 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v12, &static Logger.conversationControls);
      swift_unknownObjectRetain();
      v13 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (!OUTLINED_FUNCTION_24_55())
      {
        goto LABEL_18;
      }

      v14 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_23();
      v26 = v15;
      *v14 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v16 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);
      OUTLINED_FUNCTION_27_3();
      *(v14 + 4) = a2;
    }

    OUTLINED_FUNCTION_25_53();
    _os_log_impl(v21, v22, v23, v24, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
LABEL_18:

    return 0;
  }

  return 0x6861726F4D206F52;
}

void NameAndPhotoUtilities.sendName(using:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v30 = v29;
  ObjectType = swift_getObjectType();
  v32 = (*(v30 + 80))(ObjectType, v30);
  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = v32;
  v34 = [v32 value];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = OUTLINED_FUNCTION_208();
  v40 = NameAndPhotoUtilities.fromIDFromCall(_:)(v38, v39);
  if (v41)
  {
    v42 = v40;
    v43 = v41;
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v44, &static Logger.nickname);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      oslogb = v42;
      v47 = OUTLINED_FUNCTION_42();
      v48 = OUTLINED_FUNCTION_23();
      a12 = v48;
      *v47 = 136315138;
      v49 = v35;

      v50 = String.init<A>(reflecting:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &a12);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1BBC58000, v45, v46, "Sharing only name to handle id %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_27();
      v42 = oslogb;
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v49 = v35;
    }

    v57 = *(v28 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameProvider);
    if ([v57 respondsToSelector_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1BC4BA940;
      *(v58 + 32) = v49;
      *(v58 + 40) = v37;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v60 = MEMORY[0x1BFB209B0](v42, v43);

      [v57 sendNameOnlyToHandleIDs:isa fromHandleID:v60];
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v53 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v53, &static Logger.nickname);

  osloga = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v54))
  {
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_13_80();
    *v30 = 136315138;
    v55 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &a12);
    OUTLINED_FUNCTION_27_3();
    *(v30 + 4) = v25;
    OUTLINED_FUNCTION_23_56(&dword_1BBC58000, osloga, v54, "Cant share name and photo to handle id %s because of nil fromID");
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_18();

LABEL_15:
    OUTLINED_FUNCTION_62();
    return;
  }

  OUTLINED_FUNCTION_62();
}

void NameAndPhotoUtilities.acceptIncomingName(from:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v119 = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  OUTLINED_FUNCTION_28_52();
  v8 = v7();
  if (!v8)
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v52, &static Logger.nickname);
    swift_unknownObjectRetain();
    v111 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v111, v53))
    {
      v62 = v111;
LABEL_42:

      return;
    }

    OUTLINED_FUNCTION_42();
    v118 = OUTLINED_FUNCTION_13_80();
    *v3 = 136315138;
    v114 = a1;
    v115 = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v54 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v118);
    OUTLINED_FUNCTION_27_3();
    *(v3 + 4) = a2;
    OUTLINED_FUNCTION_23_56(&dword_1BBC58000, v111, v53, "Cannot accept incoming name because failed to find handle for activeCall %s");
    OUTLINED_FUNCTION_9_7();
    goto LABEL_26;
  }

  v9 = v8;
  v10 = [v8 value];

  v11 = v10;
  if (!v10)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = MEMORY[0x1BFB209B0](v12);
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = NameAndPhotoUtilities.allContactHandlesFromHandle(_:)(v13, v14);
  v17 = NameAndPhotoUtilities.pendingIncomingIMNickname(from:)();
  if (!v17)
  {

    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v56 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v56, &static Logger.nickname);

    v111 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v111, v57))
    {

LABEL_41:
      v62 = v111;
      goto LABEL_42;
    }

    v58 = OUTLINED_FUNCTION_42();
    v59 = OUTLINED_FUNCTION_23();
    v114 = v59;
    *v58 = 136315138;
    v118 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v60 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v114);
    OUTLINED_FUNCTION_17_19();
    *(v58 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v111, v57, "Cannot accept incoming name because couldnt find a pending IMNickname for handle %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_26();
LABEL_26:
    OUTLINED_FUNCTION_27();
LABEL_38:

    return;
  }

  v111 = v17;

  v18 = *(v4 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_contactStore);
  isa = [objc_opt_self() keysForNicknameHandling];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v20 = [v18 contactForDestinationId:v11 keysToFetch:isa];

  if (!v20)
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v63 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v63, &static Logger.nickname);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_42();
      v66 = OUTLINED_FUNCTION_13_80();
      v118 = v66;
      MEMORY[0] = 136315138;
      v114 = v13;
      v115 = v15;
      v67 = String.init<A>(reflecting:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v118);

      MEMORY[4] = v69;
      OUTLINED_FUNCTION_23_56(&dword_1BBC58000, v64, v65, "Cannot accept incoming name because couldnt find a contact for handle %s");
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18();
LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v21 = v20;
  [v21 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact, 0x1E695CF18);
  if (!swift_dynamicCast())
  {

    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v70 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v70, &static Logger.nickname);
    v71 = v21;
    v64 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v72))
    {
      v73 = OUTLINED_FUNCTION_42();
      v114 = OUTLINED_FUNCTION_23();
      *v73 = 136315138;
      v118 = v71;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
      v71 = v71;
      v74 = String.init<A>(reflecting:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v114);

      *(v73 + 4) = v76;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_37;
  }

  v110 = v18;
  v22 = v118;
  v23 = [v111 firstName];
  if (!v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x1BFB209B0](v24);
  }

  [v118 setGivenName_];

  v25 = [v111 lastName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  outlined bridged method (mbnn) of @objc CNMutableContact.lastName.setter(v26, v28, v118);
  v29 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  [v29 updateContact_];
  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, &static Logger.nickname);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v109 = v13;
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_42();
    v107 = v31;
    v108 = v29;
    v34 = OUTLINED_FUNCTION_13_80();
    v118 = v34;
    *v31 = 136315138;
    v114 = v13;
    v115 = v15;

    v35 = String.init<A>(reflecting:)();
    v37 = v22;
    v38 = v21;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v118);

    *(v31 + 4) = v39;
    v21 = v38;
    v22 = v37;
    OUTLINED_FUNCTION_23_56(&dword_1BBC58000, v32, v33, "Accepting incoming name from handle id %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    v29 = v108;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v114 = 0;
  v40 = [v110 executeSaveRequest:v29 error:&v114];
  v41 = v114;
  if (v40)
  {

    v42 = v41;
    v43 = v109;
    NameAndPhotoUtilities.createIMHandle(with:)(v109, v15, v44, v45, v46, v47, v48, v49, v107, v108, v109, v110, v111, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v51 = v50;

    if (v51)
    {

      [*(v4 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController) clearPendingNicknameUpdatesForHandle_];

LABEL_47:
      return;
    }

    v97 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_24_55())
    {
      v98 = OUTLINED_FUNCTION_42();
      v99 = OUTLINED_FUNCTION_23();
      v118 = v99;
      *v98 = 136315138;
      v114 = v43;
      v115 = v15;
      v100 = String.init<A>(reflecting:)();
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v118);

      *(v98 + 4) = v102;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v103, v104, v105, v106, v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    else
    {
    }
  }

  else
  {
    v82 = v22;
    v83 = v114;

    v84 = _convertNSErrorToError(_:)();
    swift_willThrow();
    v85 = v29;
    v86 = v84;
    v51 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v87))
    {
      v88 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v88 = 136315394;
      v118 = v85;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNSaveRequest, 0x1E695CF88);
      v89 = v85;
      v90 = String.init<A>(reflecting:)();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v114);

      *(v88 + 4) = v92;
      *(v88 + 12) = 2080;
      v118 = v84;
      v93 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v94 = String.init<A>(reflecting:)();
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v114);

      *(v88 + 14) = v96;
      _os_log_impl(&dword_1BBC58000, v51, v87, "Failed to execute saveRequest %s error: %s", v88, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();

      goto LABEL_47;
    }
  }
}

uint64_t static NameAndPhotoUtilities.formattedDisplayName(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = objc_opt_self();
  v13 = [a1 firstName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 lastName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v11, v5);
  v16 = [v12 localizedStringFromPersonNameComponents:isa style:2 options:0];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

void NameAndPhotoUtilities.denyIncomingName(from:)()
{
  OUTLINED_FUNCTION_55();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_3_105();

  specialized NameAndPhotoUtilities.denyIncomingName(from:)(v0, v1, v2, v3);
}

uint64_t NameAndPhotoUtilities.denySendingNameAndPhoto(using:)()
{
  OUTLINED_FUNCTION_55();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_3_105();

  return specialized NameAndPhotoUtilities.denySendingNameAndPhoto(using:)(v0, v1, v2, v3);
}

id NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v16, &static Logger.nickname);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  OUTLINED_FUNCTION_55();
  v5 = *(v3 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameProvider);
  v6 = MEMORY[0x1BFB209B0]();
  v7 = [v5 nicknameForHandleID_];

  if (!v7)
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Logger.nickname);

    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_24_55())
    {
      v10 = OUTLINED_FUNCTION_42();
      v11 = OUTLINED_FUNCTION_23();
      v25 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v25);
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v12, v13, v14, v15, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_4_4();
    }

    return 0;
  }

  return v7;
}

Swift::OpaquePointer_optional __swiftcall NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v1 = MEMORY[0x1BFB209B0](a1.value._countAndFlagsBits);
    v2 = OUTLINED_FUNCTION_205();
    v4 = [v2 v3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.nickname);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    v5 = 0;
  }

  v15 = v5;
  result.value._rawValue = v15;
  result.is_nil = v6;
  return result;
}

id NameAndPhotoUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in static NameAndPhotoUtilities.prewarm()()
{
  if (one-time initialization token for shared != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t one-time initialization function for secondsDelayBeforeShowingNameAndPhotoBanner()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v0 = *(*static Defaults.shared + 872);

  v2 = v0(v1);

  static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner = *&v2;
  return result;
}

double static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner.getter()
{
  if (one-time initialization token for secondsDelayBeforeShowingNameAndPhotoBanner != -1)
  {
    swift_once();
  }

  return *&static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner;
}

void *NameAndPhotoUtilities.personalNickname.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id key path getter for NameAndPhotoUtilities.personalNickname : NameAndPhotoUtilities@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for NameAndPhotoUtilities.personalNickname : NameAndPhotoUtilities(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NameAndPhotoUtilities.personalNickname.setter(v1);
}

void NameAndPhotoUtilities.personalNickname.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  NameAndPhotoUtilities.personalNickname.didset(v4);
}

uint64_t NameAndPhotoUtilities.personalNickname.didset(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in NameAndPhotoUtilities.personalNickname.didset;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t closure #1 in NameAndPhotoUtilities.personalNickname.didset(void *a1, uint64_t a2)
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.nickname);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
    swift_beginAccess();
    v11 = *&v5[v10];
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMNickname, 0x1E69A8190);
      v12 = v11;
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v29);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Updated personalNickname to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  v17 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  swift_beginAccess();
  v18 = *&v5[v17];
  v19 = v18;
  NameAndPhotoUtilities.updatePersonalDisplayName(using:)(v18);

  v20 = *&v5[v17];
  v21 = v20;
  NameAndPhotoUtilities.updatePersonalAvatarView(using:)(v20);

  v22 = &v5[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v22 + 1);
    ObjectType = swift_getObjectType();
    v26 = *&v5[v17];
    v27 = *(v24 + 8);
    v28 = v26;
    v27(a2, v26, ObjectType, v24);

    return swift_unknownObjectRelease();
  }

  return result;
}

double NameAndPhotoUtilities.updatePersonalDisplayName(using:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v2);
    v5 = v4;

    v6 = (v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
    swift_beginAccess();
    *v6 = v3;
    v6[1] = v5;
  }

  else
  {
    v7 = (v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
    swift_beginAccess();
    *v7 = 0;
    v7[1] = 0;
  }

  return result;
}

void NameAndPhotoUtilities.updatePersonalAvatarView(using:)(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_5;
  }

  v3 = a1;
  v4 = [v3 avatar];
  if (!v4)
  {

LABEL_5:
    v18 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
    swift_beginAccess();
    v17 = *(v2 + v18);
    *(v2 + v18) = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 imageData];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  outlined copy of Data._Representation(v7, v9);
  v13 = UIImage.__allocating_init(data:scale:)(v7, v9, v12);
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v15 = [v14 layer];
  [v15 setMasksToBounds_];

  outlined consume of Data._Representation(v7, v9);
  v16 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  swift_beginAccess();
  v17 = *(v2 + v16);
  *(v2 + v16) = v14;
LABEL_6:
}

void (*NameAndPhotoUtilities.personalNickname.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return NameAndPhotoUtilities.personalNickname.modify;
}

void NameAndPhotoUtilities.personalNickname.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    NameAndPhotoUtilities.personalNickname.setter(v3);
  }

  else
  {
    NameAndPhotoUtilities.personalNickname.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t key path getter for NameAndPhotoUtilities.delegate : NameAndPhotoUtilities@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for NameAndPhotoUtilities.delegate : NameAndPhotoUtilities(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t NameAndPhotoUtilities.delegate.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_5_13(v2);
  *(v1 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NameAndPhotoUtilities.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t NameAndPhotoUtilities.personalDisplayName.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  v2 = *v1;

  return v2;
}

double NameAndPhotoUtilities.personalDisplayName.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_5_13(v3);
  *v1 = v2;
  v1[1] = v0;

  return result;
}

void *NameAndPhotoUtilities.personalAvatarView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void NameAndPhotoUtilities.personalAvatarView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NameAndPhotoUtilities.fromIDFromCall(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 184);
  v5 = v4(ObjectType, a2);
  v6 = [v5 isFaceTimeProvider];

  if (!v6)
  {
    v9 = (*(a2 + 280))(ObjectType, a2);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 handle];

      if (v11)
      {
        v12 = [v11 value];

        goto LABEL_14;
      }
    }

    v13 = v4(ObjectType, a2);
    v14 = [v13 prioritizedSenderIdentities];

    v15 = [v14 firstObject];
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity, 0x1E69D8CD8);
      if (swift_dynamicCast())
      {
        v8 = [v17 handle];

        if (!v8)
        {
          return v8;
        }

        v12 = [v8 value];

LABEL_14:
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v20, &_sypSgMd, &_sypSgMR);
    }

    return 0;
  }

  v7 = [objc_opt_self() facetimeService];
  v8 = IMPreferredAccountForService();

  if (v8)
  {
    return outlined bridged method (ob) of @objc IMAccount.displayName.getter(v8);
  }

  return v8;
}

id NameAndPhotoUtilities.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView] = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameProvider;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69A5C18]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController;
  *&v0[v4] = [objc_opt_self() sharedInstance];
  v5 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_contactStore;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 contactStore];

  *&v0[v5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_pendingNicknameFetchKeys;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E695C330];
  *(v9 + 16) = xmmword_1BC4BA930;
  v11 = *v10;
  v12 = *MEMORY[0x1E695C208];
  *(v9 + 32) = *v10;
  *(v9 + 40) = v12;
  *&v0[v8] = v9;
  v13 = &v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_queriedCallForSNAPStatus];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_currentCallRemoteParticipantHandleIds] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_idsLookupManager;
  v15 = objc_opt_self();
  v16 = v11;
  v17 = v12;
  *&v0[v14] = [v15 sharedManager];
  v24.receiver = v0;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v20 selector:sel_handleIdsStatusChanged name:*MEMORY[0x1E69D8FA0] object:0];

  v22 = [v19 defaultCenter];
  [v22 addObserver:v20 selector:sel_handlePersonalNicknameChanged_ name:*MEMORY[0x1E69A5A10] object:0];

  NameAndPhotoUtilities.getOrFetchPersonalNickName()();
  return v20;
}

Swift::Void __swiftcall NameAndPhotoUtilities.getOrFetchPersonalNickName()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized NameAndPhotoUtilities.getOrFetchPersonalNickname(completion:)(v0, v1);
}

void closure #1 in NameAndPhotoUtilities.getOrFetchPersonalNickName()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a1;
    NameAndPhotoUtilities.personalNickname.setter(a1);
  }
}

uint64_t specialized NameAndPhotoUtilities.getOrFetchPersonalNickname(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  v5 = [v4 sharedController];
  v6 = *MEMORY[0x1E69D8DA8];
  v7 = [v5 hasListenerForID_];

  if ((v7 & 1) == 0)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.nickname);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315138;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v33);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Adding addListenerID: %s to IMDaemonController", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    v16 = [v4 sharedController];
    [v16 addListenerID:v6 capabilities:*MEMORY[0x1E69A6250]];
  }

  v17 = *(a1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController);
  v18 = [v17 personalNickname];
  if (v18)
  {
    v19 = v18;
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Logger.nickname);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v19;
      v26 = v21;
      _os_log_impl(&dword_1BBC58000, v22, v23, "Reading the personal nick name from cache %@", v24, 0xCu);
      outlined destroy of TapInteractionHandler?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = v21;
      NameAndPhotoUtilities.personalNickname.setter(v19);

      v21 = v28;
    }

    else
    {
    }
  }

  else
  {
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in NameAndPhotoUtilities.getOrFetchPersonalNickName();
    *(v30 + 24) = a2;
    v33[4] = partial apply for closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:);
    v33[5] = v30;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    v33[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
    v33[3] = &block_descriptor_12_4;
    v31 = _Block_copy(v33);

    [v17 fetchPersonalNicknameWithCompletion_];
    _Block_release(v31);
  }
}

void NameAndPhotoUtilities.suggestedBannerType(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isNameAndPhotoC3Enabled.getter() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!a1)
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, &static Logger.nickname);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_18();
    }

LABEL_17:
    OUTLINED_FUNCTION_11_105();
    *(a3 + 40) = v19;
    return;
  }

  v7 = (v3 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_queriedCallForSNAPStatus);
  *v7 = a1;
  v7[1] = a2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v8 = NameAndPhotoUtilities.beginCheckForShouldShowOutgoingShareBanner(forCall:)(a1, a2);
  if (v8 != 2)
  {
    NameAndPhotoUtilities.checkBannerType(forCall:shouldShowOutgoingShareBanner:)(a2, v8 & 1, &v20);
    swift_unknownObjectRelease();
    if (v21[24] != 255)
    {
      v18 = *v21;
      *a3 = v20;
      *(a3 + 16) = v18;
      *(a3 + 25) = *&v21[9];
      return;
    }

    outlined destroy of TapInteractionHandler?(&v20, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_105();
  *(a3 + 40) = v9;

  swift_unknownObjectRelease();
}

uint64_t NameAndPhotoUtilities.beginCheckForShouldShowOutgoingShareBanner(forCall:)(uint64_t a1, uint64_t a2)
{
  result = NameAndPhotoUtilities.checkForShouldShowOutgoingShareBanner(forCall:)(a1, a2);
  if (result == 2)
  {

    v4 = NameAndPhotoUtilities.beginQueryIsShareNameAndPhotoAvailable(forDestination:)(v3);

    return v4;
  }

  return result;
}

void NameAndPhotoUtilities.checkBannerType(forCall:shouldShowOutgoingShareBanner:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_208();
    NameAndPhotoUtilities.areAllRemoteParticipantsContacts(for:)(v5, v6);
    v8 = 12;
    if ((v7 & 1) == 0)
    {
      v8 = 13;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a1 + 192))(ObjectType, a1);
    v11 = specialized Set.count.getter();

    if (v11 != 1)
    {
      goto LABEL_10;
    }

    v12 = (*(a1 + 80))(ObjectType, a1);
    v13 = v12;
    if (v12)
    {
      v14 = [v12 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = OUTLINED_FUNCTION_208();
    v17 = NameAndPhotoUtilities.shouldShowIncomingShareBanner(from:)(v15, v16);

    if ((v17 & 1) == 0)
    {
LABEL_10:
      OUTLINED_FUNCTION_11_105();
      goto LABEL_11;
    }

    v8 = 19;
  }

  *a3 = v8;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  v9 = 7;
LABEL_11:
  *(a3 + 40) = v9;
}

unint64_t NameAndPhotoUtilities.shouldShowIncomingShareBanner(from:)(void *a1, unint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 1000))())
  {
    return 1;
  }

  if (a2)
  {
    NameAndPhotoUtilities.createIMHandle(with:)(a1, a2, v5, v6, v7, v8, v9, v10, v33, v34, v35, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], var58[12]);
    if (v11)
    {
      v12 = v11;
      v13 = [*(v2 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController) nicknameUpdateForHandle:v11 nicknameIfAvailable:0];
      v14 = v13;
      a2 = (v13 >> 1) & 1;
      if (one-time initialization token for nickname != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, &static Logger.nickname);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = v14 & 2;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = v20;
        *v19 = 136315394;
        LOBYTE(var58[0]) = v18 >> 1;
        v21 = String.init<A>(reflecting:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v34);

        *(v19 + 4) = v23;
        *(v19 + 12) = 1024;
        *(v19 + 14) = v18 >> 1;
        _os_log_impl(&dword_1BBC58000, v16, v17, "shouldShowIncomingShareBanner=%s because nicknameUpdate.contains(.nameUpdate): %{BOOL}d", v19, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFB23DF0](v20, -1, -1);
        MEMORY[0x1BFB23DF0](v19, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for nickname != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Logger.nickname);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = a2;
        var58[0] = v28;
        *v27 = 136315138;
        v34 = a1;

        v29 = String.init<A>(reflecting:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, var58);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1BBC58000, v25, v26, "Cant determine if we should show incoming share banner for handle %s because failed to create IMHandle", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1BFB23DF0](v28, -1, -1);
        MEMORY[0x1BFB23DF0](v27, -1, -1);
      }

      return 0;
    }
  }

  return a2;
}

void NameAndPhotoUtilities.areAllRemoteParticipantsContacts(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 192);
  v4(ObjectType, a2);
  v5 = specialized Set.count.getter();

  if (v5 == 1 || (v6 = (*(a2 + 184))(ObjectType, a2), v7 = [v6 isTelephonyProvider], v6, v7))
  {
    if ((*(a2 + 288))(ObjectType, a2))
    {
    }
  }

  else
  {
    v8 = (v4)(ObjectType, a2);
    v9 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v9 = v31;
      v10 = v32;
      v11 = v33;
      v12 = v34;
      v13 = v35;
    }

    else
    {
      v12 = 0;
      v14 = -1 << *(v8 + 32);
      v10 = v8 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v8 + 56);
    }

    v17 = v29;
    v18 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    v19 = v12;
    v20 = v13;
    v21 = v12;
    if (v13)
    {
LABEL_16:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (v23)
      {
        while (1)
        {
          v24 = *(v17 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_contactStore);
          v25 = [v23 value];
          if (!v25)
          {
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = MEMORY[0x1BFB209B0](v26);
          }

          isa = [objc_opt_self() keysForNicknameHandling];
          if (!isa)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
            v17 = v29;
          }

          v28 = [v24 contactForDestinationId:v25 keysToFetch:isa];

          if (!v28)
          {
            break;
          }

          v12 = v21;
          v13 = v22;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

LABEL_18:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
            swift_dynamicCast();
            v23 = v30;
            v21 = v12;
            v22 = v13;
            if (v30)
            {
              continue;
            }
          }

          goto LABEL_27;
        }

        outlined consume of Set<TUHandle>.Iterator._Variant(v9);
      }

      else
      {
LABEL_27:
        outlined consume of Set<TUHandle>.Iterator._Variant(v9);
      }
    }

    else
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_27;
        }

        v20 = *(v10 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

uint64_t NameAndPhotoUtilities.checkForShouldShowOutgoingShareBanner(forCall:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v54 = a2;
  v5 = (*(a2 + 192))(ObjectType, a2);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_SSs5NeverOTg50153_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSSSo8D6CXEfU_Tf1cn_n(v5);
  v7 = v6;

  v8 = 0;
  v9 = *(v7 + 16);
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = (v7 + 40 + 16 * v8);
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      return 2;
    }

    v12 = *(v11 - 1);
    v13 = *v11;

    v14 = MEMORY[0x1BFB209B0](v12, v13);
    v15 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v21;
      }

      v19 = *(v10 + 16);
      if (v19 >= *(v10 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v22;
      }

      ++v8;
      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      goto LABEL_2;
    }

    v11 += 2;
    ++v8;
  }

  *&v3[OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_currentCallRemoteParticipantHandleIds] = v10;

  v23 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalNickname;
  swift_beginAccess();
  if (!*&v3[v23])
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, &static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "shouldShowOutgoingShareBanner = false due to personalNickname is nil";
    goto LABEL_37;
  }

  v25 = NameAndPhotoUtilities.hasAlreadySentOrDeniedSendingNameAndPhoto(to:)(v24);

  if (v25)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, &static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "shouldShowOutgoingShareBanner = false bc hasAlreadySentOrDeniedSendingToRemotes";
LABEL_37:
    _os_log_impl(&dword_1BBC58000, v27, v28, v30, v29, 2u);
    MEMORY[0x1BFB23DF0](v29, -1, -1);
LABEL_38:

    return 0;
  }

  if ((NameAndPhotoUtilities.snapEnabled.getter() & 1) == 0)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, &static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "shouldShowOutgoingShareBanner = false bc snapEnabled is false";
    goto LABEL_37;
  }

  if (!NameAndPhotoUtilities.alwaysAskNameAndPhotoSharingEnabled.getter())
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, &static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "shouldShowOutgoingShareBanner = false bc alwaysAskNameAndPhotoSharing is not enabled";
    goto LABEL_37;
  }

  if ((*(v54 + 416))(ObjectType, v54))
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, &static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "shouldShowOutgoingShareBanner = false bc isEmergency";
    goto LABEL_37;
  }

  v36 = (*(v54 + 184))(ObjectType, v54);
  v37 = [v36 isFaceTimeProvider];

  if (v37)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.nickname);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BBC58000, v39, v40, "shouldShowOutgoingShareBanner = true on FaceTime call", v41, 2u);
      MEMORY[0x1BFB23DF0](v41, -1, -1);
    }
  }

  else
  {

    v43 = NameAndPhotoUtilities.isShareNameAndPhotoAvailable(forDestinations:)(v42);

    if (!v43)
    {
      return 2;
    }

    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, &static Logger.nickname);
    v45 = v3;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v50 = String.init<A>(reflecting:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v55);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1BBC58000, v46, v47, "shouldShowOutgoingShareBanner = true bc destination status found in cache for handleIDs: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1BFB23DF0](v49, -1, -1);
      MEMORY[0x1BFB23DF0](v48, -1, -1);
    }
  }

  return 1;
}

uint64_t NameAndPhotoUtilities.allContactHandlesFromHandle(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(inited);
  v14 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_contactStore);
  v8 = MEMORY[0x1BFB209B0](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v7 contactForDestinationId:v8 keysToFetch:isa];

  if (v10)
  {
    v11 = [v10 handles];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.formUnion<A>(_:)(v12);
    return v14;
  }

  return v6;
}

id NameAndPhotoUtilities.pendingIncomingIMNickname(from:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v3 = [v1 pendingNicknameForHandleIDs_];

  if (!v3)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.nickname);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR, MEMORY[0x1E69E6508]);
      lazy protocol witness table accessor for type String and conformance String();
      Sequence<>.joined(separator:)();
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1BBC58000, v5, v6, "Couldnt find a pending IMNickname for handle %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    return 0;
  }

  return v3;
}

void NameAndPhotoUtilities.createIMHandle(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMServiceImpl, 0x1E69A5CA0);
  v30 = [swift_getObjCClassFromMetadata() iMessageService];
  v31 = IMPreferredAccountForService();

  if (v31 && ((v32 = v31, !v27) ? (v33 = 0) : (v33 = MEMORY[0x1BFB209B0](v29, v27)), v34 = OUTLINED_FUNCTION_205(), v36 = [v34 v35], v31, v33, v36))
  {
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v37, &static Logger.nickname);

    v38 = v31;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = 7104878;
      v42 = swift_slowAlloc();
      a12 = swift_slowAlloc();
      *v42 = 136315394;
      if (v27)
      {

        v43 = String.init<A>(reflecting:)();
        v45 = v44;
      }

      else
      {
        v45 = 0xE300000000000000;
        v43 = 7104878;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &a12);
      OUTLINED_FUNCTION_17_19();
      *(v42 + 4) = v29;
      *(v42 + 12) = 2080;
      if (v31)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount, 0x1E69A5A78);
        v46 = v38;
        v41 = String.init<A>(reflecting:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v48, &a12);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_1BBC58000, v39, v40, "Could not create IMHandle with handle %s account: %s", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::Void __swiftcall NameAndPhotoUtilities.handlePersonalNicknameChanged(_:)(NSNotification a1)
{
  v3 = v1;
  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.nickname);
  v6 = a1.super.isa;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_42();
    v18 = OUTLINED_FUNCTION_13_80();
    *v2 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNotification, 0x1E696AD80);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v2 + 4) = v12;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_18();
  }

  NameAndPhotoUtilities.personalNickname.setter([*(v3 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController) personalNickname]);
}

id NameAndPhotoUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL NameAndPhotoUtilities.alwaysAskNameAndPhotoSharingEnabled.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 sharingAudience];

  return v1 == 2;
}

id NameAndPhotoUtilities.snapEnabled.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 sharingEnabled];

  return v1;
}

uint64_t NameAndPhotoUtilities.hasAlreadySentOrDeniedSendingNameAndPhoto(to:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Defaults.shared;
  if ((*(*static Defaults.shared + 992))())
  {
    v3 = 0;
    return v3 & 1;
  }

  if ((*(*v2 + 1000))())
  {
    goto LABEL_6;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMServiceImpl, 0x1E69A5CA0);
  v4 = [swift_getObjCClassFromMetadata() iMessageService];
  v5 = IMPreferredAccountForService();

  v6 = *(a1 + 16);
  if (!v6)
  {
    v7 = 0;
    v10 = 1;
LABEL_24:
    v45 = v5;
    v3 = v10 | v7;
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, &static Logger.nickname);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315650;
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v47);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = String.init<A>(reflecting:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v47);

      *(v31 + 14) = v38;
      *(v31 + 22) = 2080;
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v47);

      *(v31 + 24) = v41;
      _os_log_impl(&dword_1BBC58000, v29, v30, "hasAlreadySentOrDeniedSendingNameAndPhoto: %s due to hasAlreadySentToAll: %s hasDeniedToAny: %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      MEMORY[0x1BFB23DF0](v31, -1, -1);
    }

    return v3 & 1;
  }

  v7 = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameController;
  v9 = (a1 + 40);
  v10 = 1;
  while (1)
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    if (!v5)
    {
      break;
    }

    v13 = v5;
    v14 = v5;
    v15 = outlined bridged method (mbgnn) of @objc IMAccount.imHandle(withID:)(v12, v11, v14);

    v5 = v13;
    if (!v15)
    {
      break;
    }

    if (v10)
    {
      v10 = [*(v46 + v8) handleIsAllowedForSharing_];
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      if ((v7 & 1) == 0)
      {
LABEL_15:
        v7 = [*(v46 + v8) handleIsDeniedForSharing_];
        goto LABEL_16;
      }
    }

    v7 = 1;
LABEL_16:

    v9 += 2;
    if (!--v6)
    {
      goto LABEL_24;
    }
  }

  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Logger.nickname);

  v17 = v5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v5;
    v23 = v21;
    v47 = v21;
    *v20 = 136315394;
    if (v22)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount, 0x1E69A5A78);
      v24 = v17;
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v47);

    *(v20 + 4) = v43;
    *(v20 + 12) = 2080;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v47);

    *(v20 + 14) = v44;
    _os_log_impl(&dword_1BBC58000, v18, v19, "Failed to generate imHandle using account %s handleID: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v23, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  else
  {
  }

LABEL_6:
  v3 = 1;
  return v3 & 1;
}

uint64_t NameAndPhotoUtilities.beginQueryIsShareNameAndPhotoAvailable(forDestination:)(uint64_t a1)
{
  v2 = v1;
  if (NameAndPhotoUtilities.isSnapQueryEnabled()())
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.nickname);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1BBC58000, v4, v5, "beginQueryIsShareNameAndPhotoAvailable - Querying IDS to see com.apple.private.alloy.nameandphoto status for handleIDs: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_idsLookupManager);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v12);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v11 beginBatchQueryWithDestinations:isa services:63];

    return 2;
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, &static Logger.nickname);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v16, v17, "beginQueryIsShareNameAndPhotoAvailable - SNAP Query is disabled for handleIDs: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }

    return 1;
  }
}

Swift::Bool __swiftcall NameAndPhotoUtilities.isSnapQueryEnabled()()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    return v0;
  }

  v1 = v0;
  v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001CLL, 0x80000001BC51B160, v0);

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    outlined destroy of TapInteractionHandler?(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    LOBYTE(v0) = 1;
    return v0;
  }

  v3 = [v5 BOOLValue];

  LOBYTE(v0) = v3 ^ 1;
  return v0;
}

void outlined bridged method (mbnn) of @objc CNMutableContact.lastName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setLastName_];
}

id outlined bridged method (mbgnn) of @objc IMAccount.imHandle(withID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1, a2);
  v5 = [a3 imHandleWithID_];

  return v5;
}

void specialized NameAndPhotoUtilities.denyIncomingName(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v6, &static Logger.nickname);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v20 = v9;
    *v8 = 136315138;
    v10 = (*(a4 + 80))(a3, a4);
    if (v10)
    {
      v11 = v10;
      v12 = [v10 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v8 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, oslog, v7, "Denying incoming name from handle %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_26();

    OUTLINED_FUNCTION_7_17();
  }

  else
  {
    OUTLINED_FUNCTION_7_17();
  }
}

Swift::Void __swiftcall ControlsButtonProvider.buttonChanged()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 192))();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_weakInit();
    v8[4] = partial apply for closure #1 in ControlsButtonProvider.buttonChanged();
    v8[5] = v4;
    OUTLINED_FUNCTION_1_25();
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v8[3] = &block_descriptor_112;
    v5 = _Block_copy(v8);
    v6 = v3;

    [v6 setConfigurationUpdateHandler_];
    _Block_release(v5);

    LOBYTE(v5) = *(v0 + 41);
    *(swift_allocObject() + 16) = v5;
    v7 = v6;
    UIButton.pointerStyleProvider.setter();

    [v7 setPointerInteractionEnabled_];
    [v7 setMaximumContentSizeCategory_];
    [v7 setMinimumContentSizeCategory_];
    [v7 setNeedsUpdateConfiguration];
  }
}

uint64_t ConversationControlsButtonProvider.deinit()
{
  ControlsButtonProvider.deinit();

  return v0;
}

void ControlsButtonProvider.button.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_38_4();
  (*(v5 + 544))();
}

void ControlsButtonProvider.cnkContentAlpha.setter(double a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_0(v3 + 32, a3);
  *(v3 + 32) = a1;
  ControlsButtonProvider.cnkContentAlpha.didset();
}

uint64_t (*ControlsButtonProvider.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_39(v1 + 32);
  return ControlsButtonProvider.cnkContentAlpha.modify;
}

uint64_t ControlsButtonProvider.callbackCancellable.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t ControlsButtonProvider.backgroundStyle.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 56, a2);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_44_0();
  outlined copy of ButtonBackgroundStyle?(v4, v5, v3);
  return OUTLINED_FUNCTION_44_0();
}

void ControlsButtonProvider.backgroundStyle.setter(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  OUTLINED_FUNCTION_6_0(v3 + 56, a2);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v9 = *(v3 + 72);
  *(v3 + 72) = v4;
  outlined copy of ButtonBackgroundStyle?(a1, a2, v4);
  outlined consume of ButtonBackgroundStyle?(v7, v8, v9);
  ControlsButtonProvider.backgroundStyle.didset();
  outlined consume of ButtonBackgroundStyle?(a1, a2, v4);
}

uint64_t (*ControlsButtonProvider.backgroundStyle.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_39(v1 + 56);
  return ControlsButtonProvider.backgroundStyle.modify;
}

void ControlsButtonProvider.titleFont.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ControlsButtonProvider.backgroundStyle.didset();
  }
}

void *ControlsButtonProvider.foregroundColor.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 80, a2);
  v3 = *(v2 + 80);
  v4 = v3;
  return v3;
}

void ControlsButtonProvider.foregroundColor.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 80, a2);
  v4 = *(v2 + 80);
  *(v2 + 80) = a1;
  v5 = a1;

  ControlsButtonProvider.backgroundStyle.didset();
}

uint64_t (*ControlsButtonProvider.foregroundColor.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_39(v1 + 80);
  return ControlsButtonProvider.foregroundColor.modify;
}

uint64_t ControlsButtonProvider.captureGroupName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 88, a2);
  v3 = *(v2 + 88);

  return v3;
}

void ControlsButtonProvider.captureGroupName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 88, a2);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;

  ControlsButtonProvider.backgroundStyle.didset();
}

uint64_t (*ControlsButtonProvider.captureGroupName.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_39(v1 + 88);
  return ControlsButtonProvider.foregroundColor.modify;
}

void *ControlsButtonProvider.image.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 104, a2);
  v3 = *(v2 + 104);
  v4 = v3;
  return v3;
}

void ControlsButtonProvider.image.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 104, a2);
  v4 = *(v2 + 104);
  *(v2 + 104) = a1;
  v5 = a1;

  ControlsButtonProvider.backgroundStyle.didset();
}