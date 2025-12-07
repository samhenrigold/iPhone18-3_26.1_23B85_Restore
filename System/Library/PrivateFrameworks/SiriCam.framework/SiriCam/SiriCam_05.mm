void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA08AutoSendH6LoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v192 = v5;
  v198 = v6;
  v199 = v7;
  v201 = v8;
  v202 = v9;
  v197 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_3();
  v188 = v17;
  OUTLINED_FUNCTION_6();
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_14(v19, v20, v21, v22, v23, v24, v25, v26, v186);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_3();
  v190 = v28;
  OUTLINED_FUNCTION_6();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v186 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v191 = v33;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_3();
  v196 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  v38 = (&v186 - v37);
  v200 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5();
  v193 = v42;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_3();
  v186 = v44;
  OUTLINED_FUNCTION_6();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_13(v46, v47, v48, v49, v50, v51, v52, v53, v186);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_31_3();
  v59 = [objc_allocWithZone(MEMORY[0x277D56C68]) init];
  if (v59)
  {
    v60 = v59;
    v61 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    v194 = v60;
    [v61 setRequestReceived_];
    v195 = v61;
    if (v61)
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v63 = v40;
      if (v62)
      {
        v64 = v62;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v65 = *(v40 + 16);
        v66 = v200;
        v65(v1, v201, v200);
        v67 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
        OUTLINED_FUNCTION_81(v67, sel_setCamId_);

        v68 = MEMORY[0x26D5DCC90](v198, v202);
        OUTLINED_FUNCTION_81(v68, sel_setResultCandidateId_);

        [v64 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v65(v1, v197, v66);
          v69 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_81(v69, sel_setSubRequestId_);
        }

        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20(&one-time initialization token for kLoggingFeatureName);
        }

        v70 = specialized Dictionary.subscript.getter(v192, kLoggingFeatureName._rawValue);
        if ((v70 & 0x100000000) == 0)
        {
          [v64 setFeature_];
        }

        outlined init with copy of UUID?(v199, v32);
        OUTLINED_FUNCTION_32_3(v32, 1, v66);
        v196 = v65;
        if (v71)
        {
          outlined destroy of UUID?(v32);
          v72 = v190;
          UUID.init(uuidString:)();
          v73 = OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_32_3(v73, v74, v66);
          if (v71)
          {
            outlined destroy of UUID?(v72);
          }

          else
          {
            v32 = v186;
            (*(v63 + 32))(v186, v72, v66);
            v160 = OUTLINED_FUNCTION_91();
            (v65)(v160);
            v161 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
            OUTLINED_FUNCTION_81(v161, sel_setTrpId_);

            (*(v63 + 8))(v32, v66);
          }
        }

        else
        {
          v142 = v63;
          v143 = v189;
          v144 = OUTLINED_FUNCTION_89();
          v145(v144);
          v65(v1, v143, v66);
          v146 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_81(v146, sel_setTrpId_);

          v147 = v143;
          v63 = v142;
          (*(v142 + 8))(v147, v66);
        }

        v162 = v193;
        v163 = v195;
        [v195 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v164 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v164, static Logger.common);
        v196(v162, v201, v66);

        v77 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v204[0] = OUTLINED_FUNCTION_52_2();
          *v66 = 136315650;
          v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
          v166 = OUTLINED_FUNCTION_59_1(v165);
          OUTLINED_FUNCTION_61_1(v166, v167);
          OUTLINED_FUNCTION_72();
          *(v66 + 4) = v32;
          *(v66 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v63 + 8))(v162, v200);
          v168 = OUTLINED_FUNCTION_23_8();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v32, v169);
          OUTLINED_FUNCTION_20_5();

          *(v66 + 14) = v162;
          *(v66 + 22) = 2080;
          v170 = OUTLINED_FUNCTION_36_0();
          *(v66 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v202, v171);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v172, v173, v174, v175, v176, 0x20u);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();

LABEL_41:
          goto LABEL_46;
        }

        v159 = *(v63 + 8);
        v157 = v162;
        v158 = v66;
LABEL_43:
        v159(v157, v158);
        goto LABEL_46;
      }

      v122 = v200;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v123 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v123, static Logger.common);
      v124 = OUTLINED_FUNCTION_55_1();
      v125(v124, v201, v122);
      v126 = v191;
      outlined init with copy of UUID?(v199, v191);
      v127 = v202;

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();

      if (!OUTLINED_FUNCTION_114())
      {

        outlined destroy of UUID?(v126);
        v157 = OUTLINED_FUNCTION_69_0();
        goto LABEL_43;
      }

      LODWORD(v201) = v129;
      OUTLINED_FUNCTION_62_1();
      v199 = OUTLINED_FUNCTION_39_2();
      v204[0] = v199;
      *v126 = 136315906;
      v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v131 = OUTLINED_FUNCTION_59_1(v130);
      OUTLINED_FUNCTION_61_1(v131, v132);
      OUTLINED_FUNCTION_53_1();
      *(v126 + 4) = v38;
      *(v126 + 12) = 2080;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_66_0();
      v133 = *(v63 + 8);
      v134 = OUTLINED_FUNCTION_69_0();
      v133(v134);
      v135 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v38, v136);
      OUTLINED_FUNCTION_49_2();

      *(v126 + 14) = v3;
      *(v126 + 22) = 2080;
      v137 = OUTLINED_FUNCTION_36_0();
      v138 = v127;
      v139 = v191;
      *(v126 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v140);
      *(v126 + 32) = 2080;
      v141 = v187;
      outlined init with copy of UUID?(v139, v187);
      OUTLINED_FUNCTION_32_3(v141, 1, v122);
      if (v71)
      {
        outlined destroy of UUID?(v141);
        OUTLINED_FUNCTION_98();
      }

      else
      {
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_99();
        v181 = OUTLINED_FUNCTION_69_0();
        v133(v181);
      }

      v182 = outlined destroy of UUID?(v139);
      OUTLINED_FUNCTION_111(v182, v183, v204);
      OUTLINED_FUNCTION_53_1();
      *(v126 + 34) = v38;
      OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v201);
      OUTLINED_FUNCTION_80(v184, v185, MEMORY[0x277D84F70] + 8);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v98 = v40;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v99 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v99, static Logger.common);
      v100 = OUTLINED_FUNCTION_86();
      v101(v100);
      v102 = v196;
      outlined init with copy of UUID?(v199, v196);
      v103 = v202;

      v104 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (os_log_type_enabled(v104, &off_279BD1000))
      {
        LODWORD(v201) = &off_279BD1000;
        v105 = OUTLINED_FUNCTION_62_1();
        v199 = swift_slowAlloc();
        v204[0] = v199;
        *v105 = 136315906;
        v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v107 = OUTLINED_FUNCTION_59_1(v106);
        OUTLINED_FUNCTION_61_1(v107, v108);
        OUTLINED_FUNCTION_72();
        *(v105 + 4) = v32;
        *(v105 + 12) = 2080;
        v109 = v0;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_46_2();
        v110 = *(v98 + 8);
        v111 = OUTLINED_FUNCTION_101();
        v110(v111);
        v112 = OUTLINED_FUNCTION_23_8();
        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v32, v113);
        v115 = v196;

        *(v105 + 14) = v114;
        *(v105 + 22) = 2080;
        v116 = OUTLINED_FUNCTION_36_0();
        *(v105 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v103, v117);
        *(v105 + 32) = 2080;
        v118 = v188;
        outlined init with copy of UUID?(v115, v188);
        OUTLINED_FUNCTION_32_3(v118, 1, v38);
        if (v71)
        {
          outlined destroy of UUID?(v118);
          OUTLINED_FUNCTION_102();
        }

        else
        {
          v109 = v118;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_96();
          (v110)(v118, v38);
        }

        outlined destroy of UUID?(v115);
        v177 = OUTLINED_FUNCTION_23_8();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v114, v178);
        OUTLINED_FUNCTION_71();
        *(v105 + 34) = v109;
        OUTLINED_FUNCTION_74(&dword_266790000, v179, v180, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s");
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();
      }

      else
      {

        outlined destroy of UUID?(v102);
        v148 = OUTLINED_FUNCTION_101();
        v149(v148);
      }
    }
  }

  else
  {
    v195 = v15;
    v196 = v38;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v75 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v75, static Logger.common);
    v76 = OUTLINED_FUNCTION_63_0();
    (v15)(v76);
    (v15)(v4, v197, v1);
    v77 = v196;
    outlined init with copy of UUID?(v199, v196);
    v78 = v202;

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_106();
      v197 = OUTLINED_FUNCTION_110();
      v204[0] = v197;
      *v81 = 136316162;
      v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v83 = OUTLINED_FUNCTION_59_1(v82);
      OUTLINED_FUNCTION_61_1(v83, v84);
      v85 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_105(v85);
      OUTLINED_FUNCTION_46_2();
      v86 = *(v40 + 8);
      v87 = OUTLINED_FUNCTION_42_1();
      v86(v87);
      v88 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v32, v89);
      OUTLINED_FUNCTION_20_5();
      v90 = v196;

      *(v81 + 14) = v79;
      *(v81 + 22) = v77;
      v91 = OUTLINED_FUNCTION_36_0();
      *(v81 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v78, v92);
      *(v81 + 32) = v77;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v93 = OUTLINED_FUNCTION_44_2();
      v86(v93);
      v94 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v2, v95);
      OUTLINED_FUNCTION_48_2();

      OUTLINED_FUNCTION_71_0();
      v96 = OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_32_3(v96, v97, v1);
      if (v71)
      {
        outlined destroy of UUID?(v77);
        v2 = 0;
        v150 = 0xE000000000000000;
      }

      else
      {
        v150 = v77;
        UUID.uuidString.getter();
        v151 = OUTLINED_FUNCTION_93();
        v86(v151);
      }

      outlined destroy of UUID?(v90);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v150, v204);
      OUTLINED_FUNCTION_69();
      *(v81 + 44) = v2;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v152, v153, v154, v155, v156, 0x34u);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
      goto LABEL_41;
    }

    outlined destroy of UUID?(v77);
    v119 = *(v40 + 8);
    v120 = OUTLINED_FUNCTION_44_2();
    v119(v120);
    v121 = OUTLINED_FUNCTION_42_1();
    v119(v121);
  }

LABEL_46:
  OUTLINED_FUNCTION_45_0();
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA22AutoSendResponseLoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v182 = v5;
  v189 = v7;
  v190 = v6;
  v188 = v8;
  v191 = v9;
  v186 = v10;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_14(v20, v21, v22, v23, v24, v25, v26, v27, v174);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_3();
  v181 = v29;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v180 = v31;
  OUTLINED_FUNCTION_6();
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_13(v33, v34, v35, v36, v37, v38, v39, v40, v174);
  MEMORY[0x28223BE20](v41);
  v187 = &v174 - v42;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v192 = v43;
  v193 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5();
  v184 = v45;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_31_3();
  v53 = one-time initialization token for kCamActionMap;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_34_0(&one-time initialization token for kCamActionMap);
  }

  rawValue = kCamActionMap._rawValue;
  LOBYTE(v194) = *(v14 + 57);
  lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction();
  AnyHashable.init<A>(_:)();
  v55 = specialized Dictionary.subscript.getter(v195, rawValue);
  outlined destroy of AnyHashable(v195);
  v56 = *(v14 + 40);
  v57 = *(v14 + 48);

  v58 = _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(v55 | ((HIDWORD(v55) & 1) << 32), v12, v56, v57);

  if (v58)
  {
    v59 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v59 setResponseGenerated_];
    if (v59)
    {
      v60 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v61 = v192;
      v62 = v190;
      if (v60)
      {
        v63 = v60;
        v187 = v59;
        v179 = v58;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v64 = v193 + 16;
        v65 = v191;
        v185 = *(v193 + 16);
        v185(v1, v191, v61);
        v66 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
        OUTLINED_FUNCTION_40_2(v66, sel_setCamId_);

        v67 = MEMORY[0x26D5DCC90](v188, v62);
        OUTLINED_FUNCTION_40_2(v67, sel_setResultCandidateId_);

        [v63 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v185(v1, v186, v61);
          v68 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_40_2(v68, sel_setSubRequestId_);
        }

        v69 = v184;
        v70 = v181;
        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20(&one-time initialization token for kLoggingFeatureName);
        }

        v71 = specialized Dictionary.subscript.getter(v182, kLoggingFeatureName._rawValue);
        v72 = v183;
        if ((v71 & 0x100000000) == 0)
        {
          [v63 setFeature_];
        }

        outlined init with copy of UUID?(v189, v70);
        OUTLINED_FUNCTION_4_14(v70);
        if (v73)
        {
          outlined destroy of UUID?(v70);
          UUID.init(uuidString:)();
          OUTLINED_FUNCTION_4_14(v72);
          if (v73)
          {
            outlined destroy of UUID?(v72);
          }

          else
          {
            OUTLINED_FUNCTION_70_0();
            v69 = v175;
            v141(v175, v72, v61);
            v142 = OUTLINED_FUNCTION_92();
            v143(v142);
            v144 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
            OUTLINED_FUNCTION_40_2(v144, sel_setTrpId_);

            v145 = OUTLINED_FUNCTION_68_0();
            v146(v145);
          }
        }

        else
        {
          OUTLINED_FUNCTION_70_0();
          v69 = v178;
          v131(v178);
          v132 = OUTLINED_FUNCTION_92();
          v133(v132);
          v134 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_40_2(v134, sel_setTrpId_);

          v135 = OUTLINED_FUNCTION_68_0();
          v136(v135);
        }

        v147 = v187;
        [v187 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v148 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v148, static Logger.common);
        v185(v69, v65, v61);

        v96 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v195[0] = OUTLINED_FUNCTION_52_2();
          *v64 = 136315650;
          v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v150 = OUTLINED_FUNCTION_58_0(v149);
          OUTLINED_FUNCTION_60_1(v150, v151);
          OUTLINED_FUNCTION_72();
          *(v64 + 4) = v61;
          *(v64 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v193 + 8))(v69, v61);
          v152 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v61, v153);
          OUTLINED_FUNCTION_20_5();

          OUTLINED_FUNCTION_94();
          *(v64 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v62, v154);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v155, v156, v157, v158, v159, 0x20u);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();
          OUTLINED_FUNCTION_87();

          v161 = v187;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_87();
        (*(v193 + 8))(v69, v61);
      }

      else
      {
        v117 = v191;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v118 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v118, static Logger.common);
        v119 = v193;
        (*(v193 + 16))(v4, v117, v61);
        v120 = v180;
        outlined init with copy of UUID?(v189, v180);

        v121 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_84();
        if (OUTLINED_FUNCTION_114())
        {
          LODWORD(v191) = v14;
          v187 = v59;
          v179 = v58;
          OUTLINED_FUNCTION_62_1();
          v189 = OUTLINED_FUNCTION_39_2();
          v195[0] = v189;
          *v120 = 136315906;
          v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v123 = OUTLINED_FUNCTION_58_0(v122);
          OUTLINED_FUNCTION_60_1(v123, v124);
          OUTLINED_FUNCTION_53_1();
          *(v120 + 4) = v58;
          *(v120 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_66_0();
          v125 = *(v119 + 8);
          v126 = OUTLINED_FUNCTION_89();
          v125(v126);
          v127 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v58, v128);
          OUTLINED_FUNCTION_49_2();

          *(v120 + 14) = v4;
          *(v120 + 22) = 2080;
          *(v120 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v62, v195);
          *(v120 + 32) = 2080;
          v129 = v180;
          v130 = v176;
          outlined init with copy of UUID?(v180, v176);
          OUTLINED_FUNCTION_4_14(v130);
          if (v73)
          {
            outlined destroy of UUID?(v130);
            OUTLINED_FUNCTION_98();
          }

          else
          {
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_99();
            (v125)(v130, v61);
          }

          v169 = outlined destroy of UUID?(v129);
          OUTLINED_FUNCTION_111(v169, v170, v195);
          OUTLINED_FUNCTION_53_1();
          *(v120 + 34) = v58;
          OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v191);
          OUTLINED_FUNCTION_80(v171, v172, MEMORY[0x277D84F70] + 8);
          OUTLINED_FUNCTION_19_11();
          OUTLINED_FUNCTION_20_11();
          OUTLINED_FUNCTION_87();
        }

        else
        {

          outlined destroy of UUID?(v120);
          v139 = OUTLINED_FUNCTION_89();
          v140(v139);
        }
      }
    }

    else
    {
      v100 = v192;
      v101 = v190;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v102 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v102, static Logger.common);
      v103 = v193;
      v104 = OUTLINED_FUNCTION_55_1();
      v105(v104, v191, v100);
      v106 = v185;
      outlined init with copy of UUID?(v189, v185);

      v96 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (OUTLINED_FUNCTION_114())
      {
        LODWORD(v191) = v14;
        v179 = v58;
        OUTLINED_FUNCTION_62_1();
        v189 = OUTLINED_FUNCTION_39_2();
        v195[0] = v189;
        *v100 = 136315906;
        v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
        v108 = OUTLINED_FUNCTION_58_0(v107);
        OUTLINED_FUNCTION_60_1(v108, v109);
        OUTLINED_FUNCTION_69();
        *(v100 + 4) = v101;
        *(v100 + 12) = 2080;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_47_2();
        v110 = *(v103 + 8);
        v110(v3, v192);
        v111 = OUTLINED_FUNCTION_27_3();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v101, v112);
        OUTLINED_FUNCTION_48_2();

        *(v100 + 14) = v3;
        *(v100 + 22) = 2080;
        *(v100 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v101, v195);
        *(v100 + 32) = 2080;
        v113 = v177;
        outlined init with copy of UUID?(v106, v177);
        OUTLINED_FUNCTION_4_14(v113);
        if (v73)
        {
          outlined destroy of UUID?(v113);
          v163 = 0;
          v165 = 0xE000000000000000;
        }

        else
        {
          v163 = UUID.uuidString.getter();
          v165 = v164;
          v166 = OUTLINED_FUNCTION_91();
          (v110)(v166);
        }

        outlined destroy of UUID?(v185);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, v195);
        OUTLINED_FUNCTION_69();
        *(v100 + 34) = v163;
        OUTLINED_FUNCTION_29_4(&dword_266790000, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v191);
        OUTLINED_FUNCTION_80(v167, v168, MEMORY[0x277D84F70] + 8);
        OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_87();
        goto LABEL_45;
      }

      outlined destroy of UUID?(v106);
      (*(v103 + 8))(v3, v100);
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v74, static Logger.common);
    v75 = v192;
    v76 = v193;
    v77 = *(v193 + 16);
    v77(v2, v191, v192);
    v77(v0, v186, v75);
    v78 = v187;
    outlined init with copy of UUID?(v189, v187);
    v79 = v190;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      LODWORD(v189) = v81;
      v191 = v80;
      v82 = swift_slowAlloc();
      v186 = OUTLINED_FUNCTION_110();
      v195[0] = v186;
      *v82 = 136316162;
      v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
      v84 = OUTLINED_FUNCTION_58_0(v83);
      OUTLINED_FUNCTION_60_1(v84, v85);
      v86 = OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_109(v86);
      OUTLINED_FUNCTION_66_0();
      v87 = *(v76 + 8);
      v88 = OUTLINED_FUNCTION_41_0();
      v87(v88);
      v89 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, 0, v90);
      OUTLINED_FUNCTION_49_2();
      v91 = v187;

      *(v82 + 14) = v80;
      *(v82 + 22) = v4;
      *(v82 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v79, v195);
      *(v82 + 32) = v4;
      v92 = v0;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v93 = OUTLINED_FUNCTION_100();
      v87(v93);
      v94 = OUTLINED_FUNCTION_27_3();
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v2, v95);

      v97 = OUTLINED_FUNCTION_103();
      v99 = *(v98 - 256);
      outlined init with copy of UUID?(v97, v99);
      OUTLINED_FUNCTION_4_14(v99);
      if (v73)
      {
        outlined destroy of UUID?(v99);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v92 = v99;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        (v87)(v99, v75);
      }

      outlined destroy of UUID?(v91);
      v137 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v96, v138);
      OUTLINED_FUNCTION_71();
      *(v82 + 44) = v92;
      OUTLINED_FUNCTION_78(&dword_266790000, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v189);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_0_8();
      goto LABEL_46;
    }

    outlined destroy of UUID?(v78);
    v114 = *(v76 + 8);
    v115 = OUTLINED_FUNCTION_100();
    v114(v115);
    v116 = OUTLINED_FUNCTION_41_0();
    v114(v116);
  }

