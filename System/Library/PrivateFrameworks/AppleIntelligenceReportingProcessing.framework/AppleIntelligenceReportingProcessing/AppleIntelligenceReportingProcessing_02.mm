void AssetDeliveryState._handleMobileAssetStateEvent<A>(event:eventType:dictionary:identifier:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v3 - 8);
  v65 = v10;
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v67 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_134();
  v70 = v8;
  v20 = *v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
  v68 = v6;
  v69 = v2;
  MEMORY[0x22AAADF80](v71, v6, v20, v4, v21, v2);
  v22 = v71[0];
  if (!v71[0])
  {
    OUTLINED_FUNCTION_109_0();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D84F90];
    *(v22 + 16) = 0;
    *(v22 + 24) = v23;
  }

  v24 = OUTLINED_FUNCTION_62();
  v25(v24);
  v26 = (*(v18 + 88))(v0, v16);
  if (v26 == *MEMORY[0x277D1F540])
  {
    OUTLINED_FUNCTION_65_0();
    if ((*(v27 + 104))())
    {
      OUTLINED_FUNCTION_65_0();
      v29 = *(v28 + 144);

      v30 = v29(v71);
      MEMORY[0x22AAAE0D0]();
      OUTLINED_FUNCTION_132();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_51_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30(v71, 0);
      OUTLINED_FUNCTION_65_0();
      (*(v31 + 112))(0);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
    OUTLINED_FUNCTION_117_0(v32);
    OUTLINED_FUNCTION_54_0();
    specialized AssetDeliveryState.Session.init()();
    v33 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4();
    (*(v34 + 16))(v15, v65, v33);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
    OUTLINED_FUNCTION_4_1();
    (*(v38 + 120))(v15);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
    OUTLINED_FUNCTION_4_1();
    (*(v42 + 144))(v15);
LABEL_7:
    OUTLINED_FUNCTION_65_0();
    v44 = *(v43 + 112);

    v44(v45);
    goto LABEL_8;
  }

  if (v26 != *MEMORY[0x277D1F538])
  {
    if (v26 != *MEMORY[0x277D1F548])
    {
      (*(v18 + 8))(v0, v16);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_65_0();
    if ((*(v53 + 104))())
    {
      OUTLINED_FUNCTION_65_0();
      v55 = *(v54 + 144);

      v56 = v55(v71);
      MEMORY[0x22AAAE0D0]();
      OUTLINED_FUNCTION_132();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_85_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56(v71, 0);
      OUTLINED_FUNCTION_65_0();
      (*(v57 + 112))(0);
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
    OUTLINED_FUNCTION_117_0(v58);
    OUTLINED_FUNCTION_54_0();
    specialized AssetDeliveryState.Session.init()();
    v59 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4();
    (*(v60 + 16))(v15, v65, v59);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    OUTLINED_FUNCTION_4_1();
    (*(v64 + 168))(v15);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(*(v46 + 104))())
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_142();
  v47 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_4();
  (*(v48 + 16))(v15, v65, v47);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
  OUTLINED_FUNCTION_1_2();
  (*(v52 + 144))(v15);
LABEL_8:

LABEL_9:
  (*(v66 + 16))(v67, v68, v4);
  v71[0] = v22;
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  OUTLINED_FUNCTION_19();
}

void AssetDeliveryState.handleUnifiedAssetFrameworkEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v185 = v0;
  OUTLINED_FUNCTION_142();
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_0();
  v194 = v2;
  v195 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v192 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_96();
  v191 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_96();
  v189 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  v11 = &v178 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_33_1(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v22 = &v178 - v21;
  v23 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  OUTLINED_FUNCTION_0();
  v186 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v187 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v28 = OUTLINED_FUNCTION_13(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  v188 = v29;
  OUTLINED_FUNCTION_10();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v178 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v178 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v178 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v178 - v40;
  v190 = v0;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v42 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_34_0(v41, 1, v42);
  v193 = v42;
  if (v121)
  {
    v43 = v41;
LABEL_8:
    outlined destroy of NSObject?(v43, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    goto LABEL_9;
  }

  v44 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
  OUTLINED_FUNCTION_31_1();
  v46 = v41;
  v48 = v47;
  v182 = *(v45 + 8);
  v181 = v45 + 8;
  v182(v46, v42);
  if (!v48)
  {
LABEL_9:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v51 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v51, static Logging.general);
    v52 = v194;
    v53 = v195;
    v54 = *(v195 + 16);
    v55 = v189;
    v56 = v190;
    v57 = OUTLINED_FUNCTION_105_0();
    v54(v57);
    (v54)(v191, v56, v52);
    v58 = v192;
    (v54)(v192, v56, v52);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v59, v60))
    {

      v66 = *(v53 + 8);
      v66(v58, v52);
      v67 = OUTLINED_FUNCTION_120_0();
      (v66)(v67);
      v66(v55, v52);
      goto LABEL_29;
    }

    LODWORD(v190) = v60;
    v61 = OUTLINED_FUNCTION_84();
    v187 = swift_slowAlloc();
    v198[0] = v187;
    *v61 = 136315650;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v62 = OUTLINED_FUNCTION_70_0();
    v63 = v193;
    OUTLINED_FUNCTION_34_0(v62, v64, v193);
    if (v121)
    {
      outlined destroy of NSObject?(v33, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v65 = v192;
    }

    else
    {
      v68 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
      v70 = v69;
      OUTLINED_FUNCTION_31_1();
      (*(v71 + 8))(v33, v63);
      v65 = v192;
      if (v70)
      {
        v72 = *(v53 + 8);
        v73 = v194;
        v72(v55, v194);
        goto LABEL_19;
      }
    }

    v70 = 0x8000000227FB5990;
    v72 = *(v53 + 8);
    v33 = 0xD000000000000017;
    v73 = v194;
    v72(v55, v194);

    v68 = 0xD000000000000010;
LABEL_19:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v198);
    OUTLINED_FUNCTION_127();

    *(v61 + 4) = v33;
    *(v61 + 12) = 2080;
    v74 = v188;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v75 = v193;
    OUTLINED_FUNCTION_34_0(v74, 1, v193);
    if (v121)
    {
      outlined destroy of NSObject?(v74, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    }

    else
    {
      AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
      v77 = v76;
      OUTLINED_FUNCTION_31_1();
      (*(v78 + 8))(v74, v75);
      if (v77)
      {
        v79 = OUTLINED_FUNCTION_124_0();
        (v72)(v79);
LABEL_25:
        v81 = OUTLINED_FUNCTION_82_0();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v77, v82);

        *(v61 + 14) = v83;
        *(v61 + 22) = 2080;
        v85 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()();
        if (v84)
        {

          object = 0x8000000227FB5910;
        }

        else
        {
          object = v85._object;
        }

        v72(v65, v73);
        v87 = OUTLINED_FUNCTION_82_0();
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, object, v88);

        *(v61 + 24) = v89;
        _os_log_impl(&dword_227F43000, v59, v190, "handleUnifiedAssetFrameworkEvent missing %s or %s. Event: %s", v61, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();

        goto LABEL_29;
      }
    }

    v80 = OUTLINED_FUNCTION_124_0();
    (v72)(v80);

    v77 = 0xEE00656D614E7265;
    goto LABEL_25;
  }

  v180 = v44;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v49 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v49, v50, v193);
  if (v121)
  {

    v43 = v39;
    goto LABEL_8;
  }

  v179 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
  v91 = v90;
  OUTLINED_FUNCTION_121_0();
  v92();
  if (!v91)
  {

    goto LABEL_9;
  }

  v191 = v11;
  v192 = v23;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for general);
  }

  v93 = type metadata accessor for Logger();
  __swift_project_value_buffer(v93, static Logging.general);
  OUTLINED_FUNCTION_127();

  v94 = v91;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  v97 = os_log_type_enabled(v95, v96);
  v189 = v1;
  v98 = v193;
  if (v97)
  {
    v99 = swift_slowAlloc();
    v198[0] = swift_slowAlloc();
    *v99 = 136315394;
    v100 = v179;
    v101 = OUTLINED_FUNCTION_103_0();
    *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v103);
    *(v99 + 12) = 2080;
    v104 = v100;
    v105 = v94;
    *(v99 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v94, v198);
    _os_log_impl(&dword_227F43000, v95, v96, "AssetDeliveryState processing Unified Asset Framework event for %s and %s", v99, 0x16u);
    swift_arrayDestroy();
    v98 = v193;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v105 = v94;
  }

  v106 = v190;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter();
  v107 = OUTLINED_FUNCTION_84_0();
  v108 = v192;
  OUTLINED_FUNCTION_34_0(v107, v109, v192);
  if (!v121)
  {
    (*(v186 + 32))(v187, v22, v108);
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v119 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_34_0(v119, v120, v98);
    if (v121)
    {
      v128 = outlined destroy of NSObject?(v36, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v125 = 0;
      LOBYTE(v126) = 1;
    }

    else
    {
      v124 = AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.getter();
      v125 = v124;
      v126 = HIDWORD(v124) & 1;
      OUTLINED_FUNCTION_121_0();
      v128 = v127();
    }

    v129 = v195;
    v130 = v185;
    v131 = v184;
    v197[0] = v126;
    v198[0] = v180;
    v198[1] = v48;
    v198[2] = v179;
    v198[3] = v105;
    v199 = v125;
    v200 = v126;
    v132 = (*(*v185 + 344))(v128);
    v133 = specialized Dictionary.subscript.getter(v198, v132);

    if (!v133)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
      OUTLINED_FUNCTION_109_0();
      v133 = swift_allocObject();
      v134 = MEMORY[0x277D84F90];
      *(v133 + 16) = 0;
      *(v133 + 24) = v134;
    }

    AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.getter();
    v135 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
    OUTLINED_FUNCTION_19_2(v131);
    if (v121)
    {
      goto LABEL_60;
    }

    v136 = v129;
    outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
    v137 = *(v135 - 8);
    v138 = OUTLINED_FUNCTION_31_0();
    v140 = v139(v138);
    if (v140 == *MEMORY[0x277D1F608])
    {
      OUTLINED_FUNCTION_43_0();
      if ((*(v141 + 104))())
      {
        OUTLINED_FUNCTION_43_0();
        v143 = *(v142 + 144);

        v144 = v143(v197);
        MEMORY[0x22AAAE0D0]();
        OUTLINED_FUNCTION_132();
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_31_0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v144(v197, 0);
        v108 = v192;
        v106 = v190;
        OUTLINED_FUNCTION_43_0();
        (*(v145 + 112))(0);
      }

      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
      OUTLINED_FUNCTION_117_0(v146);
      specialized AssetDeliveryState.Session.init()();
      v147 = v183;
      v148 = v106;
      v149 = v194;
      (*(v136 + 16))(v183, v148, v194);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v149);
      OUTLINED_FUNCTION_4_1();
      (*(v153 + 120))(v147);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v149);
      OUTLINED_FUNCTION_4_1();
      (*(v157 + 144))(v147);
      OUTLINED_FUNCTION_43_0();
      v159 = *(v158 + 112);

      v159(v160);
    }

    else
    {
      if (v140 != *MEMORY[0x277D1F610])
      {
        (*(v137 + 8))(v189, v135);
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_43_0();
      if (!(*(v161 + 104))())
      {
LABEL_60:
        outlined destroy of NSObject?(v131, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
        v173 = *(*v130 + 360);

        v174 = v173(v197);
        v176 = v175;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = *v176;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v133, v198, isUniquelyReferenced_nonNull_native);
        *v176 = v196;
        outlined destroy of SubscriptionKey(v198);
        v174(v197, 0);

        (*(v186 + 8))(v187, v108);
        goto LABEL_29;
      }

      v162 = v183;
      v163 = v106;
      v164 = v194;
      (*(v129 + 16))(v183, v163, v194);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
      OUTLINED_FUNCTION_1_2();
      (*(v168 + 144))(v162);
    }

    goto LABEL_60;
  }

  outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  v110 = v194;
  v111 = v195;
  OUTLINED_FUNCTION_63_0();
  v112 = OUTLINED_FUNCTION_104_0();
  v113(v112);
  v114 = v33;
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_36_0(v116))
  {
    OUTLINED_FUNCTION_76_0();
    v117 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_130(v117);
    OUTLINED_FUNCTION_22_3(4.8149e-34);
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()();
    if (v118)
    {
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_64_0();
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
    }

    (*(v111 + 8))(v191, v110);
    v169 = OUTLINED_FUNCTION_82_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v98, v170);
    OUTLINED_FUNCTION_62_0();

    *(v106 + 4) = v114;
    OUTLINED_FUNCTION_18_2(&dword_227F43000, v171, v172, "Received unified asset framework log event missing subscription state: %s");
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_40();
  }

  else
  {

    v122 = OUTLINED_FUNCTION_103_0();
    v123(v122);
  }

LABEL_29:
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.deinit()
{

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetScheduler, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);

  return v0;
}

uint64_t AssetDeliveryState.__deallocating_deinit()
{
  AssetDeliveryState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AssetDeliveryState.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVGMd, &_sSay27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVGMR);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for AppleIntelligenceReportingUseCase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase and conformance AppleIntelligenceReportingUseCase, MEMORY[0x277D1F520], MEMORY[0x277D1F528]);
  *(v0 + 24) = Dictionary.init(dictionaryLiteral:)();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSetConfiguration;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578], MEMORY[0x277D1F580]);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v5) = Dictionary.init(dictionaryLiteral:)();
  v6 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetJob;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
  OUTLINED_FUNCTION_53_0();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v7, v8, MEMORY[0x277D1F598]);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v6) = Dictionary.init(dictionaryLiteral:)();
  v9 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetUpdate;
  OUTLINED_FUNCTION_46_0();
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v10 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSecureUpdate;
  OUTLINED_FUNCTION_46_0();
  *(v0 + v10) = Dictionary.init(dictionaryLiteral:)();
  v11 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_atomicInstanceState;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_52_0();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v12, v13, MEMORY[0x277D1F570]);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v11) = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_uafSubscriptionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
  lazy protocol witness table accessor for type SubscriptionKey and conformance SubscriptionKey();
  *(v0 + v14) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t key path setter for AssetDeliveryState.Session.start : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 120))(v8);
}

uint64_t AssetDeliveryState.Session.start.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_75(v1 + v4, v5);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.start.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_10_0(v1 + v4, v7);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.start.modify()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

uint64_t key path setter for AssetDeliveryState.Session.end : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 144))(v8);
}

uint64_t AssetDeliveryState.Session.end.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_75(v1 + v4, v5);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.end.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_0(v1 + v4, v7);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.end.modify()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

uint64_t key path setter for AssetDeliveryState.Session.impulse : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 168))(v8);
}

uint64_t AssetDeliveryState.Session.impulse.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_75(v1 + v4, v5);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.impulse.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_10_0(v1 + v4, v7);
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.impulse.modify()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

void AssetDeliveryState.Session.allEvents()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_1_2();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v51 = v6;
  OUTLINED_FUNCTION_10();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v49 = v15;
  OUTLINED_FUNCTION_10();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  OUTLINED_FUNCTION_111_0();
  v52 = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_1_2();
  (*(v23 + 112))();
  OUTLINED_FUNCTION_19_2(v13);
  if (v24)
  {
    v31 = (*(v50 + 8))(v13, v3);
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v25(v22, v13, v2);
    v26 = OUTLINED_FUNCTION_95_0();
    v27(v26, v22, v2);
    OUTLINED_FUNCTION_111_0();
    v28 = type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0(v28);
    v29 = OUTLINED_FUNCTION_51_0();
    v31 = v30(v29);
  }

  (*(*v0 + 160))(v31);
  OUTLINED_FUNCTION_19_2(v10);
  if (v24)
  {
    v37 = OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v32(v19, v10, v2);
    v33 = OUTLINED_FUNCTION_95_0();
    v34(v33, v19, v2);
    OUTLINED_FUNCTION_111_0();
    v35 = type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0(v35);
    v36 = *(v14 + 8);
    v37 = v19;
    v38 = v2;
  }

  v39 = v36(v37, v38);
  v40 = v51;
  (*(*v0 + 136))(v39);
  OUTLINED_FUNCTION_19_2(v40);
  if (v24)
  {
    v47 = OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v41 = v49;
    v42 = OUTLINED_FUNCTION_103_0();
    v43(v42);
    v44 = OUTLINED_FUNCTION_95_0();
    v45(v44, v41, v2);
    OUTLINED_FUNCTION_111_0();
    v46 = type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0(v46);
    v47 = OUTLINED_FUNCTION_51_0();
  }

  v48(v47);
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.Session.deinit()
{
  OUTLINED_FUNCTION_91_0();
  v2 = *(v1 + 88);
  v3 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  OUTLINED_FUNCTION_1_2();
  v5(v0 + *(v6 + 96), v3);
  OUTLINED_FUNCTION_1_2();
  v5(v0 + *(v7 + 104), v3);
  return v0;
}

uint64_t AssetDeliveryState.Session.__deallocating_deinit()
{
  AssetDeliveryState.Session.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t specialized AssetDeliveryState.Session.init()()
{
  OUTLINED_FUNCTION_1_2();
  v1 = v0(0);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_143(v8, v9, v10);
}

uint64_t AssetDeliveryState.Session.init()()
{
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_143(v8, v9, v10);
}

uint64_t key path setter for AssetDeliveryState.Accumulator.currentSession : <A>AssetDeliveryState.Accumulator<A>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t AssetDeliveryState.Accumulator.currentSession.setter()
{
  v2 = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_88_0(v2, v3);
  *(v1 + 16) = v0;
}

uint64_t (*AssetDeliveryState.Accumulator.currentSession.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_74(v0);
  return DataCollectorInternal.invocationProcessor.modify;
}

uint64_t key path setter for AssetDeliveryState.Accumulator.historicalSessions : <A>AssetDeliveryState.Accumulator<A>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t AssetDeliveryState.subscriptions.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t AssetDeliveryState.Accumulator.allSessions.getter()
{
  OUTLINED_FUNCTION_91_0();
  v1 = v0;
  v3 = (*(v2 + 104))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_1_2();
    (*(v5 + 128))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    swift_allocObject();
    v6 = static Array._adoptStorage(_:count:)();
    *v7 = v4;
    v10 = type metadata accessor for AssetDeliveryState.Session(0, *(v1 + 80), v8, v9);
    _finalizeUninitializedArray<A>(_:)(v6, v10);

    OUTLINED_FUNCTION_67_0();
    v11 = static Array.+ infix(_:_:)();

    return v11;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v14 = *(v13 + 128);

    return v14();
  }
}

uint64_t AssetDeliveryState.Accumulator.eventCount.getter()
{
  OUTLINED_FUNCTION_1_2();
  v2 = v1 + 128;
  v20 = (*(v1 + 128))();
  v19 = *(v2 - 48);
  type metadata accessor for AssetDeliveryState.Session(255, v19, v3, v4);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v5);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AssetDeliveryState.Accumulator.eventCount.getter, &v18, v5, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  result = (*(*v0 + 104))(v9);
  v11 = result;
  if (result)
  {
    OUTLINED_FUNCTION_1_2();
    (*(v12 + 184))();

    v13 = OUTLINED_FUNCTION_104_0();
    v11 = MEMORY[0x22AAAE190](v13);
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = (v8 + 32);
    while (1)
    {
      v16 = *v15++;
      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v11;
  }

  return result;
}

uint64_t closure #1 in AssetDeliveryState.Accumulator.eventCount.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**a1 + 184))();
  v3 = MEMORY[0x22AAAE190]();

  *a2 = v3;
  return result;
}

uint64_t AssetDeliveryState.Accumulator.deinit()
{

  return v0;
}

uint64_t AssetDeliveryState.Accumulator.__deallocating_deinit()
{
  AssetDeliveryState.Accumulator.deinit();
  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *AssetDeliveryState.Accumulator.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v4[2] = 0;
  type metadata accessor for AssetDeliveryState.Session(0, *(v5 + 80), a3, a4);
  v4[3] = static Array._allocateUninitialized(_:)();
  return v4;
}

uint64_t closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()(uint64_t a1)
{
  AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  AppleIntelligenceReportingUseCase.useCaseIdentifier.setter();
  v3 = AppleIntelligenceReportingUseCase.parameters.getter();

  specialized MutableCollection<>.sort(by:)(&v3);
  if (v1)
  {

    __break(1u);
  }

  else
  {

    AppleIntelligenceReportingUseCase.parameters.setter();
    AppleIntelligenceReportingUseCase.mode.getter();
    AppleIntelligenceReportingUseCase.mode.setter();
    AppleIntelligenceReportingUseCase.locale.getter();
    AppleIntelligenceReportingUseCase.locale.setter();
    AppleIntelligenceReportingUseCase.countryCode.getter();
    return AppleIntelligenceReportingUseCase.countryCode.setter();
  }

  return result;
}

uint64_t closure #1 in closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()(uint64_t a1)
{
  v1 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (v3 == v7 && v4 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized BidirectionalCollection.last.getter(a1, MEMORY[0x277D1F5D8], a2);
}

{
  return specialized BidirectionalCollection.last.getter(a1, MEMORY[0x277D1F5F0], a2);
}

uint64_t outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?()
{
  OUTLINED_FUNCTION_117();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_7();
  v3 = OUTLINED_FUNCTION_62();
  v4(v3);
  return v0;
}

uint64_t outlined assign with take of AppleIntelligenceReportingMobileAssetLog?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    OUTLINED_FUNCTION_39_0();
    v12 = v7;
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_23();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v9 = MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v47 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v56 = (v19 - 8);
    v57 = v20;
    v58 = v19;
    v53 = (v19 + 16);
    v54 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v52 = -v21;
    v23 = a1 - a3;
    v46 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v50 = v22;
      v51 = a3;
      v48 = v24;
      v49 = v23;
      v25 = v22;
      while (1)
      {
        v59 = v23;
        v26 = v57;
        v57(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        v29 = v28 ? v27 : 0;
        v30 = v16;
        v31 = v17;
        v32 = v28 ? v28 : 0xE000000000000000;
        v33 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        v35 = v34 ? v33 : 0;
        v36 = v34 ? v34 : 0xE000000000000000;
        if (v29 == v35 && v32 == v36)
        {
          break;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = *v56;
        (*v56)(v31, v8);
        result = (v39)(v30, v8);
        v17 = v31;
        v16 = v30;
        v40 = v59;
        if (v38)
        {
          if (!v54)
          {
            __break(1u);
            return result;
          }

          v41 = *v53;
          v42 = v55;
          (*v53)(v55, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v41)(v25, v42, v8);
          v25 += v52;
          v24 += v52;
          v43 = __CFADD__(v40, 1);
          v23 = v40 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v44 = *v56;
      (*v56)(v31, v8);
      result = (v44)(v30, v8);
      v17 = v31;
      v16 = v30;
LABEL_26:
      a3 = v51 + 1;
      v22 = v50 + v46;
      v23 = v49 - 1;
      v24 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  v8 = type metadata accessor for InvocationStepMetadata(0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v10 = MEMORY[0x28223BE20](v72);
  v71 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v51 - v12;
  v69 = type metadata accessor for Date();
  v13 = *(v69 - 8);
  v14 = MEMORY[0x28223BE20](v69);
  v64 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v51 - v16;
  v17 = type metadata accessor for InvocationStep(0);
  v18 = MEMORY[0x28223BE20](v17);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v63 = &v51 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v74 = &v51 - v26;
  result = MEMORY[0x28223BE20](v25);
  v70 = &v51 - v29;
  v53 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v28 + 72);
    v67 = (v13 + 16);
    v61 = (v13 + 8);
    v32 = v30 + v31 * (a3 - 1);
    v58 = -v31;
    v59 = v30;
    v33 = a1 - a3;
    v52 = v31;
    v34 = v30 + v31 * a3;
    v62 = v24;
    while (2)
    {
      v56 = v32;
      v57 = a3;
      v54 = v34;
      v55 = v33;
      v35 = v33;
      do
      {
        v36 = v70;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v34, v70);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v32, v74);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v36, v24);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = v35;
        if (EnumCaseMultiPayload == 1)
        {
          v38 = v65;
          outlined init with take of InvocationStepMetadata(v24, v65);
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v38, v68);
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          outlined init with take of InvocationStepMetadata(v24, v68);
        }

        v39 = v63;
        v40 = *v67;
        (*v67)(v73, v68 + *(v72 + 36), v69);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v74, v39);
        v41 = v17;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v65;
          outlined init with take of InvocationStepMetadata(v39, v65);
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v42, v71);
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          outlined init with take of InvocationStepMetadata(v39, v71);
        }

        v43 = v64;
        v44 = v69;
        v40(v64, v71 + *(v72 + 36), v69);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v45 = v73;
        v46 = static Date.< infix(_:_:)();
        v47 = *v61;
        (*v61)(v43, v44);
        v47(v45, v44);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        result = _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v17 = v41;
        v24 = v62;
        v48 = v66;
        if ((v46 & 1) == 0)
        {
          break;
        }

        if (!v59)
        {
          __break(1u);
          return result;
        }

        v49 = v60;
        outlined init with take of InvocationStepMetadata(v34, v60);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of InvocationStepMetadata(v49, v32);
        v32 += v58;
        v34 += v58;
        v50 = __CFADD__(v48, 1);
        v35 = v48 + 1;
      }

      while (!v50);
      a3 = v57 + 1;
      v32 = v56 + v52;
      v33 = v55 - 1;
      v34 = v54 + v52;
      if (v57 + 1 != v53)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v151 = a1;
  v176 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v8 = MEMORY[0x28223BE20](v176);
  v156 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v168 = &v147 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v147 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v163 = &v147 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v162 = &v147 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v150 = &v147 - v21;
  MEMORY[0x28223BE20](v20);
  v149 = &v147 - v24;
  v160 = v22;
  v161 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_139:
    v176 = *v151;
    if (!v176)
    {
      goto LABEL_183;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_177;
  }

  v171 = v23;
  v148 = a4;
  v26 = 0;
  v173 = (v22 + 8);
  v174 = v22 + 16;
  v172 = (v22 + 32);
  v27 = MEMORY[0x277D84F90];
  v170 = v15;
  while (1)
  {
    v28 = v26++;
    v153 = v28;
    if (v26 < v25)
    {
      v169 = v25;
      v164 = v27;
      v165 = v26;
      v29 = *v161;
      v27 = *(v22 + 72);
      v30 = *v161 + v27 * v26;
      v31 = *(v22 + 16);
      v32 = v149;
      v33 = v176;
      v31(v149, v30, v176);
      v34 = v31;
      v35 = v150;
      v36 = v33;
      v37 = v34;
      v34(v150, v29 + v27 * v28, v36);
      LODWORD(v167) = closure #1 in closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()(v32);
      if (v5)
      {
        v144 = *v173;
        v145 = v35;
        v146 = v176;
        (*v173)(v145, v176);
        v144(v32, v146);
LABEL_152:

        return;
      }

      v152 = 0;
      v38 = *v173;
      v39 = v35;
      v40 = v176;
      (*v173)(v39, v176);
      v166 = v38;
      v38(v32, v40);
      v41 = v153 + 2;
      v42 = v29 + v27 * (v153 + 2);
      v26 = v165;
      v43 = v27;
      v175 = v27;
      v44 = v169;
      while (1)
      {
        v5 = v41;
        if (v26 + 1 >= v44)
        {
          break;
        }

        v165 = v26;
        v45 = v176;
        v37(v162, v42, v176);
        v37(v163, v30, v45);
        v46 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        if (v47)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0;
        }

        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0xE000000000000000;
        }

        v50 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        if (v51)
        {
          v52 = v50;
        }

        else
        {
          v52 = 0;
        }

        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0xE000000000000000;
        }

        if (v48 == v52 && v49 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v176;
        v27 = v166;
        (v166)(v163, v176);
        (v27)(v162, v56);
        v43 = v175;
        v42 += v175;
        v30 += v175;
        v26 = v165 + 1;
        v41 = v5 + 1;
        v44 = v169;
        if ((v167 ^ v55))
        {
          goto LABEL_28;
        }
      }

      v26 = v44;
LABEL_28:
      if (v167)
      {
        v28 = v153;
        if (v26 < v153)
        {
          goto LABEL_176;
        }

        if (v153 >= v26)
        {
          v5 = v152;
          v22 = v160;
          v27 = v164;
          v15 = v170;
          goto LABEL_51;
        }

        if (v44 >= v5)
        {
          v57 = v5;
        }

        else
        {
          v57 = v44;
        }

        v58 = v26;
        v59 = v43 * (v57 - 1);
        v60 = v43 * v57;
        v61 = v153 * v43;
        v165 = v58;
        v62 = v153;
        v5 = v152;
        do
        {
          if (v62 != --v58)
          {
            v63 = *v161;
            if (!*v161)
            {
              goto LABEL_181;
            }

            v64 = *v172;
            (*v172)(v156, v63 + v61, v176);
            v65 = v61 < v59 || v63 + v61 >= v63 + v60;
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v64((v63 + v59), v156, v176);
            v5 = v152;
            v43 = v175;
          }

          ++v62;
          v59 -= v43;
          v60 -= v43;
          v61 += v43;
        }

        while (v62 < v58);
        v22 = v160;
        v27 = v164;
        v26 = v165;
      }

      else
      {
        v5 = v152;
        v22 = v160;
        v27 = v164;
      }

      v15 = v170;
      v28 = v153;
    }

LABEL_51:
    v66 = v161[1];
    if (v26 < v66)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_173;
      }

      if (v26 - v28 < v148)
      {
        break;
      }
    }

LABEL_86:
    if (v26 < v28)
    {
      goto LABEL_172;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v135;
    }

    v94 = *(v27 + 16);
    v95 = v94 + 1;
    if (v94 >= *(v27 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v136;
    }

    *(v27 + 16) = v95;
    v96 = v27 + 32;
    v97 = (v27 + 32 + 16 * v94);
    *v97 = v153;
    v97[1] = v26;
    v175 = *v151;
    if (!v175)
    {
      goto LABEL_182;
    }

    if (v94)
    {
      v164 = v27;
      while (1)
      {
        v98 = v95 - 1;
        v99 = (v96 + 16 * (v95 - 1));
        v100 = (v27 + 16 * v95);
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v101 = *(v27 + 32);
          v102 = *(v27 + 40);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_107:
          if (v104)
          {
            goto LABEL_159;
          }

          v116 = *v100;
          v115 = v100[1];
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_162;
          }

          v120 = v99[1];
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_165;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_167;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v95 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        if (v95 < 2)
        {
          goto LABEL_161;
        }

        v123 = *v100;
        v122 = v100[1];
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_122:
        if (v119)
        {
          goto LABEL_164;
        }

        v125 = *v99;
        v124 = v99[1];
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_166;
        }

        if (v126 < v118)
        {
          goto LABEL_136;
        }

LABEL_129:
        if (v98 - 1 >= v95)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (!*v161)
        {
          goto LABEL_179;
        }

        v130 = (v96 + 16 * (v98 - 1));
        v27 = *v130;
        v131 = v98;
        v132 = v96 + 16 * v98;
        v133 = *(v132 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v161 + *(v160 + 72) * *v130), *v161 + *(v160 + 72) * *v132, (*v161 + *(v160 + 72) * v133), v175);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v133 < v27)
        {
          goto LABEL_154;
        }

        v5 = *(v164 + 16);
        if (v131 > v5)
        {
          goto LABEL_155;
        }

        *v130 = v27;
        v130[1] = v133;
        if (v131 >= v5)
        {
          goto LABEL_156;
        }

        v95 = v5 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v132 + 16), v5 - 1 - v131, v132);
        v27 = v164;
        *(v164 + 16) = v5 - 1;
        v134 = v5 > 2;
        v5 = 0;
        if (!v134)
        {
          goto LABEL_136;
        }
      }

      v105 = v96 + 16 * v95;
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_157;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_158;
      }

      v112 = v100[1];
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_160;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_163;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = v99[1];
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_171;
        }

        if (v103 < v129)
        {
          v98 = v95 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_107;
    }

LABEL_136:
    v22 = v160;
    v25 = v161[1];
    v15 = v170;
    if (v26 >= v25)
    {
      goto LABEL_139;
    }
  }

  v67 = v28 + v148;
  if (__OFADD__(v28, v148))
  {
    goto LABEL_174;
  }

  if (v67 >= v66)
  {
    v67 = v161[1];
  }

  if (v67 < v28)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
LABEL_141:
    v137 = (v27 + 16);
    v138 = *(v27 + 16);
    while (v138 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_180;
      }

      v139 = v27;
      v27 += 16 * v138;
      v140 = *v27;
      v141 = &v137[2 * v138];
      v142 = *(v141 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v161 + *(v160 + 72) * *v27), *v161 + *(v160 + 72) * *v141, (*v161 + *(v160 + 72) * v142), v176);
      if (v5)
      {
        break;
      }

      if (v142 < v140)
      {
        goto LABEL_168;
      }

      if (v138 - 2 >= *v137)
      {
        goto LABEL_169;
      }

      *v27 = v140;
      *(v27 + 8) = v142;
      v143 = *v137 - v138;
      if (*v137 < v138)
      {
        goto LABEL_170;
      }

      v138 = *v137 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v141 + 16, v143, v141);
      *v137 = v138;
      v27 = v139;
    }

    goto LABEL_152;
  }

  if (v26 == v67)
  {
    goto LABEL_86;
  }

  v164 = v27;
  v152 = v5;
  v68 = *v161;
  v69 = *(v22 + 72);
  v169 = *(v22 + 16);
  v70 = v68 + v69 * (v26 - 1);
  v166 = -v69;
  v167 = v68;
  v71 = v28 - v26;
  v154 = v69;
  v72 = v68 + v26 * v69;
  v155 = v67;
LABEL_60:
  v165 = v26;
  v157 = v72;
  v158 = v71;
  v73 = v71;
  v159 = v70;
  while (1)
  {
    v175 = v73;
    v74 = v176;
    v75 = v169;
    v169(v15, v72, v176);
    v76 = v171;
    v75(v171, v70, v74);
    v77 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    v79 = v15;
    if (v78)
    {
      v80 = v77;
    }

    else
    {
      v80 = 0;
    }

    if (v78)
    {
      v81 = v78;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v82 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0xE000000000000000;
    }

    if (v80 == v84 && v81 == v85)
    {

      v93 = *v173;
      (*v173)(v76, v74);
      v93(v79, v74);
      v15 = v79;
      goto LABEL_84;
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v88 = *v173;
    (*v173)(v76, v74);
    v88(v79, v74);
    if ((v87 & 1) == 0)
    {
      v15 = v170;
LABEL_84:
      v26 = v165 + 1;
      v70 = v159 + v154;
      v71 = v158 - 1;
      v72 = v157 + v154;
      if (v165 + 1 == v155)
      {
        v26 = v155;
        v5 = v152;
        v27 = v164;
        v28 = v153;
        goto LABEL_86;
      }

      goto LABEL_60;
    }

    v89 = v175;
    if (!v167)
    {
      break;
    }

    v90 = *v172;
    v91 = v168;
    v92 = v176;
    (*v172)(v168, v72, v176);
    swift_arrayInitWithTakeFrontToBack();
    v90(v70, v91, v92);
    v70 += v166;
    v72 += v166;
    v65 = __CFADD__(v89, 1);
    v73 = v89 + 1;
    v15 = v170;
    if (v65)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v9 = MEMORY[0x28223BE20](v8);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_96;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_97;
  }

  v24 = (a2 - a1) / v20;
  v84 = a1;
  v83 = a4;
  v78 = (v17 + 8);
  v79 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v74 = &v69 - v18;
    v75 = v15;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v20, a4);
    v76 = a3;
    v77 = (a4 + v24 * v20);
    v82 = v77;
    v26 = a4;
    while (1)
    {
      if (v26 >= v77 || a2 >= a3)
      {
        goto LABEL_94;
      }

      v80 = a1;
      v28 = *v79;
      v29 = v74;
      v30 = a2;
      (*v79)(v74, a2, v8);
      v81 = v26;
      v31 = v75;
      v28();
      v32 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0xE000000000000000;
      }

      v36 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0xE000000000000000;
      }

      if (v34 == v38 && v35 == v39)
      {

        v46 = *v78;
        (*v78)(v31, v8);
        v46(v29, v8);
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v42 = *v78;
        (*v78)(v31, v8);
        v42(v29, v8);
        if (v41)
        {
          v43 = v30;
          a2 = v30 + v20;
          v44 = v80;
          if (v80 < v30 || v80 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v76;
          }

          else
          {
            a3 = v76;
            if (v80 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v81;
          goto LABEL_52;
        }
      }

      v44 = v80;
      v26 = v81 + v20;
      v47 = v80 < v81 || v80 >= v26;
      a2 = v30;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v76;
      }

      else
      {
        a3 = v76;
        if (v80 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v83 = v26;
LABEL_52:
      a1 = &v44[v20];
      v84 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v22 / v20, a4);
  v81 = a4;
  v48 = (a4 + v25 * v20);
  v49 = -v20;
  v50 = v48;
  v75 = -v20;
LABEL_54:
  v73 = a2;
  a2 += v49;
  v70 = v50;
  v72 = a2;
  while (1)
  {
    if (v48 <= v81)
    {
      v84 = v73;
      v82 = v50;
      goto LABEL_94;
    }

    if (v73 <= a1)
    {
      break;
    }

    v74 = a3;
    v71 = v50;
    v76 = v48;
    v51 = &v48[v49];
    v52 = *v79;
    (*v79)(v77, &v48[v49], v8);
    (v52)(v80, a2, v8);
    v53 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0;
    }

    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    if (v55 == v59 && v56 == v60)
    {
      v62 = 0;
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v63 = v74;
    v64 = &v74[v75];
    v65 = *v78;
    (*v78)(v80, v8);
    v65(v77, v8);
    a2 = v72;
    if (v62)
    {
      v67 = v63 < v73 || v64 >= v73;
      a3 = v64;
      if (v67)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = v71;
        v49 = v75;
        v48 = v76;
      }

      else
      {
        v68 = v71;
        v50 = v71;
        v49 = v75;
        v48 = v76;
        if (v63 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
          v48 = v76;
          v50 = v68;
        }
      }

      goto LABEL_54;
    }

    if (v63 < v76 || v64 >= v76)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v64;
      v48 = v51;
      v50 = v51;
      v49 = v75;
    }

    else
    {
      v50 = v51;
      a3 = v64;
      v48 = v51;
      v49 = v75;
      if (v76 != v63)
      {
        swift_arrayInitWithTakeBackToFront();
        a3 = v64;
        v48 = v51;
        v50 = v51;
      }
    }
  }

  v84 = v73;
  v82 = v70;
LABEL_94:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v84, &v83, &v82);
  return 1;
}

uint64_t type metadata accessor for AssetDeliveryState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceReportingMobileAssetLog?()
{
  OUTLINED_FUNCTION_117();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_7();
  v3 = OUTLINED_FUNCTION_62();
  v4(v3);
  return v0;
}

uint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubscriptionKey and conformance SubscriptionKey()
{
  result = lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey;
  if (!lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubscriptionKey, &type metadata for SubscriptionKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey;
  if (!lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubscriptionKey, &type metadata for SubscriptionKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionKey(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 37))
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

uint64_t storeEnumTagSinglePayload for SubscriptionKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for AssetDeliveryState(uint64_t a1)
{
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AppleIntelligenceReportingMobileAssetLog?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AppleIntelligenceReportingMobileAssetLog?)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AppleIntelligenceReportingMobileAssetLog?);
    }
  }
}

void type metadata completion function for AppleIntelligenceReportingMobileAssetLog.ReportingEventType(uint64_t a1)
{
  type metadata accessor for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F578]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (asset: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F590]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (atomicInstance: AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F568]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType))
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    type metadata accessor for AppleIntelligenceReportingEventType();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType));
    }
  }
}

void type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    type metadata accessor for AppleIntelligenceReportingEventType();
    OUTLINED_FUNCTION_104_0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t type metadata completion function for AssetDeliveryState.Session(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of InvocationStepMetadata.Partial(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStepMetadata.Partial(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_16_3()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAAF0A0);
}

void OUTLINED_FUNCTION_18_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_36_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_40()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_45_0()
{
}

unint64_t OUTLINED_FUNCTION_60()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_69_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1)
{

  return Array.append(_:)();
}

void OUTLINED_FUNCTION_115_0()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_116_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_129@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 184) = *(a1 + 8);
  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = InvocationEvent.CodingKeys.rawValue.getter(a1);
  v5 = v4;
  if (v3 == InvocationEvent.CodingKeys.rawValue.getter(a2) && v5 == v6)
  {
    v10 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_51_0();
    v10 = OUTLINED_FUNCTION_205(v8, v9);
  }

  return v10 & 1;
}

unint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for InvocationStepMetadata(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7();
  v20[2] = v6;
  OUTLINED_FUNCTION_10();
  result = MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v11)
    {

      return v21;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    outlined init with copy of AssetDeliveryStateReader();
    v13 = v22(v10);
    if (v3)
    {
      outlined destroy of AssetDeliveryStateReader(v10, type metadata accessor for InvocationStepMetadata);
      v19 = v21;

      return v19;
    }

    if (v13)
    {
      outlined init with take of AssetDeliverySubsystemError();
      v14 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        v14 = v24;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v21 = v17 + 1;
        v20[1] = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        v18 = v21;
        v14 = v24;
      }

      ++v11;
      *(v14 + 16) = v18;
      v21 = v14;
      result = outlined init with take of AssetDeliverySubsystemError();
    }

    else
    {
      result = outlined destroy of AssetDeliveryStateReader(v10, type metadata accessor for InvocationStepMetadata);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

uint64_t specialized Collection.first.getter()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = type metadata accessor for InvocationStep(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_69();
    outlined init with copy of AssetDeliveryStateReader();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v4, 1, v3);
}

{
  v3 = OUTLINED_FUNCTION_195();
  v5 = v4(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_31_1();
    (*(v6 + 16))(v0, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v5);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of UnifiedAssetFrameworkReporting(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  v2 = InvocationEvent.CodingKeys.rawValue.getter(a1);
  OUTLINED_FUNCTION_164(v2);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  InvocationEvent.CodingKeys.rawValue.getter(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  v3 = InvocationEvent.CodingKeys.rawValue.getter(a2);
  OUTLINED_FUNCTION_164(v3);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void statusInteger(from:)()
{
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v80 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38_0();
  v81 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_64_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_137_0();
  AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.getter();
  v21 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState();
  OUTLINED_FUNCTION_13_4(v3);
  if (v29)
  {
    v22 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd;
    v23 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR;
    v24 = v3;
LABEL_7:
    outlined destroy of NSObject?(v24, v22, v23);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v4);
    goto LABEL_8;
  }

  v79 = v6;
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.getter();
  OUTLINED_FUNCTION_30_0();
  v26 = *(v25 + 8);
  v27 = v25 + 8;
  v26(v3, v21);
  v28 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
  OUTLINED_FUNCTION_28_3(v18);
  if (v29)
  {
    v22 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd;
    v23 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR;
    v24 = v18;
    goto LABEL_7;
  }

  v78 = v26;
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.getter();
  OUTLINED_FUNCTION_31_1();
  v43 = *(v42 + 8);
  v44 = v18;
  v45 = v43;
  v77 = v42 + 8;
  (v43)(v44, v28);
  v46 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_26_1(v46, v47);
  if (v48)
  {
LABEL_8:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v33, static Logging.general);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (!OUTLINED_FUNCTION_78_0(v35))
    {
      goto LABEL_12;
    }

LABEL_11:
    OUTLINED_FUNCTION_99_1();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_116_1(v36);
    OUTLINED_FUNCTION_47_1();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
LABEL_12:

    goto LABEL_13;
  }

  v49 = OUTLINED_FUNCTION_99_0();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D1F5B8])
  {
    goto LABEL_13;
  }

  if (v51 == *MEMORY[0x277D1F5A8] || v51 == *MEMORY[0x277D1F5B0])
  {
    AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.getter();
    OUTLINED_FUNCTION_13_4(v0);
    if (v29)
    {
      v53 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd;
      v54 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR;
      v55 = v0;
    }

    else
    {
      OUTLINED_FUNCTION_185();
      AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.getter();
      v78(v0, v21);
      OUTLINED_FUNCTION_28_3(v1);
      if (!v73)
      {
        AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.reasons.getter();
        v76 = OUTLINED_FUNCTION_149();
        v45(v76);
        if ((v1 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_33:
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v74, static Logging.general);
        v34 = Logger.logObject.getter();
        v75 = static os_log_type_t.fault.getter();
        if (!OUTLINED_FUNCTION_78_0(v75))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v53 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd;
      v54 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR;
      v55 = v1;
    }

    outlined destroy of NSObject?(v55, v53, v54);
    goto LABEL_33;
  }

  v56 = OUTLINED_FUNCTION_103_1();
  v57(v56);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v58, static Logging.general);
  v59 = OUTLINED_FUNCTION_117_1();
  v60(v59);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_59_1();
    v63 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v82 = swift_slowAlloc();
    *v63 = 136315138;
    OUTLINED_FUNCTION_25_3();
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(v64, v65, MEMORY[0x277D1F5D0]);
    dispatch thunk of CustomStringConvertible.description.getter();
    v66 = OUTLINED_FUNCTION_89_1();
    v67 = *(v21 + 8);
    v67(v66, v27);
    v68 = OUTLINED_FUNCTION_114_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v70);
    OUTLINED_FUNCTION_89_1();

    *(v63 + 4) = v2;
    OUTLINED_FUNCTION_199(&dword_227F43000, v71, v72, "statusInteger encountered availability event with unhandled status enum value of %s");
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
  }

  else
  {

    v67 = *(v21 + 8);
    v67(v2, v27);
  }

  v67(v28, v27);