LABEL_47:
  OUTLINED_FUNCTION_45_0();
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA017UncertaintyPromptH6LoggerV_Tt5B5(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v158 = a7;
  v166 = a6;
  v167 = a5;
  v164 = a2;
  v165 = a4;
  v168 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v154 = &v152 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v153 = &v152 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v159 = &v152 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v157 = &v152 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v163 = (&v152 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = (&v152 - v24);
  v26 = type metadata accessor for UUID();
  isa = v26[-1].isa;
  v28 = MEMORY[0x28223BE20](v26);
  v160 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v152 = &v152 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v155 = &v152 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v152 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v152 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v152 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v152 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v152 - v46;
  v48 = static UncertaintyPromptRequestLogger.map(from:)(a1);
  if (!v48)
  {
    v162 = v11;
    v163 = v25;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.common);
    v61 = *(isa + 2);
    v62 = v26;
    v61(v47, v168, v26);
    v61(v45, v164, v26);
    v63 = v163;
    outlined init with copy of UUID?(v166, v163);
    v64 = v167;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v65, v66))
    {

      outlined destroy of UUID?(v63);
      v103 = *(isa + 1);
      v103(v45, v62);
      v103(v47, v62);
      return;
    }

    LODWORD(v166) = v66;
    v168 = v65;
    v67 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v170[0] = v164;
    *v67 = 136316162;
    v169 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
    v68 = String.init<A>(describing:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v170);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2080;
    v71 = UUID.uuidString.getter();
    v73 = v72;
    v74 = *(isa + 1);
    v74(v47, v62);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v170);
    v76 = v163;

    *(v67 + 14) = v75;
    *(v67 + 22) = 2080;
    *(v67 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v64, v170);
    *(v67 + 32) = 2080;
    v77 = UUID.uuidString.getter();
    v79 = v78;
    v74(v45, v62);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v170);

    *(v67 + 34) = v80;
    *(v67 + 42) = 2080;
    v81 = v162;
    outlined init with copy of UUID?(v76, v162);
    if (__swift_getEnumTagSinglePayload(v81, 1, v62) == 1)
    {
      outlined destroy of UUID?(v81);
      v82 = 0;
      v83 = 0xE000000000000000;
    }

    else
    {
      v82 = UUID.uuidString.getter();
      v83 = v126;
      v74(v81, v62);
    }

    outlined destroy of UUID?(v76);
    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v170);

    *(v67 + 44) = v127;
    v128 = v168;
    _os_log_impl(&dword_266790000, v168, v166, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v67, 0x34u);
    v129 = v164;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v129, -1, -1);
    MEMORY[0x26D5DDCD0](v67, -1, -1);
    goto LABEL_39;
  }

  v49 = v48;
  v50 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
  v161 = v49;
  [v50 setRequestReceived_];
  v162 = v50;
  if (v50)
  {
    v51 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
    v52 = isa;
    if (v51)
    {
      v53 = v51;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
      v163 = *(isa + 2);
      (v163)(v39, v168, v26);
      v54 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
      [v53 setCamId_];

      v55 = MEMORY[0x26D5DCC90](v165, v167);
      [v53 setResultCandidateId_];

      [v53 setRequestId_];
      if (AFDeviceSupportsSAE())
      {
        (v163)(v39, v164, v26);
        v56 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
        [v53 setSubRequestId_];
      }

      v57 = v157;
      if (one-time initialization token for kLoggingFeatureName != -1)
      {
        swift_once();
      }

      v58 = specialized Dictionary.subscript.getter(v158, kLoggingFeatureName._rawValue);
      v59 = v159;
      if ((v58 & 0x100000000) == 0)
      {
        [v53 setFeature_];
      }

      outlined init with copy of UUID?(v166, v57);
      if (__swift_getEnumTagSinglePayload(v57, 1, v26) == 1)
      {
        outlined destroy of UUID?(v57);
        UUID.init(uuidString:)();
        if (__swift_getEnumTagSinglePayload(v59, 1, v26) == 1)
        {
          outlined destroy of UUID?(v59);
        }

        else
        {
          v130 = v152;
          (*(isa + 4))(v152, v59, v26);
          (v163)(v39, v130, v26);
          v131 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
          [v53 setTrpId_];

          (*(isa + 1))(v130, v26);
        }
      }

      else
      {
        v124 = v155;
        (*(isa + 4))(v155, v57, v26);
        (v163)(v39, v124, v26);
        v125 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
        [v53 setTrpId_];

        (*(isa + 1))(v124, v26);
      }

      v132 = v160;
      v133 = v162;
      [v162 setEventMetadata_];
      [objc_msgSend(objc_opt_self() sharedStream)];
      swift_unknownObjectRelease();
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for Logger();
      __swift_project_value_buffer(v134, static Logger.common);
      (v163)(v132, v168, v26);

      v128 = Logger.logObject.getter();
      v135 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v128, v135))
      {
        v136 = swift_slowAlloc();
        v168 = v26;
        v137 = v136;
        v138 = swift_slowAlloc();
        v170[0] = v138;
        *v137 = 136315650;
        v169 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v139 = String.init<A>(describing:)();
        v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, v170);

        *(v137 + 4) = v141;
        *(v137 + 12) = 2080;
        v142 = UUID.uuidString.getter();
        v144 = v143;
        (*(v52 + 1))(v132, v168);
        v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, v170);

        *(v137 + 14) = v145;
        *(v137 + 22) = 2080;
        *(v137 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, v170);
        _os_log_impl(&dword_266790000, v128, v135, "Successfully emitted log message : %s for camId : %s, rcId: %s", v137, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v138, -1, -1);
        MEMORY[0x26D5DDCD0](v137, -1, -1);

LABEL_39:
        return;
      }

      (*(isa + 1))(v132, v26);
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      __swift_project_value_buffer(v104, static Logger.common);
      (*(isa + 2))(v36, v168, v26);
      v105 = v156;
      outlined init with copy of UUID?(v166, v156);
      v106 = v167;

      v107 = Logger.logObject.getter();
      v108 = v26;
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v107, v109))
      {
        LODWORD(v168) = v109;
        v110 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v170[0] = v166;
        *v110 = 136315906;
        v169 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v111 = String.init<A>(describing:)();
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, v170);

        *(v110 + 4) = v113;
        *(v110 + 12) = 2080;
        v114 = UUID.uuidString.getter();
        v116 = v115;
        v117 = *(v52 + 1);
        v117(v36, v108);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v170);

        *(v110 + 14) = v118;
        *(v110 + 22) = 2080;
        v119 = v106;
        v120 = v156;
        *(v110 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v119, v170);
        *(v110 + 32) = 2080;
        v121 = v153;
        outlined init with copy of UUID?(v120, v153);
        if (__swift_getEnumTagSinglePayload(v121, 1, v108) == 1)
        {
          outlined destroy of UUID?(v121);
          v122 = 0;
          v123 = 0xE000000000000000;
        }

        else
        {
          v122 = UUID.uuidString.getter();
          v123 = v149;
          v117(v121, v108);
        }

        outlined destroy of UUID?(v120);
        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v170);

        *(v110 + 34) = v150;
        _os_log_impl(&dword_266790000, v107, v168, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v110, 0x2Au);
        v151 = v166;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v151, -1, -1);
        MEMORY[0x26D5DDCD0](v110, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v105);
        (*(v52 + 1))(v36, v26);
      }
    }
  }

  else
  {
    v84 = isa;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.common);
    (*(isa + 2))(v42, v168, v26);
    v86 = v163;
    outlined init with copy of UUID?(v166, v163);
    v87 = v167;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      LODWORD(v168) = v89;
      v90 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v170[0] = v166;
      *v90 = 136315906;
      v169 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v91 = String.init<A>(describing:)();
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v170);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = UUID.uuidString.getter();
      v96 = v95;
      v97 = *(v84 + 1);
      v97(v42, v26);
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v170);
      v99 = v163;

      *(v90 + 14) = v98;
      *(v90 + 22) = 2080;
      *(v90 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v87, v170);
      *(v90 + 32) = 2080;
      v100 = v154;
      outlined init with copy of UUID?(v99, v154);
      if (__swift_getEnumTagSinglePayload(v100, 1, v26) == 1)
      {
        outlined destroy of UUID?(v100);
        v101 = 0;
        v102 = 0xE000000000000000;
      }

      else
      {
        v101 = UUID.uuidString.getter();
        v102 = v146;
        v97(v100, v26);
      }

      outlined destroy of UUID?(v99);
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v170);

      *(v90 + 34) = v147;
      _os_log_impl(&dword_266790000, v88, v168, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v90, 0x2Au);
      v148 = v166;
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v148, -1, -1);
      MEMORY[0x26D5DDCD0](v90, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v86);
      (*(v84 + 1))(v42, v26);
    }
  }
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA31UncertaintyPromptResponseLoggerV_Tt5B5(uint64_t a1, char a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v179 = a8;
  v186 = a7;
  v187 = a6;
  v185 = a5;
  v188 = a4;
  v183 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v176 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v174 = &v171 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v173 = &v171 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v180 = &v171 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v178 = &v171 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v177 = &v171 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v182 = (&v171 - v24);
  MEMORY[0x28223BE20](v23);
  v184 = &v171 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v189 = v26;
  v190 = v27;
  v28 = MEMORY[0x28223BE20](v26);
  v181 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v172 = &v171 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v175 = &v171 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v171 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v171 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v171 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v171 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v171 - v46;
  v48 = one-time initialization token for kCamActionMap;

  if (v48 != -1)
  {
    swift_once();
  }

  rawValue = kCamActionMap._rawValue;
  LOBYTE(v191) = *(a1 + 56);
  lazy protocol witness table accessor for type CamAction and conformance CamAction();
  AnyHashable.init<A>(_:)();
  v50 = specialized Dictionary.subscript.getter(v192, rawValue);
  outlined destroy of AnyHashable(v192);
  v51 = *(a1 + 40);
  v52 = *(a1 + 48);

  v53 = _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(v50 | ((HIDWORD(v50) & 1) << 32), a2, v51, v52);

  if (!v53)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.common);
    v68 = v189;
    v69 = v190;
    v70 = *(v190 + 16);
    v70(v47, v188, v189);
    v70(v45, v183, v68);
    v71 = v184;
    outlined init with copy of UUID?(v186, v184);
    v72 = v187;

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v73, v74))
    {

      outlined destroy of UUID?(v71);
      v113 = *(v69 + 8);
      v113(v45, v68);
      v113(v47, v68);
      return;
    }

    LODWORD(v186) = v74;
    v188 = v73;
    v75 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v192[0] = v183;
    *v75 = 136316162;
    v191 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v76 = String.init<A>(describing:)();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v192);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    v79 = UUID.uuidString.getter();
    v81 = v80;
    v82 = *(v69 + 8);
    v82(v47, v68);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v192);
    v84 = v184;

    *(v75 + 14) = v83;
    *(v75 + 22) = 2080;
    *(v75 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v72, v192);
    *(v75 + 32) = 2080;
    v85 = UUID.uuidString.getter();
    v87 = v86;
    v82(v45, v68);
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v192);

    *(v75 + 34) = v88;
    *(v75 + 42) = 2080;
    v89 = v176;
    outlined init with copy of UUID?(v84, v176);
    if (__swift_getEnumTagSinglePayload(v89, 1, v68) == 1)
    {
      outlined destroy of UUID?(v89);
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v90 = UUID.uuidString.getter();
      v91 = v140;
      v82(v89, v68);
    }

    outlined destroy of UUID?(v84);
    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v192);

    *(v75 + 44) = v141;
    v97 = v188;
    _os_log_impl(&dword_266790000, v188, v186, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v75, 0x34u);
    v142 = v183;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v142, -1, -1);
    MEMORY[0x26D5DDCD0](v75, -1, -1);
    goto LABEL_45;
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
  [v54 setResponseGenerated_];
  if (!v54)
  {
    v92 = v189;
    v93 = v187;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logger.common);
    v95 = v190;
    (*(v190 + 16))(v42, v188, v92);
    v96 = v182;
    outlined init with copy of UUID?(v186, v182);

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v97, v98))
    {

      outlined destroy of UUID?(v96);
      (*(v95 + 8))(v42, v92);
      return;
    }

    LODWORD(v188) = v98;
    v176 = v53;
    v99 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v192[0] = v186;
    *v99 = 136315906;
    v191 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v100 = String.init<A>(describing:)();
    v102 = v93;
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v192);

    *(v99 + 4) = v103;
    *(v99 + 12) = 2080;
    v104 = UUID.uuidString.getter();
    v106 = v105;
    v107 = *(v95 + 8);
    v107(v42, v189);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v192);

    *(v99 + 14) = v108;
    *(v99 + 22) = 2080;
    *(v99 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v102, v192);
    *(v99 + 32) = 2080;
    v109 = v189;
    v110 = v174;
    outlined init with copy of UUID?(v96, v174);
    if (__swift_getEnumTagSinglePayload(v110, 1, v109) == 1)
    {
      outlined destroy of UUID?(v110);
      v111 = 0;
      v112 = 0xE000000000000000;
    }

    else
    {
      v111 = UUID.uuidString.getter();
      v112 = v165;
      v107(v110, v109);
    }

    outlined destroy of UUID?(v182);
    v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, v192);

    *(v99 + 34) = v166;
    _os_log_impl(&dword_266790000, v97, v188, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v99, 0x2Au);
    v167 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v167, -1, -1);
    MEMORY[0x26D5DDCD0](v99, -1, -1);
    v164 = v176;
LABEL_44:

LABEL_45:
    return;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
  v56 = v189;
  v57 = v187;
  if (v55)
  {
    v58 = v55;
    v184 = v54;
    v176 = v53;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v59 = v188;
    v182 = *(v190 + 16);
    (v182)(v39, v188, v56);
    v60 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
    [v58 setCamId_];

    v61 = MEMORY[0x26D5DCC90](v185, v57);
    [v58 setResultCandidateId_];

    [v58 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      (v182)(v39, v183, v56);
      v62 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
      [v58 setSubRequestId_];
    }

    v63 = v181;
    v64 = v178;
    if (one-time initialization token for kLoggingFeatureName != -1)
    {
      swift_once();
    }

    v65 = specialized Dictionary.subscript.getter(v179, kLoggingFeatureName._rawValue);
    v66 = v180;
    if ((v65 & 0x100000000) == 0)
    {
      [v58 setFeature_];
    }

    outlined init with copy of UUID?(v186, v64);
    if (__swift_getEnumTagSinglePayload(v64, 1, v56) == 1)
    {
      outlined destroy of UUID?(v64);
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v66, 1, v56) == 1)
      {
        outlined destroy of UUID?(v66);
      }

      else
      {
        v143 = v190;
        v144 = v57;
        v145 = v63;
        v146 = v172;
        (*(v190 + 32))(v172, v66, v56);
        (v182)(v39, v146, v56);
        v147 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
        [v58 setTrpId_];

        v148 = v146;
        v63 = v145;
        v57 = v144;
        v59 = v188;
        (*(v143 + 8))(v148, v56);
      }
    }

    else
    {
      v133 = v64;
      v134 = v190;
      v135 = v57;
      v136 = v63;
      v137 = v175;
      (*(v190 + 32))(v175, v133, v56);
      (v182)(v39, v137, v56);
      v138 = SISchemaUUID.__allocating_init(nsuuid:)(v39);
      [v58 setTrpId_];

      v139 = v137;
      v63 = v136;
      v57 = v135;
      v59 = v188;
      (*(v134 + 8))(v139, v56);
    }

    v149 = v184;
    [v184 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    __swift_project_value_buffer(v150, static Logger.common);
    (v182)(v63, v59, v56);

    v97 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v97, v151))
    {

      (*(v190 + 8))(v63, v56);
      return;
    }

    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v192[0] = v153;
    *v152 = 136315650;
    v191 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v154 = String.init<A>(describing:)();
    v156 = v63;
    v157 = v57;
    v158 = v56;
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v192);

    *(v152 + 4) = v159;
    *(v152 + 12) = 2080;
    v160 = UUID.uuidString.getter();
    v162 = v161;
    (*(v190 + 8))(v156, v158);
    v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v162, v192);

    *(v152 + 14) = v163;
    *(v152 + 22) = 2080;
    *(v152 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v157, v192);
    _os_log_impl(&dword_266790000, v97, v151, "Successfully emitted log message : %s for camId : %s, rcId: %s", v152, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v153, -1, -1);
    MEMORY[0x26D5DDCD0](v152, -1, -1);

    v164 = v184;
    goto LABEL_44;
  }

  v114 = v188;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  __swift_project_value_buffer(v115, static Logger.common);
  v116 = v190;
  (*(v190 + 16))(v36, v114, v56);
  v117 = v177;
  outlined init with copy of UUID?(v186, v177);

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v118, v119))
  {
    LODWORD(v188) = v119;
    v184 = v54;
    v176 = v53;
    v120 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v192[0] = v186;
    *v120 = 136315906;
    v191 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v121 = String.init<A>(describing:)();
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v192);

    *(v120 + 4) = v123;
    *(v120 + 12) = 2080;
    v124 = UUID.uuidString.getter();
    v126 = v125;
    v127 = *(v116 + 8);
    v127(v36, v56);
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, v192);

    *(v120 + 14) = v128;
    *(v120 + 22) = 2080;
    *(v120 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v57, v192);
    *(v120 + 32) = 2080;
    v129 = v177;
    v130 = v173;
    outlined init with copy of UUID?(v177, v173);
    if (__swift_getEnumTagSinglePayload(v130, 1, v56) == 1)
    {
      outlined destroy of UUID?(v130);
      v131 = 0;
      v132 = 0xE000000000000000;
    }

    else
    {
      v131 = UUID.uuidString.getter();
      v132 = v168;
      v127(v130, v56);
    }

    outlined destroy of UUID?(v129);
    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, v192);

    *(v120 + 34) = v169;
    _os_log_impl(&dword_266790000, v118, v188, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v120, 0x2Au);
    v170 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v170, -1, -1);
    MEMORY[0x26D5DDCD0](v120, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v117);
    (*(v116 + 8))(v36, v56);
  }
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA29AutoSendDefaultResponseLoggerV_Tt5B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(unint64_t, void, void, void))
{
  OUTLINED_FUNCTION_44_1();
  v26 = v25;
  v215 = v27;
  v222 = v28;
  v223 = v29;
  v226 = v30;
  v224 = v31;
  v220 = v32;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v36 = OUTLINED_FUNCTION_14(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_14(v40, v41, v42, v43, v44, v45, v46, v47, v208);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_3();
  v214 = v49;
  OUTLINED_FUNCTION_6();
  v51 = MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_13(v51, v52, v53, v54, v55, v56, v57, v58, v208);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_3();
  v219 = v60;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v61);
  v221 = &v208 - v62;
  v225 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_5();
  v217 = v66;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_10_3();
  v213 = v71;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_31_3();
  if (one-time initialization token for kCamActionMap != -1)
  {
    OUTLINED_FUNCTION_34_0(&one-time initialization token for kCamActionMap);
  }

  v75 = HIBYTE(v34);
  rawValue = kCamActionMap._rawValue;
  LOBYTE(v227) = v34;
  v26();
  AnyHashable.init<A>(_:)();
  v77 = specialized Dictionary.subscript.getter(v228, rawValue);
  outlined destroy of AnyHashable(v228);
  v78 = a22(v77 | ((HIDWORD(v77) & 1) << 32), HIBYTE(v34), 0, 0);
  if (v78)
  {
    v79 = v78;
    v80 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v80 setResponseGenerated_];
    v81 = v224;
    if (v80)
    {
      v82 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v83 = v225;
      if (v82)
      {
        v84 = v82;
        v221 = v79;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v218 = v64;
        v85 = v213;
        v86 = OUTLINED_FUNCTION_69_0();
        v219 = v87;
        (v87)(v86);
        v88 = SISchemaUUID.__allocating_init(nsuuid:)(v85);
        OUTLINED_FUNCTION_40_2(v88, sel_setCamId_);

        v89 = MEMORY[0x26D5DCC90](v222, v226);
        OUTLINED_FUNCTION_40_2(v89, sel_setResultCandidateId_);

        [v84 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v219(v85, v220, v83);
          v90 = SISchemaUUID.__allocating_init(nsuuid:)(v85);
          OUTLINED_FUNCTION_40_2(v90, sel_setSubRequestId_);
        }

        v91 = v214;
        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20(&one-time initialization token for kLoggingFeatureName);
        }

        v92 = specialized Dictionary.subscript.getter(v215, kLoggingFeatureName._rawValue);
        v93 = v216;
        if ((v92 & 0x100000000) == 0)
        {
          [v84 setFeature_];
        }

        outlined init with copy of UUID?(v223, v91);
        OUTLINED_FUNCTION_4_14(v91);
        if (v94)
        {
          outlined destroy of UUID?(v91);
          UUID.init(uuidString:)();
          OUTLINED_FUNCTION_4_14(v93);
          if (v94)
          {
            outlined destroy of UUID?(v93);
          }

          else
          {
            v170 = v218;
            OUTLINED_FUNCTION_97();
            v171 = v208;
            v172(v208, v93, v83);
            v219(v85, v171, v83);
            v173 = SISchemaUUID.__allocating_init(nsuuid:)(v85);
            OUTLINED_FUNCTION_40_2(v173, sel_setTrpId_);

            (*(v170 + 8))(v171, v83);
          }
        }

        else
        {
          v157 = v218;
          OUTLINED_FUNCTION_97();
          v158 = v81;
          v159 = v211;
          v160(v211);
          v161 = OUTLINED_FUNCTION_69_0();
          (v219)(v161);
          v162 = SISchemaUUID.__allocating_init(nsuuid:)(v85);
          OUTLINED_FUNCTION_40_2(v162, sel_setTrpId_);

          v163 = v159;
          v81 = v158;
          (*(v157 + 8))(v163, v83);
        }

        [v80 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v174 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v174, static Logger.common);
        v175 = v217;
        v219(v217, v81, v83);
        v176 = v226;

        v117 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v228[0] = OUTLINED_FUNCTION_52_2();
          *v176 = 136315650;
          v227 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v178 = OUTLINED_FUNCTION_58_0(v177);
          OUTLINED_FUNCTION_60_1(v178, v179);
          v220 = v80;
          OUTLINED_FUNCTION_72();
          *(v176 + 4) = v83;
          v180 = v218;
          *(v176 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v180 + 8))(v175, v83);
          v181 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v83, v182);
          OUTLINED_FUNCTION_20_5();

          OUTLINED_FUNCTION_94();
          *(v176 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v226, v183);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v184, v185, v186, v187, v188, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();

          v189 = v220;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        (*(v218 + 8))(v175, v83);
      }

      else
      {
        v220 = v80;
        v142 = v226;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v143 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v143, static Logger.common);
        v144 = v212;
        v145 = OUTLINED_FUNCTION_44_2();
        v146(v145);
        v147 = v218;
        outlined init with copy of UUID?(v223, v218);

        v148 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_84();
        if (OUTLINED_FUNCTION_114())
        {
          LODWORD(v224) = v77;
          v221 = v79;
          OUTLINED_FUNCTION_62_1();
          v223 = OUTLINED_FUNCTION_39_2();
          v228[0] = v223;
          *v147 = 136315906;
          v227 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v150 = OUTLINED_FUNCTION_58_0(v149);
          OUTLINED_FUNCTION_60_1(v150, v151);
          OUTLINED_FUNCTION_53_1();
          *(v147 + 4) = v79;
          *(v147 + 12) = 2080;
          v152 = UUID.uuidString.getter();
          v154 = v153;
          v155 = *(v64 + 8);
          v155(v144, v83);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v228);
          OUTLINED_FUNCTION_49_2();

          *(v147 + 14) = v144;
          *(v147 + 22) = 2080;
          *(v147 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v142, v228);
          *(v147 + 32) = 2080;
          v156 = v209;
          outlined init with copy of UUID?(v218, v209);
          OUTLINED_FUNCTION_4_14(v156);
          if (v94)
          {
            outlined destroy of UUID?(v156);
            OUTLINED_FUNCTION_98();
          }

          else
          {
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_99();
            v202 = OUTLINED_FUNCTION_41_0();
            (v155)(v202);
          }

          v203 = v220;
          v204 = outlined destroy of UUID?(v218);
          OUTLINED_FUNCTION_111(v204, v205, v228);
          OUTLINED_FUNCTION_53_1();
          *(v147 + 34) = v154;
          OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v224);
          OUTLINED_FUNCTION_80(v206, v207, MEMORY[0x277D84F70] + 8);
          OUTLINED_FUNCTION_19_11();
          OUTLINED_FUNCTION_20_11();
        }

        else
        {

          outlined destroy of UUID?(v147);
          v167 = OUTLINED_FUNCTION_89();
          v169(v167, v168);
        }
      }
    }

    else
    {
      v121 = v225;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v122 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v122, static Logger.common);
      v123 = OUTLINED_FUNCTION_44_2();
      v124(v123);
      v125 = v219;
      outlined init with copy of UUID?(v223, v219);
      v126 = v226;

      v117 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_76())
      {
        v221 = v79;
        v127 = OUTLINED_FUNCTION_62_1();
        v224 = swift_slowAlloc();
        v228[0] = v224;
        *v127 = 136315906;
        v227 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
        v129 = OUTLINED_FUNCTION_58_0(v128);
        v131 = OUTLINED_FUNCTION_60_1(v129, v130);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2080;
        UUID.uuidString.getter();
        v133 = v132;
        v134 = *(v64 + 8);
        v134(v24, v225);
        v135 = OUTLINED_FUNCTION_27_3();
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v133, v136);

        *(v127 + 14) = v137;
        *(v127 + 22) = 2080;
        *(v127 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v126, v228);
        *(v127 + 32) = 2080;
        v138 = v210;
        outlined init with copy of UUID?(v219, v210);
        OUTLINED_FUNCTION_4_14(v138);
        if (v94)
        {
          outlined destroy of UUID?(v138);
          v190 = 0;
          v192 = 0xE000000000000000;
        }

        else
        {
          v190 = UUID.uuidString.getter();
          v192 = v191;
          v193 = OUTLINED_FUNCTION_41_0();
          (v134)(v193);
        }

        outlined destroy of UUID?(v219);
        v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v192, v228);

        *(v127 + 34) = v194;
        OUTLINED_FUNCTION_21_5();
        _os_log_impl(v195, v196, v197, v198, v199, 0x2Au);
        OUTLINED_FUNCTION_80(v200, v201, MEMORY[0x277D84F70] + 8);
        OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_8();
        v189 = v221;
        goto LABEL_45;
      }

      outlined destroy of UUID?(v125);
      (*(v64 + 8))(v24, v121);
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v95 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v95, static Logger.common);
    v96 = *(v64 + 16);
    v97 = OUTLINED_FUNCTION_42_1();
    v98 = v225;
    v96(v97);
    (v96)(v22, v220, v98);
    v99 = v221;
    outlined init with copy of UUID?(v223, v221);
    v100 = v226;

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      LODWORD(v223) = v102;
      v224 = v101;
      v103 = swift_slowAlloc();
      v220 = OUTLINED_FUNCTION_110();
      v228[0] = v220;
      *v103 = 136316162;
      v227 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
      v105 = OUTLINED_FUNCTION_58_0(v104);
      OUTLINED_FUNCTION_60_1(v105, v106);
      v107 = OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_109(v107);
      OUTLINED_FUNCTION_66_0();
      v108 = *(v64 + 8);
      v109 = OUTLINED_FUNCTION_41_0();
      v108(v109);
      v110 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v75, v111);
      OUTLINED_FUNCTION_49_2();
      v112 = v221;

      *(v103 + 14) = v101;
      *(v103 + 22) = v24;
      *(v103 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v100, v228);
      *(v103 + 32) = v24;
      v113 = v22;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v114 = OUTLINED_FUNCTION_100();
      v108(v114);
      v115 = OUTLINED_FUNCTION_27_3();
      v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v23, v116);

      v118 = OUTLINED_FUNCTION_103();
      v120 = *(v119 - 256);
      outlined init with copy of UUID?(v118, v120);
      OUTLINED_FUNCTION_4_14(v120);
      if (v94)
      {
        outlined destroy of UUID?(v120);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v113 = v120;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        v164 = OUTLINED_FUNCTION_91();
        v108(v164);
      }

      outlined destroy of UUID?(v112);
      v165 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v117, v166);
      OUTLINED_FUNCTION_71();
      *(v103 + 44) = v113;
      OUTLINED_FUNCTION_78(&dword_266790000, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v223);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_0_8();
      goto LABEL_46;
    }

    outlined destroy of UUID?(v99);
    v139 = *(v64 + 8);
    v140 = OUTLINED_FUNCTION_100();
    v139(v140);
    v141 = OUTLINED_FUNCTION_41_0();
    v139(v141);
  }

LABEL_47:
  OUTLINED_FUNCTION_45_0();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000011;
  v3 = "parse";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v4 == 1)
    {
      v6 = "candidate_bundles";
    }

    else
    {
      v6 = "candidate_actions";
    }
  }

  else
  {
    v5 = 0xD000000000000011;
    v6 = "parse";
  }

  if (a2)
  {
    v3 = "candidate_bundles";
    if (a2 != 1)
    {
      v2 = 0xD000000000000018;
      v3 = "candidate_actions";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0x534549545F4C4C41;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x534549545F4C4C41;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v3 = 0x8000000266819D30;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x444E45534F545541;
      break;
    default:
      v3 = 0x8000000266819D00;
      v5 = 0xD000000000000021;
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000016;
      v6 = 0x8000000266819D30;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x444E45534F545541;
      break;
    default:
      v6 = 0x8000000266819D00;
      v2 = 0xD000000000000021;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 7496035;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7496035;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x646F70656D6F68;
      break;
    case 2:
      v5 = 6513005;
      break;
    case 3:
      v5 = 6578544;
      break;
    case 4:
      v5 = 6582128;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
      break;
    case 2:
      v2 = 6513005;
      break;
    case 3:
      v2 = 6578544;
      break;
    case 4:
      v2 = 6582128;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 7:
      v6 = 0xE200000000000000;
      v2 = 30324;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0x7372615072657375;
  v4 = a1;
  v5 = 0x7372615072657375;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = 0x8000000266819E00;
      break;
    case 2:
      v5 = 0x6C646E7542707061;
      v6 = 0xEB00000000644965;
      break;
    case 3:
      v5 = 0x646E4970756F7267;
      v6 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_43_2();
      break;
    case 2:
      v3 = 0x6C646E7542707061;
      v2 = 0xEB00000000644965;
      break;
    case 3:
      v3 = 0x646E4970756F7267;
      v2 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_79(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 0xD000000000000026;
  v3 = "uateForRankingEvaluationRate";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002CLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4 == 1)
    {
      v6 = "tDisambiguationRate";
    }

    else
    {
      v6 = "ary with duplicate key ";
    }
  }

  else
  {
    v5 = 0xD000000000000026;
    v6 = "uateForRankingEvaluationRate";
  }

  if (a2)
  {
    v3 = "tDisambiguationRate";
    v2 = a2 == 1 ? 0xD00000000000002CLL : 0xD000000000000033;
    if (a2 != 1)
    {
      v3 = "ary with duplicate key ";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E6F437972657571;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 1)
    {
      v5 = 0xEF65636E65646966;
    }

    else
    {
      v5 = 0x8000000266819E60;
    }
  }

  else
  {
    v5 = 0x8000000266819E30;
    v4 = 0xD000000000000010;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E6F437972657571;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xEF65636E65646966;
    }

    else
    {
      v6 = 0x8000000266819E60;
    }
  }

  else
  {
    v6 = 0x8000000266819E30;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = PluginToBundleMap.rawValue.getter();
  v2 = v1;
  v3 = PluginToBundleMap.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_35_0(v0, v4, v3);
  }

  return v6 & 1;
}