LABEL_13:
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryStateReader.init(useCaseIdentifier:state:unifiedAssetFrameworkReporter:invocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v55 = a5;
  v57 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55_0();
  v54 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v53 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;

  static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(a1, a2, a3);
  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  else
  {
    v50 = v18;
    v51 = 0;
    v52 = a1;

    v49 = type metadata accessor for AssetDeliveryStateReader(0);
    v26 = v49[6];
    v27 = v53;
    (*(v53 + 32))(&a6[v26], v24, v19);
    (*(v27 + 16))(v7, &a6[v26], v19);
    AppleIntelligenceReportingAvailabilityLog.event.getter();
    v28 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
    v29 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_34_0(v29, v30, v28);
    v31 = v7;
    if (v32)
    {
      outlined destroy of NSObject?(v54, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      type metadata accessor for Date();
      v37 = v50;
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    }

    else
    {
      v48 = v19;
      v37 = v50;
      v38 = v54;
      AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
      OUTLINED_FUNCTION_31_1();
      v19 = v48;
      (*(v39 + 8))(v38, v28);
    }

    v44 = v57;
    static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v52, a2, v31, a3, v40, v41, v42, v43, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v46 = v45;

    outlined destroy of NSObject?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v27 + 8))(v31, v19);
    v47 = v49;
    specialized Collection.first.getter();
    specialized BidirectionalCollection.last.getter(v46, &a6[v47[8]]);

    result = outlined init with take of UnifiedAssetFrameworkReporting(v44, &a6[v47[9]]);
    *&a6[v47[10]] = v55;
  }

  return result;
}

void *AssetDeliveryStateReader.computeStatusChangeCAEvent()@<X0>(void *a1@<X8>)
{
  v228 = a1;
  v4 = type metadata accessor for AssetDeliveryStateReader(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v227 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v216 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38_0();
  v217 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v218 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_96();
  v219 = v16;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_96();
  v222 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_63_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v223 = v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  v25 = &v204 - v24;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v225 = v27;
  v226 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v221 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38_0();
  v224 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v220 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_93_1();
  v35 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v41 = v40 - v39;
  AssetDeliveryStateReader.previousAvailabilityEvent.getter();
  v42 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v42, v43, v35);
  if (v48)
  {
    outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
LABEL_11:
    v59 = v227;
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logging.general);
    OUTLINED_FUNCTION_8_8();
    outlined init with copy of AssetDeliveryStateReader();
    v61 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v62 = OUTLINED_FUNCTION_140_0();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_59_1();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_60_0();
      v65 = swift_slowAlloc();
      v246[0] = v65;
      *v64 = 136315138;

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v59, v66);
      v67 = OUTLINED_FUNCTION_124_0();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v69);

      *(v64 + 4) = v70;
      OUTLINED_FUNCTION_171();
      _os_log_impl(v71, v72, v73, v74, v75, v76);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v59, v77);
    }

    goto LABEL_16;
  }

  (*(v37 + 32))(v41, v3, v35);
  v212 = v4;
  v44 = *(v4 + 24);
  v215 = v1;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v45 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v45, v46, v47);
  if (v48)
  {
    (*(v37 + 8))(v41, v35);
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v226);
LABEL_10:
    outlined destroy of NSObject?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v213 = v37;
  v214 = v41;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_35_0();
  v53 = *(v52 + 8);
  v54 = v52 + 8;
  v55 = OUTLINED_FUNCTION_124_1();
  v53(v55);
  v56 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v56, v57, v226);
  if (v58)
  {
    (*(v213 + 8))(v214, v35);
    goto LABEL_10;
  }

  v208 = v44;
  v210 = v54;
  v211 = v35;
  v80 = v224;
  v79 = v225;
  v81 = OUTLINED_FUNCTION_77_0();
  v209 = v82;
  v82(v81);
  v83 = v222;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v84 = OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_34_0(v84, v85, v4);
  if (v86)
  {
    v87 = v226;
    (*(v79 + 8))(v80, v226);
    v88 = OUTLINED_FUNCTION_196();
    v89(v88);
    outlined destroy of NSObject?(v83, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v93 = v223;
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
LABEL_24:
    outlined destroy of NSObject?(v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v93 = v223;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  v94 = v53;
  v95 = v4;
  v222 = v94;
  v94(v83, v4);
  v96 = OUTLINED_FUNCTION_50_1();
  v97 = v226;
  OUTLINED_FUNCTION_34_0(v96, v98, v226);
  v100 = v215;
  if (v99)
  {
    v101 = OUTLINED_FUNCTION_99_0();
    v102(v101);
    v103 = OUTLINED_FUNCTION_196();
    v104(v103);
    goto LABEL_24;
  }

  (v209)(v221, v93, v97);
  statusInteger(from:)();
  v106 = v105;
  v108 = v107;
  statusInteger(from:)();
  if ((v108 & 1) == 0)
  {
    v111 = v220;
    if ((v110 & 1) != 0 || v106 != v109)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v111 = v220;
  if (v110)
  {
LABEL_30:
    v112 = v225;
    v113 = v211;
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Logging.general);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    v117 = OUTLINED_FUNCTION_140_0();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v213;
    if (v119)
    {
      OUTLINED_FUNCTION_99_1();
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_227F43000, v115, v116, "generateStatusChangeCAEvent called with no change in status", v121, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    v122 = *(v112 + 8);
    v123 = v226;
    v122(v221, v226);
    v122(v224, v123);
    (*(v120 + 8))(v214, v113);
LABEL_16:
    _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOi0_(v246);
    return memcpy(v228, v246, 0xE5uLL);
  }

LABEL_35:
  LODWORD(v220) = v110;
  v223 = v109;
  v227 = v106;
  v124 = v219;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v125 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v125, v126, v95);
  v127 = v211;
  LODWORD(v209) = v108;
  if (v48)
  {
    outlined destroy of NSObject?(v124, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v219 = 0;
    v208 = 1;
    v128 = v213;
  }

  else
  {
    v129 = v217;
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    v130 = v129;
    v131 = OUTLINED_FUNCTION_124_0();
    (v222)(v131);
    v132 = type metadata accessor for AppleIntelligenceReportingUseCase();
    v133 = OUTLINED_FUNCTION_67_1();
    OUTLINED_FUNCTION_34_0(v133, v134, v132);
    v128 = v213;
    if (v135)
    {
      outlined destroy of NSObject?(v130, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
      v219 = 0;
      v208 = 1;
    }

    else
    {
      v219 = AppleIntelligenceReportingUseCase.mode.getter();
      v208 = HIDWORD(v219) & 1;
      OUTLINED_FUNCTION_35_0();
      (*(v136 + 8))(v130, v132);
    }
  }

  AssetDeliveryStateReader.previousAvailabilityEvent.getter();
  OUTLINED_FUNCTION_34_0(v111, 1, v127);
  if (v48)
  {
    v137 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd;
    v138 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR;
    v139 = v111;
LABEL_47:
    outlined destroy of NSObject?(v139, v137, v138);
    v222 = 0;
    v218 = 1;
    v144 = v224;
    goto LABEL_48;
  }

  v140 = v218;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  (*(v128 + 8))(v111, v127);
  v141 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v141, v142, v95);
  if (v143)
  {
    v137 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v138 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v139 = v140;
    goto LABEL_47;
  }

  v196 = v216;
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  v197 = OUTLINED_FUNCTION_129_0();
  (v222)(v197);
  type metadata accessor for AppleIntelligenceReportingUseCase();
  v198 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v198, v199, v200);
  v144 = v224;
  if (v201)
  {
    outlined destroy of NSObject?(v196, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    v222 = 0;
    v218 = 1;
  }

  else
  {
    v222 = AppleIntelligenceReportingUseCase.mode.getter();
    v218 = HIDWORD(v222) & 1;
    OUTLINED_FUNCTION_35_0();
    v202 = OUTLINED_FUNCTION_124_1();
    v203(v202);
  }

LABEL_48:
  v145 = v221;
  Date.timeIntervalSince(_:)();
  v147 = v146;
  AssetDeliveryStateReader.timeSinceLastAIToggle(to:)(v144);
  v224 = v148;
  HIDWORD(v205) = v149;
  v150 = Date.timeIntervalSince(_:)();
  v152 = v151;
  AssetDeliveryStateReader.timeSinceLastBootToAvailabilityChange.getter(v150, v153, v154, v155, v156, v157, v158, v159, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
  v217 = v160;
  v162 = v161;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  LODWORD(v216) = v163;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  LODWORD(v212) = v164;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(v144, v165, v166, v167, v168, v169, v170, v171, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
  v173 = v172;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(v144, v172, v175, v176, v177, v178, v179, v180, v204, v205, v206, v207, v208, v209, v174, v211, v212, v213, v214, v215, v216, v217);
  v182 = v181;
  v183 = *v100;
  v184 = v100[1];
  v206 = v183;
  v207 = v185;

  Date.timeIntervalSince1970.getter();
  OUTLINED_FUNCTION_111_1();
  if (v190)
  {
    v191 = v188 <= v189;
  }

  else
  {
    v191 = 1;
  }

  v192 = vcvtad_u64_f64(v187);
  if (!v191)
  {
    v186 = v192;
  }

  LODWORD(v215) = v186;
  v193 = v145;
  v194 = *(v225 + 8);
  v194(v193, v226);
  v195 = OUTLINED_FUNCTION_114_1();
  (v194)(v195);
  (*(v213 + 8))(v214, v211);
  v245 = v220 & 1;
  v244 = v209 & 1;
  v243 = v208;
  v242 = v218;
  v241 = 0;
  v240 = 1;
  v239 = 1;
  v238 = BYTE4(v205) & 1;
  v237 = 0;
  v236 = v162 & 1;
  v235 = 0;
  v234 = 0;
  v233 = 1;
  v232 = 1;
  v231 = v173 & 1;
  v230 = v182 & 1;
  v229 = 0;
  v246[0] = v223;
  LOBYTE(v246[1]) = v220 & 1;
  v246[2] = v227;
  LOBYTE(v246[3]) = v209 & 1;
  HIDWORD(v246[3]) = v219;
  LOBYTE(v246[4]) = v208;
  HIDWORD(v246[4]) = v222;
  LOBYTE(v246[5]) = v218;
  v246[6] = v147;
  LOWORD(v246[7]) = 512;
  v246[8] = 0;
  LOWORD(v246[9]) = 513;
  v246[10] = 0;
  LOWORD(v246[11]) = 513;
  v246[12] = v224;
  LOBYTE(v246[13]) = BYTE4(v205) & 1;
  v246[14] = v152;
  LOBYTE(v246[15]) = 0;
  v246[16] = v217;
  LOBYTE(v246[17]) = v162 & 1;
  HIDWORD(v246[17]) = v216;
  LOBYTE(v246[18]) = 0;
  HIDWORD(v246[18]) = v212;
  LOBYTE(v246[19]) = 0;
  HIDWORD(v246[19]) = 0;
  LOBYTE(v246[20]) = 1;
  HIDWORD(v246[20]) = 0;
  LOBYTE(v246[21]) = 1;
  v246[22] = v210;
  LOBYTE(v246[23]) = v173 & 1;
  v246[24] = v207;
  LOBYTE(v246[25]) = v182 & 1;
  v246[26] = v206;
  v246[27] = v184;
  LODWORD(v246[28]) = v215;
  BYTE4(v246[28]) = 0;
  Array._endMutation()();
  return memcpy(v228, v246, 0xE5uLL);
}

void AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v298 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_96();
  v296 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_96();
  v289 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_96();
  v285 = v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_96();
  v22 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  v307 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  v306 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_93_1();
  v28 = OUTLINED_FUNCTION_158();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_96();
  v300 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_64_1();
  v37 = [objc_opt_self() processInfo];
  [v37 systemUptime];
  v39 = v38;

  v304 = v2;
  AssetDeliveryStateReader.lastMADownloadAttemptErrorInfo.getter(v40, v41, v42, v43, v44, v45, v46, v47, v195, v201, v207, v211, v216, v222, v228, v234, v240, v246, v252, v258);
  v302 = v5;
  outlined init with copy of AppleIntelligenceError?();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMR);
  v49 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v49, v50, v48);
  v303 = v4;
  if (v51)
  {
    outlined destroy of NSObject?(v3, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    type metadata accessor for AssetDeliverySubsystemError(0);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  }

  else
  {

    v57 = *(v48 + 48);
    v58 = *(v48 + 64);
    AssetDeliverySubsystemError.deepestUnderlyingError()(v56, v59, v60, v61, v62, v63, v64, v65, v196, v202, v208, v212, v217, v223, v229, v235, v241, v247, v253, v259);
    outlined destroy of NSObject?(v3 + v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v3 + v57, v66);
  }

  v295 = closure #1 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)();
  v294 = v67;
  AssetDeliveryStateReader.allErrors()(v295, v67, v68, v69, v70, v71, v72, v73, v196, v202, v208, v212, v217, v223, v229, v235, v241, v247, v253, v259);
  v75 = v74;
  specialized Collection.randomElement<A>(using:)(v74, v306);
  v76 = v22;
  outlined init with copy of AppleIntelligenceError?();
  v77 = type metadata accessor for AssetDeliverySubsystemError(0);
  v78 = OUTLINED_FUNCTION_31_2(v22);
  v86 = v279;
  v87 = v270;
  if (v51)
  {
    outlined destroy of NSObject?(v76, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v77);
  }

  else
  {
    AssetDeliverySubsystemError.deepestUnderlyingError()(v78, v79, v80, v81, v82, v83, v84, v85, v197, v203, v209, v213, v218, v224, v230, v236, v242, v248, v254, v260);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v76, v91);
  }

  v92 = closure #2 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(v75);
  v287 = v93;
  v288 = v92;
  AssetDeliveryStateReader.uafDownloadStatus(now:)(a1, v93, v94, v95, v96, v97, v98, v99, v197, v203, v209, v213, v218, v224, v230, v236, v242, v248, v254, v260);
  v291 = v100;
  v293 = v101;
  v292 = v102;
  AssetDeliveryStateReader.locale.getter();
  AssetDeliveryStateReader.locale.getter();
  v284 = v103;
  v283 = v104;
  type metadata accessor for AssetDeliveryStateReader(0);
  statusInteger(from:)();
  v282 = v105;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  v281 = v106;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  v280 = v107;
  OUTLINED_FUNCTION_82_1();
  outlined init with copy of AppleIntelligenceError?();
  v108 = OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_34_0(v108, v109, v48);
  if (v51)
  {
    outlined destroy of NSObject?(v304, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
  }

  else
  {
    v110 = *(v48 + 48);
    outlined destroy of NSObject?(v304 + *(v48 + 64), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    v111 = v304 + v110;
    v86 = v279;
    v87 = v270;
    outlined destroy of AssetDeliveryStateReader(v111, v112);
  }

  OUTLINED_FUNCTION_99_0();
  outlined init with copy of AppleIntelligenceError?();
  v113 = OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_34_0(v113, v114, v48);
  v264 = v75;
  if (v51)
  {
    outlined destroy of NSObject?(v300, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    v275 = 0;
    LOBYTE(v278) = 1;
  }

  else
  {

    v115 = v300 + *(v48 + 48);
    v116 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v278 = HIDWORD(v116) & 1;
    if ((v116 & 0x100000000) != 0)
    {
      v275 = 0;
    }

    else
    {
      Array._endMutation()();
      v275 = v117;
    }

    outlined destroy of NSObject?(v300 + *(v48 + 64), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v115, v118);
  }

  outlined init with copy of AppleIntelligenceError?();
  v119 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v119, v120, v48);
  if (v51)
  {
    outlined destroy of NSObject?(v267, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    v301 = 0;
    v274 = 0;
  }

  else
  {

    v121 = v267 + *(v48 + 48);
    v122 = *(v48 + 64);
    v301 = AppleIntelligenceReportingGeneralError.domain.getter();
    v274 = v123;
    outlined destroy of NSObject?(v267 + v122, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v121, v124);
  }

  v125 = v296;
  v126 = v285;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v87);
  if (v51)
  {
    outlined destroy of NSObject?(v87, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v286 = 0;
    LOBYTE(v297) = 1;
  }

  else
  {
    v127 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v297 = HIDWORD(v127) & 1;
    if ((v127 & 0x100000000) != 0)
    {
      v286 = 0;
    }

    else
    {
      Array._endMutation()();
      v286 = v128;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v87, v129);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v272);
  if (v51)
  {
    outlined destroy of NSObject?(v272, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v271 = 0;
    v268 = 0;
  }

  else
  {
    v271 = AppleIntelligenceReportingGeneralError.domain.getter();
    v268 = v130;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v272, v131);
  }

  v132 = v276;
  v133 = *(v264 + 16);

  v277 = _ss6UInt32V36AppleIntelligenceReportingProcessingE14safelyWrappingABx_tcSzRzlufCSi_Tt0g5(v133);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v132);
  if (v51)
  {
    outlined destroy of NSObject?(v132, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v273 = 0;
    v265 = 0;
  }

  else
  {
    v308 = AppleIntelligenceAssetDeliveryEvent.Subsystem.description.getter();
    v309 = v134;
    MEMORY[0x22AAAE070](58, 0xE100000000000000);
    MEMORY[0x22AAAE070](*(v132 + *(v77 + 20)), *(v132 + *(v77 + 20) + 8));
    v273 = v308;
    v265 = v309;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v132, v135);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v86);
  if (v51)
  {
    outlined destroy of NSObject?(v86, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    HIDWORD(v255) = 0;
    v261 = 1;
  }

  else
  {
    v136 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v261 = HIDWORD(v136) & 1;
    if ((v136 & 0x100000000) != 0)
    {
      HIDWORD(v255) = 0;
    }

    else
    {
      Array._endMutation()();
      HIDWORD(v255) = v137;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v86, v138);
  }

  OUTLINED_FUNCTION_158();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v126);
  if (v51)
  {
    outlined destroy of NSObject?(v126, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v249 = 0;
  }

  else
  {
    AppleIntelligenceReportingGeneralError.domain.getter();
    v249 = v139;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v126, v140);
  }

  outlined init with copy of AppleIntelligenceError?();
  v141 = OUTLINED_FUNCTION_67_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, v142, v77);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NSObject?(v289, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    HIDWORD(v243) = 0;
  }

  else
  {
    HIDWORD(v243) = AssetDeliverySubsystemError.errorHash()();
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v289, v144);
  }

  v145 = v298;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v125);
  if (v51)
  {
    outlined destroy of NSObject?(v125, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v290 = 0;
    LOBYTE(v299) = 1;
  }

  else
  {
    v146 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v299 = HIDWORD(v146) & 1;
    if ((v146 & 0x100000000) != 0)
    {
      v290 = 0;
    }

    else
    {
      Array._endMutation()();
      v290 = v147;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v125, v148);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v145);
  if (v51)
  {
    outlined destroy of NSObject?(v145, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v237 = 0;
    v231 = 0;
  }

  else
  {
    v237 = AppleIntelligenceReportingGeneralError.domain.getter();
    v231 = v149;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v145, v150);
  }

  HIDWORD(v225) = EnumTagSinglePayload == 1;
  AssetDeliveryStateReader.timeSinceLastAIToggle(to:)(a1);
  v219 = v151;
  HIDWORD(v214) = v152;
  AssetDeliveryStateReader.timeSinceLastDownloadStart(now:)(a1);
  HIDWORD(v204) = v153;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(a1, v153, v155, v156, v157, v158, v159, v160, v198, v204, v154, v214, v219, v225, v231, v237, v243, v249, v255, v261, v265, v268);
  v162 = v161;
  HIDWORD(v199) = v163;
  AssetDeliveryStateReader.downloadState.getter(v161, v163, v164, v165, v166, v167, v168, v169, v199, v205, v210, v215, v220, v226, v232, v238, v244, v250, v256, v262);
  v206 = v170 == 5;
  if (v170 == 5)
  {
    v171 = 0;
  }

  else
  {
    v171 = v170;
  }

  v200 = v171;
  Date.timeIntervalSince1970.getter();
  OUTLINED_FUNCTION_111_1();
  if (v176)
  {
    v177 = v174 <= v175;
  }

  else
  {
    v177 = 1;
  }

  v178 = vcvtad_u64_f64(v173);
  if (v177)
  {
    v179 = v172;
  }

  else
  {
    v179 = v178;
  }

  v181 = *v304;
  v180 = v304[1];

  v182 = AssetDeliveryStateReader.mode.getter();
  AssetDeliveryStateReader.invocationsWhileNotAvailable.getter();
  v184 = v183;
  outlined destroy of NSObject?(v307, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v306, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v303, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v302, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
  OUTLINED_FUNCTION_14_0();
  *a2 = v186;
  *(a2 + 8) = v185;
  *(a2 + 16) = v284;
  *(a2 + 24) = v283;
  *(a2 + 32) = v282;
  *(a2 + 44) = v281;
  *(a2 + 52) = v280;
  OUTLINED_FUNCTION_167();
  *(a2 + 64) = v188;
  *(a2 + 72) = v187;
  *(a2 + 80) = v275;
  *(a2 + 84) = v278;
  *(a2 + 88) = v301;
  *(a2 + 96) = v274;
  *(a2 + 104) = v286;
  *(a2 + 108) = v297;
  *(a2 + 112) = v271;
  *(a2 + 120) = v269;
  *(a2 + 128) = v277;
  *(a2 + 136) = v288;
  *(a2 + 144) = v287;
  *(a2 + 152) = v273;
  *(a2 + 160) = v266;
  OUTLINED_FUNCTION_180();
  *(a2 + 40) = v189;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 132) = 0;
  *(a2 + 168) = v257;
  *(a2 + 172) = v263;
  OUTLINED_FUNCTION_187();
  *(a2 + 176) = v190;
  *(a2 + 184) = v251;
  *(a2 + 192) = v245;
  *(a2 + 196) = v227;
  *(a2 + 200) = v290;
  *(a2 + 204) = v299;
  *(a2 + 208) = v239;
  *(a2 + 216) = v233;
  *(a2 + 224) = v221;
  OUTLINED_FUNCTION_180();
  *(a2 + 232) = v191;
  OUTLINED_FUNCTION_181();
  *(a2 + 240) = v192;
  OUTLINED_FUNCTION_180();
  *(a2 + 248) = v193;
  *(a2 + 256) = v162;
  OUTLINED_FUNCTION_180();
  *(a2 + 264) = v194;
  *(a2 + 272) = v295;
  *(a2 + 280) = v294 & 1;
  *(a2 + 284) = 0;
  *(a2 + 288) = 1;
  *(a2 + 292) = 0;
  *(a2 + 296) = 1;
  *(a2 + 300) = v200;
  *(a2 + 304) = v206;
  *(a2 + 308) = 0;
  *(a2 + 312) = 1;
  *(a2 + 320) = v39;
  *(a2 + 328) = 0;
  *(a2 + 332) = v179;
  *(a2 + 336) = 0;
  *(a2 + 344) = v181;
  *(a2 + 352) = v180;
  *(a2 + 360) = v182;
  *(a2 + 364) = BYTE4(v182) & 1;
  *(a2 + 368) = v184;
  *(a2 + 372) = BYTE4(v184) & 1;
  *(a2 + 376) = v291;
  *(a2 + 380) = BYTE4(v291) & 1;
  *(a2 + 384) = v293;
  *(a2 + 392) = v292 & 1;
}

uint64_t AssetDeliveryStateReader.availabilityEvent.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = *(type metadata accessor for AssetDeliveryStateReader(v2) + 24);
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetDeliveryStateReader.earliestCurrentSubscriptionEvent.getter()
{
  v0 = OUTLINED_FUNCTION_152();
  type metadata accessor for AssetDeliveryStateReader(v0);
  return outlined init with copy of AppleIntelligenceError?();
}

uint64_t AssetDeliveryStateReader.latestCurrentSubscriptionEvent.getter()
{
  v0 = OUTLINED_FUNCTION_152();
  type metadata accessor for AssetDeliveryStateReader(v0);
  return outlined init with copy of AppleIntelligenceError?();
}

uint64_t AssetDeliveryStateReader.unifiedAssetFrameworkReporter.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = type metadata accessor for AssetDeliveryStateReader(v2);
  return outlined init with copy of UnifiedAssetFrameworkReporting(v1 + *(v3 + 36), v0);
}

uint64_t AssetDeliveryStateReader.invocations.getter()
{
  type metadata accessor for AssetDeliveryStateReader(0);
}

uint64_t static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_1_2();
  (*(v7 + 152))();
  OUTLINED_FUNCTION_120_1();
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_89_1();

  if (a3)
  {
    specialized BidirectionalCollection.last.getter(a3, v3);

    v8 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    v9 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_34_0(v9, v10, v8);
    if (!v11)
    {
      OUTLINED_FUNCTION_31_1();
      v12 = OUTLINED_FUNCTION_154();
      return v13(v12);
    }
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logging.general);
  OUTLINED_FUNCTION_179();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_59_1();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v32 = swift_slowAlloc();
    *v22 = 136315138;
    v23 = OUTLINED_FUNCTION_120_1();
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);
    _os_log_impl(&dword_227F43000, v20, v21, "No availability events found for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0](v26);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0](v27);
  }

  type metadata accessor for AppleIntelligenceReportingError();
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError, MEMORY[0x277CEDFD0], MEMORY[0x277CEDFD8]);
  swift_allocError();
  v29 = v28;
  _StringGuts.grow(_:)(22);

  v30 = OUTLINED_FUNCTION_120_1();
  MEMORY[0x22AAAE070](v30);
  *v29 = 0xD000000000000014;
  v29[1] = 0x8000000227FB5B80;
  OUTLINED_FUNCTION_31_1();
  (*(v31 + 104))(v29);
  return swift_willThrow();
}

void static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v440 = v25;
  v470[0] = v26;
  v464 = v27;
  v425 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v471 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v31);
  v434 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  OUTLINED_FUNCTION_0();
  v435 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v40 = OUTLINED_FUNCTION_13(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_63_1();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v56 = OUTLINED_FUNCTION_13(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v67);
  v68 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_38_0();
  v455 = v77;
  OUTLINED_FUNCTION_12();
  v78 = type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  v80 = v79;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_38_0();
  v457 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMR);
  v85 = OUTLINED_FUNCTION_13(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_38_0();
  v465 = v87;
  OUTLINED_FUNCTION_1_2();
  (*(v88 + 176))();
  v89 = 0;
  OUTLINED_FUNCTION_123_1();
  v460 = v90;
  OUTLINED_FUNCTION_2_7();
  v94 = v93 & v92;
  v96 = (v95 + 63) >> 6;
  v456 = v80 + 16;
  v470[1] = v80 + 32;
  v458 = v80;
  v466 = (v80 + 8);
  v97 = v20;
  v450 = (v70 + 32);
  v451 = v70 + 8;
  v419 = (v471 + 16);
  v426 = (v70 + 16);
  v421 = (v471 + 8);
  v98 = v78;
  v430 = v435 + 16;
  v429 = (v435 + 8);
  *&v99 = 136315138;
  v449 = v99;
  v433 = MEMORY[0x277D84F90];
  v454 = v21;
  v467 = v68;
  v471 = v78;
  v461 = v97;
  v462 = v96;
  v459 = v22;
  v463 = v91;
  if ((v93 & v92) != 0)
  {
    while (1)
    {
      v100 = v89;
LABEL_7:
      v101 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v102 = v101 | (v100 << 6);
      v103 = v460;
      v104 = v458;
      (*(v458 + 16))(v457, *(v460 + 48) + *(v458 + 72) * v102, v98);
      v105 = *(*(v103 + 56) + 8 * v102);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
      v107 = *(v106 + 48);
      v22 = v459;
      (*(v104 + 32))();
      *(v22 + v107) = v105;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v106);

      v68 = v467;
      v97 = v461;
LABEL_8:
      v111 = v465;
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
      OUTLINED_FUNCTION_25(v111);
      if (v118)
      {
        break;
      }

      v113 = *(v111 + *(v112 + 48));
      v114 = OUTLINED_FUNCTION_77_0();
      v115(v114);
      v116 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
      if (!v117)
      {
        goto LABEL_15;
      }

      v118 = v116 == v464 && v117 == v470[0];
      if (v118)
      {

LABEL_19:
        v124 = (*(*v113 + 152))(v119);
        v125 = v124;
        if (v124 >> 62)
        {
          if (v124 >= 0)
          {
            v124 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          MEMORY[0x22AAAE610](v124);
        }

        OUTLINED_FUNCTION_112_0();
        v431 = v113;
        if (!v126)
        {
          goto LABEL_265;
        }

        v127 = 0;
        v453 = v125 & 0xC000000000000001;
        v446 = v125 & 0xFFFFFFFFFFFFFF8;
        v445 = v125 + 32;
        v448 = v125;
        v452 = v126;
        while (2)
        {
          if (v453)
          {
            v128 = MEMORY[0x22AAAE480](v127, v125);
          }

          else
          {
            if (v127 >= *(v446 + 16))
            {
              goto LABEL_272;
            }

            OUTLINED_FUNCTION_167();
          }

          v129 = __OFADD__(v127, 1);
          v130 = v127 + 1;
          if (v129)
          {
            goto LABEL_271;
          }

          v469 = v130;
          v131 = *(*v128 + 112);
          v468 = v128;
          v131();
          v132 = OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_34_0(v132, v133, v68);
          if (!v118)
          {
            v447 = *v450;
            (v447)(v455, v111, v68);
            AppleIntelligenceReportingModelCatalogLog.event.getter();
            v140 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
            OUTLINED_FUNCTION_19_3(v21);
            if (v141)
            {
              outlined destroy of NSObject?(v21, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
            }

            else
            {
              OUTLINED_FUNCTION_71_0();
              AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
              OUTLINED_FUNCTION_31_1();
              v444 = *(v142 + 8);
              v443 = v142 + 8;
              v444(v21, v140);
              v143 = OUTLINED_FUNCTION_102_0();
              OUTLINED_FUNCTION_27_2(v143, v144);
              if (!v145)
              {
                v154 = v125;
                v155 = AppleIntelligenceReportingUseCase.parameters.getter();
                v156 = OUTLINED_FUNCTION_105_0();
                v439 = v157;
                v157(v156);
                OUTLINED_FUNCTION_71_0();
                OUTLINED_FUNCTION_165(v158);
                v159 = v68;
                v160 = OUTLINED_FUNCTION_102_0();
                OUTLINED_FUNCTION_34_0(v160, v161, v140);
                v163 = v438;
                if (v162)
                {

                  v164 = v159;
                  v165 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
                  v166 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
                }

                else
                {
                  v437 = v155;
                  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                  OUTLINED_FUNCTION_9_4();
                  v167();
                  OUTLINED_FUNCTION_16_4();
                  if (!v168)
                  {
                    v442 = AppleIntelligenceReportingUseCase.parameters.getter();
                    OUTLINED_FUNCTION_105_0();
                    OUTLINED_FUNCTION_44_1();
                    v175();
                    OUTLINED_FUNCTION_71_0();
                    OUTLINED_FUNCTION_165(v176);
                    v177 = OUTLINED_FUNCTION_102_0();
                    OUTLINED_FUNCTION_34_0(v177, v178, v140);
                    v432 = v140;
                    v125 = v154;
                    if (v179)
                    {
                      outlined destroy of NSObject?(v163, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v180 = 0;
                      v181 = 1;
                      v97 = v461;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0();
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_9_4();
                      v182();
                      OUTLINED_FUNCTION_16_4();
                      v97 = v461;
                      if (v183)
                      {
                        outlined destroy of NSObject?(v163, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v180 = 0;
                        v181 = 1;
                      }

                      else
                      {
                        v184 = AppleIntelligenceReportingUseCase.mode.getter();
                        v180 = v184;
                        v181 = HIDWORD(v184) & 1;
                        OUTLINED_FUNCTION_113_1();
                        OUTLINED_FUNCTION_44_1();
                        v185();
                      }
                    }

                    OUTLINED_FUNCTION_100_0();
                    AppleIntelligenceReportingModelCatalogLog.event.getter();
                    OUTLINED_FUNCTION_66();
                    OUTLINED_FUNCTION_142_0();
                    OUTLINED_FUNCTION_27_2(v186, v187);
                    if (v118)
                    {
                      outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v188 = 0;
                      LODWORD(v111) = 1;
                      if ((v181 & 1) == 0)
                      {
                        goto LABEL_71;
                      }

LABEL_83:
                      if (!v111)
                      {
                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_100_0();
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_6_7();
                      v198();
                      v199 = OUTLINED_FUNCTION_66();
                      OUTLINED_FUNCTION_27_2(v199, v200);
                      if (v201)
                      {
                        outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v188 = 0;
                        LODWORD(v111) = 1;
                      }

                      else
                      {
                        v202 = AppleIntelligenceReportingUseCase.mode.getter();
                        v188 = v202;
                        v111 = HIDWORD(v202) & 1;
                        OUTLINED_FUNCTION_44_1();
                        v203();
                      }

                      OUTLINED_FUNCTION_142_0();
                      if (v181)
                      {
                        goto LABEL_83;
                      }

LABEL_71:
                      if (v180 == v188)
                      {
                        v189 = v111;
                      }

                      else
                      {
                        v189 = 1;
                      }

                      if (v189)
                      {
LABEL_75:
                        OUTLINED_FUNCTION_77_1();

                        OUTLINED_FUNCTION_79_1();

                        v68 = v467;
                        if (one-time initialization token for general != -1)
                        {
                          OUTLINED_FUNCTION_0_3();
                          swift_once();
                        }

                        v190 = type metadata accessor for Logger();
                        OUTLINED_FUNCTION_65(v190, static Logging.general);
                        v111 = v470[0];

                        v191 = Logger.logObject.getter();
                        static os_log_type_t.info.getter();
                        OUTLINED_FUNCTION_201();
                        os_log_type_enabled(v191, v180);
                        OUTLINED_FUNCTION_112_0();
                        if (v192)
                        {
                          OUTLINED_FUNCTION_59_1();
                          v125 = swift_slowAlloc();
                          OUTLINED_FUNCTION_60_0();
                          v193 = swift_slowAlloc();
                          v194 = OUTLINED_FUNCTION_24_4(v193);
                          OUTLINED_FUNCTION_145(v194);
                          v196 = v191;
                          v197 = "fetchSubscriptionEvent skipping event for %s as the mode does not match";
                          goto LABEL_112;
                        }

                        goto LABEL_113;
                      }
                    }

                    OUTLINED_FUNCTION_71_0();
                    OUTLINED_FUNCTION_165(v204);
                    OUTLINED_FUNCTION_16_4();
                    if (v118)
                    {
                      outlined destroy of NSObject?(v181, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v205 = 0;
                      v441 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0();
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      v206 = v181;
                      OUTLINED_FUNCTION_6_7();
                      v207();
                      v208 = OUTLINED_FUNCTION_102_0();
                      v181 = v471;
                      OUTLINED_FUNCTION_34_0(v208, v209, v471);
                      if (v210)
                      {
                        outlined destroy of NSObject?(v206, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v205 = 0;
                        v441 = 0;
                      }

                      else
                      {
                        v205 = AppleIntelligenceReportingUseCase.locale.getter();
                        v441 = v211;
                        OUTLINED_FUNCTION_44_1();
                        v212();
                      }
                    }

                    OUTLINED_FUNCTION_71_0();
                    AppleIntelligenceReportingModelCatalogLog.event.getter();
                    OUTLINED_FUNCTION_16_4();
                    v111 = v436;
                    v416 = v205;
                    if (v118)
                    {
                      outlined destroy of NSObject?(v181, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v213 = 0;
                      v214 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0();
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_6_7();
                      v215();
                      v216 = OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_27_2(v216, v217);
                      if (v218)
                      {
                        outlined destroy of NSObject?(v181, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v213 = 0;
                        v214 = 0;
                      }

                      else
                      {
                        v213 = AppleIntelligenceReportingUseCase.locale.getter();
                        v214 = v219;
                        OUTLINED_FUNCTION_105_0();
                        OUTLINED_FUNCTION_44_1();
                        v220();
                      }

                      OUTLINED_FUNCTION_142_0();
                    }

                    v68 = v467;
                    OUTLINED_FUNCTION_190();
                    if (v221)
                    {
                      if (!v214)
                      {
                        goto LABEL_107;
                      }

                      if (v416 == v213 && v221 == v214)
                      {
                      }

                      else
                      {
                        OUTLINED_FUNCTION_162(v221);
                        v225 = OUTLINED_FUNCTION_205(v223, v224);

                        if ((v225 & 1) == 0)
                        {
                          OUTLINED_FUNCTION_77_1();

                          OUTLINED_FUNCTION_79_1();
                          goto LABEL_108;
                        }
                      }

LABEL_115:
                      OUTLINED_FUNCTION_71_0();
                      OUTLINED_FUNCTION_165(v229);
                      OUTLINED_FUNCTION_16_4();
                      if (v118)
                      {
                        outlined destroy of NSObject?(v68, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        v230 = 0;
                        v232 = 0;
                      }

                      else
                      {
                        v230 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                        v232 = v231;
                        OUTLINED_FUNCTION_6_7();
                        v233();
                      }

                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      OUTLINED_FUNCTION_16_4();
                      if (v118)
                      {
                        outlined destroy of NSObject?(v420, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        if (v232)
                        {
                          goto LABEL_132;
                        }

                        goto LABEL_134;
                      }

                      v125 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                      OUTLINED_FUNCTION_115_1();
                      OUTLINED_FUNCTION_6_7();
                      v234();
                      if (v232)
                      {
                        if (!v420)
                        {
                          goto LABEL_132;
                        }

                        if (v230 == v125 && v232 == v420)
                        {
                        }

                        else
                        {
                          v236 = OUTLINED_FUNCTION_153();
                          OUTLINED_FUNCTION_205(v236, v237);
                          OUTLINED_FUNCTION_201();

                          if ((v230 & 1) == 0)
                          {
                            OUTLINED_FUNCTION_77_1();

                            OUTLINED_FUNCTION_79_1();
                            goto LABEL_153;
                          }
                        }

LABEL_134:
                        OUTLINED_FUNCTION_100_0();
                        OUTLINED_FUNCTION_165(v238);
                        OUTLINED_FUNCTION_19_3(v232);
                        if (v118)
                        {
                          outlined destroy of NSObject?(v232, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                          v239 = 0;
                          v111 = 0;
                        }

                        else
                        {
                          v239 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                          v111 = v240;
                          OUTLINED_FUNCTION_6_7();
                          v241();
                        }

                        v242 = v455;
                        AppleIntelligenceReportingModelCatalogLog.event.getter();
                        OUTLINED_FUNCTION_16_4();
                        if (v118)
                        {
                          outlined destroy of NSObject?(v414, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                          v243 = v437;
                          if (v111)
                          {
                            goto LABEL_151;
                          }

                          goto LABEL_186;
                        }

                        v242 = v414;
                        v125 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v244();
                        if (v111)
                        {
                          v243 = v437;
                          if (!v414)
                          {
                            goto LABEL_151;
                          }

                          if (v239 == v125 && v111 == v414)
                          {
                          }

                          else
                          {
                            v246 = OUTLINED_FUNCTION_153();
                            OUTLINED_FUNCTION_205(v246, v247);
                            OUTLINED_FUNCTION_201();

                            if ((v239 & 1) == 0)
                            {
                              OUTLINED_FUNCTION_77_1();

                              goto LABEL_153;
                            }
                          }

LABEL_186:
                          v441 = specialized _dictionaryUpCast<A, B, C, D>(_:)(MEMORY[0x277D84F98]);
                          v411 = *(v243 + 16);
                          if (v411)
                          {
                            v290 = 0;
                            OUTLINED_FUNCTION_69();
                            OUTLINED_FUNCTION_183();
                            while (1)
                            {
                              if (v290 >= *(v437 + 16))
                              {
                                goto LABEL_273;
                              }

                              v291 = OUTLINED_FUNCTION_147();
                              v292(v291);
                              v293 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
                              v295 = v294;
                              AppleIntelligenceReportingAsset.version.getter();
                              if (v296)
                              {
                                OUTLINED_FUNCTION_108_1(v470);
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                v473 = v242;
                                v410 = v293;
                                v298 = v293;
                                v299 = v295;
                                v300 = specialized __RawDictionaryStorage.find<A>(_:)(v298);
                                v302 = v242[2];
                                v303 = (v301 & 1) == 0;
                                v304 = v302 + v303;
                                if (__OFADD__(v302, v303))
                                {
                                  goto LABEL_275;
                                }

                                v111 = v300;
                                LODWORD(v441) = v301;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSgSSGMd, &_ss17_NativeDictionaryVySSSgSSGMR);
                                v242 = &v473;
                                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v304))
                                {
                                  v242 = v473;
                                  v305 = specialized __RawDictionaryStorage.find<A>(_:)(v410);
                                  v111 = v434;
                                  v21 = v454;
                                  if ((v441 & 1) != (v306 & 1))
                                  {
                                    goto LABEL_278;
                                  }

                                  v125 = v305;
                                  if ((v441 & 1) == 0)
                                  {
LABEL_194:
                                    v242 = v473;
                                    v473[(v125 >> 6) + 8] |= 1 << v125;
                                    v307 = (v242[6] + 16 * v125);
                                    *v307 = v410;
                                    v307[1] = v299;
                                    OUTLINED_FUNCTION_151((v242[7] + 16 * v125));
                                    v308 = OUTLINED_FUNCTION_45_1();
                                    v309(v308);
                                    v310 = v242[2];
                                    v129 = __OFADD__(v310, 1);
                                    v311 = v310 + 1;
                                    if (v129)
                                    {
                                      goto LABEL_277;
                                    }

                                    v441 = v242;
                                    v242[2] = v311;
                                    goto LABEL_201;
                                  }
                                }

                                else
                                {
                                  v125 = v111;
                                  OUTLINED_FUNCTION_183();
                                  v21 = v454;
                                  if ((v441 & 1) == 0)
                                  {
                                    goto LABEL_194;
                                  }
                                }

                                OUTLINED_FUNCTION_162(v473);
                                OUTLINED_FUNCTION_151((*(v318 + 56) + 16 * v125));

                                v319 = OUTLINED_FUNCTION_45_1();
                                v320(v319);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_130_0();
                                OUTLINED_FUNCTION_128_0();
                                specialized __RawDictionaryStorage.find<A>(_:)(v312);
                                v125 = v313;

                                if (v125)
                                {
                                  v111 = swift_isUniquelyReferenced_nonNull_native();
                                  v473 = v242;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSgSSGMd, &_ss17_NativeDictionaryVySSSgSSGMR);
                                  OUTLINED_FUNCTION_183();
                                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v314, v315);
                                  v125 = v473;

                                  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                                  lazy protocol witness table accessor for type String? and conformance <A> A?();
                                  v441 = v125;
                                  _NativeDictionary._delete(at:)();
                                }

                                v316 = OUTLINED_FUNCTION_45_1();
                                v317(v316);
                                v21 = v454;
                              }

LABEL_201:
                              if (v411 == ++v290)
                              {
                                goto LABEL_204;
                              }
                            }
                          }

                          OUTLINED_FUNCTION_183();
                          v21 = v454;
LABEL_204:
                          v321 = *(v442 + 16);
                          if (v321)
                          {
                            v322 = 0;
                            OUTLINED_FUNCTION_69();
                            while (1)
                            {
                              OUTLINED_FUNCTION_102_1();
                              if (v322 >= *(v323 + 16))
                              {
                                goto LABEL_274;
                              }

                              v324 = OUTLINED_FUNCTION_147();
                              v325(v324);
                              AppleIntelligenceReportingAsset.assetIdentifier.getter();
                              OUTLINED_FUNCTION_128_0();
                              if (!v242[2])
                              {
                                goto LABEL_217;
                              }

                              v327 = specialized __RawDictionaryStorage.find<A>(_:)(v326);
                              v125 = v328;

                              OUTLINED_FUNCTION_112_0();
                              if (v125)
                              {
                                break;
                              }

LABEL_218:
                              ++v322;
                              v242 = v429;
                              v111 = v434;
                              (*v429)(v428, v434);
                              v21 = v454;
                              if (v321 == v322)
                              {
                                goto LABEL_219;
                              }
                            }

                            OUTLINED_FUNCTION_190();
                            v330 = (*(v329 + 56) + 16 * v327);
                            v125 = *v330;
                            v331 = v330[1];

                            v332 = AppleIntelligenceReportingAsset.version.getter();
                            if (!v333)
                            {

LABEL_260:

                              OUTLINED_FUNCTION_77_1();

                              OUTLINED_FUNCTION_79_1();

                              v68 = v467;
                              if (one-time initialization token for general != -1)
                              {
                                OUTLINED_FUNCTION_0_3();
                                swift_once();
                              }

                              v398 = type metadata accessor for Logger();
                              OUTLINED_FUNCTION_65(v398, static Logging.general);
                              v125 = v470[0];

                              v399 = Logger.logObject.getter();
                              v400 = static os_log_type_t.info.getter();

                              if (os_log_type_enabled(v399, v400))
                              {
                                OUTLINED_FUNCTION_59_1();
                                v125 = swift_slowAlloc();
                                OUTLINED_FUNCTION_60_0();
                                v401 = swift_slowAlloc();
                                v402 = OUTLINED_FUNCTION_24_4(v401);
                                OUTLINED_FUNCTION_145(v402);
                                OUTLINED_FUNCTION_200(&dword_227F43000, v399, v403, "fetchSubscriptionEvent skipping event for %s as parameters do not match");
                                __swift_destroy_boxed_opaque_existential_0Tm(v401);
                                OUTLINED_FUNCTION_39_1();
                                MEMORY[0x22AAAF0A0]();
                                OUTLINED_FUNCTION_39_1();
                                MEMORY[0x22AAAF0A0]();
                              }

                              OUTLINED_FUNCTION_54_1();
                              v404(v428, v434);
                              OUTLINED_FUNCTION_54_1();
                              v405(v455, v68);
                              v21 = v454;
LABEL_184:
                              OUTLINED_FUNCTION_109_1();
LABEL_48:
                              v127 = v469;
                              goto LABEL_49;
                            }

                            if (v332 != v125 || v333 != v331)
                            {
                              OUTLINED_FUNCTION_159();
                              v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v125 & 1) == 0)
                              {
                                goto LABEL_260;
                              }

                              goto LABEL_218;
                            }

LABEL_217:

                            goto LABEL_218;
                          }

LABEL_219:

                          OUTLINED_FUNCTION_77_1();

                          OUTLINED_FUNCTION_1_2();
                          (*(v335 + 136))();
                          v336 = v413;
                          v337 = OUTLINED_FUNCTION_67_1();
                          v68 = v467;
                          OUTLINED_FUNCTION_34_0(v337, v338, v467);
                          v111 = v436;
                          if (!v118)
                          {
                            outlined destroy of NSObject?(v413, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
                            if (one-time initialization token for general != -1)
                            {
                              OUTLINED_FUNCTION_0_3();
                              swift_once();
                            }

                            v344 = type metadata accessor for Logger();
                            OUTLINED_FUNCTION_65(v344, static Logging.general);
                            v68 = v470[0];

                            v345 = Logger.logObject.getter();
                            v21 = static os_log_type_t.info.getter();

                            if (os_log_type_enabled(v345, v21))
                            {
                              OUTLINED_FUNCTION_59_1();
                              swift_slowAlloc();
                              OUTLINED_FUNCTION_60_0();
                              v346 = swift_slowAlloc();
                              v347 = OUTLINED_FUNCTION_24_4(v346);
                              OUTLINED_FUNCTION_145(v347);
                              OUTLINED_FUNCTION_200(&dword_227F43000, v345, v348, "fetchSubscriptionEvent skipping event for %s as there is an end");
                              __swift_destroy_boxed_opaque_existential_0Tm(v346);
                              OUTLINED_FUNCTION_39_1();
                              MEMORY[0x22AAAF0A0]();
                              OUTLINED_FUNCTION_39_1();
                              MEMORY[0x22AAAF0A0]();
                            }

                            OUTLINED_FUNCTION_134_0();
                            v127 = v469;
                            OUTLINED_FUNCTION_172();
                            v125 = v411;
                            v349 = 0;
                            v409 = *(v433 + 16);
                            v408 = MEMORY[0x277D84F90];
LABEL_231:
                            if (v349 == v409)
                            {
                              OUTLINED_FUNCTION_178();
                              v397();

                              OUTLINED_FUNCTION_79_1();

                              v433 = v408;
                              OUTLINED_FUNCTION_109_1();
LABEL_49:
                              if (v127 == v452)
                              {
LABEL_265:

                                goto LABEL_15;
                              }

                              continue;
                            }

                            if (v349 >= *(v433 + 16))
                            {
                              goto LABEL_276;
                            }

                            OUTLINED_FUNCTION_69();
                            v417 = v352;
                            (*(v353 + 16))(v427, v351 + v350 + *(v353 + 72) * v352, v467);
                            AppleIntelligenceReportingModelCatalogLog.event.getter();
                            OUTLINED_FUNCTION_102_0();
                            OUTLINED_FUNCTION_142_0();
                            OUTLINED_FUNCTION_27_2(v354, v355);
                            if (v118)
                            {
                              v356 = v68;
                              v357 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
                              v358 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_100_0();
                              AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                              OUTLINED_FUNCTION_6_7();
                              v359();
                              v360 = OUTLINED_FUNCTION_66();
                              OUTLINED_FUNCTION_34_0(v360, v361, v471);
                              if (!v362)
                              {
                                v363 = AppleIntelligenceReportingUseCase.parameters.getter();
                                OUTLINED_FUNCTION_44_1();
                                v364();
LABEL_240:
                                v365 = *(v363 + 16);
                                v366 = lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500], MEMORY[0x277D1F508]);
                                v367 = MEMORY[0x22AAAE2A0](v365, v434, v366);
                                v472 = v367;
                                v368 = *(v363 + 16);
                                if (v368)
                                {
                                  OUTLINED_FUNCTION_69();
                                  v370 = v363 + v369;
                                  OUTLINED_FUNCTION_162(*(v371 + 72));
                                  v442 = *(v372 + 16);
                                  OUTLINED_FUNCTION_184();
                                  v373 = v429;
                                  v111 = v430;
                                  do
                                  {
                                    OUTLINED_FUNCTION_130_0();
                                    OUTLINED_FUNCTION_102_1();
                                    v374();
                                    v375 = OUTLINED_FUNCTION_121_1();
                                    specialized Set._Variant.insert(_:)(v375, v376);
                                    (*v373)(v22, v366);
                                    OUTLINED_FUNCTION_190();
                                    v370 += v377;
                                    --v368;
                                  }

                                  while (v368);

                                  v378 = v472;
                                  v125 = v411;
                                }

                                else
                                {
                                  v378 = v367;
                                }

                                v68 = v437;
                                v379 = MEMORY[0x22AAAE2A0](*(v437 + 16), v434, v366);
                                v472 = v379;
                                if (v125)
                                {
                                  OUTLINED_FUNCTION_69();
                                  v381 = v68 + v380;
                                  v442 = *(v382 + 72);
                                  OUTLINED_FUNCTION_162(*(v382 + 16));
                                  v111 = v429;
                                  OUTLINED_FUNCTION_184();
                                  v68 = v430;
                                  do
                                  {
                                    OUTLINED_FUNCTION_130_0();
                                    OUTLINED_FUNCTION_190();
                                    v383();
                                    v384 = OUTLINED_FUNCTION_121_1();
                                    specialized Set._Variant.insert(_:)(v384, v385);
                                    (*v111)(v22, v366);
                                    OUTLINED_FUNCTION_102_1();
                                    v381 += v386;
                                    --v125;
                                  }

                                  while (v125);
                                  v387 = v472;
                                  v125 = v411;
                                }

                                else
                                {
                                  v387 = v379;
                                }

                                v418 = v417 + 1;
                                v388 = OUTLINED_FUNCTION_157();
                                v21 = _sSh2eeoiySbShyxG_ABtFZ27IntelligencePlatformLibrary05AppleB16ReportingUseCaseV9ParameterV_Tt1g5(v388, v389);

                                OUTLINED_FUNCTION_112_0();
                                v97 = v461;
                                v22 = v459;
                                OUTLINED_FUNCTION_172();
                                if (v21)
                                {
                                  (*v378)(v427, v390);
                                  OUTLINED_FUNCTION_134_0();
                                  v127 = v469;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_83_1();
                                  v391();
                                  OUTLINED_FUNCTION_108_1(v424);
                                  v392 = swift_isUniquelyReferenced_nonNull_native();
                                  v393 = v387;
                                  v473 = v387;
                                  if ((v392 & 1) == 0)
                                  {
                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v387 + 16) + 1, 1);
                                    v393 = v473;
                                  }

                                  v127 = v469;
                                  v68 = *(v393 + 16);
                                  v394 = *(v393 + 24);
                                  v21 = v68 + 1;
                                  if (v68 >= v394 >> 1)
                                  {
                                    v396 = OUTLINED_FUNCTION_160(v394);
                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v396, v68 + 1, 1);
                                    v127 = v469;
                                    v393 = v473;
                                  }

                                  *(v393 + 16) = v21;
                                  v408 = v393;
                                  OUTLINED_FUNCTION_83_1();
                                  v395();
                                  OUTLINED_FUNCTION_134_0();
                                }

                                v349 = v418;
                                goto LABEL_231;
                              }

                              v356 = v111;
                              v357 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
                              v358 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
                            }

                            outlined destroy of NSObject?(v356, v357, v358);
                            v363 = MEMORY[0x277D84F90];
                            goto LABEL_240;
                          }

                          OUTLINED_FUNCTION_79_1();

                          outlined destroy of NSObject?(v413, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
                          OUTLINED_FUNCTION_54_1();
                          v339(v412, v455, v68);
                          OUTLINED_FUNCTION_108_1(&v462);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                            v336 = v406;
                          }

                          OUTLINED_FUNCTION_109_1();
                          v433 = v336;
                          v341 = *(v336 + 16);
                          v340 = *(v336 + 24);
                          if (v341 >= v340 >> 1)
                          {
                            OUTLINED_FUNCTION_160(v340);
                            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                            v433 = v407;
                          }

                          OUTLINED_FUNCTION_178();
                          v342();
                          *(v433 + 16) = v341 + 1;
                          OUTLINED_FUNCTION_69();
                          OUTLINED_FUNCTION_83_1();
                          v343();
LABEL_160:
                          v97 = v461;
                          v22 = v459;
                          goto LABEL_48;
                        }

                        v243 = v437;
                        if (!v414)
                        {
                          goto LABEL_186;
                        }

LABEL_151:
                        OUTLINED_FUNCTION_77_1();
                      }

                      else
                      {
                        if (!v420)
                        {
                          goto LABEL_134;
                        }

LABEL_132:
                        OUTLINED_FUNCTION_77_1();

                        OUTLINED_FUNCTION_79_1();
                      }

LABEL_153:

                      v125 = v448;
                      if (one-time initialization token for general != -1)
                      {
                        OUTLINED_FUNCTION_0_3();
                        swift_once();
                      }

                      v248 = type metadata accessor for Logger();
                      v447 = __swift_project_value_buffer(v248, static Logging.general);
                      v442 = *v419;
                      (v442)(v424[0], v440, v425);
                      v249 = *v426;
                      v250 = v455;
                      v251 = v467;
                      (*v426)(v423, v455, v467);
                      OUTLINED_FUNCTION_102_1();
                      v252();
                      v253 = v422;
                      v249(v422, v250, v251);
                      v254 = v470[0];

                      v255 = Logger.logObject.getter();
                      v256 = static os_log_type_t.info.getter();

                      if (!os_log_type_enabled(v255, v256))
                      {

                        OUTLINED_FUNCTION_172();
                        v264 = *v256;
                        (*v256)(v422, v251);
                        v111 = v421;
                        v265 = *v421;
                        v266 = v425;
                        (*v421)(v424[1], v425);
                        v264(v423, v467);
                        (v265)(v424[0], v266);
                        v68 = v467;
                        v264(v250, v467);
                        v21 = v454;
                        OUTLINED_FUNCTION_112_0();
                        goto LABEL_160;
                      }

                      LODWORD(v441) = v256;
                      v442 = v255;
                      v257 = swift_slowAlloc();
                      v439 = swift_slowAlloc();
                      v473 = v439;
                      v258 = OUTLINED_FUNCTION_86_1(&v428);
                      *(v257 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v258, v254, v259);
                      v447 = v257;
                      *(v257 + 12) = 2080;
                      OUTLINED_FUNCTION_71_0();
                      AppleIntelligenceReportingAvailabilityLog.event.getter();
                      OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_142_0();
                      OUTLINED_FUNCTION_27_2(v260, v261);
                      v111 = v415;
                      if (v118)
                      {
                        outlined destroy of NSObject?(v257, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        v262 = *v421;
                        v263 = OUTLINED_FUNCTION_191();
                        v97 = v461;
                      }

                      else
                      {
                        v253 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v267();
                        v262 = *v421;
                        v97 = v461;
                        if (v257)
                        {
                          (v262)(v424[0], v425);
                          goto LABEL_165;
                        }

                        v263 = OUTLINED_FUNCTION_191();
                      }

                      v262(v263);

                      OUTLINED_FUNCTION_94_1();
LABEL_165:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v268 + 14) = v253;
                      *(v268 + 22) = 2080;
                      OUTLINED_FUNCTION_71_0();
                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      OUTLINED_FUNCTION_16_4();
                      if (v118)
                      {
                        outlined destroy of NSObject?(v257, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        OUTLINED_FUNCTION_14_0();
                        v270 = *v269;
                        v68 = v422;
                        (*v269)(v423, v467);
                      }

                      else
                      {
                        v253 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v271();
                        OUTLINED_FUNCTION_14_0();
                        v270 = *v272;
                        if (v257)
                        {
                          (v270)(v423, v467);
                          v68 = v422;
                          goto LABEL_172;
                        }

                        v68 = v422;
                        (v270)(v423, v467);
                      }

                      OUTLINED_FUNCTION_94_1();
LABEL_172:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v273 + 24) = v253;
                      *(v273 + 32) = 2080;
                      AppleIntelligenceReportingAvailabilityLog.event.getter();
                      OUTLINED_FUNCTION_19_3(v415);
                      if (v118)
                      {
                        outlined destroy of NSObject?(v415, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      }

                      else
                      {
                        v253 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                        v275 = v274;
                        OUTLINED_FUNCTION_6_7();
                        v276();
                        if (v275)
                        {
                          v277 = OUTLINED_FUNCTION_127_0();
                          v262(v277);
                          goto LABEL_178;
                        }
                      }

                      v278 = OUTLINED_FUNCTION_127_0();
                      v262(v278);

                      OUTLINED_FUNCTION_94_1();
LABEL_178:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v279 + 34) = v253;
                      *(v279 + 42) = 2080;
                      OUTLINED_FUNCTION_100_0();
                      v280 = v68;
                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      v281 = OUTLINED_FUNCTION_66();
                      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v281, v282, v256);
                      v125 = v451 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                      if (EnumTagSinglePayload == 1)
                      {
                        outlined destroy of NSObject?(v415, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        OUTLINED_FUNCTION_112_0();
                        goto LABEL_182;
                      }

                      v253 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                      v280 = v284;
                      OUTLINED_FUNCTION_6_7();
                      v285();
                      OUTLINED_FUNCTION_112_0();
                      if (v280)
                      {
                        OUTLINED_FUNCTION_178();
                        OUTLINED_FUNCTION_14_0();
                        v270();
                      }

                      else
                      {
LABEL_182:
                        OUTLINED_FUNCTION_178();
                        OUTLINED_FUNCTION_14_0();
                        v270();

                        OUTLINED_FUNCTION_94_1();
                      }

                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      v286 = v447;
                      *(v447 + 44) = v253;
                      OUTLINED_FUNCTION_82_1();
                      _os_log_impl(v287, v288, v289, "fetchSubscriptionEvent skipping event for %s as the subscription (%s:%s) or subscriber names (%s:%s) do not match", v286, 0x34u);
                      swift_arrayDestroy();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();

                      (v270)(v455, v68);
                      v21 = v454;
                      v22 = v459;
                      goto LABEL_184;
                    }

                    if (!v214)
                    {
                      goto LABEL_115;
                    }

                    OUTLINED_FUNCTION_77_1();
LABEL_107:

                    OUTLINED_FUNCTION_79_1();

LABEL_108:

                    if (one-time initialization token for general != -1)
                    {
                      OUTLINED_FUNCTION_0_3();
                      swift_once();
                    }

                    v226 = type metadata accessor for Logger();
                    OUTLINED_FUNCTION_65(v226, static Logging.general);

                    v191 = Logger.logObject.getter();
                    v227 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v191, v227))
                    {
                      OUTLINED_FUNCTION_59_1();
                      v125 = swift_slowAlloc();
                      OUTLINED_FUNCTION_60_0();
                      v193 = swift_slowAlloc();
                      v228 = OUTLINED_FUNCTION_24_4(v193);
                      OUTLINED_FUNCTION_145(v228);
                      v196 = v191;
                      v197 = "fetchSubscriptionEvent skipping event for %s as the locale does not match";
LABEL_112:
                      OUTLINED_FUNCTION_200(&dword_227F43000, v196, v195, v197);
                      __swift_destroy_boxed_opaque_existential_0Tm(v193);
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                      OUTLINED_FUNCTION_109_1();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                    }

LABEL_113:

LABEL_45:

                    OUTLINED_FUNCTION_54_1();
                    v153 = v455;
LABEL_46:
                    v152(v153, v68);
LABEL_47:
                    v21 = v454;
                    goto LABEL_48;
                  }

                  OUTLINED_FUNCTION_79_1();

                  v164 = v163;
                  v165 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
                  v166 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
                }

                outlined destroy of NSObject?(v164, v165, v166);
                v125 = v154;
                v97 = v461;
                if (one-time initialization token for general != -1)
                {
                  OUTLINED_FUNCTION_0_3();
                  swift_once();
                }

                v169 = type metadata accessor for Logger();
                OUTLINED_FUNCTION_65(v169, static Logging.general);

                v170 = Logger.logObject.getter();
                v171 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v170, v171))
                {
                  OUTLINED_FUNCTION_59_1();
                  v125 = swift_slowAlloc();
                  OUTLINED_FUNCTION_60_0();
                  v172 = swift_slowAlloc();
                  v173 = OUTLINED_FUNCTION_24_4(v172);
                  OUTLINED_FUNCTION_145(v173);
                  OUTLINED_FUNCTION_200(&dword_227F43000, v170, v174, "fetchSubscriptionEvent skipping event for %s as there are no availabilityParameters");
                  __swift_destroy_boxed_opaque_existential_0Tm(v172);
                  OUTLINED_FUNCTION_39_1();
                  MEMORY[0x22AAAF0A0]();
                  OUTLINED_FUNCTION_109_1();
                  OUTLINED_FUNCTION_39_1();
                  MEMORY[0x22AAAF0A0]();
                }

                OUTLINED_FUNCTION_54_1();
                v153 = v455;
                v68 = v467;
                goto LABEL_46;
              }

              outlined destroy of NSObject?(v68, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
              v68 = v467;
            }

            if (one-time initialization token for general != -1)
            {
              OUTLINED_FUNCTION_0_3();
              swift_once();
            }

            v146 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_65(v146, static Logging.general);

            v147 = Logger.logObject.getter();
            v148 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v147, v148))
            {
              OUTLINED_FUNCTION_59_1();
              v149 = swift_slowAlloc();
              OUTLINED_FUNCTION_60_0();
              v125 = swift_slowAlloc();
              v473 = v125;
              v150 = OUTLINED_FUNCTION_86_1(&a13);
              *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v470[0], v151);
              _os_log_impl(&dword_227F43000, v147, v148, "fetchSubscriptionEvent skipping event for %s as there are no subscriptionParameters", v149, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v125);
              OUTLINED_FUNCTION_109_1();
              OUTLINED_FUNCTION_39_1();
              MEMORY[0x22AAAF0A0]();
              v68 = v467;
              OUTLINED_FUNCTION_39_1();
              MEMORY[0x22AAAF0A0]();
            }

            goto LABEL_45;
          }

          break;
        }

        outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v134 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v134, static Logging.general);

        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v135, v136))
        {
          OUTLINED_FUNCTION_59_1();
          v137 = swift_slowAlloc();
          OUTLINED_FUNCTION_60_0();
          v125 = swift_slowAlloc();
          v473 = v125;
          v138 = OUTLINED_FUNCTION_86_1(&a13);
          *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v470[0], v139);
          _os_log_impl(&dword_227F43000, v135, v136, "fetchSubscriptionEvent skipping event for %s as there is no start", v137, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v125);
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
          v68 = v467;
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
        }

        goto LABEL_47;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      v119 = OUTLINED_FUNCTION_163();
      if (v111)
      {
        goto LABEL_19;
      }