{
  OUTLINED_FUNCTION_104();
  v2 = 0x646E6148776F6C66;
  v4 = v3;
  v5 = 0x646E6148776F6C66;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6174614472657375;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v7 = 1936875888;
      goto LABEL_5;
    case 3:
      v5 = 0x74616E7265746C61;
      v6 = 0xEC00000073657669;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v7 = 1919902579;
LABEL_5:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v2 = 0x6174614472657375;
      break;
    case 2:
      v0 = 0xE500000000000000;
      v8 = 1936875888;
      goto LABEL_11;
    case 3:
      v2 = 0x74616E7265746C61;
      v0 = 0xEC00000073657669;
      break;
    case 4:
      v0 = 0xE500000000000000;
      v8 = 1919902579;
LABEL_11:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_79(v5, v1, v2);
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, uint64_t a2)
{
  v2 = 0xEA00000000005441;
  v3 = 0x455045525F4B5341;
  if (a1)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_64_0();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x455045525F4B5341;
    v10 = 0xEA00000000005441;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_64_0();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_79(v9, a2, v3);
  }

  return v18 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_43_2();
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_43_2();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
  }

  String.hash(into:)();
}

{
  return MEMORY[0x26D5DD540](qword_266817DE0[a2]);
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1)
{
  PluginToBundleMap.rawValue.getter();
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_104();
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  OUTLINED_FUNCTION_112(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_18_10();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112(a1);
  v2 = RankedAction.CodingKeys.rawValue.getter(v1);
  OUTLINED_FUNCTION_73(v2, v3, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112(a1);
  v1 = PluginToBundleMap.rawValue.getter();
  OUTLINED_FUNCTION_73(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](qword_266817DE0[a2]);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, MEMORY[0x277D84BD0]);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  Hasher.init(_seed:)();
  a3(a2);
  return Hasher._finalize()();
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID_];

  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t CamHandler.init(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(uint64_t a1, char a2, char a3)
{
  v24 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_25_7();
    swift_once();
  }

  v12 = static Log.ambiguityHandling;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v13 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_85();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  type metadata accessor for UncertaintyPromptHandler();
  if (static UncertaintyPromptHandler.register(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(a1, a2 & 1, a3 & 1))
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v14;
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v14);
      v13 = v21;
    }

    v13[2] = v16 + 1;
    OUTLINED_FUNCTION_107();
  }

  type metadata accessor for ActionAmbiguityHandler();
  if (static ActionAmbiguityHandler.register(camEnabledFeatures:)(a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      v13 = v22;
    }

    v18 = v13[2];
    v17 = v13[3];
    if (v18 >= v17 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v13);
      v13 = v23;
    }

    v13[2] = v18 + 1;
    OUTLINED_FUNCTION_107();
  }

  if (v13[2])
  {
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_85();
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {

    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v19 = 0xD000000000000020;
    *(v19 + 8) = 0x800000026681B980;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  (*(v7 + 8))(v11, v24);
  return OUTLINED_FUNCTION_91();
}

void CamHandler.action(request:)()
{
  OUTLINED_FUNCTION_44_1();
  v97 = v0;
  v2 = v1;
  v102 = v3;
  v93 = type metadata accessor for CamInput(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for CamRequest(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v89 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v89 - v17;
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v100 = v20;
  v101 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v23 = v22 - v21;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_25_7();
    swift_once();
  }

  v24 = static Log.ambiguityHandling;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_90();
  v98 = v24;
  v99 = v23;
  OUTLINED_FUNCTION_54_0();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v90 = v12;
  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v25, static Logger.ambiguityHandling);
  OUTLINED_FUNCTION_6_20();
  outlined init with copy of CamRequest(v2, v18, v26);
  v103 = v24;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v91 = v8;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_11();
    v106[0] = v31;
    *v30 = 136315138;
    OUTLINED_FUNCTION_6_20();
    outlined init with copy of CamRequest(v18, v16, v32);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v18, v36);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v106);
    v8 = v91;

    *(v30 + 4) = v37;
    _os_log_impl(&dword_266790000, v27, v28, "Handling CAM request : %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {

    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v18, v38);
  }

  v39 = v8[5];
  v40 = (v2 + v8[6]);
  v41 = *v40;
  v104 = v40[1];
  v42 = v8[7];
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA017UncertaintyPromptH6LoggerV_Tt5B5(v2, v2, (v2 + v39), v41, v104, v2 + v42, 2u);
  v43 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  v45 = *(v44 + 16);
  v45(v7, v2, v43);
  v46 = v8;
  v47 = v2;
  v92 = v2;
  v48 = v93;
  v49 = v7 + *(v93 + 20);
  v95 = v39;
  v89 = v43;
  v45(v49, v47 + v39, v43);
  v50 = v48[7];
  v94 = v42;
  outlined init with copy of UUID?(v47 + v42, v7 + v50);
  v51 = *(v47 + v46[8]);
  v52 = *(v47 + v46[9]);
  v53 = *(v47 + v46[10]);
  v54 = *(v47 + v46[13]);
  v55 = *(v47 + v46[12]);
  v56 = (v7 + v48[6]);
  v96 = v41;
  v57 = v104;
  *v56 = v41;
  v56[1] = v57;
  *(v7 + v48[8]) = v51;
  *(v7 + v48[10]) = v52;
  *(v7 + v48[11]) = v53;
  *(v7 + v48[12]) = v54;
  v58 = v48[9];
  v59 = v7;
  *(v7 + v58) = v55;
  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  v60 = CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
  v61 = *(v97 + 16);
  v62 = (v97 + 32);

  v63 = v51;

  v64 = v61 + 1;
  while (--v64)
  {
    v65 = v62[3];
    v66 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v65);
    v67 = (*(v66 + 16))(v59, v65, v66);
    v62 += 5;

    v60 = v67;
    if (*(v67 + 56) != 1)
    {
      goto LABEL_13;
    }
  }

  v67 = v60;
LABEL_13:
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_266790000, v68, v69, "Logging successful CAM response", v70, 2u);
    OUTLINED_FUNCTION_20_11();
  }

  v71 = *(v67 + 56);

  v73 = v92;
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA31UncertaintyPromptResponseLoggerV_Tt5B5(v72, 0, v92, (v92 + v95), v96, v104, v92 + v94, 2u);
  OUTLINED_FUNCTION_6_20();
  v74 = v90;
  outlined init with copy of CamRequest(v73, v90, v75);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_76())
  {
    v78 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = v91[5];
    OUTLINED_FUNCTION_26_4();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v80, v81, MEMORY[0x277CC9628]);
    v82 = v74 + v79;
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v74, v83);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v57, v106);
    OUTLINED_FUNCTION_48_2();

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    v105 = *(v67 + 56);
    v84 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v106);
    OUTLINED_FUNCTION_69();
    *(v78 + 14) = v57;
    _os_log_impl(&dword_266790000, v76, v77, "%s: Returning successful CAM Action: %s", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_20_11();
  }

  else
  {

    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v74, v86);
  }

  static os_signpost_type_t.end.getter();
  v87 = v99;
  OUTLINED_FUNCTION_54_0();
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of CamRequest(v59, type metadata accessor for CamInput);
  (*(v100 + 8))(v87, v101);
  v88 = v102;
  *v102 = v71;
  v88[1] = 0;
  OUTLINED_FUNCTION_45_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_82();
  MEMORY[0x26D5DD540](v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v3 = MEMORY[0x26D5DD520](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = a1;
  v3 = specialized RawRepresentable<>._rawHashValue(seed:)(*(v1 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v2 = a1;
  v3 = specialized RawRepresentable<>._rawHashValue(seed:)(*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_82();
  String.hash(into:)();
  type metadata accessor for AffinityRankKey(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_26_4();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v2, v3, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

void specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for DeviceIdiom();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x277D61C30], MEMORY[0x277D61C38]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_18_10();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

{
  OUTLINED_FUNCTION_82();
  MEMORY[0x26D5DD540](0);
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for AffinityRankKey(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of CamRequest(*(v2 + 48) + v14 * v10, v8, type metadata accessor for AffinityRankKey);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
      {
        break;
      }

      outlined destroy of CamRequest(v8, type metadata accessor for AffinityRankKey);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    outlined destroy of CamRequest(v8, type metadata accessor for AffinityRankKey);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5DD1A0](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x4F5455415F534D53;
          v8 = 0xEC000000444E4553;
        }

        else
        {
          v7 = 0xD000000000000010;
          v8 = 0x8000000266819EC0;
        }
      }

      else
      {
        v7 = 0x455045525F4B5341;
        v8 = 0xEA00000000005441;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x4F5455415F534D53 : 0xD000000000000010;
        v10 = a1 == 1 ? 0xEC000000444E4553 : 0x8000000266819EC0;
      }

      else
      {
        v9 = 0x455045525F4B5341;
        v10 = 0xEA00000000005441;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000002CLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "tDisambiguationRate";
      }

      else
      {
        v5 = 0xD000000000000033;
        v6 = "ary with duplicate key ";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000026;
      v8 = *(*(v2 + 48) + v4) ? v6 : "uateForRankingEvaluationRate";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000002CLL : 0xD000000000000033;
        v10 = a1 == 1 ? "tDisambiguationRate" : "ary with duplicate key ";
      }

      else
      {
        v9 = 0xD000000000000026;
        v10 = "uateForRankingEvaluationRate";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t outlined init with copy of CamRequest(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CamRequest(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)()
{
  OUTLINED_FUNCTION_44_1();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_22();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v19, v20, v21);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_45_0();
}

void OUTLINED_FUNCTION_19_11()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_29_4(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_40_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{

  return String.init<A>(describing:)();
}

unint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 128));
}

unint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  *(v2 + 34) = v1;
  *(v2 + 42) = v0;
  v6 = *(v4 - 168);

  return outlined init with copy of UUID?(v3, v6);
}

uint64_t OUTLINED_FUNCTION_72()
{
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void OUTLINED_FUNCTION_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 120);

  _os_log_impl(a1, v4, v8, a4, v5, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_78(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{
  v6 = *(v4 - 168);

  _os_log_impl(a1, v6, a3, a2, v3, 0x34u);
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_81(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_82()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_103()
{
  *(v1 + 34) = v0;
  *(v1 + 42) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1)
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;

  return UUID.uuidString.getter();
}

uint64_t OUTLINED_FUNCTION_106()
{
  *(v2 - 136) = v1;
  *(v2 - 120) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return outlined init with take of CaarHandler((v2 - 120), v1 + 40 * v0 + 32);
}

uint64_t OUTLINED_FUNCTION_108()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_109(uint64_t a1)
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;

  return UUID.uuidString.getter();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_111(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

BOOL OUTLINED_FUNCTION_114()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t static ActionAmbiguityHandler.register(camEnabledFeatures:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  while (v1)
  {
    if (*v2 && *v2 != 1)
    {

LABEL_8:
      v14[3] = &type metadata for CamFeatureFlag;
      v14[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v14[0]) = 2;
      v4 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(v14);
      if (v4)
      {
        type metadata accessor for ActionAmbiguityHandler();
        v5 = swift_allocObject();
        ActionAmbiguityHandler.init()();
        return v5;
      }

      break;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v2;
    --v1;
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.ambiguityHandling);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266819EC0, v14);
    *(v9 + 12) = 2080;
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v14);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_266790000, v7, v8, "[ActionAmbiguityHandler] Not registering as %s or %s is disabled", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return 0;
}

uint64_t ActionAmbiguityHandler.init()()
{
  v2 = v0;
  v3 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = 0xD000000000000021;
  *(v0 + 24) = 0x800000026681AF20;
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x800000026681AEF0;
  *(v0 + 48) = 0xD000000000000024;
  *(v0 + 56) = 0x800000026681AF50;
  *(v0 + 64) = v3;
  v4 = type metadata accessor for ActionAmbiguityHeuristicHandler(0);
  swift_allocObject();
  v5 = ActionAmbiguityHeuristicHandler.init(forModelWithName:)(0xD00000000000002DLL, 0x800000026681BA20);
  if (v1)
  {

    type metadata accessor for ActionAmbiguityHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v4;
    v13 = &protocol witness table for ActionAmbiguityHeuristicHandler;
    *&v11 = v5;
    outlined init with take of CaarHandler(&v11, v0 + 72);
    if (CamFeatureFlag.isEnabled.getter(7))
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.ambiguityHandling);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        OUTLINED_FUNCTION_7_5();
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266790000, v7, v8, "[ActionAmbiguityHandler] disambiguate_for_ranking_evaluation FF enabled, adding corresponding enforcer", v9, 2u);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      *(v2 + 136) = &type metadata for ForcedDisambiguationForRankingEvaluationActionEnforcer;
      *(v2 + 144) = &protocol witness table for ForcedDisambiguationForRankingEvaluationActionEnforcer;
    }

    else
    {
      *(v0 + 144) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0u;
    }
  }

  return v2;
}

uint64_t ActionAmbiguityHandler.handle(camInput:)(uint64_t a1)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  MEMORY[0x28223BE20](v101);
  v3 = (&v88 - v2);
  v4 = type metadata accessor for CamModelMetadata(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v88 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v17 = static ActionAmbiguityHandler.preExecutionOverride(camInput:)(a1);
  if (v17)
  {
    v18 = v17;
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.ambiguityHandling);
    v20 = v18;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v24 = swift_slowAlloc();
      v107[0] = v24;
      *v23 = 136315138;
      v25 = specialized ReflectedStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v107);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_266790000, v21, v22, "[ActionAmbiguityHandler] Using override before executing model %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

  else
  {
    v100 = v10;
    v99 = v11;
    v95 = v7;
    v98 = v16;
    v28 = v102;
    v97 = a1;
    v96 = v9;
    v94 = v3;
    if (one-time initialization token for ambiguityHandling != -1)
    {
      swift_once();
    }

    v29 = static Log.ambiguityHandling;
    v30 = v98;
    OSSignpostID.init(log:)();
    v31 = static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_8_16(v31, &dword_266790000, v32, "CamFeatureExtraction");
    v33 = type metadata accessor for CamInput(0);
    v34 = v103;
    v35 = specialized FeatureExtracting.extract(from:)(*(v97 + *(v33 + 44)));
    v20 = v34;
    if (v34)
    {
      v103 = v34;
      (*(v99 + 8))(v30, v100);
    }

    else
    {
      v36 = v35;
      v93 = v33;
      v37 = static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_8_16(v37, &dword_266790000, v38, "CamFeatureExtraction");
      v39 = v29;
      OSSignpostID.init(log:)();
      v40 = static os_signpost_type_t.begin.getter();
      OUTLINED_FUNCTION_6_21(v40, &dword_266790000, v41, "CamPrediction");
      v43 = *(v28 + 96);
      v42 = *(v28 + 104);
      __swift_project_boxed_opaque_existential_1((v28 + 72), v43);
      v44 = (*(v42 + 32))(v36, v43, v42);
      v45 = static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_6_21(v45, &dword_266790000, v46, "CamPrediction");
      v47 = *(v28 + 32);
      v108 = *(v28 + 16);
      v109 = v47;
      v110 = *(v28 + 48);
      v111 = *(v28 + 64);
      CamOutputProvider.toCamOutput(from:)(v44);
      v103 = 0;
      v50 = v48;
      v90 = v44;
      v91 = v14;
      v51 = *(v28 + 96);
      v52 = *(v28 + 104);
      __swift_project_boxed_opaque_existential_1((v28 + 72), v51);
      v53 = v96;
      (*(v52 + 24))(v51, v52);
      outlined init with copy of ActionAmbiguityActionEnforcer?(v28 + 112, &v104);
      v92 = v50;
      if (v106)
      {
        outlined init with take of CaarHandler(&v104, v107);
        __swift_project_boxed_opaque_existential_1(v107, v107[3]);
        ForcedDisambiguationForRankingEvaluationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(&v104);

        v54 = v105;
        v55 = v95;
        if (v105)
        {
          v56 = *(&v104 + 1);
          v57 = v104;
          if (one-time initialization token for ambiguityHandling != -1)
          {
            OUTLINED_FUNCTION_0_12();
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.ambiguityHandling);
          OUTLINED_FUNCTION_7_15();

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            OUTLINED_FUNCTION_9();
            v61 = swift_slowAlloc();
            v112 = v60;
            v62 = v61;
            v89 = swift_slowAlloc();
            *&v104 = v89;
            *v62 = 136315650;
            v113 = *(v53 + 56);
            v63 = String.init<A>(describing:)();
            v64 = v57;
            v66 = v56;
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v104);

            *(v62 + 4) = v67;
            *(v62 + 12) = 2080;
            v113 = v57;
            v68 = String.init<A>(describing:)();
            v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v104);
            v56 = v66;
            v55 = v95;

            *(v62 + 14) = v70;
            v57 = v64;
            *(v62 + 22) = 2080;
            *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v54, &v104);
            _os_log_impl(&dword_266790000, v59, v112, "[ActionAmbiguityHandler] Overriding %s with %s due to %s", v62, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_2();
            MEMORY[0x26D5DDCD0]();
            OUTLINED_FUNCTION_3_2();
            MEMORY[0x26D5DDCD0]();
          }

          LOBYTE(v104) = v57;
          v71._countAndFlagsBits = v56;
          v71._object = v54;
          CamOutput.overrideAction(action:enforcer:)(&v104, v71);
        }

        __swift_destroy_boxed_opaque_existential_0(v107);
      }

      else
      {

        outlined destroy of Token?(&v104, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
        v55 = v95;
      }

      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.ambiguityHandling);
      OUTLINED_FUNCTION_7_15();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v76 = swift_slowAlloc();
        v107[0] = v76;
        *v75 = 136315138;
        v77 = specialized ReflectedStringConvertible.description.getter();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v107);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_266790000, v73, v74, "[ActionAmbiguityHandler] handle will return output %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v80 = v101;
      v81 = v91;
      v82 = *(v28 + 96);
      v83 = *(v28 + 104);
      __swift_project_boxed_opaque_existential_1((v28 + 72), v82);
      (*(v83 + 24))(v82, v83);
      v84 = *(v80 + 48);
      v85 = v94;
      *v94 = v53;
      outlined init with take of CamModelMetadata(v55, v85 + v84);

      _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();

      outlined destroy of Token?(v85, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
      outlined destroy of CamModelMetadata(v96);
      v86 = *(v99 + 8);
      v87 = v100;
      v86(v81, v100);
      v86(v98, v87);
      return v53;
    }
  }

  return v20;
}