LABEL_15:

      v98 = v471;
      (*v466)(v97, v471);
      v96 = v462;
      v91 = v463;
      if (!v94)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_19();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v100 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v100 >= v96)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
        v94 = 0;
        goto LABEL_8;
      }

      v94 = *(v91 + 8 * v100);
      ++v89;
      if (v94)
      {
        v89 = v100;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void AssetDeliveryStateReader.previousAvailabilityEvent.getter()
{
  OUTLINED_FUNCTION_18();
  v52 = v2;
  type metadata accessor for AssetDeliveryStateReader(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_38_0();
  v51 = v5;
  OUTLINED_FUNCTION_12();
  v6 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = *(v0 + 16);
  OUTLINED_FUNCTION_1_2();
  (*(v14 + 152))();
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_179();

  if (!v13)
  {
    if (one-time initialization token for general == -1)
    {
LABEL_8:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logging.general);
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_48();
      outlined init with copy of AssetDeliveryStateReader();
      v18 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v29 = OUTLINED_FUNCTION_140_0();
      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_59_1();
        v31 = swift_slowAlloc();
        OUTLINED_FUNCTION_60_0();
        v54 = swift_slowAlloc();
        *v31 = 136315138;

        OUTLINED_FUNCTION_2_8();
        outlined destroy of AssetDeliveryStateReader(v1, v32);
        v33 = OUTLINED_FUNCTION_124_0();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v35);

        *(v31 + 4) = v36;
        OUTLINED_FUNCTION_171();
        _os_log_impl(v37, v38, v39, v40, v41, v42);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_2_8();
      v50 = v1;
LABEL_20:
      outlined destroy of AssetDeliveryStateReader(v50, v49);
      goto LABEL_21;
    }

LABEL_24:
    OUTLINED_FUNCTION_0_3();
    swift_once();
    goto LABEL_8;
  }

  statusInteger(from:)();
  if ((v16 & 1) == 0)
  {
    v1 = v15;
    v43 = *(v13 + 16);
    if (!v43)
    {
LABEL_16:

      goto LABEL_21;
    }

    while (v43 <= *(v13 + 16))
    {
      --v43;
      OUTLINED_FUNCTION_69();
      (*(v8 + 16))(v12, v13 + v44 + *(v8 + 72) * v43, v6);
      statusInteger(from:)();
      if ((v46 & 1) != 0 || v45 != v1)
      {

        (*(v8 + 32))(v52, v12, v6);
        v47 = v52;
        v48 = 0;
        goto LABEL_22;
      }

      (*(v8 + 8))(v12, v6);
      if (!v43)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logging.general);
  OUTLINED_FUNCTION_8_8();
  outlined init with copy of AssetDeliveryStateReader();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = OUTLINED_FUNCTION_140_0();
  if (!os_log_type_enabled(v20, v21))
  {

    OUTLINED_FUNCTION_2_8();
    v50 = v51;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_59_1();
  v22 = swift_slowAlloc();
  OUTLINED_FUNCTION_60_0();
  v53 = swift_slowAlloc();
  *v22 = 136315138;

  OUTLINED_FUNCTION_2_8();
  outlined destroy of AssetDeliveryStateReader(v51, v23);
  v24 = OUTLINED_FUNCTION_124_0();
  v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

  *(v22 + 4) = v27;
  _os_log_impl(&dword_227F43000, v18, v19, "Previous availability current status not found for %s", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x22AAAF0A0]();
LABEL_10:
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x22AAAF0A0]();

LABEL_21:
  v47 = v52;
  v48 = 1;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v47, v48, 1, v6);
  OUTLINED_FUNCTION_19();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSSGMd, &_ss18_DictionaryStorageCySSSgSSGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  if (v3 == MEMORY[0x277D837D0])
  {
    v16 = (v5 + 63) >> 6;

    v17 = 0;
    v32 = v1;
    if (!v7)
    {
      goto LABEL_17;
    }

    do
    {
      v18 = v17;
LABEL_20:
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v20 = (*(v1 + 56) + ((v18 << 10) | (16 * v19)));
      v21 = *v20;
      v22 = v20[1];

      swift_dynamicCast();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      v23 = result;
      if (v24)
      {
        v25 = (v2[6] + 16 * result);
        *v25 = v33;
        v25[1] = v34;

        v26 = (v2[7] + 16 * v23);
        *v26 = v21;
        v26[1] = v22;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_30;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v27 = (v2[6] + 16 * result);
        *v27 = v33;
        v27[1] = v34;
        v28 = (v2[7] + 16 * result);
        *v28 = v21;
        v28[1] = v22;
        v29 = v2[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_31;
        }

        v2[2] = v31;
      }

      v17 = v18;
      v1 = v32;
    }

    while (v7);
LABEL_17:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
LABEL_27:

        return v2;
      }

      v7 = *(v4 + 8 * v18);
      ++v17;
      if (v7)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

    do
    {
      v11 = v10;
LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(v1 + 56) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      swift_dynamicCast();
      result = specialized _NativeDictionary._unsafeInsertNew(key:value:)(v33, v34, v14, v15, v2);
    }

    while (v7);
LABEL_9:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t AssetDeliveryStateReader.allAssetSpecifiers()(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_122_1();
  type metadata accessor for AssetDeliveryStateReader(0);
  outlined init with copy of AppleIntelligenceError?();
  v8 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v9 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v9, v10, v8);
  if (v18)
  {
    v11 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v12 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v13 = v2;
LABEL_7:
    outlined destroy of NSObject?(v13, v11, v12);
    return MEMORY[0x277D84F90];
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_35_0();
  (*(v14 + 8))(v2, v8);
  v15 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v16 = OUTLINED_FUNCTION_102_0();
  v19 = OUTLINED_FUNCTION_34_0(v16, v17, v15);
  if (v18)
  {
    v11 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v12 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v13 = v1;
    goto LABEL_7;
  }

  v20 = a1(v19);
  OUTLINED_FUNCTION_35_0();
  v21 = OUTLINED_FUNCTION_104_0();
  v22(v21);
  return v20;
}

void AssetDeliveryStateReader.allErrors()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v23);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v25);
  v363 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_0();
  v348 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v369 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v34);
  v377 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_0();
  v381 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  v372 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_38_0();
  v380 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v43 = OUTLINED_FUNCTION_13(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7();
  v373 = v44;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_96();
  v375 = v47;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_96();
  v378 = v50;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v52);
  v383 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v361 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v56);
  v371 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_0();
  v360 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMR);
  v62 = OUTLINED_FUNCTION_13(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_38_0();
  v374 = v64;
  v65 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v67 = OUTLINED_FUNCTION_13(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7();
  v69 = v68;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v70);
  v72 = &v343 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v73);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_122_1();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v75);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_97_1();
  v77 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v344 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v80);
  v352 = AssetDeliveryStateReader.allAssetSetIdentifiers()();
  v368 = AssetDeliveryStateReader.allAssetSpecifiers()();
  type metadata accessor for AssetDeliveryStateReader(0);
  v81 = v20;
  outlined init with copy of AppleIntelligenceError?();
  v82 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_19_2(v72);
  if (v88)
  {
    v83 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v84 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v85 = v72;
LABEL_7:
    outlined destroy of NSObject?(v85, v83, v84);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v77);
    v92 = v374;
    v93 = v20;
    goto LABEL_8;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1();
  (*(v86 + 8))(v72, v82);
  v87 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_13_4(v21);
  if (v88)
  {
    v83 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v84 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v85 = v21;
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_30_0();
  (*(v96 + 8))(v21, v87);
  v97 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v97, v98, v77);
  v92 = v374;
  v93 = v20;
  if (!v99)
  {
    (*(v344 + 32))(v362, v22, v77);
    goto LABEL_12;
  }