uint64_t static ActionAmbiguityHandler.preExecutionOverride(camInput:)(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for CamInput(0) + 44)) + 16) < 2uLL)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.ambiguityHandling);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_3_19(v3))
    {
      OUTLINED_FUNCTION_7_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_16(&dword_266790000, v4, v5, "[ActionAmbiguityHandler] Skipping due to lack of ranked actions in input");
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    goto LABEL_20;
  }

  if (SiriKitRuntimeAmbiguityFeatureFlags.isEnabled.getter())
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.ambiguityHandling);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_7_5();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "[ActionAmbiguityHandler] input_paraphrasing_flows feature flag is enabled", v9, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    if (CamFeatureFlag.isEnabled.getter(6))
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_3_19(v11))
      {
        OUTLINED_FUNCTION_7_5();
        *swift_slowAlloc() = 0;
        v14 = "[ActionAmbiguityHandler] disambiguate_all_ties feature flag is enabled, CAM can return a disambiguate action without constraints on the type of the action";
LABEL_18:
        OUTLINED_FUNCTION_5_16(&dword_266790000, v12, v13, v14);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (CamFeatureFlag.isEnabled.getter(7))
    {
      v10 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_3_19(v15))
      {
        OUTLINED_FUNCTION_7_5();
        *swift_slowAlloc() = 0;
        v14 = "[ActionAmbiguityHandler] disambiguate_for_ranking_evaluation feature flag is enabled, CAM can return a disambiguate action without constraints on the type of the action";
        goto LABEL_18;
      }

LABEL_19:

      return 0;
    }
  }

LABEL_20:
  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  return CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
}

uint64_t ActionAmbiguityHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  outlined destroy of Token?(v0 + 112, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
  return v0;
}

uint64_t ActionAmbiguityHandler.__deallocating_deinit()
{
  ActionAmbiguityHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t outlined init with copy of ActionAmbiguityActionEnforcer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AutoConfirmAction.action(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v5 > 2)
    {
      v6 = 3;
      goto LABEL_11;
    }

    v6 = v5;
    _print_unlocked<A, B>(_:_:)();
    if (!v4 && a2 == 0xE000000000000000)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v5;
    if (v8)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  *a3 = v6;
  return result;
}

SiriCam::AutoConfirmAction_optional __swiftcall AutoConfirmAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoConfirmAction@<X0>(uint64_t *a1@<X8>)
{
  result = AutoConfirmAction.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoConfirmAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoConfirmError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoConfirmError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void *one-time initialization function for kLoggingFeatureName()
{
  type metadata accessor for CAMSchemaCAMFeature(0);
  lazy protocol witness table accessor for type CamFeature and conformance CamFeature();
  result = Dictionary.init(dictionaryLiteral:)();
  kLoggingFeatureName._rawValue = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CamFeature and conformance CamFeature()
{
  result = lazy protocol witness table cache variable for type CamFeature and conformance CamFeature;
  if (!lazy protocol witness table cache variable for type CamFeature and conformance CamFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeature and conformance CamFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeature and conformance CamFeature;
  if (!lazy protocol witness table cache variable for type CamFeature and conformance CamFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeature and conformance CamFeature);
  }

  return result;
}

uint64_t CamUSOParse.getFirstUserDialogActAsTask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x26D5DC620](v5);
  specialized Collection.first.getter(v8);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v11 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D5DD230](0, v11);
      }

      else
      {
        v9 = *(v11 + 32);
      }
    }

    else
    {

      v9 = 0;
    }

    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t *CRRFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v2 = a1;
  v3 = a1 + 64;
  OUTLINED_FUNCTION_2_21();
  v5 = v4 >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v118 = v5;
  v120 = v2;
  v111 = v2;
  while (v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_17();
    v9 = v8 | (v6 << 6);
    v10 = (*(v2 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v112 = *(*(v2 + 56) + 8 * v9);

    v13._countAndFlagsBits = 0x47796E4171657266;
    v13._object = 0xEC00000070756F72;
    if (!String.hasPrefix(_:)(v13))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_26();
    v121 = v14 | 0x656D615300000000;
    v15 = lazy protocol witness table accessor for type String and conformance String();
    v23 = OUTLINED_FUNCTION_9_14(v15, v16, v17, v18, v19, v20, v21, v22, v97, v100, v15, v15, v107, isUnique, v110, v111, v112, v11, v118, v120, v121, 0xE800000000000000, v122);
    v30 = OUTLINED_FUNCTION_6_22(v23, v24, v25, v26, v27, v28, MEMORY[0x277D837D0], v29, v98, v101, v103, v105);
    if (*(v120 + 16))
    {
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
      v34 = v33;

      v2 = v111;
      if ((v34 & 1) == 0)
      {
        goto LABEL_16;
      }

      v35 = v120;
      v36 = *(*(v120 + 56) + 8 * v32);
      v37 = __OFSUB__(v113, v36);
      v114 = v113 - v36;
      if (v37)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_1_26();
      v47 = OUTLINED_FUNCTION_9_14(v39, v40, v41, v42, v43, v44, v45, v46, v97, v100, v15, v15, v107, isUnique, v12, v111, v114, v116, v118, v120, v38 | 0x6666694400000000, 0xEB00000000796E41, v122);
      v54 = OUTLINED_FUNCTION_6_22(v47, v48, v49, v50, v51, v52, MEMORY[0x277D837D0], v53, v99, v102, v104, v106);
      v56 = v55;
      isUniquea = swift_isUniquelyReferenced_nonNull_native();
      v123 = v35;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
      v59 = v35[2];
      v60 = (v58 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        goto LABEL_42;
      }

      v62 = v57;
      v63 = v58;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
      v65 = isUniquea;
      isUnique = v64;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v65, v61))
      {
        v66 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
        v2 = v111;
        if ((v63 & 1) != (v67 & 1))
        {
          goto LABEL_44;
        }

        v62 = v66;
      }

      else
      {
        v2 = v111;
      }

      if (v63)
      {
        *(v123[7] + 8 * v62) = v115;
      }

      else
      {
        v123[(v62 >> 6) + 8] |= 1 << v62;
        v68 = (v123[6] + 16 * v62);
        *v68 = v54;
        v68[1] = v56;
        *(v123[7] + 8 * v62) = v115;
        v69 = v123[2];
        v37 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v37)
        {
          goto LABEL_43;
        }

        v123[2] = v70;
      }

      v120 = v123;
      specialized __RawDictionaryStorage.find<A>(_:)(v110, v117);
      v72 = v71;

      v5 = v118;
      if (v72)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v123[3]);

        _NativeDictionary._delete(at:)();
      }
    }

    else
    {

      v2 = v111;
LABEL_16:

      v5 = v118;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
      v74 = v120;
      v75 = static _DictionaryStorage.copy(original:)();
      v76 = 0;
      OUTLINED_FUNCTION_2_21();
      v78 = v77 >> 6;
      v119 = v79 + 64;
LABEL_26:
      v81 = v76;
      while (1)
      {
        v76 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_39;
        }

        if (v76 >= v78)
        {
          break;
        }

        v82 = *(v120 + 64 + 8 * v76);
        ++v81;
        if (v82)
        {
          v80 = __clz(__rbit64(v82));
          v83 = (v82 - 1) & v82;
          while (1)
          {
            v84 = v80 | (v76 << 6);
            v85 = (*(v74 + 48) + 16 * v84);
            v87 = *v85;
            v86 = v85[1];
            v88 = *(*(v74 + 56) + 8 * v84);
            v89 = type metadata accessor for MLMultiArray();

            v90 = v88;
            v91 = v89;
            v92 = static MLMultiArray.makeScalar(from:)(v90);
            if (v124)
            {
              break;
            }

            *(v119 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
            v93 = (v75[6] + 16 * v84);
            *v93 = v87;
            v93[1] = v86;
            *(v75[7] + 8 * v84) = v92;
            v94 = v75[2];
            v37 = __OFADD__(v94, 1);
            v95 = v94 + 1;
            if (v37)
            {
              goto LABEL_40;
            }

            v75[2] = v95;
            v74 = v120;
            if (!v83)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_8_17();
          }

          return v91;
        }
      }

      v91 = specialized _NativeDictionary.filter(_:)(v75);

      return v91;
    }

    v1 = *(v3 + 8 * v7);
    ++v6;
    if (v1)
    {
      v6 = v7;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_22();
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_5_17();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_10_15();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_16();
    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_10_15();
  }
}