LABEL_8:
  static Date.distantPast.getter();
  v94 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v94, v95, v77);
  if (!v88)
  {
    outlined destroy of NSObject?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_12:
  v386[0] = MEMORY[0x277D84F90];
  AppleIntelligenceReportingAvailabilityLog.subsystemErrors.getter();
  OUTLINED_FUNCTION_3_7();
  specialized Array.append<A>(contentsOf:)(v100, v101, type metadata accessor for AssetDeliverySubsystemError);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_19_2(v69);
  v343 = v77;
  if (v88)
  {
    outlined destroy of NSObject?(v69, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    v103 = MEMORY[0x277D84F90];
  }

  else
  {
    AppleIntelligenceReportingModelCatalogLog.subsystemErrors.getter();
    v103 = v102;
    OUTLINED_FUNCTION_31_1();
    (*(v104 + 8))(v69, v82);
  }

  v105 = v371;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_3_7();
  specialized Array.append<A>(contentsOf:)(v103, v106, type metadata accessor for AssetDeliverySubsystemError);
  v107 = *(v93 + 16);
  OUTLINED_FUNCTION_1_2();
  v109 = *(v108 + 224);
  v345 = v107;
  v110 = v109();
  v111 = 0;
  v376 = 0;
  v112 = (v110 + 64);
  v358 = v110;
  OUTLINED_FUNCTION_2_7();
  v115 = v114 & v113;
  v117 = (v116 + 63) >> 6;
  v355 = v360 + 16;
  v354 = v361 + 16;
  v382 = v360 + 32;
  v379 = (v361 + 32);
  v365 = v361 + 8;
  v370 = (v360 + 8);
  v118 = v105;
  v367 = v112;
  v366 = v117;
  if (v115)
  {
    while (1)
    {
      v119 = v111;
LABEL_22:
      v121 = __clz(__rbit64(v115));
      v115 &= v115 - 1;
      v122 = v121 | (v119 << 6);
      v123 = v358;
      v124 = v360;
      (*(v360 + 16))(v356, *(v358 + 48) + *(v360 + 72) * v122, v118);
      v81 = v361;
      v125 = v357;
      v65 = v383;
      (*(v361 + 16))(v357, *(v123 + 56) + *(v361 + 72) * v122, v383);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
      v127 = *(v126 + 48);
      v128 = *(v124 + 32);
      v129 = v359;
      v130 = v118;
      v128();
      v131 = v129 + v127;
      v120 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR;
      (*(v81 + 32))(v131, v125, v65);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v126);
      OUTLINED_FUNCTION_186();
      v92 = v374;
LABEL_23:
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      v135 = OUTLINED_FUNCTION_31_0();
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(v135, v136);
      OUTLINED_FUNCTION_25(v92);
      if (v88)
      {
        break;
      }

      v138 = *(v137 + 48);
      OUTLINED_FUNCTION_57_0();
      v118 = v130;
      v139(v65, v92, v130);
      (*v379)(v81, v92 + v138, v383);
      v140 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
      if (v141)
      {
        v384 = v140;
        v385 = v141;
        MEMORY[0x28223BE20](v140);
        OUTLINED_FUNCTION_21_3();
        v144 = OUTLINED_FUNCTION_198(v142, v143);
        v376 = v92;

        v112 = v367;
        if (v144)
        {
          OUTLINED_FUNCTION_170();
          AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)();
          OUTLINED_FUNCTION_3_7();
          specialized Array.append<A>(contentsOf:)(v145, v146, type metadata accessor for AssetDeliverySubsystemError);
        }

        v118 = v371;
        v92 = v374;
      }

      else
      {
        v112 = v367;
      }

      OUTLINED_FUNCTION_54_1();
      v147(v81, v383);
      (*v370)(v65, v118);
      v117 = v366;
      if (!v115)
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_49_0();
    (*(v154 + 248))();
    v155 = 0;
    OUTLINED_FUNCTION_123_1();
    v366 = v156;
    OUTLINED_FUNCTION_2_7();
    v160 = v159 & v158;
    v162 = (v161 + 63) >> 6;
    v379 = (v381 + 16);
    v382 = v381 + 8;
    v383 = v381 + 32;
    v163 = v377;
    v164 = v353;
    v165 = v376;
    v374 = v157;
    v367 = v162;
    while (1)
    {
      if (v160)
      {
        v166 = v155;
        goto LABEL_39;
      }

      do
      {
        v166 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_111;
        }

        if (v166 >= v162)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
          v160 = 0;
          goto LABEL_40;
        }

        v160 = v157[v166];
        ++v155;
      }

      while (!v160);
      v155 = v166;
LABEL_39:
      v167 = __clz(__rbit64(v160));
      v160 &= v160 - 1;
      v168 = v167 | (v166 << 6);
      v169 = v366;
      (*(v381 + 16))(v380, *(v366 + 48) + *(v381 + 72) * v168, v163);
      v120 = *(*(v169 + 56) + 8 * v168);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v170 = *(v137 + 48);
      v171 = v378;
      v172 = OUTLINED_FUNCTION_121_1();
      v173(v172);
      *(v171 + v170) = v120;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v137);

      v164 = v353;
LABEL_40:
      OUTLINED_FUNCTION_82_1();
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v177 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_19_2(v177);
      if (v88)
      {
        break;
      }

      v120 = *(v137 + v120[12]);
      OUTLINED_FUNCTION_148();
      v178 = OUTLINED_FUNCTION_157();
      v179(v178);
      v137 = v164;
      v180 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
      if (v181)
      {
        v163 = v180;
        v182 = v181;
        v137 = v120;
        v183 = (*(*v120 + 104))();
        if (v183)
        {
          v384 = v163;
          v385 = v182;
          MEMORY[0x28223BE20](v183);
          OUTLINED_FUNCTION_21_3();
          v137 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v184, v368);

          if (v137)
          {
            OUTLINED_FUNCTION_169();
            v186 = (*(v185 + 184))();
            v163 = &v343;
            MEMORY[0x28223BE20](v186);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v187);
            v190 = OUTLINED_FUNCTION_202(v188, v189);

            OUTLINED_FUNCTION_3_7();
            v137 = v386;
            specialized Array.append<A>(contentsOf:)(v190, v191, type metadata accessor for AssetDeliverySubsystemError);

            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v192();
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v199();
          }
        }

        else
        {
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_100_1();
          v194();
        }

        v157 = v374;
        v162 = v367;
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        v193(v164, v163);

        v157 = v374;
        v162 = v367;
      }
    }

    OUTLINED_FUNCTION_49_0();
    (*(v200 + 272))();
    v201 = 0;
    OUTLINED_FUNCTION_123_1();
    v376 = v202;
    OUTLINED_FUNCTION_2_7();
    v206 = v205 & v204;
    v208 = (v207 + 63) >> 6;
    v209 = v350;
    v378 = v203;
    if ((v205 & v204) == 0)
    {
      goto LABEL_63;
    }

LABEL_67:
    OUTLINED_FUNCTION_161();
    v232 = v376;
    v233 = OUTLINED_FUNCTION_105_1();
    v234(v233);
    OUTLINED_FUNCTION_193();
    v235 = v375;
    v236 = OUTLINED_FUNCTION_192();
    v237(v236);
    *(v232 + v235) = v137;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v238, v239, v240, v120);

    v209 = v350;
    while (1)
    {
      OUTLINED_FUNCTION_82_1();
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      OUTLINED_FUNCTION_19_2(v137);
      if (v88)
      {

        OUTLINED_FUNCTION_49_0();
        (*(v241 + 296))();
        v242 = 0;
        OUTLINED_FUNCTION_123_1();
        v375 = v243;
        OUTLINED_FUNCTION_2_7();
        v247 = v246 & v245;
        v249 = (v248 + 63) >> 6;
        v378 = v244;
        while (1)
        {
          if (v247)
          {
            goto LABEL_77;
          }

          v137 = v372;
          do
          {
            v250 = v242 + 1;
            if (__OFADD__(v242, 1))
            {
              goto LABEL_113;
            }

            if (v250 >= v249)
            {
              OUTLINED_FUNCTION_23();
              __swift_storeEnumTagSinglePayload(v281, v282, v283, v120);
              v247 = 0;
              goto LABEL_78;
            }

            v247 = *(v244 + 8 * v250);
            ++v242;
          }

          while (!v247);
          v242 = v250;
LABEL_77:
          OUTLINED_FUNCTION_161();
          v251 = v375;
          v252 = OUTLINED_FUNCTION_105_1();
          v253(v252);
          OUTLINED_FUNCTION_193();
          v254 = v373;
          v255 = OUTLINED_FUNCTION_192();
          v256(v255);
          *(v254 + v251) = v137;
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v257, v258, v259, v120);

          v137 = v372;
LABEL_78:
          v260 = v351;
          _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
          OUTLINED_FUNCTION_19_2(v260);
          if (v88)
          {
            break;
          }

          v261 = *(v260 + v120[12]);
          OUTLINED_FUNCTION_148();
          v262(v137, v260, v163);
          v263 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
          if (!v264)
          {
            OUTLINED_FUNCTION_57_0();
            v279(v137, v163);
LABEL_87:

            v244 = v378;
            continue;
          }

          v265 = v263;
          v266 = v264;
          OUTLINED_FUNCTION_169();
          v137 = v261;
          v268 = (*(v267 + 104))();
          if (v268)
          {
            v163 = v268;
            v376 = &v343;
            v384 = v265;
            v385 = v266;
            MEMORY[0x28223BE20](v268);
            OUTLINED_FUNCTION_21_3();
            v270 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v269, v368);

            if (!v270)
            {
              OUTLINED_FUNCTION_57_0();
              v137 = v163;
              OUTLINED_FUNCTION_100_1();
              v284();

              goto LABEL_87;
            }

            v272 = (*(*v163 + 184))(v271);
            v163 = &v343;
            MEMORY[0x28223BE20](v272);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v273);
            v276 = OUTLINED_FUNCTION_202(v274, v275);

            OUTLINED_FUNCTION_3_7();
            v137 = v386;
            specialized Array.append<A>(contentsOf:)(v276, v277, type metadata accessor for AssetDeliverySubsystemError);

            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v278();
            v244 = v378;
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v280();

            v244 = v378;
          }
        }

        v376 = v165;

        OUTLINED_FUNCTION_49_0();
        (*(v285 + 320))();
        v286 = 0;
        OUTLINED_FUNCTION_123_1();
        v380 = v287;
        OUTLINED_FUNCTION_2_7();
        v291 = v290 & v289;
        v293 = (v292 + 63) >> 6;
        v379 = (v348 + 16);
        v383 = v348 + 32;
        v381 = v348 + 8;
        v294 = v346;
        v295 = v363;
        v382 = v288;
        v378 = v293;
        while (1)
        {
LABEL_89:
          if (!v291)
          {
            while (1)
            {
              v296 = v286 + 1;
              if (__OFADD__(v286, 1))
              {
                goto LABEL_114;
              }

              if (v296 >= v293)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
                OUTLINED_FUNCTION_23();
                __swift_storeEnumTagSinglePayload(v334, v335, v336, v337);
                v291 = 0;
                goto LABEL_95;
              }

              v291 = *(v288 + 8 * v296);
              ++v286;
              if (v291)
              {
                v286 = v296;
                break;
              }
            }
          }

          OUTLINED_FUNCTION_155();
          v297 = v380;
          v298 = v348;
          (*(v348 + 16))(v347, *(v380 + 48) + *(v348 + 72) * v137, v295);
          v299 = *(*(v297 + 56) + 8 * v137);
          v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          v301 = *(v300 + 48);
          v302 = v364;
          (*(v298 + 32))();
          *(v302 + v301) = v299;
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v303, v304, v305, v300);

          v293 = v378;
LABEL_95:
          v306 = v349;
          _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
          v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_25(v306);
          if (v88)
          {

            (*(v344 + 8))(v362, v343);
            OUTLINED_FUNCTION_19();
            return;
          }

          v308 = *(v306 + *(v307 + 48));
          OUTLINED_FUNCTION_148();
          v137 = v369;
          v309 = OUTLINED_FUNCTION_113_1();
          v295 = v363;
          v310(v309);
          AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.getter();
          v311 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_26_1(v311, v312);
          if (!v88)
          {
            break;
          }

          v313 = OUTLINED_FUNCTION_114_1();
          v314(v313);

          outlined destroy of NSObject?(v294, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
          v288 = v382;
        }

        v137 = v294;
        v315 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
        v317 = v316;
        v318 = OUTLINED_FUNCTION_51_0();
        v320 = v319(v318);
        if (v317)
        {
          v137 = v308;
          v321 = (*(*v308 + 104))(v320);
          if (!v321)
          {
            v340 = OUTLINED_FUNCTION_88_1();
            v295 = v363;
            v341(v340, v363);

            goto LABEL_108;
          }

          v322 = v321;
          v384 = v315;
          v385 = v317;
          MEMORY[0x28223BE20](v321);
          OUTLINED_FUNCTION_21_3();
          v137 = OUTLINED_FUNCTION_198(v323, v324);

          if (v137)
          {
            v326 = (*(*v322 + 184))(v325);
            MEMORY[0x28223BE20](v326);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v327);
            v330 = OUTLINED_FUNCTION_202(v328, v329);
            v376 = v294;

            OUTLINED_FUNCTION_3_7();
            v137 = v386;
            specialized Array.append<A>(contentsOf:)(v330, v331, type metadata accessor for AssetDeliverySubsystemError);

            v332 = OUTLINED_FUNCTION_88_1();
            v295 = v363;
            v333(v332, v363);
LABEL_108:
            v294 = v346;
            v288 = v382;
            goto LABEL_89;
          }

          v376 = v294;
          OUTLINED_FUNCTION_88_1();
          OUTLINED_FUNCTION_182();
          v342();

          v295 = v137;
        }

        else
        {
          v338 = OUTLINED_FUNCTION_88_1();
          v339(v338, v295);
        }

        goto LABEL_108;
      }

      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_159();
      v210();
      v137 = v209;
      v211 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
      if (v212)
      {
        v213 = v211;
        v163 = v212;
        OUTLINED_FUNCTION_169();
        v215 = (*(v214 + 104))();
        if (!v215)
        {
          OUTLINED_FUNCTION_57_0();
          v137 = v377;
          v226(v209, v377);

          v163 = v137;

          goto LABEL_61;
        }

        v374 = v215;
        v367 = &v343;
        v384 = v213;
        v385 = v163;
        MEMORY[0x28223BE20](v215);
        OUTLINED_FUNCTION_21_3();
        v137 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v216, v368);

        if (v137)
        {
          v163 = v374;
          v218 = (*(*v374 + 184))(v217);
          v367 = &v343;
          MEMORY[0x28223BE20](v218);
          OUTLINED_FUNCTION_22_4();
          OUTLINED_FUNCTION_90_1(v219);
          v222 = OUTLINED_FUNCTION_202(v220, v221);

          OUTLINED_FUNCTION_3_7();
          v137 = v386;
          specialized Array.append<A>(contentsOf:)(v222, v223, type metadata accessor for AssetDeliverySubsystemError);

          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_100_1();
          v224();
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_100_1();
        v230();
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        v225(v209, v163);
      }

LABEL_61:
      v203 = v378;
      if (v206)
      {
        goto LABEL_67;
      }

      while (1)
      {
LABEL_63:
        v231 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          goto LABEL_112;
        }

        if (v231 >= v208)
        {
          break;
        }

        v206 = *(v203 + 8 * v231);
        ++v201;
        if (v206)
        {
          v201 = v231;
          goto LABEL_67;
        }
      }

      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v227, v228, v229, v120);
      v206 = 0;
    }
  }