{
  OUTLINED_FUNCTION_3_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_22();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_5_17();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_10_15();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_16();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_10_15();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_22();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_5_17();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0((v14[7] + 32 * v10));
    OUTLINED_FUNCTION_10_15();

    outlined init with take of Any(v15, v16);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_10_15();
  }
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo12MLMultiArrayCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab14VKXEfU_SS_So12iJ4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n059_s7SiriCam19CRRFeatureExtractorV11extractImpl4fromSDySSSo12iJ40CGSDySSSiG_tKFSbSS3key_AG5valuet_tXEfU0_Tf1nnc_n(v8, v4, v2);
      MEMORY[0x26D5DDCD0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v23 = 0;
  v24 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v24 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(v24 + 56) + 8 * v12);
    v25[0] = *v13;
    v25[1] = v14;
    MEMORY[0x28223BE20](a1);
    v20[2] = v25;

    v16 = v15;
    v17 = v26;
    v18 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v20, &outlined read-only object #0 of one-time initialization function for CRR_FEATURES);
    v26 = v17;

    if (v18)
    {
      *(v22 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v22, v21, v23, v24);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo12MLMultiArrayCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab14VKXEfU_SS_So12iJ4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n059_s7SiriCam19CRRFeatureExtractorV11extractImpl4fromSDySSSo12iJ40CGSDySSSiG_tKFSbSS3key_AG5valuet_tXEfU0_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ConstantStepFeatureExtractor.extractImpl(from:)(double a1)
{
  type metadata accessor for MLMultiArray();
  result = static MLMultiArray.makeScalar(from:)(a1);
  v4 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    strcpy((inited + 32), "constant_step");
    *(inited + 46) = -4864;
    *(inited + 48) = v4;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

SiriCam::PluginToBundleMap_optional __swiftcall PluginToBundleMap.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t PluginToBundleMap.associatedAppBundleId.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1E:
      return result;
    case 2:
    case 0xD:
    case 0xF:
    case 0x10:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
    case 0x13:
    case 0x18:
    case 0x1D:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
    case 0x1F:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x17:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t PluginToBundleMap.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 2:
    case 5:
    case 0x1D:
      result = 0xD00000000000002CLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 8:
    case 0xF:
    case 0x1B:
      result = 0xD00000000000002FLL;
      break;
    case 9:
    case 0xC:
    case 0x1C:
    case 0x1E:
      result = 0xD000000000000026;
      break;
    case 0xA:
    case 0xD:
    case 0x12:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000022;
      break;
    case 0xE:
      result = 0xD000000000000027;
      break;
    case 0x10:
      result = 0xD000000000000032;
      break;
    case 0x11:
    case 0x14:
    case 0x18:
    case 0x1F:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0xD000000000000031;
      break;
    case 0x15:
      result = 0xD00000000000002ELL;
      break;
    case 0x16:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD000000000000023;
      break;
    case 0x1A:
      result = 0xD000000000000033;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PluginToBundleMap and conformance PluginToBundleMap()
{
  result = lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap;
  if (!lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PluginToBundleMap@<X0>(unint64_t *a1@<X8>)
{
  result = PluginToBundleMap.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginToBundleMap(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PluginToBundleMap(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

uint64_t FallbackRanker.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_5();
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v70 = v17;
  MEMORY[0x28223BE20](v18);
  v59 = &v52 - v19;
  type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v57 = v21;
  v58 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v52 = v6;
  v71 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v25 = 0;
  v56 = type metadata accessor for ActionCandidate(0);
  OUTLINED_FUNCTION_22();
  v27 = a6 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v28 = v71;
  v29 = v24;
  v55 = *(v30 + 72);
  v53 = (v9 + 8);
  v54 = (v9 + 16);
  v31 = v58;
  do
  {
    v66 = v24;
    v67 = v25;
    v68 = v27;
    v69 = v28;
    v33 = v59;
    v32 = v60;
    v34 = *(v60 + 48);
    outlined init with copy of ActionCandidate(v27, &v59[v34], type metadata accessor for ActionCandidate);
    v35 = v70;
    *v70 = v25;
    v36 = (v35 + *(v32 + 48));
    outlined init with take of ActionCandidate(&v33[v34], v36, type metadata accessor for ActionCandidate);
    v37 = v36[1];
    v65 = *v36;
    v38 = v56;
    v39 = v61;
    outlined init with copy of ActionCandidate(v36 + *(v56 + 20), v61, type metadata accessor for CamParse);
    v40 = v24 / v29;
    v41 = *(v36 + *(v38 + 28));
    v42 = v62;
    outlined init with copy of ActionCandidate(v39, v62, type metadata accessor for CamParse);

    v43 = v63;
    UUID.init()();
    v44 = &v23[v31[10]];
    *v23 = v65;
    *(v23 + 1) = v37;
    outlined init with copy of ActionCandidate(v42, &v23[v31[5]], type metadata accessor for CamParse);
    *&v23[v31[6]] = MEMORY[0x277D84F90];
    *&v23[v31[7]] = v40;
    *&v23[v31[8]] = v41;
    v45 = v64;
    (*v54)(&v23[v31[9]], v43, v64);
    type metadata accessor for MLFeatureValue();
    *&v23[v31[11]] = Dictionary.init(dictionaryLiteral:)();
    *v44 = 0;
    v44[1] = 0;
    v46 = specialized ActionProtocol.inferBundleId()();
    v48 = v47;
    (*v53)(v43, v45);
    outlined destroy of CamParse(v42);
    v49 = v39;
    v28 = v69;
    outlined destroy of CamParse(v49);
    *v44 = v46;
    v44[1] = v48;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v70, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
    v71 = v28;
    v50 = *(v28 + 16);
    if (v50 >= *(v28 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v71;
    }

    v25 = v67 + 1;
    *(v28 + 16) = v50 + 1;
    outlined init with take of ActionCandidate(v23, v28 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v50, type metadata accessor for RankedAction);
    v27 = v68 + v55;
    v24 = v66 - 1;
  }

  while (v66 != 1);
  return v28;
}

uint64_t FallbackRanker.rank(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for UUID();
  v10 = __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v15 = FallbackRanker.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v10, v11, v12, v13, v14, a5);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v15;
}

void *one-time initialization function for caarProvider()
{
  type metadata accessor for CaarProvider();
  swift_allocObject();
  result = CaarProvider.().init()();
  static CaarProvider.caarProvider = result;
  return result;
}

void *CaarProvider.().init()()
{
  v1 = v0;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, kLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Initialising Caar Provider", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  if (CamFeatureFlag.isEnabled.getter(4))
  {
    v6 = type metadata accessor for DawnHeuristicScorer();
    v7 = &protocol witness table for DawnHeuristicScorer;
  }

  else
  {
    v6 = type metadata accessor for HeuristicScorer();
    v7 = &protocol witness table for HeuristicScorer;
  }

  v15[3] = v6;
  v15[4] = v7;
  v15[0] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam11TieBreaking_pXpGMd, _ss23_ContiguousArrayStorageCy7SiriCam11TieBreaking_pXpGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266813E50;
  *(v8 + 32) = type metadata accessor for AppLaunchTieBreaker(0);
  *(v8 + 40) = &protocol witness table for AppLaunchTieBreaker;
  *(v8 + 48) = type metadata accessor for DisabledAppShortcutTieBreaker(0);
  *(v8 + 56) = &protocol witness table for DisabledAppShortcutTieBreaker;
  *(v8 + 64) = type metadata accessor for TrialOverridesTieBreaker(0);
  *(v8 + 72) = &protocol witness table for TrialOverridesTieBreaker;
  *(v8 + 80) = type metadata accessor for UserHistoryTieBreaker(0);
  *(v8 + 88) = &protocol witness table for UserHistoryTieBreaker;
  outlined init with copy of SignalProviding(v15, v14);
  v9 = type metadata accessor for CodeBasedRankerHandler();
  swift_allocObject();
  v1[2] = CodeBasedRankerHandler.init(scorer:tieBreakerChain:)(v14, v8);
  v1[5] = v9;
  v1[6] = &protocol witness table for CodeBasedRankerHandler;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266790000, v10, v11, "CAAR Handler created successfully", v12, 2u);
    MEMORY[0x26D5DDCD0](v12, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v1;
}

uint64_t CaarProvider.__deallocating_deinit()
{
  outlined destroy of (CamLogOutput, CamModelMetadata)(v0 + 16, &_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t outlined init with take of ActionCandidate(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t Array<A>.execute(_:)(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for TopTwo(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  Array<A>.topTwo.getter(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of TopTwo?(v6);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.ranker);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "Fewer than 2 actions, won't tie break.", v18, 2u);
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    outlined init with take of TopTwo(v6, v14, type metadata accessor for TopTwo);
    Array<A>.tieBreakScores(tie:)(v11, v14, a2);
    v19 = Array<A>.nonTopTwo.getter(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v20 = *(type metadata accessor for RankedAction(0) - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_266813E60;
    v24 = v23 + v22;
    _s7SiriCam12RankedActionVWOcTm_1(v11, v24, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_1(v11 + *(v7 + 20), v24 + v21, type metadata accessor for RankedAction);
    v27 = v23;
    specialized Array.append<A>(contentsOf:)(v19);
    outlined destroy of TopTwo(v11, type metadata accessor for TopTwo);
    outlined destroy of TopTwo(v14, type metadata accessor for TopTwo);
    return v27;
  }

  return a1;
}

uint64_t outlined destroy of TopTwo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ScoreBoost.loggingInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D56BE0]) init];
  if (v6)
  {
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v7 = type metadata accessor for ScoreBoost(0);
    (*(v3 + 16))(v5, v1 + *(v7 + 24), v2);
    v8 = SISchemaUUID.__allocating_init(nsuuid:)(v5);
    [v6 setActionCandidateId_];

    [v6 setBoost_];
    if (*(v1 + 16))
    {
      v9 = MEMORY[0x26D5DCC90](*(v1 + 8));
    }

    else
    {
      v9 = 0;
    }

    [v6 setReason_];
  }

  return v6;
}

uint64_t Array<A>.tieBreakScores(tie:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v63 = a1;
  v6 = type metadata accessor for TopTwo(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - v10;
  v11 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  isa = a3[2].isa;
  if (isa)
  {
    v62 = v8;
    v13 = a3 + 4;
    *&v9 = 136315650;
    v65 = v9;
    *&v9 = 136315138;
    v66 = v9;
    v64 = MEMORY[0x277D84F90];
    v68 = a2;
    do
    {
      v70 = *&v13->isa;
      v14 = v69;
      _s7SiriCam12RankedActionVWOcTm_1(a2, v69, type metadata accessor for TopTwo);
      v3 = *(&v70 + 1);
      v15 = *(*(&v70 + 1) + 24);
      v75 = v70;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
      a3 = v70;
      v15(v14, v70, v3);
      if ((*(v3 + 8))(a3, v3))
      {
        LODWORD(v17) = TieBreaking.shouldForceSkip()();
        v18 = (*(v3 + 32))(a3, v3);
        LOBYTE(v11) = v18;
        if (v17 & 1) == 0 && (v18)
        {
          if (one-time initialization token for ranker == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_46;
        }

        if (one-time initialization token for ranker != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.ranker);
        outlined init with copy of SignalProviding(v74, v72);
        v3 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v3, v20))
        {
          v21 = swift_slowAlloc();
          LODWORD(v70) = v17;
          v17 = v21;
          v22 = swift_slowAlloc();
          v71 = v22;
          *v17 = v65;
          v23 = v73;
          __swift_project_boxed_opaque_existential_1(v72, v73);
          v24 = TieBreaking.name.getter(v23);
          v67 = boxed_opaque_existential_1;
          v25 = v11;
          v11 = v26;
          __swift_destroy_boxed_opaque_existential_0(v72);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v11, &v71);
          LOBYTE(v11) = v25;

          *(v17 + 4) = v27;
          *(v17 + 12) = 1024;
          *(v17 + 14) = v25 & 1;
          *(v17 + 18) = 1024;
          *(v17 + 20) = v70 & 1;
          _os_log_impl(&dword_266790000, v3, v20, "Skipping %s (supported=%{BOOL}d, forceSkipped=%{BOOL}d).", v17, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v22);
          v28 = v22;
          a2 = v68;
          MEMORY[0x26D5DDCD0](v28, -1, -1);
          v29 = v17;
          LOBYTE(v17) = v70;
          MEMORY[0x26D5DDCD0](v29, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v72);
        }

        a3 = TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(v11 & 1, v17 & 1, MEMORY[0x277D84F90], a3);
        MEMORY[0x26D5DCE50]();
        if (v76[2].isa >= (v76[3].isa >> 1))
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v76;
      }

      else
      {
        if (one-time initialization token for ranker != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.ranker);
        outlined init with copy of SignalProviding(v74, v72);
        a3 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(a3, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v71 = v33;
          *v32 = v66;
          v34 = v73;
          __swift_project_boxed_opaque_existential_1(v72, v73);
          v35 = TieBreaking.name.getter(v34);
          v37 = v36;
          __swift_destroy_boxed_opaque_existential_0(v72);
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v71);
          a2 = v68;

          *(v32 + 4) = v38;
          _os_log_impl(&dword_266790000, a3, v31, "%s is not enabled.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x26D5DDCD0](v33, -1, -1);
          MEMORY[0x26D5DDCD0](v32, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v72);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v74);
      v13 += 2;
      isa = (isa - 1);
    }

    while (isa);
  }

  _s7SiriCam12RankedActionVWOcTm_1(a2, v63, type metadata accessor for TopTwo);
  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v74[0] = MEMORY[0x277D84F90];
  v41 = *(v11 + 16);
LABEL_21:
  v64 = v40;
  while (1)
  {
    if (v41 == v39)
    {

      return v64;
    }

    if (v39 >= *(v11 + 16))
    {
      break;
    }

    v42 = *(v11 + 8 * v39++ + 32);
    if (v42)
    {
      a3 = v42;
      MEMORY[0x26D5DCE50]();
      if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v40 = v74[0];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_30:
  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.ranker);
  outlined init with copy of SignalProviding(v74, v72);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v71 = v47;
    *v46 = v66;
    v48 = v73;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v49 = TieBreaking.name.getter(v48);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_0(v72);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v71);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_266790000, v44, v45, "%s supports this tie.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26D5DDCD0](v47, -1, -1);
    MEMORY[0x26D5DDCD0](v46, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v53 = v62;
  v54 = TieBreaking.boostTopTwo(tie:)(v62, v68, a3, v3);
  TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(v11 & 1, 0, v54, a3);

  MEMORY[0x26D5DCE50](v55);
  if (v76[2].isa >= (v76[3].isa >> 1))
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3 = v76;
  _s7SiriCam12RankedActionVWOcTm_1(v53, v63, type metadata accessor for TopTwo);
  v56 = 0;
  v72[0] = MEMORY[0x277D84F90];
  v57 = a3[2].isa;
  while (v57 != v56)
  {
    if (v56 >= a3[2].isa)
    {
      goto LABEL_45;
    }

    v58 = a3[v56 + 4].isa;
    v56 = (v56 + 1);
    if (v58)
    {
      v59 = v58;
      MEMORY[0x26D5DCE50]();
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v64 = v72[0];
    }
  }

  outlined destroy of TopTwo(v62, type metadata accessor for TopTwo);

  __swift_destroy_boxed_opaque_existential_0(v74);
  return v64;
}

uint64_t TieBreaking.name.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

Swift::Bool __swiftcall TieBreaking.shouldForceSkip()()
{
  if ((*(v0 + 16))() == 4)
  {
    return 0;
  }

  return ForcedDisambiguation.decision()();
}

id TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D56BF0]) init];
  if (v7)
  {
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARScoreBoost, 0x277D56BE0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v7 setActionCandidateBoosts_];

    v9 = TieBreaking.name.getter(a4);
    v10 = MEMORY[0x26D5DCC90](v9);

    [v7 setTieBreakerName_];

    [v7 setIsTieBreakerSupported_];
    [v7 setWasTieBreakerForcedSkipped_];
  }

  return v7;
}

uint64_t TieBreaking.boostTopTwo(tie:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a1;
  v8 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v95 = (v10 - v11);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v99 = v87 - v13;
  OUTLINED_FUNCTION_6();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v87 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = v87 - v18;
  v20 = type metadata accessor for ScoreBoost(0);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_4();
  v96 = v21 - v22;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  v94 = (v87 - v24);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v25);
  v97 = v87 - v26;
  OUTLINED_FUNCTION_6();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v87 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (v87 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = v87 - v34;
  v36 = *(a2 + *(v8 + 44));
  v37 = *(a4 + 40);
  v38 = a2 + *(v8 + 36);
  v91 = a3;
  v92 = v4;
  v93 = a4;
  v89 = a4 + 40;
  v88 = v37;
  v37(v36, v38, a3, a4);
  RankedAction.with(score:)();
  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.ranker);
  OUTLINED_FUNCTION_3_21();
  v98 = v19;
  _s7SiriCam12RankedActionVWOcTm_1(v19, v17, v41);
  _s7SiriCam12RankedActionVWOcTm_1(v35, v33, type metadata accessor for ScoreBoost);
  _s7SiriCam12RankedActionVWOcTm_1(v35, v30, type metadata accessor for ScoreBoost);
  v87[1] = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v101 = v35;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v102 = v90;
    *v45 = 136315650;
    v47 = *v17;
    v46 = v17[1];

    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v17, v48);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v102);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2048;
    v50 = *v33;
    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v33, v51);
    *(v45 + 14) = v50;
    *(v45 + 22) = 2080;
    if (*(v30 + 2))
    {
      v52 = *(v30 + 1);
      v53 = *(v30 + 2);
    }

    else
    {
      v52 = 7104878;
      v53 = 0xE300000000000000;
    }

    v55 = v99;

    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v30, v57);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v102);

    *(v45 + 24) = v58;
    _os_log_impl(&dword_266790000, v42, v43, "Boosted %s by %f, reason: %s", v45, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    v56 = v100;
  }

  else
  {

    outlined destroy of TopTwo(v30, type metadata accessor for ScoreBoost);
    outlined destroy of TopTwo(v33, type metadata accessor for ScoreBoost);
    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v17, v54);
    v55 = v99;
    v56 = v100;
  }

  v90 = type metadata accessor for TopTwo(0);
  v59 = v97;
  v88(*(a2 + *(v90 + 20) + *(v8 + 44)), a2 + *(v90 + 20) + *(v8 + 36), v91, v93);
  RankedAction.with(score:)();
  OUTLINED_FUNCTION_3_21();
  v60 = v95;
  _s7SiriCam12RankedActionVWOcTm_1(v55, v95, v61);
  v62 = v94;
  _s7SiriCam12RankedActionVWOcTm_1(v59, v94, type metadata accessor for ScoreBoost);
  v63 = v96;
  _s7SiriCam12RankedActionVWOcTm_1(v59, v96, type metadata accessor for ScoreBoost);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v66 = 136315650;
    v67 = *v60;
    v68 = v60[1];

    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v60, v69);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v102);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2048;
    v71 = *v62;
    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v62, v72);
    *(v66 + 14) = v71;
    *(v66 + 22) = 2080;
    if (*(v63 + 16))
    {
      v73 = *(v63 + 8);
      v74 = v63;
      v75 = *(v63 + 16);
    }

    else
    {
      v73 = 7104878;
      v74 = v63;
      v75 = 0xE300000000000000;
    }

    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v74, v78);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v102);

    *(v66 + 24) = v79;
    _os_log_impl(&dword_266790000, v64, v65, "Boosted %s by %f, reason: %s", v66, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    v55 = v99;
    v56 = v100;
  }

  else
  {

    OUTLINED_FUNCTION_4_16();
    outlined destroy of TopTwo(v63, v76);
    outlined destroy of TopTwo(v62, v64);
    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v60, v77);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24CAARSchemaCAARScoreBoostCSgGMd, &_ss23_ContiguousArrayStorageCySo24CAARSchemaCAARScoreBoostCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813E60;
  *(inited + 32) = ScoreBoost.loggingInfo.getter();
  v81 = 0;
  *(inited + 40) = ScoreBoost.loggingInfo.getter();
  v82 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  while (v81 != 2)
  {
    v83 = *(inited + 8 * v81++ + 32);
    if (v83)
    {
      v84 = v83;
      MEMORY[0x26D5DCE50]();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v82 = v102;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_4_16();
  outlined destroy of TopTwo(v59, v85);
  outlined destroy of TopTwo(v101, inited);
  outlined init with take of TopTwo(v98, v56, type metadata accessor for RankedAction);
  outlined init with take of TopTwo(v55, v56 + *(v90 + 20), type metadata accessor for RankedAction);
  return v82;
}

uint64_t type metadata accessor for ScoreBoost(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScoreBoost;
  if (!type metadata singleton initialization cache for ScoreBoost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7SiriCam12RankedActionVWOcTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of TopTwo(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of TopTwo(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void type metadata completion function for ScoreBoost(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t CamFeatureFlag.isEnabled.getter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CamFeatureFlag.forceEnabled;
  if (*(static CamFeatureFlag.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for CamFeatureFlag;
    v7[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v5 & 1;
}

const char *CamFeatureFlag.feature.getter(char a1)
{
  result = "verbose_logging";
  switch(a1)
  {
    case 1:
      result = "word_embeddings";
      break;
    case 2:
      result = "intent_disambiguation";
      break;
    case 3:
      result = "personal_auto_send";
      break;
    case 4:
      result = "cdm_refactor";
      break;
    case 5:
      result = "smart_disambiguation";
      break;
    case 6:
      result = "disambiguate_all_ranking_ties";
      break;
    case 7:
      result = "disambiguate_for_ranking_evaluation";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t static RankedAction.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
  if (v10 || (OUTLINED_FUNCTION_1_28(v8, v9) & 1) != 0)
  {
    return 0;
  }

  v12 = *a2;
  v11 = a2[1];
  v13 = v12 == 0xD000000000000021 && 0x8000000266819930 == v11;
  if (v13 || (OUTLINED_FUNCTION_1_28(v12, v11) & 1) != 0)
  {
    return 1;
  }

  if (v8 == v12 && v9 == v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_25();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_25();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static RankedAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RankedAction(0);

  return static UUID.== infix(_:_:)();
}

unint64_t lazy protocol witness table accessor for type RankedAction and conformance RankedAction()
{
  result = lazy protocol witness table cache variable for type RankedAction and conformance RankedAction;
  if (!lazy protocol witness table cache variable for type RankedAction and conformance RankedAction)
  {
    type metadata accessor for RankedAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction and conformance RankedAction);
  }

  return result;
}

uint64_t _sSLsE2leoiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction(0) + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 >= v6)
  {
    if (v6 >= v5)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = *a1;
        v12 = a1[1];
        v14 = v13 == 0xD000000000000021 && 0x8000000266819930 == v12;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_2;
        }

        v15 = v8 == v13 && v9 == v12;
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          return v7 & 1;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

LABEL_2:
  v7 = 0;
  return v7 & 1;
}

uint64_t _sSLsE2geoiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 >= v6)
  {
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = *a2;
        v12 = a2[1];
        v14 = v13 == 0xD000000000000021 && 0x8000000266819930 == v12;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_2;
        }

        v15 = v8 == v13 && v9 == v12;
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          return v7 & 1;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

LABEL_2:
  v7 = 0;
  return v7 & 1;
}

uint64_t one-time initialization function for dispatchQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v8 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AutoConfirmProvider.dispatchQueue = result;
  return result;
}

void *one-time initialization function for autoConfirmProvider()
{
  type metadata accessor for AutoConfirmProvider();
  swift_allocObject();
  result = AutoConfirmProvider.().init()();
  static AutoConfirmProvider.autoConfirmProvider = result;
  return result;
}

uint64_t AutoConfirmProvider.().init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.autoSend);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Initialising AutoConfirmProvider", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  type metadata accessor for AutoSendHandler(0);
  swift_allocObject();
  *(v1 + 16) = AutoSendHandler.init()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266790000, v6, v7, "Successfully initialised AutoConfirmProvider", v8, 2u);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
  }

  return v1;
}

uint64_t AutoConfirmProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t PersonalContextFeatureExtractor.transformCategorical(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v7)
    {
      return *(*(a3 + 56) + 8 * v6);
    }
  }

  _StringGuts.grow(_:)(27);

  MEMORY[0x26D5DCD80](a1, a2);
  MEMORY[0x26D5DCD80](46, 0xE100000000000000);
  v9 = lazy protocol witness table accessor for type CamError and conformance CamError();
  v10 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v9);
  *v11 = 0xD000000000000018;
  v11[1] = 0x800000026681BEC0;
  return OUTLINED_FUNCTION_2(v10, v11);
}

uint64_t PersonalContextFeatureExtractor.transformTimeRange(_:)(unint64_t a1, char a2)
{
  if (a2)
  {
    v2 = lazy protocol witness table accessor for type CamError and conformance CamError();
    v3 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v2);
    *v4 = 0xD000000000000019;
    v4[1] = 0x800000026681BEA0;
    return OUTLINED_FUNCTION_2(v3, v4);
  }

  else
  {
    Dictionary.init(dictionaryLiteral:)();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v7 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v9);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v10 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11, v12);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v13 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v14, 0xEA0000000000656DLL);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v15 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 1853317476, 0xE400000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v16 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v17, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v18 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v19, 0xEA0000000000656DLL);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v20 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 1802728804, 0xE400000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v21 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v22, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v23 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v24, 0xE900000000000065);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v25 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v26, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v27 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v28, 0xE500000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v29 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v30, v31);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v32 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v33, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v34 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v36 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v37, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v38 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, 0xE800000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v40 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v41, v42);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v43 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v44, v45);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v46 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v47, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v48 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v49, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v50 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v51, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((a1 >> 22) & 1, 0x7265746E6977, 0xE600000000000000);
    return v52;
  }
}

uint64_t PersonalContextFeatureExtractor.gatherCommonSignals()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2668185F0;
  v2 = type metadata accessor for DeviceClassSignal();
  v3 = MEMORY[0x277D60260];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  DeviceClassSignal.init()();
  v4 = type metadata accessor for ClientHourOfDaySignal();
  v5 = MEMORY[0x277D602E0];
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  ClientHourOfDaySignal.init()();
  v6 = type metadata accessor for ClientTimeRangeSignal();
  v7 = MEMORY[0x277D602E8];
  *(v1 + 136) = v6;
  *(v1 + 144) = v7;
  __swift_allocate_boxed_opaque_existential_1((v1 + 112));
  ClientTimeRangeSignal.init()();
  v8 = type metadata accessor for ClientDaylightSignal();
  swift_allocObject();
  v9 = ClientDaylightSignal.init()();
  v10 = MEMORY[0x277D602B8];
  *(v1 + 176) = v8;
  *(v1 + 184) = v10;
  *(v1 + 152) = v9;
  v11 = type metadata accessor for ClientCarplaySignal();
  swift_allocObject();
  v12 = ClientCarplaySignal.init()();
  v13 = MEMORY[0x277D60298];
  *(v1 + 216) = v11;
  *(v1 + 224) = v13;
  *(v1 + 192) = v12;
  type metadata accessor for SignalGatherer();
  swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)();

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

  swift_beginAccess();
  v14 = *(v0 + 16);

  return v14;
}

uint64_t closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(char *a1, char *a2)
{
  v56 = a2;
  i = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  MEMORY[0x28223BE20](v55);
  v3 = (&v52 - v2);
  v4 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SignalGathererError();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(i, &v52 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v16, v19, v8);
    if (one-time initialization token for autoSend == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = v5;
    v53 = v4;
    (*(v5 + 32))(v7, v19, v4);
    v33 = SignalGatherer.ValuesWithTimings.values.getter();
    v8 = v33;
    v9 = v33 + 64;
    v34 = 1 << *(v33 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v33 + 64);
    v14 = ((v34 + 63) >> 6);

    v37 = 0;
    v16 = v7;
    for (i = v7; v36; v16 = i)
    {
      v38 = v37;
LABEL_14:
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = v41 | (v38 << 6);
      v43 = *(v8 + 56);
      v44 = (*(v8 + 48) + 16 * v42);
      v45 = *v44;
      v46 = v44[1];
      v47 = type metadata accessor for SignalValue();
      v48 = *(v47 - 8);
      v49 = v43 + *(v48 + 72) * v42;
      v50 = *(v55 + 48);
      (*(v48 + 16))(v3 + v50, v49, v47);
      *v3 = v45;
      v3[1] = v46;

      closure #1 in closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(v45, v46, v3 + v50, v56 + 2);
      outlined destroy of (key: String, value: SignalValue)(v3);
    }

    v40 = v52;
    v39 = v53;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v14)
      {

        (*(v40 + 8))(v16, v39);
      }

      v36 = *(v9 + 8 * v38);
      ++v37;
      if (v36)
      {
        v37 = v38;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.autoSend);
  v21 = *(v9 + 16);
  v21(v14, v16, v8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v56 = v16;
    v25 = v24;
    v26 = swift_slowAlloc();
    v57 = v26;
    *v25 = 136315138;
    v21(v53, v14, v8);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = *(v9 + 8);
    v30(v14, v8);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v57);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_266790000, v22, v23, "PersonalContextFeatureExtractor: signal gatherer error: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26D5DDCD0](v26, -1, -1);
    MEMORY[0x26D5DDCD0](v25, -1, -1);

    return (v30)(v56, v8);
  }

  else
  {

    v51 = *(v9 + 8);
    v51(v14, v8);
    return (v51)(v16, v8);
  }
}

void closure #1 in closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SignalValue();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a3, v8);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D60170])
  {
    (*(v9 + 96))(v11, v8);
    v12 = *v11;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2);
    *a4 = v17;
    swift_endAccess();
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.autoSend);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266790000, v14, v15, "PersonalContextFeatureExtractor: Ignoring bundle-dependent signal; can only use independent signals in this context", v16, 2u);
      MEMORY[0x26D5DDCD0](v16, -1, -1);
    }
  }
}

char *PersonalContextFeatureExtractor.extractImpl(from:)()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v68 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v68 - v9;
  v11 = Dictionary.init(dictionaryLiteral:)();
  static Locale.current.getter();
  v71 = Locale.regionCode.getter();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v10, v1);
  if (!v13)
  {

    v20 = lazy protocol witness table accessor for type CamError and conformance CamError();
    v21 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v20);
    *v22 = xmmword_266818600;