LABEL_17:
  v120 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR;
  while (1)
  {
    v119 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v119 >= v117)
    {
      v130 = v118;
      v148 = OUTLINED_FUNCTION_31_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v148, v149);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
      v115 = 0;
      goto LABEL_23;
    }

    v115 = v112[v119];
    ++v111;
    if (v115)
    {
      v111 = v119;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for InvocationStep);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *specialized Sequence.flatMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v5)
    {
      return v6;
    }

    v7 = *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() - 8);
    result = a1(&v19, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v9 = v19;
    v10 = *(v19 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for AssetDeliverySubsystemError(0);
      if (v13 < v10)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v6 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void AssetDeliveryStateReader.locale.getter()
{
  OUTLINED_FUNCTION_18();
  v5 = v0;
  v6 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_122_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_136_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64_1();
  v17 = *(type metadata accessor for AssetDeliveryStateReader(0) + 24);
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v18 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_13_4(v2);
  if (v21)
  {
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_30_0();
    (*(v19 + 8))(v2, v18);
    v20 = type metadata accessor for AppleIntelligenceReportingUseCase();
    OUTLINED_FUNCTION_23_3(v4);
    if (v21)
    {
      outlined destroy of NSObject?(v4, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
      v5 = v0;
    }

    else
    {
      AppleIntelligenceReportingUseCase.locale.getter();
      v23 = v22;
      OUTLINED_FUNCTION_31_1();
      (*(v24 + 8))(v4, v20);
      v5 = v0;
      if (v23)
      {
        goto LABEL_15;
      }
    }
  }

  AppleIntelligenceReportingAvailabilityLog.event.getter();
  OUTLINED_FUNCTION_13_4(v12);
  if (v21)
  {
    v25 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v26 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v27 = v12;
LABEL_14:
    outlined destroy of NSObject?(v27, v25, v26);
    goto LABEL_15;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_30_0();
  (*(v28 + 8))(v12, v18);
  type metadata accessor for AppleIntelligenceReportingUseCase();
  v29 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v29, v30, v31);
  if (v32)
  {
    v25 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v26 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v27 = v3;
    goto LABEL_14;
  }

  v33 = AppleIntelligenceReportingUseCase.parameters.getter();
  OUTLINED_FUNCTION_35_0();
  v34 = OUTLINED_FUNCTION_124_1();
  v35(v34);
  v36 = *(v33 + 16);
  if (!v36)
  {
    goto LABEL_56;
  }

  v60 = 0;
  v61 = 0;
  v37 = 0;
  v38 = 0xEF616E696843646ELL;
  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_69();
  v40 = v33 + v39;
  v62 = *(v41 + 56);
  v63 = v42;
  do
  {
    v63(v1, v40, v6);
    v43 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (!v44)
    {
      goto LABEL_27;
    }

    if (v43 == v17 && v44 == 0xE800000000000000)
    {

LABEL_26:

      AppleIntelligenceReportingAsset.version.getter();
      v37 = v46;
      goto LABEL_27;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_163();
    if (v5)
    {
      goto LABEL_26;
    }

LABEL_27:
    v47 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (!v48)
    {
      goto LABEL_52;
    }

    if (v47 == v4 && v48 == v38)
    {

LABEL_35:
      v17 = v37;
      v50 = v38;
      v51 = AppleIntelligenceReportingAsset.version.getter();
      if (v52)
      {
        v53 = v51 == 1702195828 && v52 == 0xE400000000000000;
        v54 = 0x646E616C6E69614DLL;
        v4 = 0xED0000616E696843;
        if (v53)
        {
          goto LABEL_49;
        }

        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_163();
        if (v5)
        {
LABEL_50:

          v60 = v54;
          v61 = v4;
          goto LABEL_51;
        }
      }

      v55 = AppleIntelligenceReportingAsset.version.getter();
      if (!v56)
      {
        goto LABEL_51;
      }

      if (v55 != 0x65736C6166 || v56 != 0xE500000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_163();
        if (v5)
        {
          v4 = 0xE300000000000000;
          v54 = 5730130;
          goto LABEL_50;
        }

LABEL_51:
        v38 = v50;
        v37 = v17;
        OUTLINED_FUNCTION_101_1();
        goto LABEL_52;
      }

      v4 = 0xE300000000000000;
      v54 = 5730130;
LABEL_49:

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_159();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_163();
    if (v5)
    {
      goto LABEL_35;
    }

LABEL_52:
    OUTLINED_FUNCTION_148();
    v58 = OUTLINED_FUNCTION_51_0();
    v59(v58);
    v40 += v62;
    --v36;
  }

  while (v36);

  if (!v37)
  {
LABEL_56:

    goto LABEL_15;
  }

  if (v61)
  {
    MEMORY[0x22AAAE070](95, 0xE100000000000000);
    MEMORY[0x22AAAE070](v60, v61);
  }

LABEL_15:
  OUTLINED_FUNCTION_19();
}

void static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)()
{
  OUTLINED_FUNCTION_18();
  v3 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  OUTLINED_FUNCTION_0();
  v124 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v121 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_96();
  v120 = v16;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_96();
  v118 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_64_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v116 = v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  v115 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  v114 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_93_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v28);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_97_1();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v37 = v36;
  outlined init with copy of AppleIntelligenceError?();
  v38 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v38, v39, v37);
  if (v42)
  {
    outlined destroy of NSObject?(v0, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    goto LABEL_56;
  }

  v112 = v10;
  v117 = v37;
  (*(v31 + 32))(v35, v0, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_227FB2070;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  v41 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_23_3(v2);
  v43 = v35;
  if (v42)
  {
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_31_1();
    (*(v44 + 8))(v2, v41);
    v45 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_1(v45, v46);
    if (v47)
    {
      outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    }

    else
    {
      v48 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
      v50 = v49;
      v51 = OUTLINED_FUNCTION_87_0();
      v52(v51);
      if (v50)
      {
        *(v40 + 32) = v48;
        *(v40 + 40) = v50;
        v53 = v40;
        goto LABEL_13;
      }
    }
  }

  v53 = v40;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0xE000000000000000;

LABEL_13:
  v54 = v118;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v118);
  v119 = v31;
  v55 = v121;
  if (v42)
  {
    outlined destroy of NSObject?(v54, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
LABEL_16:
    v56 = v120;
    goto LABEL_24;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1();
  (*(v57 + 8))(v54, v41);
  OUTLINED_FUNCTION_19_2(v114);
  v56 = v120;
  if (v58)
  {
    outlined destroy of NSObject?(v114, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  }

  else
  {
    v59 = AppleIntelligenceReportingUseCase.mode.getter();
    v60 = OUTLINED_FUNCTION_87_0();
    v61(v60);
    if ((v59 & 0x100000000) == 0)
    {
      v55 = v8;
      dispatch thunk of CustomStringConvertible.description.getter();
      v63 = *(v53 + 16);
      v62 = *(v53 + 24);
      v8 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_160(v62);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v53 = v111;
      }

      OUTLINED_FUNCTION_146();
      goto LABEL_16;
    }
  }

LABEL_24:
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v56);
  if (v42)
  {
    v64 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v65 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v66 = v56;
LABEL_30:
    outlined destroy of NSObject?(v66, v64, v65);
    goto LABEL_31;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1();
  (*(v67 + 8))(v56, v41);
  OUTLINED_FUNCTION_19_2(v115);
  if (v68)
  {
    v64 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v65 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v66 = v115;
    goto LABEL_30;
  }

  AppleIntelligenceReportingUseCase.locale.getter();
  v77 = v76;
  v78 = OUTLINED_FUNCTION_87_0();
  v79(v78);
  if (v77)
  {
    v55 = v8;
    v81 = *(v53 + 16);
    v80 = *(v53 + 24);
    v8 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      OUTLINED_FUNCTION_160(v80);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v53 = v110;
    }

    OUTLINED_FUNCTION_146();
  }

LABEL_31:
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v55);
  v113 = v43;
  if (v42)
  {
    v69 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v70 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v71 = v55;
LABEL_37:
    outlined destroy of NSObject?(v71, v69, v70);
    v85 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1();
  v72 = OUTLINED_FUNCTION_153();
  v73(v72);
  v75 = OUTLINED_FUNCTION_19_2(v116);
  if (v74)
  {
    v69 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v70 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v71 = v116;
    goto LABEL_37;
  }

  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_22_4();
  *(v82 - 16) = v116;
  static Buildable.with(_:)();
  v83 = *(v112 + 8);
  v84 = OUTLINED_FUNCTION_77_0();
  v83(v84);
  v85 = AppleIntelligenceReportingUseCase.parameters.getter();
  v86 = OUTLINED_FUNCTION_153();
  v83(v86);
LABEL_42:
  v87 = v117;
  v88 = *(v85 + 16);
  if (v88)
  {
    v89 = v53;
    OUTLINED_FUNCTION_69();
    v91 = v85 + v90;
    v122 = *(v124 + 72);
    v123 = v92;
    do
    {
      v93 = v8;
      v94 = v8;
      v95 = v3;
      v123(v93, v91, v3);
      v96 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v97)
      {
        v98 = v97;
      }

      else
      {
        v96 = 0;
        v98 = 0xE000000000000000;
      }

      MEMORY[0x22AAAE070](v96, v98);

      MEMORY[0x22AAAE070](95, 0xE100000000000000);
      v99 = v94;
      v100 = AppleIntelligenceReportingAsset.version.getter();
      if (v101)
      {
        v102 = v101;
      }

      else
      {
        v100 = 0;
        v102 = 0xE000000000000000;
      }

      MEMORY[0x22AAAE070](v100, v102);

      v104 = *(v89 + 16);
      v103 = *(v89 + 24);
      v125 = v89;
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_160(v103);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v125 = v108;
      }

      v105 = OUTLINED_FUNCTION_104_0();
      v106(v105);
      v89 = v125;
      *(v125 + 16) = v104 + 1;
      v107 = v125 + 16 * v104;
      *(v107 + 32) = 0;
      *(v107 + 40) = 0xE000000000000000;
      v3 = v95;
      v8 = v99;
      v91 += v122;
      --v88;
    }

    while (v88);

    v87 = v117;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  OUTLINED_FUNCTION_115_1();

  v109._countAndFlagsBits = OUTLINED_FUNCTION_62();
  crc32Checksum(_:)(v109);

  (*(v119 + 8))(v113, v87);
LABEL_56:
  OUTLINED_FUNCTION_19();
}

void AssetDeliveryStateReader.subscriptionHash.getter()
{
  type metadata accessor for AssetDeliveryStateReader(0);

  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
}

AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional __swiftcall AssetDeliveryStateReader.AssetDownloadStatePerUseCase.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase@<W0>(Swift::UInt32 *a1@<X0>, AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional *a2@<X8>)
{
  result.value = AssetDeliveryStateReader.AssetDownloadStatePerUseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase@<X0>(_DWORD *a1@<X8>)
{
  result = AssetDeliveryStateReader.AssetDownloadStatePerUseCase.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t static AssetDeliveryStateReader.AssetDownloadState.getDownloadState(metadata:)()
{
  type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_122_1();
  if ((AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.getter() & 0x1FFFFFFFFLL) == 0x6A4)
  {
    AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.getter();
    if (v1)
    {
      v2 = v1;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v3 = StringProtocol.trimmingCharacters(in:)();
      v5 = v4;
      v6 = OUTLINED_FUNCTION_51_0();
      v7(v6);

      if (v3 == 0xD00000000000001CLL && 0x8000000227FB5BC0 == v5)
      {

        return 0;
      }

      OUTLINED_FUNCTION_157();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_163();
      result = 0;
      if (v2)
      {
        return result;
      }
    }
  }

  if ((AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.getter() & 0x1FFFFFFFFLL) != 0x6A5)
  {
    return 2;
  }

  AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.getter();
  if (!v10)
  {
    return 2;
  }

  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_51_0();
  v15(v14);

  if (v11 == 0xD00000000000001ALL && 0x8000000227FB5BA0 == v13)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

Swift::Int AssetDeliveryStateReader.AssetDownloadState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AssetDeliveryStateReader.AssetDownloadState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AssetDeliveryStateReader.AssetDownloadState.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void AssetDeliveryStateReader.downloadState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  v26 = v21;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_55_0();
  v344 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v331 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_38_0();
  v335 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_13(v35);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_55_0();
  v341 = v37;
  OUTLINED_FUNCTION_12();
  v345 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_0();
  v324 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  v339 = v40;
  OUTLINED_FUNCTION_12();
  v346 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_0();
  v336 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_96();
  v328 = v44;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_96();
  v333 = v46;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_96();
  v338 = v48;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_38_0();
  v332 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v52 = OUTLINED_FUNCTION_13(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7();
  v340 = v53;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_38_0();
  v337 = v55;
  v56 = OUTLINED_FUNCTION_12();
  v57 = type metadata accessor for AssetDeliveryStateReader(v56);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v61);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_95_1();
  v342 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v334 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_38_0();
  v329 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v68 = OUTLINED_FUNCTION_13(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v71);
  v73 = &v307 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v75 = OUTLINED_FUNCTION_13(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7();
  v330 = v76;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_188();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_63_1();
  v322 = v57;
  v343 = v26;
  OUTLINED_FUNCTION_159();
  outlined init with copy of AppleIntelligenceError?();
  v81 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v82 = OUTLINED_FUNCTION_67_1();
  if (__swift_getEnumTagSinglePayload(v82, v83, v81) == 1)
  {
    v84 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v85 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v86 = v73;
LABEL_14:
    outlined destroy of NSObject?(v86, v84, v85);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v106, static Logging.general);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_78_0(v108))
    {
      OUTLINED_FUNCTION_99_1();
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_116_1(v109);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v110, v111, v112, v113, v114, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    goto LABEL_19;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1();
  v88 = *(v87 + 8);
  v317 = (v87 + 8);
  v88(v73, v81);
  v89 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_25(v24);
  if (v95)
  {
    v84 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v85 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v86 = v24;
    goto LABEL_14;
  }

  *&v316 = v88;
  v318 = v89;
  v90 = AppleIntelligenceReportingAssetDeliveryEvent.resourceSpecifiers.getter();
  OUTLINED_FUNCTION_31_1();
  v92 = *(v91 + 8);
  v93 = v24;
  v94 = (v91 + 8);
  v92(v93);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_28_3(v23);
  if (v95)
  {

    v96 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v97 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v98 = v23;
LABEL_12:
    outlined destroy of NSObject?(v98, v96, v97);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v342);
LABEL_13:
    v84 = &_s10Foundation4DateVSgMd;
    v85 = &_s10Foundation4DateVSgMR;
    v86 = v20;
    goto LABEL_14;
  }

  v315 = v92;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_66_0();
  v99();
  v100 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_34_0(v100, v101, v318);
  if (v102)
  {

    v96 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v97 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v98 = v25;
    goto LABEL_12;
  }

  v115 = v25;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_102_1();
  v116();
  v117 = OUTLINED_FUNCTION_70_0();
  v118 = v342;
  OUTLINED_FUNCTION_34_0(v117, v119, v342);
  if (v120)
  {

    goto LABEL_13;
  }

  (*(v334 + 32))(v329, v20, v118);
  v121 = *(v90 + 16);
  if (!v121)
  {

    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v138, static Logging.general);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_78_0(v140))
    {
      OUTLINED_FUNCTION_99_1();
      v141 = swift_slowAlloc();
      OUTLINED_FUNCTION_116_1(v141);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v142, v143, v144, v145, v146, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    (*(v334 + 8))(v329, v118);
    goto LABEL_19;
  }

  v312 = v94;
  *&v313 = v90;
  v309 = v121;
  if (one-time initialization token for general != -1)
  {
LABEL_108:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v122 = type metadata accessor for Logger();
  __swift_project_value_buffer(v122, static Logging.general);
  OUTLINED_FUNCTION_8_8();
  outlined init with copy of AssetDeliveryStateReader();
  outlined init with copy of AssetDeliveryStateReader();
  v123 = v334;
  v124 = v325;
  (*(v334 + 16))(v325, v329, v118);
  v125 = v313;

  v314 = v115;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  LODWORD(v311) = v127;
  v128 = os_log_type_enabled(v126, v127);
  v129 = v338;
  v130 = v341;
  v131 = v345;
  if (v128)
  {
    v308 = v126;
    v132 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    v347[0] = v307;
    *v132 = 136315906;
    v133 = MEMORY[0x22AAAE0F0](v125, MEMORY[0x277D837D0]);
    v135 = v134;
    v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v347);

    *(v132 + 4) = v136;
    v310 = v132;
    *(v132 + 12) = 2080;
    OUTLINED_FUNCTION_82_1();
    outlined init with copy of AppleIntelligenceError?();
    OUTLINED_FUNCTION_28_3(v135);
    if (v95)
    {
      outlined destroy of NSObject?(v135, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v137 = v327;
    }

    else
    {
      AppleIntelligenceReportingModelCatalogLog.event.getter();
      OUTLINED_FUNCTION_66_0();
      v149();
      v150 = OUTLINED_FUNCTION_102_0();
      v124 = v318;
      OUTLINED_FUNCTION_34_0(v150, v151, v318);
      v137 = v327;
      if (v152)
      {
        outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        OUTLINED_FUNCTION_173();
      }

      else
      {
        v153 = v22;
        v154 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
        OUTLINED_FUNCTION_115_1();
        OUTLINED_FUNCTION_102_1();
        v155();
        OUTLINED_FUNCTION_173();
        if (v22)
        {
          OUTLINED_FUNCTION_2_8();
          v156 = OUTLINED_FUNCTION_84_1();
          outlined destroy of AssetDeliveryStateReader(v156, v157);
          goto LABEL_41;
        }
      }
    }

    OUTLINED_FUNCTION_2_8();
    v158 = OUTLINED_FUNCTION_84_1();
    outlined destroy of AssetDeliveryStateReader(v158, v159);

    v153 = 0xE400000000000000;
    v154 = 1701736302;
LABEL_41:
    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v153, v347);

    v161 = v310;
    *(v310 + 14) = v160;
    *(v161 + 22) = 2080;
    OUTLINED_FUNCTION_82_1();
    outlined init with copy of AppleIntelligenceError?();
    OUTLINED_FUNCTION_28_3(v153);
    if (v95)
    {
      outlined destroy of NSObject?(v153, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v148 = v346;
      v118 = v340;
    }

    else
    {
      OUTLINED_FUNCTION_71_0();
      AppleIntelligenceReportingModelCatalogLog.event.getter();
      OUTLINED_FUNCTION_66_0();
      v162();
      v163 = OUTLINED_FUNCTION_102_0();
      v124 = v318;
      OUTLINED_FUNCTION_34_0(v163, v164, v318);
      v148 = v346;
      v118 = v340;
      if (v165)
      {
        outlined destroy of NSObject?(v160, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        OUTLINED_FUNCTION_173();
      }

      else
      {
        v166 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
        v168 = v167;
        OUTLINED_FUNCTION_102_1();
        v169();
        OUTLINED_FUNCTION_173();
        if (v168)
        {
          OUTLINED_FUNCTION_2_8();
          outlined destroy of AssetDeliveryStateReader(v327, v170);
          v171 = v166;
LABEL_50:
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v168, v347);
          OUTLINED_FUNCTION_127();

          v173 = v310;
          *(v310 + 24) = v137;
          *(v173 + 32) = 2080;
          lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v174 = v342;
          v175 = dispatch thunk of CustomStringConvertible.description.getter();
          v312 = *(v334 + 8);
          v312(v124, v174);
          v176 = OUTLINED_FUNCTION_62();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, v178);
          OUTLINED_FUNCTION_127();

          *(v173 + 34) = v175;
          v179 = v308;
          _os_log_impl(&dword_227F43000, v308, v311, "Found required assets: %s for subscription %s and subscriber %s. Current subscription time is %s", v173, 0x2Au);
          OUTLINED_FUNCTION_108_1(&v336);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();

          goto LABEL_51;
        }
      }
    }

    OUTLINED_FUNCTION_2_8();
    outlined destroy of AssetDeliveryStateReader(v327, v172);

    v168 = 0xE400000000000000;
    v171 = 1701736302;
    goto LABEL_50;
  }

  v312 = *(v123 + 8);
  v312(v124, v118);
  outlined destroy of AssetDeliveryStateReader(v327, type metadata accessor for AssetDeliveryStateReader);
  v147 = OUTLINED_FUNCTION_84_1();
  outlined destroy of AssetDeliveryStateReader(v147, type metadata accessor for AssetDeliveryStateReader);
  v148 = v346;
  v118 = v340;
LABEL_51:
  OUTLINED_FUNCTION_1_2();
  v181 = (*(v180 + 248))();
  v115 = &v307;
  v182 = MEMORY[0x28223BE20](v181);
  *(&v307 - 2) = v313;
  v183 = specialized _NativeDictionary.filter(_:)(v182, partial apply for closure #1 in AssetDeliveryStateReader.downloadState.getter, &v307 - 4);

  v315 = 0;
  LODWORD(v317) = 0;
  v22 = 0;
  v186 = v183 + 8;
  v185 = v183[8];
  v322 = v183;
  v187 = 1 << *(v183 + 32);
  v188 = -1;
  if (v187 < 64)
  {
    v188 = ~(-1 << v187);
  }

  v189 = v188 & v185;
  v190 = (v187 + 63) >> 6;
  v327 = v336 + 16;
  v343 = v336 + 32;
  v321 = v324 + 32;
  v325 = (v336 + 8);
  v324 += 8;
  *&v184 = 136315138;
  v313 = v184;
  *&v184 = 136315394;
  v316 = v184;
  v320 = v183 + 8;
  v319 = v190;
  while (1)
  {
    if (!v189)
    {
      while (1)
      {
        v193 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v193 >= v190)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
          v189 = 0;
          goto LABEL_61;
        }

        v189 = v186[v193];
        ++v22;
        if (v189)
        {
          v191 = v148;
          v192 = v129;
          v22 = v193;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

    v191 = v148;
    v192 = v129;
    v193 = v22;
LABEL_60:
    v194 = __clz(__rbit64(v189));
    v189 &= v189 - 1;
    v195 = v194 | (v193 << 6);
    v196 = v322;
    (*(v336 + 16))(v332, *(v322 + 48) + *(v336 + 72) * v195, v191);
    v197 = *(*(v196 + 56) + 8 * v195);
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v199 = *(v198 + 48);
    v200 = v340;
    v201 = OUTLINED_FUNCTION_48();
    v202(v201);
    *(v200 + v199) = v197;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v203, v204, v205, v198);

    v129 = v192;
    v130 = v341;
    v131 = v345;
LABEL_61:
    v206 = v337;
    _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
    v207 = OUTLINED_FUNCTION_120_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v207, v208);
    v209 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_19_2(v209);
    if (v95)
    {
      goto LABEL_94;
    }

    v210 = *(v206 + 19714);
    OUTLINED_FUNCTION_57_0();
    v211 = v129;
    v212 = OUTLINED_FUNCTION_157();
    v214 = v213(v212);
    v215 = *(*v210 + 104);
    if (!(v215)(v214))
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_135();
    v217 = v335;
    (*(v216 + 136))();

    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v218 = OUTLINED_FUNCTION_48_0();
    if (__swift_getEnumTagSinglePayload(v218, v219, v220))
    {
      goto LABEL_96;
    }

    v221 = v344;
    AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter();
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
    v222 = OUTLINED_FUNCTION_73_0();
    if (__swift_getEnumTagSinglePayload(v222, v223, v224))
    {
      break;
    }

    v130 = v341;
    MEMORY[0x22AAADA80]();
    outlined destroy of NSObject?(v344, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
    outlined destroy of NSObject?(v217, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    v225 = OUTLINED_FUNCTION_73_0();
    v131 = v345;
    OUTLINED_FUNCTION_34_0(v225, v226, v345);
    if (v95)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_54_1();
    v227 = OUTLINED_FUNCTION_129_0();
    v228(v227);
    if (static AssetDeliveryStateReader.AssetDownloadState.getDownloadState(metadata:)() != 1)
    {
      v305 = OUTLINED_FUNCTION_32_1();
      v306(v305, v131);
      goto LABEL_99;
    }

    v326 = v210;
    v115 = v210;
    v229 = v215();
    v230 = v333;
    if (v229)
    {
      OUTLINED_FUNCTION_135();
      v232 = v331;
      (*(v231 + 136))();

      v233 = OUTLINED_FUNCTION_53_1();
      if (__swift_getEnumTagSinglePayload(v233, v234, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd))
      {
        goto LABEL_83;
      }

      v235 = v330;
      v115 = v232;
      AppleIntelligenceReportingMobileAssetLog.event.getter();
      v236 = OUTLINED_FUNCTION_79_0();
      if (__swift_getEnumTagSinglePayload(v236, v237, v318))
      {
        outlined destroy of NSObject?(v235, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
LABEL_83:
        outlined destroy of NSObject?(v232, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
        goto LABEL_85;
      }

      v115 = v235;
      v238 = AppleIntelligenceReportingAssetDeliveryEvent.errors.getter();
      outlined destroy of NSObject?(v235, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      outlined destroy of NSObject?(v232, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
      if (!*(v238 + 16))
      {

        goto LABEL_85;
      }

      OUTLINED_FUNCTION_54_1();
      v239 = v328;
      v240 = OUTLINED_FUNCTION_131_0();
      v148 = v346;
      v241(v240);

      OUTLINED_FUNCTION_128_0();
      v242 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_201();
      if (os_log_type_enabled(v242, v131))
      {
        v243 = v239;
        v244 = swift_slowAlloc();
        v347[0] = swift_slowAlloc();
        *v244 = v316;
        v245 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
        if (v246)
        {
          v247 = v245;
        }

        else
        {
          v247 = 0x6E776F6E6B6E75;
        }

        if (v246)
        {
          v248 = v246;
        }

        else
        {
          v248 = 0xE700000000000000;
        }

        OUTLINED_FUNCTION_14_0();
        v317 = *v249;
        (v317)(v243, v346);
        v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v248, v347);

        *(v244 + 4) = v250;
        *(v244 + 12) = 2080;
        v251 = type metadata accessor for AppleIntelligenceReportingGeneralError();
        MEMORY[0x22AAAE0F0](v238, v251);

        v252 = OUTLINED_FUNCTION_129_0();
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v252, v253, v254);
        v130 = v341;

        *(v244 + 14) = v115;
        _os_log_impl(&dword_227F43000, v242, v131, "Asset download for %s failed with: %s", v244, 0x16u);
        swift_arrayDestroy();
        v148 = v346;
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();

        OUTLINED_FUNCTION_84_1();

        v255 = OUTLINED_FUNCTION_32_1();
        v131 = v345;
        v256(v255, v345);
        v129 = v338;
        OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_14_0();
        v317();
      }

      else
      {

        OUTLINED_FUNCTION_84_1();

        OUTLINED_FUNCTION_133_0();
        v257 = OUTLINED_FUNCTION_131_0();
        (v230)(v257);
        v258 = OUTLINED_FUNCTION_32_1();
        v131 = v345;
        v259(v258, v345);
        v129 = v338;
        v260 = OUTLINED_FUNCTION_131_0();
        (v230)(v260);
      }

      LODWORD(v317) = 1;
      v118 = v340;
      v186 = v320;
      v190 = v319;
    }

    else
    {
LABEL_85:
      OUTLINED_FUNCTION_54_1();
      v129 = v211;
      v265 = v211;
      v148 = v346;
      v266(v230, v265, v346);
      OUTLINED_FUNCTION_128_0();
      v267 = Logger.logObject.getter();
      v268 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v267, v268))
      {
        OUTLINED_FUNCTION_59_1();
        v269 = swift_slowAlloc();
        OUTLINED_FUNCTION_60_0();
        v270 = swift_slowAlloc();
        *v269 = OUTLINED_FUNCTION_189(v270).n128_u32[0];
        v271 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
        if (v272)
        {
          v115 = v271;
        }

        else
        {
          v115 = 0x6E776F6E6B6E75;
        }

        OUTLINED_FUNCTION_172();
        v311 = *v129;
        v311(v230, v346);
        v273 = OUTLINED_FUNCTION_114_1();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v274, v275);
        OUTLINED_FUNCTION_89_1();
        v148 = v346;

        *(v269 + 4) = v115;
        _os_log_impl(&dword_227F43000, v267, v268, "Download job completed successfully for %s", v269, 0xCu);
        OUTLINED_FUNCTION_203();
        v131 = v345;
        v129 = v338;
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();

        OUTLINED_FUNCTION_84_1();

        v276 = OUTLINED_FUNCTION_32_1();
        v277(v276, v131);
        v278 = OUTLINED_FUNCTION_131_0();
        (v311)(v278);
        v130 = v341;
      }

      else
      {

        OUTLINED_FUNCTION_84_1();

        OUTLINED_FUNCTION_133_0();
        v230();
        v279 = OUTLINED_FUNCTION_32_1();
        v280(v279, v131);
        v281 = OUTLINED_FUNCTION_131_0();
        (v230)(v281);
      }

      v118 = v340;
      OUTLINED_FUNCTION_102_1();
      v315 = (v282 + 1);
      v186 = v320;
      v190 = v319;
      if (__OFADD__(v282, 1))
      {
        __break(1u);
LABEL_94:
        v283 = OUTLINED_FUNCTION_119_1();
        v284(v283);
        OUTLINED_FUNCTION_170();

        goto LABEL_19;
      }
    }
  }

  outlined destroy of NSObject?(v221, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  v130 = v341;
LABEL_96:
  outlined destroy of NSObject?(v217, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v131 = v345;
LABEL_97:
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v285, v286, v287, v131);
LABEL_98:
  outlined destroy of NSObject?(v130, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
LABEL_99:
  OUTLINED_FUNCTION_54_1();
  v288 = v323;
  v289 = v346;
  v290(v323, v129, v346);
  OUTLINED_FUNCTION_128_0();
  v291 = Logger.logObject.getter();
  v292 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v291, v292))
  {
    OUTLINED_FUNCTION_59_1();
    v293 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v294 = swift_slowAlloc();
    *v293 = OUTLINED_FUNCTION_189(v294).n128_u32[0];
    v295 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v296)
    {
      v297 = v295;
    }

    else
    {
      v297 = 0x6E776F6E6B6E75;
    }

    v298 = v288;
    v299 = *v325;
    (*v325)(v298, v289);
    v300 = OUTLINED_FUNCTION_114_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v300, v301, v302);
    OUTLINED_FUNCTION_89_1();

    *(v293 + 4) = v297;
    _os_log_impl(&dword_227F43000, v291, v292, "Download job not completed for %s", v293, 0xCu);
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();

    OUTLINED_FUNCTION_170();

    v299(v338, v289);
  }

  else
  {

    OUTLINED_FUNCTION_170();

    OUTLINED_FUNCTION_133_0();
    v210(v288, v289);
    v210(v211, v289);
  }

  v303 = OUTLINED_FUNCTION_119_1();
  v304(v303);
LABEL_19:
  OUTLINED_FUNCTION_19();
}

BOOL closure #1 in AssetDeliveryStateReader.downloadState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
  if (v5)
  {
    v9[0] = v4;
    v9[1] = v5;
    MEMORY[0x28223BE20](v4);
    v8[2] = v9;
    v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, a3);
  }

  else
  {
    return 0;
  }

  return v6;
}

void AssetDeliveryStateReader.uafDownloadStatus(now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v335 = v20;
  v300 = v25;
  v26 = type metadata accessor for AssetDeliveryStateReader(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = (v29 - v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v36);
  v315 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v311 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v40);
  v317 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus();
  OUTLINED_FUNCTION_0();
  v320 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v43);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMR);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_55_0();
  v321 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  v47 = OUTLINED_FUNCTION_13(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v50);
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
  OUTLINED_FUNCTION_0();
  v324 = v51;
  v325 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v53);
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMR);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_55_0();
  v326 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v57 = OUTLINED_FUNCTION_13(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7();
  v322 = v58;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_96();
  v333 = v60;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_38_0();
  v334 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v64 = OUTLINED_FUNCTION_13(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_38_0();
  v329 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  OUTLINED_FUNCTION_13(v68);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_55_0();
  v330 = v70;
  OUTLINED_FUNCTION_12();
  v331 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  OUTLINED_FUNCTION_0();
  v327 = v71;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2();
  v328 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v75 = OUTLINED_FUNCTION_13(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_85_1();
  v79 = MEMORY[0x28223BE20](v78);
  v81 = &v287 - v80;
  MEMORY[0x28223BE20](v79);
  v83 = &v287 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v85 = OUTLINED_FUNCTION_13(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_96_0();
  v89 = MEMORY[0x28223BE20](v88);
  v91 = &v287 - v90;
  MEMORY[0x28223BE20](v89);
  v93 = &v287 - v92;
  v332 = v26;
  v94 = *(v26 + 32);
  outlined init with copy of AppleIntelligenceError?();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_13_4(v83);
  if (v103)
  {
    v95 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v96 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v97 = v83;
LABEL_7:
    outlined destroy of NSObject?(v97, v95, v96);
LABEL_8:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logging.general);
    OUTLINED_FUNCTION_8_8();
    outlined init with copy of AssetDeliveryStateReader();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      OUTLINED_FUNCTION_59_1();
      v107 = swift_slowAlloc();
      OUTLINED_FUNCTION_60_0();
      v108 = swift_slowAlloc();
      v337[0] = v108;
      *v107 = 136315138;

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v30, v109);
      v110 = OUTLINED_FUNCTION_48();
      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v112);

      *(v107 + 4) = v113;
      _os_log_impl(&dword_227F43000, v105, v106, "Missing subscriberName or subscriptionName from current subscription event for use case :%s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v108);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v30, v114);
    }

    LOBYTE(v115) = 1;
    goto LABEL_14;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_30_0();
  v99 = v98 + 8;
  v100 = OUTLINED_FUNCTION_129_0();
  v299 = v101;
  v101(v100);
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v102 = OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_25(v102);
  if (v103)
  {
    v95 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v96 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v97 = v93;
    goto LABEL_7;
  }

  v296 = v99;
  v298 = v94;
  v117 = v83;
  v118 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
  v120 = v119;
  OUTLINED_FUNCTION_31_1();
  v122 = *(v121 + 8);
  v297 = v117;
  v295 = v122;
  v122(v93, v117);
  if (!v120)
  {
    goto LABEL_8;
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v81);
  if (v103)
  {

    v95 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v96 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v97 = v81;
    goto LABEL_7;
  }

  v294 = v118;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_92_1();
  v123();
  v124 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v124, v125, v297);
  if (v126)
  {

    v95 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v96 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v97 = v91;
    goto LABEL_7;
  }

  v293 = v120;
  v127 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
  v129 = v128;
  OUTLINED_FUNCTION_181();
  v130();
  v292 = v129;
  if (!v129)
  {

    goto LABEL_8;
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v21);
  if (v103)
  {
    outlined destroy of NSObject?(v21, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    v131 = 0;
    LOBYTE(v132) = 1;
    OUTLINED_FUNCTION_166();
  }

  else
  {
    OUTLINED_FUNCTION_185();
    AppleIntelligenceReportingModelCatalogLog.event.getter();
    OUTLINED_FUNCTION_92_1();
    v133();
    v134 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_34_0(v134, v135, v297);
    v30 = v292;
    if (v136)
    {
      outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v131 = 0;
      LOBYTE(v132) = 1;
    }

    else
    {
      v137 = AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.getter();
      v131 = v137;
      v132 = HIDWORD(v137) & 1;
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_181();
      v138();
    }
  }

  LOBYTE(v336) = v132;
  v337[0] = v294;
  v337[1] = v293;
  v338[0] = v127;
  v338[1] = v30;
  v339 = v131;
  v340 = v132;
  v139 = *(v335 + 16);
  OUTLINED_FUNCTION_1_2();
  v141 = *(v140 + 344);

  v143 = v141(v142);
  specialized Dictionary.subscript.getter(v337, v143);
  OUTLINED_FUNCTION_179();

  outlined destroy of SubscriptionKey(v337);
  v145 = v333;
  v144 = v334;
  if (!v139)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_2();
  v147 = (*(v146 + 104))();

  if (!v147)
  {
    goto LABEL_40;
  }

  v291 = v127;
  v149 = *(*v147 + 112);
  v150 = *v147 + 112;
  v127 = v329;
  v149(v148);
  v151 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v152 = OUTLINED_FUNCTION_66();
  if (__swift_getEnumTagSinglePayload(v152, v153, v151))
  {

    outlined destroy of NSObject?(v127, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    v30 = v330;
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
LABEL_38:
    OUTLINED_FUNCTION_144();
    outlined destroy of NSObject?(v30, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
LABEL_39:
    OUTLINED_FUNCTION_166();
LABEL_40:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v160, static Logging.general);

    OUTLINED_FUNCTION_141_0(&v323);

    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v336 = swift_slowAlloc();
      *v163 = 136315394;
      v164 = v294;
      v165 = OUTLINED_FUNCTION_154();
      *(v163 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v167);
      *(v163 + 12) = 2080;
      *(v163 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v30, &v336);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v168, v169, v170, v171, v172, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      v164 = v294;
    }

    v173 = OUTLINED_FUNCTION_197();
    v174 = v173[3];
    v175 = v173[4];
    __swift_project_boxed_opaque_existential_1(v173, v174);
    v176 = (*(v175 + 16))(v127, v30, v164, v144, v174, v175);

    v115 = HIDWORD(v176) & 1;
LABEL_14:
    v116 = 1;
    goto LABEL_15;
  }

  v288 = v151;
  v289 = v150;
  v290 = v149;
  v30 = v330;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter();
  outlined destroy of NSObject?(v127, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v158 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_26_1(v158, v159);
  if (v103)
  {

    goto LABEL_38;
  }

  v329 = v147;
  v177 = OUTLINED_FUNCTION_114_1();
  v178(v177);
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.getter();
  v179 = v324;
  (*(v325 + 104))(v145, *MEMORY[0x277D1F608], v324);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
  v183 = *(v323 + 48);
  v30 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR;
  v184 = v326;
  outlined init with copy of AppleIntelligenceError?();
  v330 = v183;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v184);
  v127 = v291;
  if (v185)
  {
    outlined destroy of NSObject?(v145, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    v186 = v326;
    outlined destroy of NSObject?(v144, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    OUTLINED_FUNCTION_34_0(v330 + v186, 1, v179);
    if (v103)
    {
      outlined destroy of NSObject?(v186, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
      goto LABEL_57;
    }

LABEL_54:
    outlined destroy of NSObject?(v186, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMR);
    goto LABEL_66;
  }

  v144 = v322;
  outlined init with copy of AppleIntelligenceError?();
  v187 = v330;
  OUTLINED_FUNCTION_25(v330 + v184);
  if (v188)
  {
    outlined destroy of NSObject?(v333, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    v186 = v326;
    outlined destroy of NSObject?(v334, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    (*(v325 + 8))(v144, v179);
    goto LABEL_54;
  }

  v189 = v325;
  v190 = v187 + v184;
  v191 = v313;
  (*(v325 + 32))(v313, v190, v179);
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus, MEMORY[0x277D1F618], MEMORY[0x277D1F620]);
  OUTLINED_FUNCTION_192();
  v144 = v179;
  LODWORD(v330) = dispatch thunk of static Equatable.== infix(_:_:)();
  v192 = *(v189 + 8);
  v192(v191, v179);
  outlined destroy of NSObject?(v333, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  outlined destroy of NSObject?(v334, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v192(v322, v179);
  outlined destroy of NSObject?(v326, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  if ((v330 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v193 = v319;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.getter();
  v194 = v317;
  (*(v320 + 104))(v318, *MEMORY[0x277D1F628], v317);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v195, v196, v197, v194);
  v144 = *(v316 + 48);
  v30 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd;
  v198 = v321;
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v198);
  if (v103)
  {
    v30 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR;
    v199 = OUTLINED_FUNCTION_120_1();
    outlined destroy of NSObject?(v199, v200, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    v201 = v321;
    outlined destroy of NSObject?(v193, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    OUTLINED_FUNCTION_25(v201 + v144);
    if (v103)
    {
      outlined destroy of NSObject?(v201, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v202 = v314;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v198 + v144);
  if (v203)
  {
    outlined destroy of NSObject?(v318, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    v204 = OUTLINED_FUNCTION_84_1();
    v201 = v321;
    outlined destroy of NSObject?(v204, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    (*(v320 + 8))(v202, v194);
LABEL_65:
    outlined destroy of NSObject?(v201, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMR);
LABEL_66:
    v205 = OUTLINED_FUNCTION_68_0();
    v206(v205);

    goto LABEL_39;
  }

  v207 = v320;
  (*(v320 + 32))(v305, v198 + v144, v194);
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus and conformance AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus, MEMORY[0x277D1F630], MEMORY[0x277D1F638]);
  OUTLINED_FUNCTION_154();
  LODWORD(v334) = dispatch thunk of static Equatable.== infix(_:_:)();
  v127 = *(v207 + 8);
  v208 = OUTLINED_FUNCTION_157();
  v127(v208);
  v144 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd;
  outlined destroy of NSObject?(v318, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  v209 = OUTLINED_FUNCTION_84_1();
  outlined destroy of NSObject?(v209, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  (v127)(v314, v194);
  OUTLINED_FUNCTION_144();
  v210 = OUTLINED_FUNCTION_158();
  outlined destroy of NSObject?(v210, v211, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  if ((v334 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_68:
  v212 = v308;
  OUTLINED_FUNCTION_174();
  v213();
  v214 = OUTLINED_FUNCTION_70_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v214, v215, v288);
  v217 = v309;
  if (EnumTagSinglePayload)
  {
LABEL_71:
    outlined destroy of NSObject?(v212, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v221, v222, v223, v315);
    goto LABEL_72;
  }

  v218 = v302;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v219 = OUTLINED_FUNCTION_79_0();
  if (__swift_getEnumTagSinglePayload(v219, v220, v297))
  {
    outlined destroy of NSObject?(v218, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    goto LABEL_71;
  }

  v225 = v218;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  outlined destroy of NSObject?(v218, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  outlined destroy of NSObject?(v212, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v250 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v250, v251, v315);
  if (!v103)
  {
    OUTLINED_FUNCTION_167();
    v144 = v310;
    v252 = OUTLINED_FUNCTION_130_0();
    v127 = v315;
    v253(v252);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v254, v255, v256, v127);
    v232 = v331;
    OUTLINED_FUNCTION_166();
    goto LABEL_77;
  }

LABEL_72:
  v224 = v306;
  v225 = v329;
  OUTLINED_FUNCTION_174();
  v226();
  v227 = OUTLINED_FUNCTION_70_0();
  if (__swift_getEnumTagSinglePayload(v227, v228, v288))
  {
    outlined destroy of NSObject?(v224, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    OUTLINED_FUNCTION_141_0(&v341);
    OUTLINED_FUNCTION_23();
    v127 = v315;
    __swift_storeEnumTagSinglePayload(v229, v230, v231, v315);
  }

  else
  {
    v144 = v310;
    v225 = v224;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.writeTimestamp.getter();
    outlined destroy of NSObject?(v224, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    v127 = v315;
  }

  v232 = v331;
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_23_3(v217);
  if (!v103)
  {
    outlined destroy of NSObject?(v217, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_77:
  OUTLINED_FUNCTION_23_3(v144);
  if (v103)
  {
    (*(v327 + 8))(v328, v232);

    outlined destroy of NSObject?(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_144();
    goto LABEL_40;
  }

  v233 = *(v311 + 32);
  (v233)(v312, v144, v127);
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_82_1();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v225);
  if (v234)
  {
    v235 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v236 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v237 = v225;
LABEL_86:
    outlined destroy of NSObject?(v237, v235, v236);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v242, v243, v244, v127);
    goto LABEL_87;
  }

  v144 = v301;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_92_1();
  v238();
  v239 = OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_34_0(v239, v240, v297);
  if (v241)
  {
    v235 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v236 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v237 = v144;
    goto LABEL_86;
  }

  v257 = v307;
  OUTLINED_FUNCTION_185();
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_181();
  v258();
  OUTLINED_FUNCTION_23_3(v257);
  if (!v259)
  {
    v144 = v303;
    v260 = OUTLINED_FUNCTION_130_0();
    v233(v260);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v261, v262, v263, v127);
    goto LABEL_96;
  }

LABEL_87:
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_82_1();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v225);
  if (v103)
  {
    outlined destroy of NSObject?(v225, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    OUTLINED_FUNCTION_141_0(&v334);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v127);
  }

  else
  {
    v144 = v303;
    AppleIntelligenceReportingModelCatalogLog.writeTimestamp.getter();
    OUTLINED_FUNCTION_92_1();
    v248();
  }

  v249 = OUTLINED_FUNCTION_108_1(v338);
  OUTLINED_FUNCTION_23_3(v249);
  if (!v103)
  {
    outlined destroy of NSObject?(v225, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_96:
  OUTLINED_FUNCTION_23_3(v144);
  if (v103)
  {

    (*(v311 + 8))(v312, v127);
    v264 = OUTLINED_FUNCTION_68_0();
    v265(v264);
    outlined destroy of NSObject?(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_105:
    OUTLINED_FUNCTION_144();
    goto LABEL_39;
  }

  v266 = OUTLINED_FUNCTION_108_1(&v336);
  (v233)(v266, v144, v127);
  v267 = static Date.> infix(_:_:)();
  if ((v267 & 1) == 0)
  {

    v277 = *(v311 + 8);
    OUTLINED_FUNCTION_82_1();
    v277();
    (v277)(v312, v225);
    v278 = OUTLINED_FUNCTION_68_0();
    v279(v278);
    goto LABEL_105;
  }

  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v268 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v268, static Logging.general);

  v269 = Logger.logObject.getter();
  v270 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v269, v270))
  {
    v271 = swift_slowAlloc();
    v336 = swift_slowAlloc();
    *v271 = 136315394;
    OUTLINED_FUNCTION_144();
    *(v271 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v292, v272);
    *(v271 + 12) = 2080;
    v273 = OUTLINED_FUNCTION_48();
    v276 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v274, v275);

    *(v271 + 14) = v276;
    _os_log_impl(&dword_227F43000, v269, v270, "uafDownloadStatus found UAF completion event for %s for %s", v271, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_141_0(&a10);
  Date.timeIntervalSince(_:)();
  v280 = OUTLINED_FUNCTION_197();
  __swift_project_boxed_opaque_existential_1(v280, v280[3]);
  v281 = OUTLINED_FUNCTION_104_0();
  v282(v281);

  v283 = *(v311 + 8);
  (v283)(v304, v315);
  v284 = OUTLINED_FUNCTION_192();
  v283(v284);
  v285 = OUTLINED_FUNCTION_68_0();
  v286(v285);
  LOBYTE(v115) = 0;
  v116 = 0;
LABEL_15:
  LOBYTE(v337[0]) = v115;
  LOBYTE(v336) = v116;
  OUTLINED_FUNCTION_19();
}