LABEL_9:
    OUTLINED_FUNCTION_2(v21, v22);
    return v8;
  }

  static Locale.current.getter();
  v69 = Locale.languageCode.getter();
  v16 = v15;
  v14(v8, v1);
  if (!v16)
  {

    v23 = lazy protocol witness table accessor for type CamError and conformance CamError();
    v21 = OUTLINED_FUNCTION_6_2(&type metadata for CamError, v23);
    *v22 = 0xD000000000000010;
    *(v22 + 8) = 0x800000026681BE00;
    goto LABEL_9;
  }

  v70 = v16;
  static Locale.current.getter();
  v8 = Locale.identifier.getter();
  v14(v5, v1);
  if (one-time initialization token for top13LocaleMap != -1)
  {
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_15_10();
  PersonalContextFeatureExtractor.transformCategorical(_:_:)(v17, v18, v19);
  if (v0)
  {

LABEL_30:

    return v8;
  }

  OUTLINED_FUNCTION_16_10();

  swift_isUniquelyReferenced_nonNull_native();
  v72 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0x656C61636F6CLL, 0xE600000000000000);
  v24 = v72;
  if (one-time initialization token for top13RegionMap != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v25 = PersonalContextFeatureExtractor.transformCategorical(_:_:)(v71, v13, top13RegionMap._rawValue);

    swift_isUniquelyReferenced_nonNull_native();
    v72 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x6E6F69676572, 0xE600000000000000);
    v26 = v72;
    if (one-time initialization token for top13LanguageMap != -1)
    {
      swift_once();
    }

    v27 = PersonalContextFeatureExtractor.transformCategorical(_:_:)(v69, v70, top13LanguageMap._rawValue);
    OUTLINED_FUNCTION_13_14();

    swift_isUniquelyReferenced_nonNull_native();
    v72 = v26;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, 0x65676175676E616CLL, 0xE800000000000000);
    v28 = v72;
    v29 = PersonalContextFeatureExtractor.gatherCommonSignals()();
    specialized Dictionary.subscript.getter(0xD000000000000011, 0x800000026681BE20, v29);
    if (v30)
    {
      OUTLINED_FUNCTION_27_4();
      if (v31)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26(v32);
      v28 = v72;
    }

    OUTLINED_FUNCTION_13_14();
    specialized Dictionary.subscript.getter(0xD000000000000012, 0x800000026681BE40, v29);
    if (v33)
    {
      OUTLINED_FUNCTION_27_4();
      if (v34)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      v35 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26(v35);
      v28 = v72;
    }

    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_17_12("raw.clientHourOfDay");
    if (v36)
    {
      OUTLINED_FUNCTION_27_4();
      if (v37)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26(v38);
      v28 = v72;
    }

    specialized Dictionary.subscript.getter(0x697665442E776172, 0xEF7373616C436563, v29);
    if (v39)
    {
      OUTLINED_FUNCTION_27_4();
      if (v40)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      v41 = OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26(v41);
      v28 = v72;
    }

    v42 = OUTLINED_FUNCTION_17_12("raw.clientTimeRange");
    v13 = v43;

    v44 = PersonalContextFeatureExtractor.transformTimeRange(_:)(v42, v13 & 1);
    v46 = specialized Dictionary.merging(_:uniquingKeysWith:)(v44, v28);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
    v47 = static _DictionaryStorage.copy(original:)();
    v8 = v47;
    v48 = 0;
    v49 = 1 << *(v46 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v46 + 64;
    v52 = v50 & *(v46 + 64);
    v53 = (v49 + 63) >> 6;
    v69 = v47 + 64;
    v70 = v46;
    if (v52)
    {
      break;
    }

LABEL_36:
    v55 = v48;
    while (1)
    {
      v48 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v48 >= v53)
      {
        goto LABEL_30;
      }

      ++v55;
      if (*(v51 + 8 * v48))
      {
        OUTLINED_FUNCTION_12_16();
        v71 = v57 & v56;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  while (1)
  {
    v54 = __clz(__rbit64(v52));
    v71 = (v52 - 1) & v52;
LABEL_41:
    v58 = v54 | (v48 << 6);
    v59 = (*(v70 + 48) + 16 * v58);
    v60 = *v59;
    v13 = v59[1];
    v61 = *(*(v70 + 56) + 8 * v58);
    v62 = type metadata accessor for MLMultiArray();

    v63 = v61;
    v24 = v62;
    result = static MLMultiArray.makeScalar(from:)(v63);
    *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    v64 = (*(v8 + 6) + 16 * v58);
    *v64 = v60;
    v64[1] = v13;
    *(*(v8 + 7) + 8 * v58) = result;
    v65 = *(v8 + 2);
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      break;
    }

    *(v8 + 2) = v67;
    v52 = v71;
    if (!v71)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

double protocol witness for static FeatureExtracting.extractedFeatures.getter in conformance PersonalContextFeatureExtractor()
{
  if (one-time initialization token for extractedFeatures != -1)
  {
    swift_once();
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for RankedAction(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)()
{
  OUTLINED_FUNCTION_11_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v6 = OUTLINED_FUNCTION_14_16();
  if (!*(v1 + 16))
  {
LABEL_28:

LABEL_29:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_4_17();
  if (!v2)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v4])
      {
        OUTLINED_FUNCTION_12_16();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    if ((v21 & 1) == 0)
    {

      v0 = v20;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_20_12();
    v0 = v20;
    if (v18 != v19)
    {
      *v3 = -1 << v17;
    }

    else
    {
      OUTLINED_FUNCTION_25_8(v17);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_19_12();
LABEL_9:
    OUTLINED_FUNCTION_10_16();
    if ((v10 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_9_15();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3();
LABEL_20:
    OUTLINED_FUNCTION_3_22(v12);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_23_9();
  while (++v13 != v15 || (v14 & 1) == 0)
  {
    v16 = v13 == v15;
    if (v13 == v15)
    {
      v13 = 0;
    }

    v14 |= v16;
    if (*(v5 + 8 * v13) != -1)
    {
      OUTLINED_FUNCTION_22_6();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_11_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
  v6 = OUTLINED_FUNCTION_14_16();
  if (!v1[2])
  {
LABEL_28:

LABEL_29:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_4_17();
  if (!v2)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v4])
      {
        OUTLINED_FUNCTION_12_16();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    if ((v22 & 1) == 0)
    {

      v0 = v21;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_20_12();
    v0 = v21;
    if (v19 != v20)
    {
      *v3 = -1 << v18;
    }

    else
    {
      OUTLINED_FUNCTION_25_8(v18);
    }

    v1[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_19_12();
LABEL_9:
    OUTLINED_FUNCTION_10_16();
    if ((v10 & 1) == 0)
    {

      v11 = v1;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_9_15();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3();
LABEL_20:
    OUTLINED_FUNCTION_3_22(v13);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_23_9();
  while (++v14 != v16 || (v15 & 1) == 0)
  {
    v17 = v14 == v16;
    if (v14 == v16)
    {
      v14 = 0;
    }

    v15 |= v17;
    if (*(v5 + 8 * v14) != -1)
    {
      OUTLINED_FUNCTION_22_6();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v33 = v41[5];
  v34 = v41[0];
  v9 = (v41[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v34 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v34 + 56) + 8 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v40[2] = v15;

      v33(&v37, v40);

      v16 = v37;
      v17 = v38;
      v35 = v39;
      v18 = *v42;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      if (v18[3] >= v21 + v22)
      {
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v20 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v42;
      if (v23)
      {
        v27 = *(v26[7] + 8 * v20);

        *(v26[7] + 8 * v20) = v27;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v26[6] + 16 * v20);
        *v28 = v16;
        v28[1] = v17;
        *(v26[7] + 8 * v20) = v35;
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v26[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : MLFeatureValue].Iterator._Variant(v34);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return MEMORY[0x2821FD7D8](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_25_8@<X0>(uint64_t a1@<X8>)
{

  return specialized UnsafeMutablePointer.assign(repeating:count:)(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_27_4()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t static AffinityRankKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AffinityRankKey(0);

  return static UUID.== infix(_:_:)();
}

uint64_t AffinityRankKey.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for AffinityRankKey(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v1, v2, MEMORY[0x277CC9600]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AffinityRankKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for AffinityRankKey(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  v2 = lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v0, v1, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_15_11(v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AffinityRankKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  v3 = lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v1, v2, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_15_11(v3, v4);
  return Hasher._finalize()();
}

uint64_t AffinityRankFeatureExtractor.init(actions:)(uint64_t a1)
{
  v170 = type metadata accessor for AffinityRankKey(0);
  OUTLINED_FUNCTION_22();
  v161 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v176 = (v5 - v4);
  v159 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_22();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v158 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1(v147 - v13);
  v177 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v169 = v17;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  v174 = v19;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_3();
  v165 = v21;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  v24 = OUTLINED_FUNCTION_21_1(v147 - v23);
  v25 = type metadata accessor for CamUSOParse(v24);
  v26 = OUTLINED_FUNCTION_14(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v29 = OUTLINED_FUNCTION_21_1(v28 - v27);
  v30 = type metadata accessor for CamParse(v29);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_0();
  v162 = (v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
  v35 = OUTLINED_FUNCTION_14(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5();
  v168 = v36;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_3();
  v167 = v38;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v39);
  v41 = (v147 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
  OUTLINED_FUNCTION_22();
  v172 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  v163 = v45;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_3();
  v171 = v47;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v48);
  v173 = v147 - v49;
  v50 = type metadata accessor for ActionCandidate(0);
  v51 = MEMORY[0x28223BE20](v50);
  v54 = v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 16);
  v160 = v15;
  v147[1] = a1;
  if (v55)
  {
    v151 = v51;
    v166 = *(v51 + 20);
    v56 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v154 = (v7 + 8);
    v57 = MEMORY[0x277D84F90];
    v150 = (v15 + 32);
    v164 = *(v52 + 72);
    v58 = v162;
    v155 = v30;
    v149 = v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      _s7SiriCam0B5ParseOWOcTm_2(v56, v54, type metadata accessor for ActionCandidate);
      OUTLINED_FUNCTION_6_24();
      _s7SiriCam0B5ParseOWOcTm_2(v166 + v54, v58, v59);
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_4_18();
        __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
        OUTLINED_FUNCTION_8_19();
        _s7SiriCam0B5ParseOWOhTm_3(v58, v60);
      }

      else
      {
        v61 = v156;
        outlined init with take of CamUSOParse(v58, v156);
        v62 = v158;
        Siri_Nlu_External_UserParse.id.getter();
        v63 = v157;
        static ConversionUtils.convertProtoToUuid(protoUuid:)();
        (*v154)(v62, v159);
        OUTLINED_FUNCTION_7_18();
        _s7SiriCam0B5ParseOWOhTm_3(v61, v64);
        v65 = v177;
        if (__swift_getEnumTagSinglePayload(v63, 1, v177) == 1)
        {
          OUTLINED_FUNCTION_4_18();
          outlined destroy of (CamLogOutput, CamModelMetadata)(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v66 = v41;
          v67 = 1;
        }

        else
        {
          v68 = *v150;
          v69 = v152;
          (*v150)(v152, v63, v65);
          v70 = *(v42 + 48);
          v175 = v57;
          v54 = v149;
          v153 = *(v42 + 64);
          v71 = *(v149 + 1);
          *v41 = *v149;
          v41[1] = v71;
          v68(v41 + v70, v69, v65);
          v72 = *&v54[*(v151 + 24)];

          OUTLINED_FUNCTION_4_18();
          *(v41 + v153) = v72;
          v57 = v175;
          v66 = v41;
          v67 = 0;
        }

        __swift_storeEnumTagSinglePayload(v66, v67, 1, v42);
        v58 = v162;
      }

      if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v41, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
      }

      else
      {
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v41, v173, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v74;
        }

        v73 = *(v57 + 16);
        if (v73 >= *(v57 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v75;
        }

        *(v57 + 16) = v73 + 1;
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v173, v57 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v73, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
      }

      v56 += v164;
      --v55;
    }

    while (v55);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v76, v77, MEMORY[0x277CC9600]);
  v78 = v177;
  v79 = Dictionary.init(dictionaryLiteral:)();
  v80 = *(v57 + 16);
  v175 = v57;
  v173 = v80;
  if (v80)
  {
    v81 = 0;
    v164 = v57 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    v162 = (v160 + 32);
    v166 = (v160 + 16);
    v82 = (v160 + 8);
    v83 = v165;
    while (v81 < *(v175 + 16))
    {
      v84 = v171;
      outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v164 + *(v172 + 72) * v81, v171);
      v85 = v84;
      v86 = v163;
      outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v85, v163);

      v87 = *(v86 + *(v42 + 64));
      (*v162)(v83, v86 + *(v42 + 48), v78);
      if (v79[2] && (specialized __RawDictionaryStorage.find<A>(_:)(v83), (v89 & 1) != 0))
      {
        v90 = *(v79[7] + 8 * v88);
      }

      else
      {
        v90 = 0x8000000000000000;
      }

      v91 = *v166;
      v92 = v174;
      (*v166)(v174, v83, v177);
      if (v87 <= v90)
      {
        v93 = v90;
      }

      else
      {
        v93 = v87;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = v79;
      specialized __RawDictionaryStorage.find<A>(_:)(v92);
      v97 = v79[2];
      v98 = (v96 & 1) == 0;
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_65;
      }

      v100 = v95;
      v101 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSiGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSiGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v99))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v174);
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_70;
        }

        v100 = v102;
      }

      v79 = v178;
      if (v101)
      {
        *(v178[7] + 8 * v100) = v93;
        v104 = *v82;
        v78 = v177;
        (*v82)(v174, v177);
        v83 = v165;
        v104(v165, v78);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v171, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
      }

      else
      {
        v178[(v100 >> 6) + 8] |= 1 << v100;
        v105 = v160;
        v106 = v174;
        v107 = v177;
        v91(v79[6] + *(v160 + 72) * v100, v174, v177);
        v78 = v107;
        *(v79[7] + 8 * v100) = v93;
        v108 = *(v105 + 8);
        v108(v106, v78);
        v83 = v165;
        v108(v165, v78);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v171, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
        v109 = v79[2];
        v110 = __OFADD__(v109, 1);
        v111 = v109 + 1;
        if (v110)
        {
          goto LABEL_69;
        }

        v79[2] = v111;
      }

      ++v81;
      v80 = v173;
      if (v173 == v81)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(&lazy protocol witness table cache variable for type AffinityRankKey and conformance AffinityRankKey, type metadata accessor for AffinityRankKey, &protocol conformance descriptor for AffinityRankKey);
    v112 = Dictionary.init(dictionaryLiteral:)();
    v113 = 0;
    v174 = (v160 + 32);
    v171 = (v160 + 16);
    v166 = (v160 + 8);
    v114 = v169;
LABEL_39:
    v115 = v168;
    v116 = v175;
    while (1)
    {
      if (v113 == v80)
      {
        v117 = 1;
        v113 = v80;
      }

      else
      {
        if ((v113 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v113 >= *(v116 + 16))
        {
          goto LABEL_67;
        }

        outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v116 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v113, v115);
        v117 = 0;
        ++v113;
      }

      __swift_storeEnumTagSinglePayload(v115, v117, 1, v42);
      v118 = v115;
      v119 = v167;
      outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v118, v167, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
      if (__swift_getEnumTagSinglePayload(v119, 1, v42) == 1)
      {

        result = v148;
        *(v148 + 16) = v112;
        return result;
      }

      v120 = *v119;
      v121 = v119[1];
      v122 = *(v119 + *(v42 + 64));
      (*v174)(v114, v119 + *(v42 + 48), v78);
      if (!v79[2])
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v114);
      if ((v124 & 1) == 0)
      {
        goto LABEL_62;
      }

      v125 = v114;
      v114 = *(v79[7] + 8 * v123);
      v126 = v176;
      (*v171)(v176 + *(v170 + 20), v125, v78);
      *v126 = v120;
      v126[1] = v121;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v178 = v112;
      v128 = specialized __RawDictionaryStorage.find<A>(_:)(v126);
      v130 = v112[2];
      v131 = (v129 & 1) == 0;
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_63;
      }

      v78 = v128;
      v133 = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy7SiriCam15AffinityRankKeyVs6UInt32VGMd, &_ss17_NativeDictionaryVy7SiriCam15AffinityRankKeyVs6UInt32VGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v127, v132))
      {
        v134 = specialized __RawDictionaryStorage.find<A>(_:)(v176);
        v80 = v173;
        if ((v133 & 1) != (v135 & 1))
        {
          goto LABEL_70;
        }

        v78 = v134;
      }

      else
      {
        v80 = v173;
      }

      if (v122 == v114)
      {
        v136 = 2;
      }

      else
      {
        v136 = 1;
      }

      v112 = v178;
      if (v133)
      {
        *(v178[7] + 4 * v78) = v136;
        OUTLINED_FUNCTION_1_30();
        _s7SiriCam0B5ParseOWOhTm_3(v176, v143);
        v144 = OUTLINED_FUNCTION_11_13();
        v145(v144);
        goto LABEL_39;
      }

      v178[(v78 >> 6) + 8] |= 1 << v78;
      v137 = v176;
      _s7SiriCam0B5ParseOWOcTm_2(v176, v112[6] + *(v161 + 72) * v78, type metadata accessor for AffinityRankKey);
      *(v112[7] + 4 * v78) = v136;
      OUTLINED_FUNCTION_1_30();
      _s7SiriCam0B5ParseOWOhTm_3(v137, v138);
      v139 = OUTLINED_FUNCTION_11_13();
      v140(v139);
      v141 = v112[2];
      v110 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      v115 = v168;
      v116 = v175;
      if (v110)
      {
        goto LABEL_68;
      }

      v112[2] = v142;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AffinityRankFeatureExtractor.extract(usoParse:flowHandlerId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v3 = type metadata accessor for AffinityRankKey(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_22();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v19 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v25 = v24 - v23;
  Siri_Nlu_External_UserParse.id.getter();
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  (*(v10 + 8))(v14, v8);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    (*(v21 + 32))(v25, v18, v19);
    v27 = *(v31[1] + 16);
    (*(v21 + 16))(v7 + *(v3 + 20), v25, v19);
    v28 = v33;
    *v7 = v32;
    v7[1] = v28;

    v29 = specialized Dictionary.subscript.getter(v7, v27);
    OUTLINED_FUNCTION_1_30();
    _s7SiriCam0B5ParseOWOhTm_3(v7, v30);
    (*(v21 + 8))(v25, v19);
    if ((v29 & 0x100000000) != 0)
    {
      return 0;
    }

    else
    {
      return v29;
    }
  }
}

uint64_t AffinityRankFeatureExtractor.extractImpl(from:)(uint64_t *a1)
{
  v1 = AffinityRankFeatureExtractor.extractFromAction(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000266819410;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t AffinityRankFeatureExtractor.extractFromAction(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for CamUSOParse(0);
  v3 = OUTLINED_FUNCTION_14(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  type metadata accessor for ActionCandidate(0);
  OUTLINED_FUNCTION_6_24();
  _s7SiriCam0B5ParseOWOcTm_2(a1 + v11, v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v14 = EnumCaseMultiPayload;
    result = 0;
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_8_19();
      _s7SiriCam0B5ParseOWOhTm_3(v10, v16);
      return 0;
    }
  }

  else
  {
    outlined init with take of CamUSOParse(v10, v6);
    v17 = AffinityRankFeatureExtractor.extract(usoParse:flowHandlerId:)(v6, *a1, a1[1]);
    OUTLINED_FUNCTION_7_18();
    _s7SiriCam0B5ParseOWOhTm_3(v6, v18);
    return v17;
  }

  return result;
}

uint64_t type metadata accessor for AffinityRankKey(uint64_t a1)
{
  result = type metadata singleton initialization cache for AffinityRankKey;
  if (!type metadata singleton initialization cache for AffinityRankKey)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AffinityRankKey(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_3(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7SiriCam0B5ParseOWOcTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t a2, ...)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t CAARFeatures.WindowLengths.rawValue.getter(char a1)
{
  result = 7156326;
  switch(a1)
  {
    case 1:
      result = 1831874918;
      break;
    case 2:
      result = 6828390;
      break;
    case 3:
      result = 6829670;
      break;
    case 4:
      result = 6566246;
      break;
    case 5:
      result = 6567782;
      break;
    case 6:
      result = 1681404518;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static CAARFeatures.bucketedFeatures(_:buckets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v16;
    v8 = (a3 + 32);
    do
    {
      v9 = *v8++;

      MEMORY[0x26D5DCD80](46, 0xE100000000000000);
      v10 = 0xE300000000000000;
      v11 = 7156326;
      switch(v9)
      {
        case 1:
          v10 = 0xE400000000000000;
          v11 = 1831874918;
          break;
        case 2:
          v11 = 6828390;
          break;
        case 3:
          v11 = 6829670;
          break;
        case 4:
          v11 = 6566246;
          break;
        case 5:
          v11 = 6567782;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1681404518;
          break;
        case 7:
          v11 = 6712937;
          break;
        default:
          break;
      }

      MEMORY[0x26D5DCD80](v11, v10);

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t one-time initialization function for ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002BLL, 0x800000026681BF60, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000028, 0x800000026681BFD0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002ELL, 0x800000026681B8A0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002BLL, 0x800000026681B8F0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for SELECTED_ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000033, 0x800000026681BF20, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.SELECTED_ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for SELECTED_APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000030, 0x800000026681BF90, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.SELECTED_APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for APP_LAUNCH_COUNT()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000012, 0x800000026681C000, &outlined read-only object #0 of one-time initialization function for APP_LAUNCH_COUNT);
  static CAARFeatures.APP_LAUNCH_COUNT = result;
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

uint64_t getEnumTagSinglePayload for CamOutputProvider(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CamOutputProvider(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void CamOutputProvider.toCamOutput(from:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x26D5DCC90](*v1, v5);
  v7 = [a1 featureValueForName_];

  if (!v7 || (v8 = [v7 multiArrayValue], v7, !v8))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(60);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x26D5DCD80](v27 + 21, v28 | 0x8000000000000000);
    v29 = v4;
    v30 = v5;
LABEL_14:
    MEMORY[0x26D5DCD80](v29, v30);
    goto LABEL_15;
  }

  v9 = MLMultiArray.toDoubleScalar()();

  if (v10)
  {
    return;
  }

  v11 = v2[2];
  v12 = v2[3];
  v13 = MEMORY[0x26D5DCC90](v11, v12);
  v14 = [a1 objectForKeyedSubscript_];

  if (!v14 || (v15 = [v14 multiArrayValue], v14, !v15))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(58);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    v41 = v40 + 19;
LABEL_22:
    MEMORY[0x26D5DCD80](v41, v39 | 0x8000000000000000);
    v29 = v11;
    v30 = v12;
    goto LABEL_14;
  }

  v16 = MLMultiArray.toDoubleScalar()();

  if (v17)
  {
    return;
  }

  v11 = v2[4];
  v12 = v2[5];
  v18 = MEMORY[0x26D5DCC90](v11, v12);
  v19 = [a1 featureValueForName_];

  if (!v19 || (v20 = [v19 multiArrayValue], v19, !v20))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(63);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    v41 = v42 | 0x18;
    goto LABEL_22;
  }

  v21 = MLMultiArray.toIntScalar()();

  if (v22)
  {
    return;
  }

  v23 = v2[6];
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    if (v25)
    {
      v26 = *(*(v23 + 56) + v24);
      type metadata accessor for CamOutput();
      *(swift_allocObject() + 56) = v26;
      CamLogOutput.init(prediction:score:threshold:)(v21, v9, v16);
      return;
    }
  }

  OUTLINED_FUNCTION_0_3();
  _StringGuts.grow(_:)(51);
  OUTLINED_FUNCTION_2_23();
  MEMORY[0x26D5DCD80](0xD000000000000025, 0x800000026681C020);
  v45[5] = v21;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v43);

  MEMORY[0x26D5DCD80](0x6F72662079656B20, 0xEA0000000000206DLL);
  v44 = Dictionary.description.getter();
  MEMORY[0x26D5DCD80](v44);

LABEL_15:
  v31 = v45[0];
  v32 = v45[1];
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.ambiguityHandling);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v45);
    _os_log_impl(&dword_266790000, v34, v35, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D5DDCD0](v37, -1, -1);
    MEMORY[0x26D5DDCD0](v36, -1, -1);
  }

  lazy protocol witness table accessor for type CamError and conformance CamError();
  swift_allocError();
  *v38 = v31;
  *(v38 + 8) = v32;
  *(v38 + 16) = 3;
  swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_7SiriCam10ModelErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t destructiveInjectEnumTag for ModelError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ForcedDisambiguationForRankingEvaluationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ambiguityHandling);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "[ForcedDisambiguationForRankingEvaluationActionEnforcer] called to see if enforce is needed", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  result = ForcedDisambiguation.decision()();
  if (result)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "[ForcedDisambiguationForRankingEvaluationActionEnforcer] Forcing a disambiguation", v9, 2u);
      MEMORY[0x26D5DDCD0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam54ForcedDisambiguationForRankingEvaluationActionEnforcerVmMd, &_s7SiriCam54ForcedDisambiguationForRankingEvaluationActionEnforcerVmMR);
    result = String.init<A>(describing:)();
    *a1 = 4;
    a1[1] = result;
    a1[2] = v10;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

unint64_t CamFeature.rawValue.getter()
{
  v1 = 0x4F5455415F534D53;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x455045525F4B5341;
  }
}

SiriCam::CamFeature_optional __swiftcall CamFeature.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CamFeature.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamFeature@<X0>(unint64_t *a1@<X8>)
{
  result = CamFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CamFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t SnrFeatureExtractor.extractImpl(from:)(void *a1)
{
  type metadata accessor for MLMultiArray();
  [a1 snr];
  result = static MLMultiArray.makeScalar(from:)(v3);
  v5 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD000000000000021;
    *(inited + 40) = 0x8000000266818EA0;
    *(inited + 48) = v5;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

void *one-time initialization function for kDeviceIdiomMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomO_SitGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomO_SitGMR);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceIdiomO_SitMd, &_s13SiriUtilities11DeviceIdiomO_SitMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266818A10;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D61C28];
  v7 = type metadata accessor for DeviceIdiom();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D61BE8], v7);
  *(v4 + v1 + v9) = 1;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D61C18], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x277D61BF0], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x277D61BF8], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x277D61C00], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x277D61C08], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x277D61C10], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = v4 + 8 * v1;
  v17 = v0[14];
  v8(v16, *MEMORY[0x277D61BE0], v7);
  *(v16 + v17) = 8;
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom();
  result = Dictionary.init(dictionaryLiteral:)();
  kDeviceIdiomMap._rawValue = result;
  return result;
}

uint64_t DeviceContextFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceIdiom();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceIdiom.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  strcpy((inited + 32), "device_idiom");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  if (one-time initialization token for kDeviceIdiomMap != -1)
  {
    swift_once();
  }

  v9 = specialized Dictionary.subscript.getter(v7, kDeviceIdiomMap._rawValue);
  if ((v10 & 1) == 0)
  {
    a2 = v9;
  }

  type metadata accessor for MLMultiArray();
  v11 = static MLMultiArray.makeScalar(from:)(a2);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);

    *(inited + 16) = 0;
    swift_setDeallocating();
    v12 = inited;
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_So12MLMultiArrayCtMd, &_sSS_So12MLMultiArrayCtMR);
  }

  else
  {
    *(inited + 48) = v11;
    v12 = Dictionary.init(dictionaryLiteral:)();
    (*(v5 + 8))(v7, v4);
  }

  return v12;
}