id specialized static PegasusInstrumentationUtil.extractSiriPegasusMetadata(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  v98 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v117 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v116 = &v96 - v5;
  v115 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction();
  v118 = *(v115 - 8);
  v6 = MEMORY[0x28223BE20](v115);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v105 = &v96 - v9;
  MEMORY[0x28223BE20](v8);
  v106 = &v96 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  v112 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType();
  v111 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v97 = &v96 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v96 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v96 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v96 - v28;
  v101 = [objc_allocWithZone(MEMORY[0x277D5A0E8]) init];
  if (!v101)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_5:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.pommes);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2232BB000, v39, v40, "Unable to initialize POMMESSchemaPOMMESSiriPegasusMetadata()", v41, 2u);
        MEMORY[0x223DE0F80](v41, -1, -1);
      }

      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v96 = v20;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.getter();
  v30 = *(v17 + 8);
  v108 = v16;
  v109 = v17 + 8;
  v30(v29, v16);
  v31 = v30;
  v32 = v111;
  v33 = (*(v111 + 88))(v15, v13);
  v34 = *MEMORY[0x277D38D50];
  v110 = v2;
  if (v33 == v34)
  {
    v35 = 0;
    v36 = v112;
    v37 = v113;
  }

  else
  {
    v37 = v113;
    if (v33 == *MEMORY[0x277D38D60])
    {
      v35 = 2;
      v36 = v112;
    }

    else
    {
      v43 = v15;
      v36 = v112;
      if (v33 == *MEMORY[0x277D38D58])
      {
        v35 = 1;
      }

      else
      {
        (*(v32 + 8))(v43, v13);
        v35 = 0;
      }
    }
  }

  v44 = v101;
  [v101 setInteractionType_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter();
  v45 = v108;
  v46 = v31(v27, v108);
  v47 = MEMORY[0x223DDBC40](v46);
  v48 = v37[1];
  v49 = v114;
  v48(v36, v114);
  if ((v47 & 0x80000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v44 setMovieRestriction_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter();
  v31(v27, v45);
  v50 = Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.tvRestriction.getter();
  v48(v36, v49);
  if ((v50 & 0x80000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v51 = v45;
  [v44 setTvRestriction_];
  v52 = v107;
  v100 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v53 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v99 = v31;
  v31(v52, v45);
  v54 = 0;
  v107 = *(v53 + 16);
  v114 = v118 + 16;
  v102 = *MEMORY[0x277D39920];
  v112 = (v98 + 8);
  v113 = (v98 + 104);
  v111 = v118 + 8;
  v103 = v53;
  v55 = v106;
  do
  {
    v56 = v54;
    if (v107 == v54)
    {
      break;
    }

    if (v54 >= *(v53 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v57 = v118;
    v58 = v115;
    v59 = (*(v118 + 16))(v55, v53 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54++, v115);
    v60 = v116;
    MEMORY[0x223DDA770](v59);
    v61 = v117;
    v62 = v110;
    (*v113)(v117, v102, v110);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948], MEMORY[0x277D39950]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v63 = *v112;
    (*v112)(v61, v62);
    v64 = v60;
    v51 = v108;
    v63(v64, v62);
    v53 = v103;
    (*(v57 + 8))(v55, v58);
  }

  while (v120 != v119);
  v65 = v107 != v56;

  [v101 setIsInRestrictedSharingMode_];
  v66 = v97;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v67 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v99(v66, v51);
  v68 = 0;
  v107 = *(v67 + 16);
  LODWORD(v106) = *MEMORY[0x277D39928];
  v69 = v110;
  v103 = v67;
  v70 = v105;
  do
  {
    v71 = v68;
    if (v107 == v68)
    {
      break;
    }

    if (v68 >= *(v67 + 16))
    {
      goto LABEL_30;
    }

    v72 = v118;
    v73 = v115;
    v74 = (*(v118 + 16))(v70, v67 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v68++, v115);
    v75 = v116;
    MEMORY[0x223DDA770](v74);
    v76 = v117;
    (*v113)(v117, v106, v69);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948], MEMORY[0x277D39950]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v77 = *v112;
    v78 = v76;
    v67 = v103;
    (*v112)(v78, v69);
    v77(v75, v69);
    (*(v72 + 8))(v70, v73);
  }

  while (v120 != v119);
  v79 = v107 == v71;

  [v101 setIsExplicitContentAllowed_];
  v80 = v96;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v81 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v99(v80, v108);
  v82 = 0;
  v109 = *(v81 + 16);
  LODWORD(v108) = *MEMORY[0x277D39930];
  v107 = v81;
  v83 = v110;
  do
  {
    v84 = v82;
    if (v109 == v82)
    {
      break;
    }

    if (v82 >= *(v81 + 16))
    {
      goto LABEL_31;
    }

    v85 = v118;
    v86 = v104;
    v87 = v115;
    v88 = (*(v118 + 16))(v104, v81 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82++, v115);
    v89 = v116;
    MEMORY[0x223DDA770](v88);
    v90 = v117;
    (*v113)(v117, v108, v83);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948], MEMORY[0x277D39950]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v91 = *v112;
    v92 = v90;
    v81 = v107;
    (*v112)(v92, v83);
    v91(v89, v83);
    (*(v85 + 8))(v86, v87);
  }

  while (v120 != v119);
  v93 = v109 != v84;

  v42 = v101;
  [v101 setIsWebContentDisabled_];
  v94 = specialized static PegasusInstrumentationUtil.extractDeviceState(from:)();
  [v42 setDeviceState_];

  return v42;
}

NSObject *specialized static PegasusInstrumentationUtil.extractClientConversationMetadata(from:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D59F60]) init];
  if (!v7)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v8, v21, "Unable to initialize POMMESSchemaPOMMESClientConversationMetadata()", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    goto LABEL_21;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D59FD8]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "Unable to initialize POMMESSchemaPOMMESOnDeviceMetadata()", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

LABEL_21:
    return 0;
  }

  v10 = v9;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
  v11 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.hasPromptContext.getter();
  v12 = *(v4 + 8);
  v12(v6, v3);
  [v8 setHasPromptContext:v11 & 1];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
  v13 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.hasClientDisplayHints.getter();
  v12(v6, v3);
  [v8 setHasDisplayHints:v13 & 1];
  if (*(a2 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v15 & 1) != 0))
  {
    v16 = (*(a2 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];

    v19 = MEMORY[0x223DDF550](v17, v18);
  }

  else
  {
    v19 = 0;
  }

  [v10 setOnScreenAppBundleIdDomain_];

  if (*(a2 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(1), (v24 & 1) != 0))
  {
    v25 = (*(a2 + 56) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];

    v28 = MEMORY[0x223DDF550](v26, v27);
  }

  else
  {
    v28 = 0;
  }

  [v10 setOnScreenUriDomain_];

  [v8 setOnDeviceMetadata:v10];
  return v8;
}

unint64_t specialized static PegasusInstrumentationUtil.requestArguments(from:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16;
  outlined init with copy of MediaUserStateCenter?(a1, v11, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  if ((*(v13 + 48))(v11, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v19, v20, "No ParsecAlias.SiriPegasusRequest to extract POMMESSchemaPOMMESPegasusRequestArguments from", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

    return 0;
  }

  (*(v13 + 32))(v15, v11, v17);
  v22 = [objc_allocWithZone(MEMORY[0x277D5A008]) init];
  if (!v22)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_12:
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.pommes);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2232BB000, v36, v37, "Unable to initialize POMMESSchemaPOMMESPegasusRequestArguments()", v38, 2u);
        MEMORY[0x223DE0F80](v38, -1, -1);
      }

      (*(v13 + 8))(v15, v17);
      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v23 = v22;
  specialized static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v15, a2, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for POMMESSchemaPOMMESPegasusSearchQuery, 0x277D5A050);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 setQueries_];

  v25 = specialized static PegasusInstrumentationUtil.extractQueryMetadata(from:)(v15);
  [v23 setQueryMetadata_];

  v26 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.getter();
  v27 = MEMORY[0x223DDF550](v26);

  [v23 setFeatureFlag_];

  v28 = specialized static PegasusInstrumentationUtil.extractSiriPegasusMetadata(from:)(v15);
  [v23 setSiriPegasusMetadata_];

  [v23 setIsDataOnlyRequest_];
  v29 = specialized static PegasusInstrumentationUtil.extractClientConversationMetadata(from:onDeviceLabels:)(v15, a3);
  [v23 setClientConversationMetadata_];

  result = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.getter();
  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_25;
    }

    v40 = *(result + 16);
    v39 = *(result + 24);
    result = outlined consume of Data._Representation(result, v31);
    v34 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
LABEL_22:
      if ((v34 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v34))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_25:
        outlined consume of Data._Representation(result, v31);
        v34 = 0;
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v32)
  {
    v33 = BYTE6(v31);
    outlined consume of Data._Representation(result, v31);
    v34 = v33;
LABEL_26:
    [v23 setConversationContextBytesLength_];
    v43 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
    v44 = MEMORY[0x223DDB6B0](v43);
    v46 = v45;
    (*(v49 + 8))(v8, v6);
    v47 = MEMORY[0x223DDF550](v44, v46);

    [v23 setPersonalDomainFallback_];

    (*(v13 + 8))(v15, v17);
    return v23;
  }

  v41 = HIDWORD(result);
  v42 = result;
  result = outlined consume of Data._Representation(result, v31);
  if (!__OFSUB__(v41, v42))
  {
    v34 = v41 - v42;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v28 = type metadata accessor for Date();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  if (one-time initialization token for shared != -1)
  {
    v10 = swift_once();
  }

  v27 = &v22;
  v11 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v10);
  v26 = a3;
  v21 = v4;
  Date.init()();
  v12 = (*v11 + 200);
  v23 = *v12;
  v13 = v23;
  v24 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v25 = a1;
  v15 = v14;
  LOBYTE(v21) = 2;
  v13(&v30, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v21, partial apply for closure #1 in ExperiencesResolver.defaultExperiences(from:with:), &v22 - 8, v14);
  v16 = *(v7 + 8);
  v17 = v28;
  v18 = v16(v9, v28);
  v22 = &v22;
  v27 = v30;
  MEMORY[0x28223BE20](v18);
  v21 = v25;
  Date.init()();
  LOBYTE(v21) = 2;
  v23(&v30, 0xD00000000000002ELL, 0x80000002234DF250, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v21, partial apply for closure #2 in ExperiencesResolver.defaultExperiences(from:with:), &v22 - 8, v15);
  v16(v9, v17);
  v19 = v30;
  v30 = v27;
  specialized Array.append<A>(contentsOf:)(v19);
  return v30;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  return specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4, a3, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:), closure #3 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:));
}

{
  return specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4, a3, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:), closure #3 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:));
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(double *a1, uint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6, void *(*a7)(uint64_t *__return_ptr, unint64_t), uint64_t a8)
{
  v376 = a8;
  v383 = a7;
  v395 = a6;
  v426 = a5;
  v379 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v362 = &v331 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v351 = &v331 - v13;
  v354 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v353 = *(v354 - 8);
  v14 = MEMORY[0x28223BE20](v354);
  v348 = &v331 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v352 = &v331 - v16;
  v337 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v336 = *(v337 - 8);
  v17 = MEMORY[0x28223BE20](v337);
  v333 = &v331 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v338 = &v331 - v19;
  v341 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v340 = *(v341 - 8);
  v20 = MEMORY[0x28223BE20](v341);
  v335 = &v331 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v339 = &v331 - v22;
  v347 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v346 = *(v347 - 8);
  v23 = MEMORY[0x28223BE20](v347);
  v343 = &v331 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v345 = &v331 - v25;
  v359 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v358 = *(v359 - 8);
  v26 = MEMORY[0x28223BE20](v359);
  v350 = &v331 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v363 = &v331 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v361 = &v331 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v371 = &v331 - v32;
  v378 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v377 = *(v378 - 8);
  v33 = MEMORY[0x28223BE20](v378);
  v360 = &v331 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v364 = &v331 - v35;
  v373 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v372 = *(v373 - 8);
  v36 = MEMORY[0x28223BE20](v373);
  v357 = &v331 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v355 = &v331 - v39;
  MEMORY[0x28223BE20](v38);
  v366 = &v331 - v40;
  v384 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v380 = *(v384 - 8);
  v41 = MEMORY[0x28223BE20](v384);
  v356 = &v331 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v344 = &v331 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v332 = &v331 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v334 = &v331 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v342 = &v331 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v349 = &v331 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v365 = &v331 - v54;
  MEMORY[0x28223BE20](v53);
  v375 = &v331 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x28223BE20](v56 - 8);
  v367 = &v331 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x28223BE20](v58 - 8);
  v374 = &v331 - v59;
  v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v60 - 8);
  v385 = &v331 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v370 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v382 = &v331 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v388 = *(v389 - 8);
  v63 = MEMORY[0x28223BE20](v389);
  v369 = &v331 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v368 = &v331 - v66;
  MEMORY[0x28223BE20](v65);
  v386 = &v331 - v67;
  v393 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v392 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v400 = &v331 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  MEMORY[0x28223BE20](v69 - 8);
  v71 = (&v331 - v70);
  v72 = type metadata accessor for PommesRenderOptions.PromptType();
  v413 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v424 = &v331 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v74 - 8);
  v394 = &v331 - v75;
  v405 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v407 = *(v405 - 8);
  v76 = MEMORY[0x28223BE20](v405);
  v391 = &v331 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v397 = &v331 - v78;
  v79 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v425 = *(v79 - 8);
  v80 = MEMORY[0x28223BE20](v79);
  v428 = &v331 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v427 = &v331 - v82;
  v83 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  v422 = *(v83 - 8);
  v423 = v83;
  MEMORY[0x28223BE20](v83);
  v421 = (&v331 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for Date();
  v419 = *(v85 - 8);
  v420 = v85;
  MEMORY[0x28223BE20](v85);
  v87 = &v331 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v402 = *(v88 - 8);
  v89 = MEMORY[0x28223BE20](v88);
  v387 = &v331 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v92 = &v331 - v91;
  v399 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v398 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v94 = &v331 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = a1;
  v95 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v95 = swift_once();
  }

  v418 = &v331;
  v96 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v95);
  v97 = &v327;
  v329 = v401;
  v330 = v94;
  v396 = v94;
  Date.init()();
  v98 = *(*v96 + 200);
  v403 = v88;
  v329 = &v327;
  v330 = v88;
  LOBYTE(v327) = 2;
  v404 = v92;
  v98(0xD00000000000001ELL, 0x80000002234DF280, 0, v87, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, LODWORD(v327), v426);
  v381 = 0;
  (*(v419 + 8))(v87, v420);
  v99 = v421;
  v100 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v101 = MEMORY[0x223DDAFD0](v100);
  (*(v422 + 8))(v99, v423);
  v423 = *(v101 + 16);
  if (v423)
  {
    v102 = 0;
    v422 = v101 + ((*(v425 + 80) + 32) & ~*(v425 + 80));
    v420 = v425 + 88;
    v421 = (v425 + 16);
    LODWORD(v419) = *MEMORY[0x277D397A8];
    v412 = *MEMORY[0x277D39798];
    v410 = *MEMORY[0x277D397A0];
    v417 = (v413 + 56);
    v418 = (v425 + 8);
    v406 = *MEMORY[0x277D566C0];
    v414 = (v413 + 104);
    v409 = *MEMORY[0x277D566B8];
    v411 = *MEMORY[0x277D566C8];
    v416 = (v413 + 48);
    v426 = MEMORY[0x277D84F90];
    v415 = (v413 + 32);
    v103 = v427;
    while (1)
    {
      if (v102 >= *(v101 + 16))
      {
        __break(1u);
LABEL_89:

        v258 = v71[1];
        v426 = ((v71 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v427 = v258;
        (v258)(v103, v102);
        goto LABEL_90;
      }

      v99 = v425;
      v104 = *(v425 + 16);
      v104(v103, v422 + *(v425 + 72) * v102, v79);
      v97 = v103;
      v105 = v428;
      v104(v428, v97, v79);
      v106 = v99[11](v105, v79);
      if (v106 == v419)
      {
        (*v418)(v97, v79);
        (*v414)(v71, v411, v72);
        (*v417)(v71, 0, 1, v72);
        v103 = v97;
      }

      else
      {
        if (v106 == v412)
        {
          v103 = v427;
          (*v418)(v427, v79);
          (*v414)(v71, v409, v72);
        }

        else
        {
          v103 = v427;
          if (v106 != v410)
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v107 = type metadata accessor for Logger();
            __swift_project_value_buffer(v107, static Logger.pommes);
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              *v110 = 0;
              _os_log_impl(&dword_2232BB000, v108, v109, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v110, 2u);
              v111 = v110;
              v103 = v427;
              MEMORY[0x223DE0F80](v111, -1, -1);
            }

            v99 = v418;
            v112 = *v418;
            (*v418)(v103, v79);
            (*v417)(v71, 1, 1, v72);
            v112(v428, v79);
            goto LABEL_20;
          }

          (*v418)(v427, v79);
          (*v414)(v71, v406, v72);
        }

        (*v417)(v71, 0, 1, v72);
      }

LABEL_20:
      if ((*v416)(v71, 1, v72) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v71, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v99 = *v415;
        (*v415)(v424, v71, v72);
        v113 = v426;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
        }

        v115 = v113[2];
        v114 = v113[3];
        v116 = v113;
        if (v115 >= v114 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v113);
        }

        v426 = v116;
        v116[2] = v115 + 1;
        (v99)(v116 + ((*(v413 + 80) + 32) & ~*(v413 + 80)) + *(v413 + 72) * v115, v424, v72);
        v103 = v427;
      }

      if (v423 == ++v102)
      {
        goto LABEL_27;
      }
    }
  }

  v426 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v117);
  v329 = v426;
  v118 = type metadata accessor for PommesRenderOptions();
  v119 = objc_allocWithZone(v118);
  v120 = PommesRenderOptions.init(_:)();
  v430 = MEMORY[0x277D84F90];
  v121 = v394;
  v122 = v408;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v123 = v405;
  if ((*(v407 + 48))(v121, 1, v405) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v121, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v124 = MEMORY[0x277D84F90];
    v125 = v403;
LABEL_29:
    v72 = v404;
LABEL_66:
    v193 = v399;
    v194 = v398;
    v195 = v396;
    goto LABEL_67;
  }

  v126 = v407;
  v127 = v397;
  (*(v407 + 32))(v397, v121, v123);
  v128 = v391;
  (*(v126 + 16))(v391, v127, v123);
  v129 = (*(v126 + 88))(v128, v123);
  v125 = v403;
  v72 = v404;
  if (v129 == *MEMORY[0x277D38D80])
  {
    v428 = v120;
    (*(v407 + 96))(v128, v123);
    (*(v392 + 32))(v400, v128, v393);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.pommes);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v390;
    v135 = v382;
    if (v133)
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_2232BB000, v131, v132, "Adding a server driven experience", v136, 2u);
      MEMORY[0x223DE0F80](v136, -1, -1);
    }

    if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter())
    {
      v137 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      MEMORY[0x223DDAE00](v137);
      v138 = v72;
      v139 = *(v370 + 8);
      v139(v135, v134);
      (*(v402 + 16))(v387, v138, v125);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      v140 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v141 = v428;
      v142 = v390;
      v143 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      LOBYTE(v138) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
      v139(v135, v142);
      if (v138)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
        type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
        *(swift_allocObject() + 16) = xmmword_2234CF920;
        v144 = v143;
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        v125 = v403;
        Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
        v139(v135, v390);
        dispatch thunk of Experience.associatedEntities.setter();

        v122 = v408;
      }

      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v145 = v374;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v146 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v147 = v143;
      MEMORY[0x223DDF820]();
      v72 = v404;
      v123 = v405;
      if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v148 = MEMORY[0x223DDB9D0]();
    MEMORY[0x28223BE20](v148);
    v327 = a3;
    v328 = v72;
    v329 = v122;
    v149 = v428;
    v330 = v428;
    v150 = specialized Sequence.compactMap<A>(_:)(v383, &v325, v148);

    v151 = v400;
    v152 = specialized Array.append<A>(contentsOf:)(v150);
    v153 = *(MEMORY[0x223DDB9C0](v152) + 16);

    if (v153)
    {
      v154 = v401;
      v155 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
      v156 = specialized ExperiencesResolver.shouldPreserveResultSpaceIfPossible(for:)();
      MEMORY[0x223DDB9C0]();
      (*(v402 + 16))(v387, v72, v125);
      v157 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      MEMORY[0x28223BE20](v157);
      v325 = v151;
      LOBYTE(v326) = v155 & 1;
      v327 = *&v379;
      v328 = v154;
      LOBYTE(v329) = v156 & 1;
      v330 = v426;
      v158 = objc_allocWithZone(v118);
      PommesRenderOptions.init(_:)();

      v159 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v160 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v161 = v374;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v162 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v163 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
      if (v163)
      {
        v164 = v367;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
        v165 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
        (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
        v163 = dispatch thunk of GenericExperience.sageExperience.setter();
      }

      MEMORY[0x223DDF820](v163);
      v72 = v404;
      v166 = v405;
      v167 = v407;
      v125 = v403;
      v168 = v428;
      if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v167 + 8))(v397, v166);
      v151 = v400;
    }

    else
    {
      (*(v407 + 8))(v397, v123);
    }

    v124 = v430;
    (*(v392 + 8))(v151, v393);
    goto LABEL_66;
  }

  v169 = v129;
  v170 = *MEMORY[0x277D38D78];

  if (v169 != v170)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v188 = type metadata accessor for Logger();
    __swift_project_value_buffer(v188, static Logger.pommes);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&dword_2232BB000, v189, v190, "unexpected experience component", v191, 2u);
      MEMORY[0x223DE0F80](v191, -1, -1);
    }

    v192 = *(v407 + 8);
    v192(v397, v123);
    v192(v128, v123);

    v124 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  (*(v407 + 96))(v128, v123);
  v171 = v386;
  (*(v388 + 32))(v386, v128, v389);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v172 = type metadata accessor for Logger();
  v427 = __swift_project_value_buffer(v172, static Logger.pommes);
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  v175 = os_log_type_enabled(v173, v174);
  v176 = v371;
  if (v175)
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_2232BB000, v173, v174, "Adding a client driven experience", v177, 2u);
    MEMORY[0x223DE0F80](v177, -1, -1);
  }

  v428 = v120;

  v178 = MEMORY[0x223DDB8B0]();
  v179 = v384;
  if (!*(v178 + 16))
  {

    goto LABEL_69;
  }

  v180 = v372;
  v181 = v366;
  v182 = v373;
  (*(v372 + 16))(v366, v178 + ((*(v180 + 80) + 32) & ~*(v180 + 80)), v373);

  v183 = v365;
  Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
  (*(v180 + 8))(v181, v182);
  v184 = v380;
  v185 = v375;
  v380[4](v375, v183, v179);
  Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
  v186 = v377;
  v187 = v378;
  if ((*(v377 + 48))(v176, 1, v378) == 1)
  {
    (v184[1])(v185, v179);
    outlined destroy of MediaUserStateCenter?(v176, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
    v123 = v405;
LABEL_69:
    v197 = v388;
    v198 = *(v388 + 16);
    v199 = v368;
    v200 = v389;
    v198(v368, v171, v389);
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v201, v202))
    {
      LODWORD(v425) = v202;
      v203 = swift_slowAlloc();
      *v203 = 67109120;
      v204 = MEMORY[0x223DDB8B0]();
      if (*(v204 + 16))
      {
        v205 = v372;
        v206 = *(v372 + 16);
        v207 = v204 + ((*(v205 + 80) + 32) & ~*(v205 + 80));
        v208 = v355;
        v426 = v198;
        v209 = v373;
        v206(v355, v207, v373);

        v210 = v362;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        v211 = v205;
        v199 = v368;
        v212 = v209;
        v198 = v426;
        (*(v211 + 8))(v208, v212);
        v213 = 0;
        v214 = 1;
      }

      else
      {

        v214 = 0;
        v213 = 1;
        v210 = v362;
      }

      (v380[7])(v210, v213, 1, v384);
      outlined destroy of MediaUserStateCenter?(v210, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v200 = v389;
      v426 = *(v197 + 8);
      (v426)(v199, v389);
      *(v203 + 4) = v214;
      _os_log_impl(&dword_2232BB000, v201, v425, "Has clientComponent? %{BOOL}d", v203, 8u);
      MEMORY[0x223DE0F80](v203, -1, -1);
      v171 = v386;
    }

    else
    {
      v426 = *(v197 + 8);
      (v426)(v199, v200);
    }

    v240 = v369;
    v198(v369, v171, v200);
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      *v243 = 67109120;
      v244 = MEMORY[0x223DDB8B0]();
      v245 = v403;
      if (*(v244 + 16))
      {
        v246 = v372;
        v247 = v357;
        v248 = v373;
        (*(v372 + 16))(v357, v244 + ((*(v246 + 80) + 32) & ~*(v246 + 80)), v373);

        v249 = v356;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v246 + 8))(v247, v248);
        v250 = v361;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v251 = v249;
        v240 = v369;
        (v380[1])(v251, v384);
        v252 = (*(v377 + 48))(v250, 1, v378) != 1;
      }

      else
      {

        v250 = v361;
        (*(v377 + 56))(v361, 1, 1, v378);
        v252 = 0;
      }

      outlined destroy of MediaUserStateCenter?(v250, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v256 = v240;
      v257 = v389;
      v254 = v426;
      (v426)(v256, v389);
      *(v243 + 4) = v252;
      v200 = v257;
      _os_log_impl(&dword_2232BB000, v241, v242, "Has domainComponent? %{BOOL}d", v243, 8u);
      MEMORY[0x223DE0F80](v243, -1, -1);
      v255 = v428;
      v125 = v245;
    }

    else
    {
      v253 = v240;
      v254 = v426;
      (v426)(v253, v200);
      v125 = v403;
      v255 = v428;
    }

    v254(v386, v200);
    (*(v407 + 8))(v397, v123);
    v124 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v215 = v364;
  (*(v186 + 32))(v364, v176, v187);
  v216 = v360;
  (*(v186 + 16))(v360, v215, v187);
  v217 = (*(v186 + 88))(v216, v187);
  v218 = v405;
  if (v217 == *MEMORY[0x277D39A50])
  {
    (*(v186 + 96))(v216, v187);
    (*(v358 + 32))(v363, v216, v359);
    v71 = v380;
    v103 = v349;
    v99 = v375;
    v102 = v384;
    v380[2](v349, v375, v384);
    v97 = Logger.logObject.getter();
    v219 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v97, v219))
    {
      goto LABEL_89;
    }

    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v429 = v221;
    *v220 = 136315138;
    v222 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v224 = v223;
    v225 = v71[1];
    v426 = ((v71 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v427 = v225;
    (v225)(v103, v102);
    v226 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v224, &v429);
    v72 = v404;

    *(v220 + 4) = v226;
    _os_log_impl(&dword_2232BB000, v97, v219, "Adding AudioExperience with identifier %s to PommesResponse", v220, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v221);
    MEMORY[0x223DE0F80](v221, -1, -1);
    v227 = v220;
    v99 = v375;
    MEMORY[0x223DE0F80](v227, -1, -1);

LABEL_90:
    v259 = v379;
    v425 = type metadata accessor for AudioExperience();
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v260 = v358;
    v261 = v359;
    (*(v358 + 16))(v350, v363, v359);
    (*(v402 + 16))(v387, v72, v403);
    outlined init with copy of ClientExperienceSignals?(v259, v351);
    v262 = v99;
    v263 = v428;
    v264 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_2234D0FE0;
    *(v124 + 32) = v264;

    (*(v260 + 8))(v363, v261);
    (*(v377 + 8))(v364, v378);
    v265 = v262;
    goto LABEL_107;
  }

  if (v217 == *MEMORY[0x277D39A58])
  {
    (*(v186 + 96))(v216, v187);
    (*(v353 + 32))(v352, v216, v354);
    v228 = v380;
    v229 = v344;
    v230 = v384;
    v380[2](v344, v375, v384);
    v231 = Logger.logObject.getter();
    v232 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v429 = v234;
      *v233 = 136315138;
      v235 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v237 = v236;
      v238 = v228[1];
      v426 = ((v228 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v238;
      (v238)(v229, v230);
      v239 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v235, v237, &v429);
      v72 = v404;

      *(v233 + 4) = v239;
      _os_log_impl(&dword_2232BB000, v231, v232, "Adding VideoExperience with identifier %s to PommesResponse", v233, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v234);
      MEMORY[0x223DE0F80](v234, -1, -1);
      MEMORY[0x223DE0F80](v233, -1, -1);
    }

    else
    {

      v278 = v228[1];
      v426 = ((v228 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v278;
      (v278)(v229, v230);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v279 = v353;
    v280 = v352;
    v281 = v354;
    (*(v353 + 16))(v348, v352, v354);
    (*(v402 + 16))(v387, v72, v403);
    objc_allocWithZone(type metadata accessor for VideoExperience());
    v282 = v428;
    v283 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
LABEL_106:
    v312 = v283;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_2234D0FE0;
    *(v124 + 32) = v312;

    (*(v279 + 8))(v280, v281);
    (*(v377 + 8))(v364, v378);
    v265 = v375;
LABEL_107:
    (v427)(v265, v384);
    v125 = v403;
    (*(v388 + 8))(v386, v389);
    (*(v407 + 8))(v397, v405);
    goto LABEL_66;
  }

  if (v217 == *MEMORY[0x277D39A40])
  {
    (*(v186 + 96))(v216, v187);
    (*(v346 + 32))(v345, v216, v347);
    v266 = v380;
    v267 = v342;
    v268 = v384;
    v380[2](v342, v375, v384);
    v269 = Logger.logObject.getter();
    v270 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v429 = v272;
      *v271 = 136315138;
      v273 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v275 = v274;
      v276 = v266[1];
      v426 = ((v266 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v276;
      (v276)(v267, v268);
      v277 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v275, &v429);
      v72 = v404;

      *(v271 + 4) = v277;
      _os_log_impl(&dword_2232BB000, v269, v270, "Adding GeoExperience with identifier %s to PommesResponse", v271, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v272);
      MEMORY[0x223DE0F80](v272, -1, -1);
      MEMORY[0x223DE0F80](v271, -1, -1);
    }

    else
    {

      v296 = v266[1];
      v426 = ((v266 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v296;
      (v296)(v267, v268);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v279 = v346;
    v280 = v345;
    v281 = v347;
    (*(v346 + 16))(v343, v345, v347);
    (*(v402 + 16))(v387, v72, v403);
    objc_allocWithZone(type metadata accessor for GeoExperience());
    v282 = v428;
    v283 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_106;
  }

  if (v217 == *MEMORY[0x277D39A48])
  {
    (*(v186 + 96))(v216, v187);
    (*(v340 + 32))(v339, v216, v341);
    v284 = v380;
    v285 = v334;
    v286 = v384;
    v380[2](v334, v375, v384);
    v287 = Logger.logObject.getter();
    v288 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v429 = v290;
      *v289 = 136315138;
      v291 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v293 = v292;
      v294 = v284[1];
      v426 = ((v284 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v294;
      (v294)(v285, v286);
      v295 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v291, v293, &v429);
      v72 = v404;

      *(v289 + 4) = v295;
      _os_log_impl(&dword_2232BB000, v287, v288, "Adding AppsExperience with identfier %s to PommesResponse", v289, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v290);
      MEMORY[0x223DE0F80](v290, -1, -1);
      MEMORY[0x223DE0F80](v289, -1, -1);
    }

    else
    {

      v311 = v284[1];
      v426 = ((v284 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v311;
      (v311)(v285, v286);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v279 = v340;
    v280 = v339;
    v281 = v341;
    (*(v340 + 16))(v335, v339, v341);
    (*(v402 + 16))(v387, v72, v403);
    objc_allocWithZone(type metadata accessor for AppLaunchExperience());
    v282 = v428;
    v283 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_106;
  }

  if (v217 == *MEMORY[0x277D39A38])
  {
    (*(v186 + 96))(v216, v187);
    (*(v336 + 32))(v338, v216, v337);
    v297 = v380;
    v298 = v332;
    v299 = v375;
    v300 = v384;
    v380[2](v332, v375, v384);
    v301 = Logger.logObject.getter();
    v302 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      v429 = v304;
      *v303 = 136315138;
      v305 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v307 = v306;
      v308 = v297[1];
      v426 = ((v297 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v308;
      (v308)(v298, v300);
      v309 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v305, v307, &v429);
      v72 = v404;

      *(v303 + 4) = v309;
      _os_log_impl(&dword_2232BB000, v301, v302, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v303, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v304);
      MEMORY[0x223DE0F80](v304, -1, -1);
      v310 = v303;
      v299 = v375;
      MEMORY[0x223DE0F80](v310, -1, -1);
    }

    else
    {

      v319 = v297[1];
      v426 = ((v297 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v427 = v319;
      (v319)(v298, v300);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v320 = v336;
    v321 = v337;
    (*(v336 + 16))(v333, v338, v337);
    (*(v402 + 16))(v387, v72, v403);
    v322 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
    v323 = v299;
    v324 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_2234D0FE0;
    *(v124 + 32) = v324;

    (*(v320 + 8))(v338, v321);
    (*(v377 + 8))(v364, v378);
    (v427)(v323, v384);
    v125 = v403;
    (*(v388 + 8))(v386, v389);
    (*(v407 + 8))(v397, v218);
    goto LABEL_66;
  }

  v313 = Logger.logObject.getter();
  v314 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v313, v314))
  {
    v315 = swift_slowAlloc();
    *v315 = 0;
    _os_log_impl(&dword_2232BB000, v313, v314, "Unexpected DomainComponent encountered when building Client Driven experience", v315, 2u);
    v316 = v315;
    v186 = v377;
    MEMORY[0x223DE0F80](v316, -1, -1);
  }

  v317 = *(v186 + 8);
  v318 = v378;
  v317(v364, v378);
  (v380[1])(v375, v384);
  (*(v388 + 8))(v386, v389);
  (*(v407 + 8))(v397, v218);
  v317(v216, v318);

  v124 = MEMORY[0x277D84F90];
  v193 = v399;
  v194 = v398;
  v195 = v396;
  v125 = v403;
LABEL_67:
  (*(v402 + 8))(v72, v125);
  (*(v194 + 8))(v195, v193);
  return v124;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(void *a1, uint64_t a2, double a3)
{
  v375 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v407 = &v327 - v6;
  v408 = type metadata accessor for PommesRenderOptions.PromptType();
  v406 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v419 = &v327 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v347 = &v327 - v9;
  v350 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v349 = *(v350 - 8);
  v10 = MEMORY[0x28223BE20](v350);
  v344 = &v327 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v348 = &v327 - v12;
  v334 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v333 = *(v334 - 8);
  v13 = MEMORY[0x28223BE20](v334);
  v329 = &v327 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v332 = &v327 - v15;
  v337 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v336 = *(v337 - 8);
  v16 = MEMORY[0x28223BE20](v337);
  v331 = &v327 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v335 = &v327 - v18;
  v343 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v342 = *(v343 - 8);
  v19 = MEMORY[0x28223BE20](v343);
  v339 = &v327 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v341 = &v327 - v21;
  v355 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v354 = *(v355 - 8);
  v22 = MEMORY[0x28223BE20](v355);
  v346 = &v327 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v359 = &v327 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v357 = &v327 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v358 = &v327 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v368 = &v327 - v30;
  v374 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v373 = *(v374 - 8);
  v31 = MEMORY[0x28223BE20](v374);
  v356 = &v327 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v360 = &v327 - v33;
  v371 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v370 = *(v371 - 8);
  v34 = MEMORY[0x28223BE20](v371);
  v353 = &v327 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v351 = &v327 - v37;
  MEMORY[0x28223BE20](v36);
  v362 = &v327 - v38;
  v376 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v377 = *(v376 - 8);
  v39 = MEMORY[0x28223BE20](v376);
  v340 = &v327 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v328 = &v327 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v330 = &v327 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v338 = &v327 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v345 = &v327 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v352 = &v327 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v361 = &v327 - v52;
  MEMORY[0x28223BE20](v51);
  v378 = &v327 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x28223BE20](v54 - 8);
  v363 = &v327 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x28223BE20](v56 - 8);
  v372 = &v327 - v57;
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v58 - 8);
  v380 = &v327 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v366 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v365 = &v327 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v383 = *(v384 - 8);
  v61 = MEMORY[0x28223BE20](v384);
  v369 = &v327 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v364 = &v327 - v64;
  MEMORY[0x28223BE20](v63);
  v381 = &v327 - v65;
  v386 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v385 = *(v386 - 8);
  MEMORY[0x28223BE20](v386);
  v393 = &v327 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v67 - 8);
  v388 = &v327 - v68;
  v396 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v394 = *(v396 - 8);
  v69 = MEMORY[0x28223BE20](v396);
  v387 = &v327 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v390 = &v327 - v71;
  v72 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v420 = *(v72 - 8);
  v73 = MEMORY[0x28223BE20](v72);
  v421 = &v327 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v405 = &v327 - v75;
  v422 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  v417 = *(v422 - 1);
  MEMORY[0x28223BE20](v422);
  v77 = &v327 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = type metadata accessor for Date();
  v78 = *(isa - 8);
  MEMORY[0x28223BE20](isa);
  v80 = &v327 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v397 = *(v81 - 8);
  v82 = MEMORY[0x28223BE20](v81);
  v382 = &v327 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v85 = &v327 - v84;
  v392 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v391 = *(v392 - 8);
  MEMORY[0x28223BE20](v392);
  v87 = &v327 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = a1;
  v88 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v88 = swift_once();
  }

  v416 = &v327;
  v89 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v88);
  v389 = v87;
  v326 = v87;
  Date.init()();
  v90 = *(*v89 + 200);
  v398 = v81;
  v325 = v324;
  v326 = v81;
  LOBYTE(v324[0]) = 2;
  v395 = v85;
  v90(0xD00000000000001ELL, 0x80000002234DF280, 0, v80, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v324[0], partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v379 = 0;
  v92 = *(v78 + 8);
  v91 = v78 + 8;
  v92(v80, isa);
  v93 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v94 = MEMORY[0x223DDAFD0](v93);
  (*(v417 + 1))(v77, v422);
  isa = v94[2].isa;
  if (isa)
  {
    v95 = 0;
    v417 = v94 + ((*(v420 + 80) + 32) & ~*(v420 + 80));
    v415 = v420 + 88;
    v416 = (v420 + 16);
    v414 = *MEMORY[0x277D397A8];
    v404 = *MEMORY[0x277D39798];
    v402 = *MEMORY[0x277D397A0];
    v413 = (v420 + 8);
    v412 = (v406 + 56);
    v399 = *MEMORY[0x277D566C0];
    v409 = (v406 + 104);
    v401 = *MEMORY[0x277D566B8];
    v403 = *MEMORY[0x277D566C8];
    v411 = (v406 + 48);
    v422 = MEMORY[0x277D84F90];
    v410 = (v406 + 32);
    v97 = v407;
    v96 = v408;
    v98 = v405;
    v99 = (v420 + 16);
    while (1)
    {
      if (v95 >= v94[2].isa)
      {
        __break(1u);
LABEL_90:

        v252 = *(v91 + 8);
        v420 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v422 = v252;
        (v252)(v99, v98);
        goto LABEL_91;
      }

      v100 = v94;
      v91 = v420;
      v101 = *(v420 + 16);
      v101(v98, &v417[*(v420 + 72) * v95], v72);
      v102 = v98;
      v103 = v421;
      v101(v421, v102, v72);
      v104 = (*(v91 + 88))(v103, v72);
      if (v104 == v414)
      {
        (*v413)(v102, v72);
        (*v409)(v97, v403, v96);
        (*v412)(v97, 0, 1, v96);
        v98 = v102;
      }

      else
      {
        if (v104 != v404)
        {
          v98 = v405;
          v94 = v100;
          if (v104 == v402)
          {
            (*v413)(v405, v72);
            (*v409)(v97, v399, v96);
            (*v412)(v97, 0, 1, v96);
          }

          else
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v112 = type metadata accessor for Logger();
            __swift_project_value_buffer(v112, static Logger.pommes);
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              *v115 = 0;
              _os_log_impl(&dword_2232BB000, v113, v114, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v115, 2u);
              v116 = v115;
              v97 = v407;
              MEMORY[0x223DE0F80](v116, -1, -1);
            }

            v117 = *v413;
            (*v413)(v98, v72);
            v96 = v408;
            (*v412)(v97, 1, 1, v408);
            v117(v421, v72);
          }

          goto LABEL_13;
        }

        v98 = v405;
        (*v413)(v405, v72);
        (*v409)(v97, v401, v96);
        (*v412)(v97, 0, 1, v96);
      }

      v94 = v100;
LABEL_13:
      if ((*v411)(v97, 1, v96) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v97, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v105 = v96;
        v106 = *v410;
        (*v410)(v419, v97, v105);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v107 = v422;
        }

        else
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v422[2] + 1, 1, v422);
        }

        v109 = v107[2];
        v108 = v107[3];
        if (v109 >= v108 >> 1)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v107);
        }

        v107[2] = v109 + 1;
        v110 = (*(v406 + 80) + 32) & ~*(v406 + 80);
        v422 = v107;
        v111 = v408;
        v106(v107 + v110 + *(v406 + 72) * v109, v419, v408);
        v96 = v111;
        v97 = v407;
      }

      v95 = (v95 + 1);
      if (isa == v95)
      {
        goto LABEL_28;
      }
    }
  }

  v422 = MEMORY[0x277D84F90];
LABEL_28:

  MEMORY[0x28223BE20](v118);
  v325 = v422;
  v119 = type metadata accessor for PommesRenderOptions();
  v120 = objc_allocWithZone(v119);
  v121 = PommesRenderOptions.init(_:)();
  v424 = MEMORY[0x277D84F90];
  v122 = v388;
  v123 = v400;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v97 = v394;
  v124 = v396;
  if ((*(v394 + 48))(v122, 1, v396) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v122, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v125 = MEMORY[0x277D84F90];
    v126 = v398;
    v127 = v395;
LABEL_87:
    v248 = v392;
    v249 = v391;
    v250 = v389;
    goto LABEL_88;
  }

  v128 = v390;
  (*(v97 + 32))(v390, v122, v124);
  v129 = v387;
  (*(v97 + 16))(v387, v128, v124);
  v130 = (*(v97 + 88))(v129, v124);
  v126 = v398;
  v127 = v395;
  if (v130 == *MEMORY[0x277D38D80])
  {
    (*(v97 + 96))(v129, v124);
    (*(v385 + 32))(v393, v129, v386);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    __swift_project_value_buffer(v131, static Logger.pommes);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_2232BB000, v132, v133, "Adding a server driven experience", v134, 2u);
      MEMORY[0x223DE0F80](v134, -1, -1);
    }

    v135 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
    v421 = v121;
    if (v135)
    {
      v420 = v119;
      v136 = v365;
      v137 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      MEMORY[0x223DDAE00](v137);
      v138 = *(v366 + 8);
      v139 = v127;
      v140 = v367;
      v138(v136, v367);
      (*(v397 + 16))(v382, v139, v126);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      v141 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v142 = v121;
      v143 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      LOBYTE(v139) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
      v138(v136, v140);
      if (v139)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
        type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
        *(swift_allocObject() + 16) = xmmword_2234CF920;
        v144 = v143;
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
        v138(v136, v140);
        dispatch thunk of Experience.associatedEntities.setter();

        v123 = v400;
      }

      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v145 = v372;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v146 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v147 = v143;
      MEMORY[0x223DDF820]();
      v119 = v420;
      v121 = v421;
      v124 = v396;
      v126 = v398;
      v97 = v394;
      v127 = v395;
      if (*((v424 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v424 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v148 = MEMORY[0x223DDB9D0]();
    MEMORY[0x28223BE20](v148);
    *v324 = a3;
    v324[1] = v127;
    v325 = v123;
    v326 = v121;
    v149 = specialized Sequence.compactMap<A>(_:)(closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, &v322, v148);

    v150 = v393;
    v151 = specialized Array.append<A>(contentsOf:)(v149);
    v152 = *(MEMORY[0x223DDB9C0](v151) + 16);

    if (v152)
    {
      v153 = v126;
      v154 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
      v155 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
      MEMORY[0x223DDB9C0]();
      (*(v397 + 16))(v382, v127, v153);
      v156 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      MEMORY[0x28223BE20](v156);
      v322 = v150;
      LOBYTE(v323) = v154 & 1;
      v324[0] = v375;
      LOBYTE(v325) = v155 & 1;
      v326 = v422;
      v157 = objc_allocWithZone(v119);
      PommesRenderOptions.init(_:)();

      v158 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v159 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v160 = v372;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v161 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v161 - 8) + 56))(v160, 0, 1, v161);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v162 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
      if (v162)
      {
        v163 = v363;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
        v164 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
        (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
        v162 = dispatch thunk of GenericExperience.sageExperience.setter();
      }

      MEMORY[0x223DDF820](v162);
      v165 = v421;
      v166 = v396;
      v167 = v394;
      v126 = v398;
      if (*((v424 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v424 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v167 + 8))(v390, v166);
      v150 = v393;
    }

    else
    {
      (*(v97 + 8))(v390, v124);
    }

    v125 = v424;
    (*(v385 + 8))(v150, v386);
    goto LABEL_87;
  }

  v168 = v130;
  v169 = *MEMORY[0x277D38D78];

  if (v168 != v169)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v188 = type metadata accessor for Logger();
    __swift_project_value_buffer(v188, static Logger.pommes);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&dword_2232BB000, v189, v190, "unexpected experience component", v191, 2u);
      v192 = v191;
      v129 = v387;
      MEMORY[0x223DE0F80](v192, -1, -1);
    }

    v193 = *(v97 + 8);
    v193(v390, v124);
    v193(v129, v124);

    goto LABEL_86;
  }

  v421 = v121;
  (*(v97 + 96))(v129, v124);
  v170 = v381;
  (*(v383 + 32))(v381, v129, v384);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v171 = type metadata accessor for Logger();
  v422 = __swift_project_value_buffer(v171, static Logger.pommes);
  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.debug.getter();
  v174 = os_log_type_enabled(v172, v173);
  v175 = v368;
  if (v174)
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&dword_2232BB000, v172, v173, "Adding a client driven experience", v176, 2u);
    MEMORY[0x223DE0F80](v176, -1, -1);
  }

  v177 = MEMORY[0x223DDB8B0]();
  v178 = v378;
  if (!*(v177 + 16))
  {

    goto LABEL_67;
  }

  v179 = v370;
  v180 = v362;
  v181 = v371;
  (*(v370 + 16))(v362, v177 + ((*(v179 + 80) + 32) & ~*(v179 + 80)), v371);

  v182 = v361;
  Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
  (*(v179 + 8))(v180, v181);
  v183 = v377;
  v184 = v182;
  v185 = v376;
  (*(v377 + 32))(v178, v184, v376);
  Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
  v186 = v373;
  v187 = v374;
  if ((*(v373 + 48))(v175, 1, v374) == 1)
  {
    (*(v183 + 8))(v178, v185);
    outlined destroy of MediaUserStateCenter?(v175, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
LABEL_67:
    v194 = v383;
    v195 = v364;
    v196 = v384;
    v419 = *(v383 + 16);
    (v419)(v364, v170, v384);
    v197 = Logger.logObject.getter();
    v198 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v197, v198))
    {
      v199 = swift_slowAlloc();
      *v199 = 67109120;
      v200 = MEMORY[0x223DDB8B0]();
      if (*(v200 + 16))
      {
        v201 = v370;
        v202 = v351;
        v203 = v371;
        (*(v370 + 16))(v351, v200 + ((*(v201 + 80) + 32) & ~*(v201 + 80)), v371);

        v204 = v357;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        v205 = v203;
        v206 = v364;
        (*(v201 + 8))(v202, v205);
        v207 = 0;
        v208 = 1;
        v209 = v377;
      }

      else
      {
        v206 = v195;

        v208 = 0;
        v207 = 1;
        v209 = v377;
        v204 = v357;
      }

      (*(v209 + 56))(v204, v207, 1, v376);
      outlined destroy of MediaUserStateCenter?(v204, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v235 = v206;
      v196 = v384;
      v420 = *(v383 + 8);
      (v420)(v235, v384);
      *(v199 + 4) = v208;
      _os_log_impl(&dword_2232BB000, v197, v198, "Has clientComponent? %{BOOL}d", v199, 8u);
      MEMORY[0x223DE0F80](v199, -1, -1);
      v170 = v381;
    }

    else
    {
      v420 = *(v194 + 8);
      (v420)(v195, v196);
    }

    v236 = v369;
    (v419)(v369, v170, v196);
    v237 = Logger.logObject.getter();
    v238 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v237, v238))
    {
      LODWORD(v422) = v238;
      v239 = swift_slowAlloc();
      *v239 = 67109120;
      v240 = MEMORY[0x223DDB8B0]();
      if (*(v240 + 16))
      {
        v241 = v370;
        v242 = v353;
        v243 = v371;
        (*(v370 + 16))(v353, v240 + ((*(v241 + 80) + 32) & ~*(v241 + 80)), v371);

        v244 = v352;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v241 + 8))(v242, v243);
        v245 = v358;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        (*(v377 + 8))(v244, v376);
        v246 = (*(v373 + 48))(v245, 1, v374) != 1;
      }

      else
      {

        v245 = v358;
        (*(v373 + 56))(v358, 1, 1, v374);
        v246 = 0;
      }

      v126 = v398;
      v127 = v395;
      outlined destroy of MediaUserStateCenter?(v245, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v196 = v384;
      v247 = v420;
      (v420)(v369, v384);
      *(v239 + 4) = v246;
      _os_log_impl(&dword_2232BB000, v237, v422, "Has domainComponent? %{BOOL}d", v239, 8u);
      MEMORY[0x223DE0F80](v239, -1, -1);
    }

    else
    {
      v247 = v420;
      (v420)(v236, v196);
      v126 = v398;
      v127 = v395;
    }

    v247(v381, v196);
    (*(v97 + 8))(v390, v124);
LABEL_86:
    v125 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v210 = v360;
  (*(v186 + 32))(v360, v175, v187);
  v211 = v356;
  (*(v186 + 16))(v356, v210, v187);
  v212 = (*(v186 + 88))(v211, v187);
  if (v212 == *MEMORY[0x277D39A50])
  {
    (*(v186 + 96))(v211, v187);
    (*(v354 + 32))(v359, v211, v355);
    v91 = v377;
    v99 = v345;
    (*(v377 + 16))(v345, v378, v185);
    v94 = Logger.logObject.getter();
    v98 = v185;
    v213 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v94, v213))
    {
      goto LABEL_90;
    }

    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v423 = v215;
    *v214 = 136315138;
    v216 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v217 = v98;
    v219 = v218;
    v220 = *(v91 + 8);
    v420 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v422 = v220;
    (v220)(v99, v217);
    v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v219, &v423);

    *(v214 + 4) = v221;
    _os_log_impl(&dword_2232BB000, v94, v213, "Adding AudioExperience with identifier %s to PommesResponse", v214, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v215);
    MEMORY[0x223DE0F80](v215, -1, -1);
    MEMORY[0x223DE0F80](v214, -1, -1);

LABEL_91:
    v253 = v375;
    type metadata accessor for AudioExperience();
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v254 = v354;
    v255 = v355;
    (*(v354 + 16))(v346, v359, v355);
    (*(v397 + 16))(v382, v395, v398);
    outlined init with copy of ClientExperienceSignals?(v253, v347);
    v256 = v421;
    v257 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_2234D0FE0;
    *(v125 + 32) = v257;

    (*(v254 + 8))(v359, v255);
    goto LABEL_108;
  }

  if (v212 == *MEMORY[0x277D39A58])
  {
    (*(v186 + 96))(v211, v187);
    (*(v349 + 32))(v348, v211, v350);
    v222 = v377;
    v223 = v340;
    (*(v377 + 16))(v340, v378, v185);
    v224 = Logger.logObject.getter();
    v225 = v185;
    v226 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v224, v226))
    {
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v423 = v228;
      *v227 = 136315138;
      v229 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v230 = v223;
      v232 = v231;
      v233 = *(v222 + 8);
      v420 = (v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v233;
      (v233)(v230, v225);
      v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v232, &v423);

      *(v227 + 4) = v234;
      _os_log_impl(&dword_2232BB000, v224, v226, "Adding VideoExperience with identifier %s to PommesResponse", v227, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v228);
      MEMORY[0x223DE0F80](v228, -1, -1);
      MEMORY[0x223DE0F80](v227, -1, -1);
    }

    else
    {

      v271 = *(v222 + 8);
      v420 = (v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v271;
      (v271)(v223, v225);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v272 = v349;
    v273 = v348;
    v274 = v350;
    (*(v349 + 16))(v344, v348, v350);
    (*(v397 + 16))(v382, v395, v398);
    objc_allocWithZone(type metadata accessor for VideoExperience());
    v275 = v421;
    v276 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
LABEL_107:
    v308 = v276;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_2234D0FE0;
    *(v125 + 32) = v308;

    (*(v272 + 8))(v273, v274);
LABEL_108:
    (*(v373 + 8))(v360, v374);
    (v422)(v378, v376);
    v127 = v395;
    v126 = v398;
    (*(v383 + 8))(v381, v384);
    (*(v97 + 8))(v390, v396);
    goto LABEL_87;
  }

  if (v212 == *MEMORY[0x277D39A40])
  {
    (*(v186 + 96))(v211, v187);
    (*(v342 + 32))(v341, v211, v343);
    v258 = v377;
    v259 = v338;
    (*(v377 + 16))(v338, v378, v185);
    v260 = Logger.logObject.getter();
    v261 = v185;
    v262 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v260, v262))
    {
      v263 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      v423 = v264;
      *v263 = 136315138;
      v265 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v266 = v259;
      v268 = v267;
      v269 = *(v258 + 8);
      v420 = (v258 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v269;
      (v269)(v266, v261);
      v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v268, &v423);

      *(v263 + 4) = v270;
      _os_log_impl(&dword_2232BB000, v260, v262, "Adding GeoExperience with identifier %s to PommesResponse", v263, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v264);
      MEMORY[0x223DE0F80](v264, -1, -1);
      MEMORY[0x223DE0F80](v263, -1, -1);
    }

    else
    {

      v290 = *(v258 + 8);
      v420 = (v258 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v290;
      (v290)(v259, v261);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v272 = v342;
    v273 = v341;
    v274 = v343;
    (*(v342 + 16))(v339, v341, v343);
    (*(v397 + 16))(v382, v395, v398);
    objc_allocWithZone(type metadata accessor for GeoExperience());
    v275 = v421;
    v276 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_107;
  }

  if (v212 == *MEMORY[0x277D39A48])
  {
    (*(v186 + 96))(v211, v187);
    (*(v336 + 32))(v335, v211, v337);
    v277 = v377;
    v278 = v330;
    (*(v377 + 16))(v330, v378, v185);
    v279 = Logger.logObject.getter();
    v280 = v185;
    v281 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v279, v281))
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v423 = v283;
      *v282 = 136315138;
      v284 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v285 = v278;
      v287 = v286;
      v288 = *(v277 + 8);
      v420 = (v277 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v288;
      (v288)(v285, v280);
      v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v287, &v423);

      *(v282 + 4) = v289;
      _os_log_impl(&dword_2232BB000, v279, v281, "Adding AppsExperience with identfier %s to PommesResponse", v282, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v283);
      MEMORY[0x223DE0F80](v283, -1, -1);
      MEMORY[0x223DE0F80](v282, -1, -1);
    }

    else
    {

      v307 = *(v277 + 8);
      v420 = (v277 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v307;
      (v307)(v278, v280);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v272 = v336;
    v273 = v335;
    v274 = v337;
    (*(v336 + 16))(v331, v335, v337);
    (*(v397 + 16))(v382, v395, v398);
    objc_allocWithZone(type metadata accessor for AppLaunchExperience());
    v275 = v421;
    v276 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_107;
  }

  if (v212 == *MEMORY[0x277D39A38])
  {
    (*(v186 + 96))(v211, v187);
    v291 = v334;
    (*(v333 + 32))(v332, v211, v334);
    v292 = v377;
    v293 = v328;
    (*(v377 + 16))(v328, v378, v185);
    v294 = Logger.logObject.getter();
    v295 = v185;
    v296 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v294, v296))
    {
      v297 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      v423 = v298;
      *v297 = 136315138;
      v299 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v300 = v293;
      v302 = v301;
      v303 = *(v292 + 8);
      v420 = (v292 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v303;
      (v303)(v300, v376);
      v304 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v299, v302, &v423);
      v305 = v334;

      *(v297 + 4) = v304;
      _os_log_impl(&dword_2232BB000, v294, v296, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v297, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v298);
      MEMORY[0x223DE0F80](v298, -1, -1);
      v306 = v297;
      v291 = v305;
      MEMORY[0x223DE0F80](v306, -1, -1);
    }

    else
    {

      v315 = *(v292 + 8);
      v420 = (v292 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v422 = v315;
      (v315)(v293, v295);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v316 = v333;
    v317 = v332;
    (*(v333 + 16))(v329, v332, v291);
    v318 = v395;
    v319 = v398;
    (*(v397 + 16))(v382, v395, v398);
    v320 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
    v321 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_2234D0FE0;
    *(v125 + 32) = v321;

    (*(v316 + 8))(v317, v334);
    (*(v373 + 8))(v360, v374);
    (v422)(v378, v376);
    v127 = v318;
    v126 = v319;
    (*(v383 + 8))(v381, v384);
    (*(v97 + 8))(v390, v124);
    goto LABEL_87;
  }

  v309 = Logger.logObject.getter();
  v310 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v309, v310))
  {
    v311 = swift_slowAlloc();
    *v311 = 0;
    _os_log_impl(&dword_2232BB000, v309, v310, "Unexpected DomainComponent encountered when building Client Driven experience", v311, 2u);
    v312 = v311;
    v186 = v373;
    MEMORY[0x223DE0F80](v312, -1, -1);
  }

  v313 = *(v186 + 8);
  v314 = v374;
  v313(v360, v374);
  (*(v377 + 8))(v378, v185);
  (*(v383 + 8))(v381, v384);
  (*(v97 + 8))(v390, v124);
  v313(v211, v314);

  v125 = MEMORY[0x277D84F90];
  v248 = v392;
  v249 = v391;
  v250 = v389;
  v126 = v398;
LABEL_88:
  (*(v397 + 8))(v127, v126);
  (*(v249 + 8))(v250, v248);
  return v125;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(double *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v377 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v409 = &v330 - v9;
  v410 = type metadata accessor for PommesRenderOptions.PromptType();
  v408 = *(v410 - 8);
  MEMORY[0x28223BE20](v410);
  v421 = &v330 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v349 = &v330 - v12;
  v351 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v350 = *(v351 - 8);
  v13 = MEMORY[0x28223BE20](v351);
  v344 = &v330 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v355 = &v330 - v15;
  v335 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v334 = *(v335 - 8);
  v16 = MEMORY[0x28223BE20](v335);
  v331 = &v330 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v336 = &v330 - v18;
  v341 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v337 = *(v341 - 8);
  v19 = MEMORY[0x28223BE20](v341);
  v333 = &v330 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v340 = &v330 - v21;
  v346 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v343 = *(v346 - 8);
  v22 = MEMORY[0x28223BE20](v346);
  v339 = &v330 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v345 = &v330 - v24;
  v357 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v356 = *(v357 - 8);
  v25 = MEMORY[0x28223BE20](v357);
  v348 = &v330 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v361 = &v330 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v359 = &v330 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v360 = &v330 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v370 = &v330 - v33;
  v375 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v374 = *(v375 - 8);
  v34 = MEMORY[0x28223BE20](v375);
  v358 = &v330 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v362 = &v330 - v36;
  v372 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v371 = *(v372 - 8);
  v37 = MEMORY[0x28223BE20](v372);
  v354 = &v330 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v352 = &v330 - v40;
  MEMORY[0x28223BE20](v39);
  v364 = &v330 - v41;
  v379 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v378 = *(v379 - 8);
  v42 = MEMORY[0x28223BE20](v379);
  v342 = &v330 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v330 = &v330 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v332 = &v330 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v338 = &v330 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v347 = &v330 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v353 = &v330 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v363 = &v330 - v55;
  MEMORY[0x28223BE20](v54);
  v376 = &v330 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x28223BE20](v57 - 8);
  v365 = &v330 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x28223BE20](v59 - 8);
  v373 = &v330 - v60;
  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v61 - 8);
  v381 = &v330 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v386 = *(v369 - 8);
  MEMORY[0x28223BE20](v369);
  v368 = &v330 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v384 = *(v385 - 8);
  v64 = MEMORY[0x28223BE20](v385);
  v367 = &v330 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v366 = &v330 - v67;
  MEMORY[0x28223BE20](v66);
  v382 = &v330 - v68;
  v389 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v388 = *(v389 - 8);
  MEMORY[0x28223BE20](v389);
  v390 = &v330 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v70 - 8);
  v391 = &v330 - v71;
  v401 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v396 = *(v401 - 8);
  v72 = MEMORY[0x28223BE20](v401);
  v387 = &v330 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v393 = &v330 - v74;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v422 = *(v75 - 8);
  v76 = MEMORY[0x28223BE20](v75);
  v423 = &v330 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v407 = (&v330 - v78);
  v424 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  isa = v424[-1].isa;
  MEMORY[0x28223BE20](v424);
  v80 = &v330 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = type metadata accessor for Date();
  v81 = *(v420 - 8);
  MEMORY[0x28223BE20](v420);
  v83 = &v330 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v398 = v84[-1].isa;
  v85 = MEMORY[0x28223BE20](v84);
  v383 = &v330 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v88 = &v330 - v87;
  v395 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v394 = *(v395 - 8);
  MEMORY[0x28223BE20](v395);
  v90 = (&v330 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v427 = a5;
  v402 = a1;
  v91 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v91 = swift_once();
  }

  v418 = &v330;
  v92 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v91);
  v328 = &v427;
  v329 = v90;
  v392 = v90;
  Date.init()();
  v93 = *(*v92 + 200);
  v397 = v84;
  v328 = &v326;
  v329 = v84;
  LOBYTE(v326) = 2;
  v399 = v88;
  v93(0xD00000000000001ELL, 0x80000002234DF280, 0, v83, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v326, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v380 = 0;
  (*(v81 + 8))(v83, v420);
  v94 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v95 = MEMORY[0x223DDAFD0](v94);
  (*(isa + 8))(v80, v424);
  v420 = *(v95 + 16);
  if (v420)
  {
    v96 = 0;
    isa = v95 + ((*(v422 + 80) + 32) & ~*(v422 + 80));
    v417 = v422 + 88;
    v418 = (v422 + 16);
    v416 = *MEMORY[0x277D397A8];
    v406 = *MEMORY[0x277D39798];
    v404 = *MEMORY[0x277D397A0];
    v415 = (v422 + 8);
    v414 = (v408 + 56);
    v400 = *MEMORY[0x277D566C0];
    v411 = (v408 + 104);
    v403 = *MEMORY[0x277D566B8];
    v405 = *MEMORY[0x277D566C8];
    v413 = (v408 + 48);
    v424 = MEMORY[0x277D84F90];
    v412 = (v408 + 32);
    v97 = v409;
    v98 = v410;
    v99 = v407;
    v100 = v422;
    while (1)
    {
      if (v96 >= *(v95 + 16))
      {
        __break(1u);
LABEL_89:

        v251 = v99[1].isa;
        v422 = &v99[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v424 = v251;
        (v251)(v97, v96);
        v225 = v399;
        goto LABEL_90;
      }

      v101 = *(v100 + 16);
      v101(v99, isa + *(v100 + 72) * v96, v75);
      v84 = v99;
      v102 = v423;
      v101(v423, v84, v75);
      v103 = (*(v100 + 88))(v102, v75);
      if (v103 == v416)
      {
        (*v415)(v84, v75);
        (*v411)(v97, v405, v98);
        (*v414)(v97, 0, 1, v98);
        v99 = v84;
      }

      else
      {
        if (v103 == v406)
        {
          v99 = v407;
          (*v415)(v407, v75);
          (*v411)(v97, v403, v98);
        }

        else
        {
          v99 = v407;
          if (v103 != v404)
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for Logger();
            __swift_project_value_buffer(v104, static Logger.pommes);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_2232BB000, v105, v106, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v107, 2u);
              v108 = v107;
              v97 = v409;
              MEMORY[0x223DE0F80](v108, -1, -1);
            }

            v109 = *v415;
            (*v415)(v99, v75);
            v98 = v410;
            (*v414)(v97, 1, 1, v410);
            v109(v423, v75);
            goto LABEL_20;
          }

          (*v415)(v407, v75);
          (*v411)(v97, v400, v98);
        }

        (*v414)(v97, 0, 1, v98);
      }

LABEL_20:
      if ((*v413)(v97, 1, v98) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v97, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v110 = v98;
        v111 = *v412;
        (*v412)(v421, v97, v110);
        v112 = v424;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112[2].isa + 1, 1, v112);
        }

        v114 = v112[2].isa;
        v113 = v112[3].isa;
        v424 = v112;
        if (v114 >= v113 >> 1)
        {
          v424 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v424);
        }

        v115 = v424;
        v424[2].isa = (v114 + 1);
        v116 = v410;
        v111(v115 + ((*(v408 + 80) + 32) & ~*(v408 + 80)) + *(v408 + 72) * v114, v421, v410);
        v98 = v116;
        v97 = v409;
      }

      if (v420 == ++v96)
      {
        goto LABEL_27;
      }
    }
  }

  v424 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v117);
  v328 = v424;
  v118 = type metadata accessor for PommesRenderOptions();
  v119 = objc_allocWithZone(v118);
  v120 = PommesRenderOptions.init(_:)();
  v426 = MEMORY[0x277D84F90];
  v121 = v391;
  v122 = v402;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v100 = v396;
  if ((*(v396 + 48))(v121, 1, v401) != 1)
  {
    v126 = v393;
    v127 = v121;
    v128 = v401;
    (*(v100 + 32))(v393, v127, v401);
    v129 = v387;
    (*(v100 + 16))(v387, v126, v128);
    v130 = (*(v100 + 88))(v129, v128);
    v124 = v397;
    v125 = v399;
    if (v130 == *MEMORY[0x277D38D80])
    {
      (*(v100 + 96))(v129, v401);
      v131 = v390;
      (*(v388 + 32))(v390, v129, v389);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v132 = type metadata accessor for Logger();
      __swift_project_value_buffer(v132, static Logger.pommes);
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_2232BB000, v133, v134, "Adding a server driven experience", v135, 2u);
        MEMORY[0x223DE0F80](v135, -1, -1);
      }

      v136 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
      v137 = v386;
      v423 = v120;
      if (v136)
      {
        v422 = v118;
        v138 = v122;
        v139 = v368;
        v140 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        v421 = MEMORY[0x223DDAE00](v140);
        v141 = v125;
        v142 = *(v137 + 8);
        v386 = v137 + 8;
        v143 = v369;
        v142(v139, v369);
        (*(v398 + 2))(v383, v141, v124);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
        v144 = objc_allocWithZone(type metadata accessor for GenericExperience());
        v145 = v120;
        v146 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        LOBYTE(v141) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
        v421 = v142;
        v142(v139, v143);
        if (v141)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
          type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
          *(swift_allocObject() + 16) = xmmword_2234CF920;
          v147 = v146;
          v148 = v146;
          Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
          v131 = v390;
          Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
          (v421)(v139, v143);
          dispatch thunk of Experience.associatedEntities.setter();

          v146 = v147;
          v138 = v402;
        }

        v122 = v138;
        if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
        {
          v149 = v373;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
          v150 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
          (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
          dispatch thunk of GenericExperience.serverSuggestions.setter();
        }

        v151 = v146;
        MEMORY[0x223DDF820]();
        v125 = v399;
        v100 = v396;
        v118 = v422;
        v120 = v423;
        if (*((v426 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v426 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v152 = MEMORY[0x223DDB9D0]();
      MEMORY[0x28223BE20](v152);
      v326 = *&a3;
      v327 = v125;
      v328 = v122;
      v329 = v120;
      v153 = specialized Sequence.compactMap<A>(_:)(closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, &v324, v152);

      v154 = specialized Array.append<A>(contentsOf:)(v153);
      v155 = *(MEMORY[0x223DDB9C0](v154) + 16);

      if (v155)
      {
        v156 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
        v157 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
        MEMORY[0x223DDB9C0]();
        (*(v398 + 2))(v383, v125, v124);
        v158 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
        MEMORY[0x28223BE20](v158);
        v324 = v131;
        LOBYTE(v325) = v156 & 1;
        v326 = v377;
        v327 = &v427;
        LOBYTE(v328) = v157 & 1;
        v329 = v424;
        v159 = objc_allocWithZone(v118);
        PommesRenderOptions.init(_:)();

        v160 = objc_allocWithZone(type metadata accessor for GenericExperience());
        v161 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
        dispatch thunk of Experience.associatedEntities.setter();
        if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
        {
          v162 = v373;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
          v163 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
          (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
          dispatch thunk of GenericExperience.serverSuggestions.setter();
        }

        v164 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
        if (v164)
        {
          v165 = v365;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
          v166 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
          (*(*(v166 - 8) + 56))(v165, 0, 1, v166);
          v164 = dispatch thunk of GenericExperience.sageExperience.setter();
        }

        MEMORY[0x223DDF820](v164);
        v125 = v399;
        v131 = v390;
        v167 = v396;
        v124 = v397;
        v168 = v423;
        if (*((v426 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v426 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*(v167 + 8))(v393, v401);
      }

      else
      {
        (*(v100 + 8))(v393, v401);
      }

      v123 = v426;
      (*(v388 + 8))(v131, v389);
      goto LABEL_66;
    }

    v169 = v130;
    v170 = *MEMORY[0x277D38D78];

    if (v169 != v170)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v187 = type metadata accessor for Logger();
      __swift_project_value_buffer(v187, static Logger.pommes);
      v188 = Logger.logObject.getter();
      v189 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        *v190 = 0;
        _os_log_impl(&dword_2232BB000, v188, v189, "unexpected experience component", v190, 2u);
        MEMORY[0x223DE0F80](v190, -1, -1);
      }

      v191 = *(v100 + 8);
      v192 = v401;
      v191(v393, v401);
      v191(v129, v192);

      v123 = MEMORY[0x277D84F90];
      goto LABEL_66;
    }

    (*(v100 + 96))(v129, v401);
    v171 = v382;
    (*(v384 + 32))(v382, v129, v385);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v172 = type metadata accessor for Logger();
    v424 = __swift_project_value_buffer(v172, static Logger.pommes);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.debug.getter();
    v175 = os_log_type_enabled(v173, v174);
    v99 = v378;
    v176 = v370;
    if (v175)
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_2232BB000, v173, v174, "Adding a client driven experience", v177, 2u);
      MEMORY[0x223DE0F80](v177, -1, -1);
    }

    v423 = v120;

    v178 = MEMORY[0x223DDB8B0]();
    v179 = v379;
    if (!*(v178 + 16))
    {

      goto LABEL_69;
    }

    v180 = v371;
    v181 = v364;
    v182 = v372;
    (*(v371 + 16))(v364, v178 + ((*(v180 + 80) + 32) & ~*(v180 + 80)), v372);

    v183 = v363;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v180 + 8))(v181, v182);
    v184 = v376;
    (v99[4].isa)(v376, v183, v179);
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
    v185 = v374;
    v186 = v375;
    if ((*(v374 + 48))(v176, 1, v375) == 1)
    {
      (v99[1].isa)(v184, v179);
      outlined destroy of MediaUserStateCenter?(v176, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
LABEL_69:
      v197 = v384;
      v198 = *(v384 + 16);
      v199 = v366;
      v200 = v385;
      v198(v366, v171, v385);
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v201, v202))
      {
        LODWORD(v421) = v202;
        v422 = v198;
        v203 = swift_slowAlloc();
        *v203 = 67109120;
        v204 = MEMORY[0x223DDB8B0]();
        if (*(v204 + 16))
        {
          v205 = v371;
          v206 = v352;
          v207 = v372;
          (*(v371 + 16))(v352, v204 + ((*(v205 + 80) + 32) & ~*(v205 + 80)), v372);

          v208 = v359;
          Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
          v209 = v205;
          v199 = v366;
          (*(v209 + 8))(v206, v207);
          v210 = 0;
          v211 = 1;
        }

        else
        {

          v211 = 0;
          v210 = 1;
          v208 = v359;
        }

        (*(v378 + 56))(v208, v210, 1, v379);
        outlined destroy of MediaUserStateCenter?(v208, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        v212 = *(v197 + 8);
        v200 = v385;
        v212(v199, v385);
        *(v203 + 4) = v211;
        _os_log_impl(&dword_2232BB000, v201, v421, "Has clientComponent? %{BOOL}d", v203, 8u);
        MEMORY[0x223DE0F80](v203, -1, -1);
        v171 = v382;
        v198 = v422;
      }

      else
      {
        v212 = *(v197 + 8);
        v212(v199, v200);
      }

      v239 = v367;
      v198(v367, v171, v200);
      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 67109120;
        v243 = MEMORY[0x223DDB8B0]();
        if (*(v243 + 16))
        {
          v244 = v371;
          v245 = v354;
          v246 = v372;
          (*(v371 + 16))(v354, v243 + ((*(v244 + 80) + 32) & ~*(v244 + 80)), v372);

          v247 = v353;
          Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
          (*(v244 + 8))(v245, v246);
          v248 = v360;
          Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
          v239 = v367;
          (*(v378 + 8))(v247, v379);
          v249 = (*(v374 + 48))(v248, 1, v375) != 1;
        }

        else
        {

          v248 = v360;
          (*(v374 + 56))(v360, 1, 1, v375);
          v249 = 0;
        }

        v124 = v397;
        outlined destroy of MediaUserStateCenter?(v248, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        v250 = v385;
        v212(v239, v385);
        *(v242 + 4) = v249;
        v200 = v250;
        _os_log_impl(&dword_2232BB000, v240, v241, "Has domainComponent? %{BOOL}d", v242, 8u);
        MEMORY[0x223DE0F80](v242, -1, -1);
      }

      else
      {
        v212(v239, v200);
        v124 = v397;
      }

      v212(v382, v200);
      (*(v100 + 8))(v393, v401);
      v123 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v213 = v362;
    (*(v185 + 32))(v362, v176, v186);
    v214 = v358;
    (*(v185 + 16))(v358, v213, v186);
    v215 = (*(v185 + 88))(v214, v186);
    if (v215 == *MEMORY[0x277D39A50])
    {
      (*(v185 + 96))(v214, v186);
      (*(v356 + 32))(v361, v214, v357);
      v97 = v347;
      (v99[2].isa)(v347, v376, v179);
      v84 = Logger.logObject.getter();
      v96 = v179;
      v216 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v84, v216))
      {
        goto LABEL_89;
      }

      v217 = swift_slowAlloc();
      v218 = v99;
      v219 = swift_slowAlloc();
      v425 = v219;
      *v217 = 136315138;
      v220 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v222 = v221;
      v223 = v218[1].isa;
      v422 = &v218[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v424 = v223;
      (v223)(v97, v96);
      v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v222, &v425);
      v225 = v399;

      *(v217 + 4) = v224;
      _os_log_impl(&dword_2232BB000, v84, v216, "Adding AudioExperience with identifier %s to PommesResponse", v217, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v219);
      MEMORY[0x223DE0F80](v219, -1, -1);
      MEMORY[0x223DE0F80](v217, -1, -1);

LABEL_90:
      v421 = type metadata accessor for AudioExperience();
      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v252 = v356;
      v253 = v357;
      (*(v356 + 16))(v348, v361, v357);
      (*(v398 + 2))(v383, v225, v397);
      outlined init with copy of ClientExperienceSignals?(v377, v349);
      v254 = v423;
      v125 = v225;
      v255 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_2234D0FE0;
      *(v123 + 32) = v255;

      (*(v252 + 8))(v361, v253);
      (*(v374 + 8))(v362, v375);
      (v424)(v376, v379);
      v124 = v397;
      (*(v384 + 8))(v382, v385);
      (*(v100 + 8))(v393, v401);
      goto LABEL_66;
    }

    if (v215 == *MEMORY[0x277D39A58])
    {
      (*(v185 + 96))(v214, v186);
      (*(v350 + 32))(v355, v214, v351);
      v226 = v342;
      (v99[2].isa)(v342, v376, v179);
      v227 = Logger.logObject.getter();
      v228 = v179;
      v229 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v227, v229))
      {
        v230 = swift_slowAlloc();
        v231 = v99;
        v232 = swift_slowAlloc();
        v425 = v232;
        *v230 = 136315138;
        v233 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v235 = v234;
        v236 = v231[1].isa;
        v424 = (&v231[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v422 = v236;
        v236(v226, v228);
        v237 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v235, &v425);
        v238 = v399;

        *(v230 + 4) = v237;
        _os_log_impl(&dword_2232BB000, v227, v229, "Adding VideoExperience with identifier %s to PommesResponse", v230, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v232);
        MEMORY[0x223DE0F80](v232, -1, -1);
        MEMORY[0x223DE0F80](v230, -1, -1);
      }

      else
      {

        v267 = v99[1].isa;
        v424 = (&v99[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v422 = v267;
        v267(v226, v228);
        v238 = v399;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v268 = v350;
      v269 = v351;
      (*(v350 + 16))(v344, v355, v351);
      v270 = v238;
      v124 = v397;
      (*(v398 + 2))(v383, v270, v397);
      v271 = objc_allocWithZone(type metadata accessor for VideoExperience());
      v272 = v423;
      v273 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_2234D0FE0;
      *(v123 + 32) = v273;

      (*(v268 + 8))(v355, v269);
      (*(v374 + 8))(v362, v375);
      (v422)(v376, v379);
      goto LABEL_107;
    }

    if (v215 == *MEMORY[0x277D39A40])
    {
      (*(v185 + 96))(v214, v186);
      (*(v343 + 32))(v345, v214, v346);
      v256 = v338;
      (v99[2].isa)(v338, v376, v179);
      v257 = Logger.logObject.getter();
      v258 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = v99;
        v261 = swift_slowAlloc();
        v425 = v261;
        *v259 = 136315138;
        v262 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v264 = v263;
        v424 = v260[1].isa;
        (v424)(v256, v379);
        v265 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v264, &v425);
        v266 = v399;

        *(v259 + 4) = v265;
        _os_log_impl(&dword_2232BB000, v257, v258, "Adding GeoExperience with identifier %s to PommesResponse", v259, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v261);
        MEMORY[0x223DE0F80](v261, -1, -1);
        MEMORY[0x223DE0F80](v259, -1, -1);
      }

      else
      {

        v424 = v99[1].isa;
        (v424)(v256, v379);
        v266 = v399;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v285 = v343;
      (*(v343 + 16))(v339, v345, v346);
      v286 = v266;
      v287 = v397;
      (*(v398 + 2))(v383, v286, v397);
      v288 = objc_allocWithZone(type metadata accessor for GeoExperience());
      v289 = v423;
      v290 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_2234D0FE0;
      *(v123 + 32) = v290;

      (*(v285 + 8))(v345, v346);
    }

    else
    {
      if (v215 != *MEMORY[0x277D39A48])
      {
        if (v215 != *MEMORY[0x277D39A38])
        {
          v311 = Logger.logObject.getter();
          v312 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v311, v312))
          {
            v313 = swift_slowAlloc();
            *v313 = 0;
            _os_log_impl(&dword_2232BB000, v311, v312, "Unexpected DomainComponent encountered when building Client Driven experience", v313, 2u);
            v314 = v313;
            v185 = v374;
            MEMORY[0x223DE0F80](v314, -1, -1);
          }

          v315 = *(v185 + 8);
          v316 = v375;
          v315(v362, v375);
          (v99[1].isa)(v376, v179);
          (*(v384 + 8))(v382, v385);
          (*(v100 + 8))(v393, v401);
          v315(v214, v316);

          v123 = MEMORY[0x277D84F90];
          v193 = v395;
          v194 = v394;
          v195 = v392;
          v124 = v397;
          goto LABEL_108;
        }

        (*(v185 + 96))(v214, v186);
        (*(v334 + 32))(v336, v214, v335);
        v291 = v330;
        v292 = v376;
        (v99[2].isa)(v330, v376, v179);
        v293 = Logger.logObject.getter();
        v294 = v179;
        v295 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v293, v295))
        {
          v296 = swift_slowAlloc();
          v297 = v99;
          v298 = swift_slowAlloc();
          v425 = v298;
          *v296 = 136315138;
          v299 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v301 = v300;
          v302 = v297[1].isa;
          v422 = &v297[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v424 = v302;
          (v302)(v291, v294);
          v303 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v299, v301, &v425);
          v304 = v399;

          *(v296 + 4) = v303;
          _os_log_impl(&dword_2232BB000, v293, v295, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v296, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v298);
          MEMORY[0x223DE0F80](v298, -1, -1);
          v305 = v296;
          v292 = v376;
          MEMORY[0x223DE0F80](v305, -1, -1);
        }

        else
        {

          v317 = v99[1].isa;
          v422 = &v99[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v424 = v317;
          (v317)(v291, v294);
          v304 = v399;
        }

        Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v318 = v334;
        v319 = v335;
        (*(v334 + 16))(v331, v336, v335);
        v320 = v304;
        v124 = v397;
        (*(v398 + 2))(v383, v320, v397);
        v321 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
        v322 = v292;
        v323 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
        dispatch thunk of Experience.associatedEntities.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_2234D0FE0;
        *(v123 + 32) = v323;

        (*(v318 + 8))(v336, v319);
        (*(v374 + 8))(v362, v375);
        (v424)(v322, v379);
LABEL_107:
        (*(v384 + 8))(v382, v385);
        (*(v100 + 8))(v393, v401);
        v193 = v395;
        v194 = v394;
        v195 = v392;
LABEL_108:
        v125 = v399;
        goto LABEL_67;
      }

      (*(v185 + 96))(v214, v186);
      (*(v337 + 32))(v340, v214, v341);
      v274 = v332;
      (v99[2].isa)(v332, v376, v179);
      v275 = Logger.logObject.getter();
      v276 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        v278 = v99;
        v279 = swift_slowAlloc();
        v425 = v279;
        *v277 = 136315138;
        v280 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v282 = v281;
        v424 = v278[1].isa;
        (v424)(v274, v379);
        v283 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v280, v282, &v425);
        v284 = v399;

        *(v277 + 4) = v283;
        _os_log_impl(&dword_2232BB000, v275, v276, "Adding AppsExperience with identfier %s to PommesResponse", v277, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v279);
        MEMORY[0x223DE0F80](v279, -1, -1);
        MEMORY[0x223DE0F80](v277, -1, -1);
      }

      else
      {

        v424 = v99[1].isa;
        (v424)(v274, v379);
        v284 = v399;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v306 = v337;
      (*(v337 + 16))(v333, v340, v341);
      v307 = v284;
      v287 = v397;
      (*(v398 + 2))(v383, v307, v397);
      v308 = objc_allocWithZone(type metadata accessor for AppLaunchExperience());
      v309 = v423;
      v310 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_2234D0FE0;
      *(v123 + 32) = v310;

      (*(v306 + 8))(v340, v341);
    }

    (*(v374 + 8))(v362, v375);
    (v424)(v376, v379);
    v124 = v287;
    goto LABEL_107;
  }

  outlined destroy of MediaUserStateCenter?(v121, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

  v123 = MEMORY[0x277D84F90];
  v124 = v397;
LABEL_29:
  v125 = v399;
LABEL_66:
  v193 = v395;
  v194 = v394;
  v195 = v392;
LABEL_67:
  (*(v398 + 1))(v125, v124);
  (*(v194 + 8))(v195, v193);
  return v123;
}

uint64_t ExperiencesResolver.extractExperiences(from:score:with:with:)(NSObject *a1, uint64_t a2, double a3, uint64_t a4, char *a5, char *a6)
{
  v411 = a6;
  v410 = a5;
  v392 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v374 = &v344 - v9;
  v365 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v364 = *(v365 - 8);
  v10 = MEMORY[0x28223BE20](v365);
  v359 = &v344 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v369 = &v344 - v12;
  v350 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v349 = *(v350 - 8);
  v13 = MEMORY[0x28223BE20](v350);
  v345 = &v344 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v348 = &v344 - v15;
  v352 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v351 = *(v352 - 8);
  v16 = MEMORY[0x28223BE20](v352);
  v347 = &v344 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v355 = &v344 - v18;
  v358 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v357 = *(v358 - 8);
  v19 = MEMORY[0x28223BE20](v358);
  v354 = &v344 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v360 = &v344 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v363 = &v344 - v23;
  v371 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v370 = *(v371 - 8);
  v24 = MEMORY[0x28223BE20](v371);
  v362 = &v344 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v375 = &v344 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v373 = &v344 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v379 = &v344 - v30;
  v391 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v390 = *(v391 - 8);
  v31 = MEMORY[0x28223BE20](v391);
  v372 = &v344 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v376 = &v344 - v33;
  v387 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v386 = *(v387 - 8);
  v34 = MEMORY[0x28223BE20](v387);
  v368 = &v344 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v366 = &v344 - v37;
  MEMORY[0x28223BE20](v36);
  v378 = &v344 - v38;
  v394 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v393 = *(v394 - 8);
  v39 = MEMORY[0x28223BE20](v394);
  v367 = &v344 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v356 = &v344 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v344 = &v344 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v346 = &v344 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v353 = &v344 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v361 = &v344 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v377 = &v344 - v52;
  MEMORY[0x28223BE20](v51);
  v389 = &v344 - v53;
  v399 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v400 = *(v399 - 8);
  v54 = MEMORY[0x28223BE20](v399);
  v382 = &v344 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v381 = &v344 - v57;
  MEMORY[0x28223BE20](v56);
  v397 = &v344 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x28223BE20](v59 - 8);
  v380 = &v344 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x28223BE20](v61 - 8);
  v388 = &v344 - v62;
  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v63 - 8);
  v396 = &v344 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v384 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v383 = &v344 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v401 = *(v402 - 8);
  MEMORY[0x28223BE20](v402);
  v409 = &v344 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v344 - v68;
  v70 = type metadata accessor for PommesRenderOptions.PromptType();
  v424 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v435 = &v344 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v72 - 8);
  v405 = &v344 - v73;
  v414 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v416 = *(v414 - 8);
  v74 = MEMORY[0x28223BE20](v414);
  v403 = &v344 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v404 = &v344 - v76;
  v77 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v436 = *(v77 - 8);
  v78 = MEMORY[0x28223BE20](v77);
  v439 = &v344 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v438 = &v344 - v80;
  v437 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  isa = v437[-1].isa;
  MEMORY[0x28223BE20](v437);
  v433 = (&v344 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for Date();
  v431 = *(v82 - 8);
  v432 = v82;
  MEMORY[0x28223BE20](v82);
  v84 = &v344 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v415 = *(v85 - 8);
  v86 = MEMORY[0x28223BE20](v85);
  v398 = &v344 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v89 = &v344 - v88;
  v408 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v407 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v91 = (&v344 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v419 = a1;
  v92 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v92 = swift_once();
  }

  v430 = &v344;
  v93 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v92);
  v340 = v410;
  v341 = v411;
  v342 = v412;
  v343 = v91;
  v406 = v91;
  Date.init()();
  v94 = *(*v93 + 200);
  v417 = v85;
  v342 = &v338;
  v343 = v85;
  LOBYTE(v340) = 2;
  v413 = v89;
  v94(0xD00000000000001ELL, 0x80000002234DF280, 0, v84, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v340, partial apply for closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v395 = 0;
  (v431[1].isa)(v84, v432);
  v95 = v433;
  v96 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v97 = MEMORY[0x223DDAFD0](v96);
  (*(isa + 1))(v95, v437);
  isa = *(v97 + 16);
  if (isa)
  {
    v98 = 0;
    v433 = (v97 + ((LOBYTE(v436[10].isa) + 32) & ~LOBYTE(v436[10].isa)));
    v431 = v436 + 11;
    v432 = v436 + 2;
    LODWORD(v430) = *MEMORY[0x277D397A8];
    v423 = *MEMORY[0x277D39798];
    v421 = *MEMORY[0x277D397A0];
    v428 = (v424 + 56);
    v429 = v436 + 1;
    v418 = *MEMORY[0x277D566C0];
    v425 = (v424 + 104);
    v420 = *MEMORY[0x277D566B8];
    v422 = *MEMORY[0x277D566C8];
    v427 = (v424 + 48);
    v437 = MEMORY[0x277D84F90];
    v426 = (v424 + 32);
    v99 = v438;
    while (1)
    {
      if (v98 >= *(v97 + 16))
      {
        __break(1u);
LABEL_88:

        v258 = *(v97 + 8);
        v437 = ((v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v438 = v258;
        (v258)(v99, v69);
        goto LABEL_89;
      }

      v95 = v97;
      v100 = v436;
      v101 = v436[2].isa;
      (v101)(v99, v433 + v436[9].isa * v98, v77);
      v102 = v99;
      v103 = v439;
      (v101)(v439, v102, v77);
      v104 = (v100[11].isa)(v103, v77);
      if (v104 == v430)
      {
        (v429->isa)(v102, v77);
        (*v425)(v69, v422, v70);
        (*v428)(v69, 0, 1, v70);
        v99 = v102;
      }

      else
      {
        if (v104 != v423)
        {
          v99 = v438;
          v97 = v95;
          if (v104 == v421)
          {
            (v429->isa)(v438, v77);
            (*v425)(v69, v418, v70);
            (*v428)(v69, 0, 1, v70);
          }

          else
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v109 = type metadata accessor for Logger();
            __swift_project_value_buffer(v109, static Logger.pommes);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&dword_2232BB000, v110, v111, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v112, 2u);
              v113 = v112;
              v99 = v438;
              MEMORY[0x223DE0F80](v113, -1, -1);
            }

            v95 = v429;
            v114 = v429->isa;
            (v429->isa)(v99, v77);
            (*v428)(v69, 1, 1, v70);
            v114(v439, v77);
          }

          goto LABEL_13;
        }

        v99 = v438;
        (v429->isa)(v438, v77);
        (*v425)(v69, v420, v70);
        (*v428)(v69, 0, 1, v70);
      }

      v97 = v95;
LABEL_13:
      if ((*v427)(v69, 1, v70) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v69, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v105 = *v426;
        (*v426)(v435, v69, v70);
        v95 = v437;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95[2].isa + 1, 1, v95);
        }

        v107 = v95[2].isa;
        v106 = v95[3].isa;
        v108 = v95;
        if (v107 >= v106 >> 1)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v95);
        }

        v437 = v108;
        v108[2].isa = (v107 + 1);
        v105(v108 + ((*(v424 + 80) + 32) & ~*(v424 + 80)) + *(v424 + 72) * v107, v435, v70);
        v99 = v438;
      }

      if (isa == ++v98)
      {
        goto LABEL_27;
      }
    }
  }

  v437 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v115);
  v342 = v437;
  v116 = type metadata accessor for PommesRenderOptions();
  v117 = objc_allocWithZone(v116);
  v118 = PommesRenderOptions.init(_:)();
  v441 = MEMORY[0x277D84F90];
  v119 = v405;
  v120 = v419;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v121 = v416;
  v122 = v414;
  if ((*(v416 + 48))(v119, 1, v414) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v119, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v123 = MEMORY[0x277D84F90];
    v124 = v417;
    v125 = v413;
    goto LABEL_86;
  }

  v126 = v404;
  (*(v121 + 32))(v404, v119, v122);
  v127 = v403;
  (*(v121 + 16))(v403, v126, v122);
  v128 = (*(v121 + 88))(v127, v122);
  v124 = v417;
  v125 = v413;
  if (v128 != *MEMORY[0x277D38D80])
  {
    v167 = v128;
    v168 = *MEMORY[0x277D38D78];

    if (v167 != v168)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v190 = type metadata accessor for Logger();
      __swift_project_value_buffer(v190, static Logger.pommes);
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&dword_2232BB000, v191, v192, "unexpected experience component", v193, 2u);
        v194 = v193;
        v127 = v403;
        MEMORY[0x223DE0F80](v194, -1, -1);
      }

      v195 = *(v121 + 8);
      v195(v404, v122);
      v195(v127, v122);

      goto LABEL_85;
    }

    (*(v121 + 96))(v127, v122);
    v169 = v400;
    v170 = v397;
    (*(v400 + 32))(v397, v127, v399);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v171 = type metadata accessor for Logger();
    v172 = __swift_project_value_buffer(v171, static Logger.pommes);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_2232BB000, v173, v174, "Adding a client driven experience", v175, 2u);
      v176 = v175;
      v169 = v400;
      MEMORY[0x223DE0F80](v176, -1, -1);
    }

    v177 = MEMORY[0x223DDB8B0]();
    v178 = *(v177 + 16);
    v438 = v172;
    v439 = v118;
    if (v178)
    {
      v179 = v386;
      v180 = v378;
      v181 = v387;
      (*(v386 + 16))(v378, v177 + ((*(v179 + 80) + 32) & ~*(v179 + 80)), v387);

      v182 = v377;
      Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
      (*(v179 + 8))(v180, v181);
      v183 = v393;
      v184 = v389;
      v185 = v182;
      v186 = v394;
      (*(v393 + 32))(v389, v185, v394);
      v187 = v379;
      Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
      v188 = v390;
      v189 = v391;
      if ((*(v390 + 48))(v187, 1, v391) != 1)
      {
        v211 = v376;
        (*(v188 + 32))(v376, v187, v189);
        v212 = v372;
        (*(v188 + 16))(v372, v211, v189);
        v213 = (*(v188 + 88))(v212, v189);
        if (v213 == *MEMORY[0x277D39A50])
        {
          (*(v188 + 96))(v212, v189);
          (*(v370 + 32))(v375, v212, v371);
          v97 = v393;
          v99 = v361;
          v69 = v394;
          (*(v393 + 16))(v361, v389, v394);
          v95 = Logger.logObject.getter();
          v214 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v95, v214))
          {
            goto LABEL_88;
          }

          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          v440 = v216;
          *v215 = 136315138;
          v217 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v218 = v99;
          v220 = v219;
          v221 = *(v97 + 8);
          v437 = ((v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v438 = v221;
          (v221)(v218, v69);
          v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v220, &v440);

          *(v215 + 4) = v222;
          _os_log_impl(&dword_2232BB000, v95, v214, "Adding AudioExperience with identifier %s to PommesResponse", v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v216);
          MEMORY[0x223DE0F80](v216, -1, -1);
          MEMORY[0x223DE0F80](v215, -1, -1);

LABEL_89:
          v259 = v416;
          type metadata accessor for AudioExperience();
          Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v260 = v370;
          v261 = v371;
          (*(v370 + 16))(v362, v375, v371);
          (*(v415 + 16))(v398, v413, v417);
          outlined init with copy of ClientExperienceSignals?(v392, v363);
          v262 = v439;
          v263 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
          dispatch thunk of Experience.associatedEntities.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_2234D0FE0;
          *(v123 + 32) = v263;

          (*(v260 + 8))(v375, v261);
          (*(v390 + 8))(v376, v391);
          v264 = v389;
        }

        else
        {
          if (v213 == *MEMORY[0x277D39A58])
          {
            (*(v188 + 96))(v212, v189);
            (*(v364 + 32))(v369, v212, v365);
            v223 = v393;
            v224 = v356;
            v225 = v389;
            v226 = v394;
            (*(v393 + 16))(v356, v389, v394);
            v227 = Logger.logObject.getter();
            v228 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v227, v228))
            {
              v229 = v226;
              v230 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v440 = v231;
              *v230 = 136315138;
              v232 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v233 = v224;
              v235 = v234;
              v236 = *(v223 + 8);
              v437 = ((v223 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v236;
              (v236)(v233, v229);
              v237 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v232, v235, &v440);

              *(v230 + 4) = v237;
              _os_log_impl(&dword_2232BB000, v227, v228, "Adding VideoExperience with identifier %s to PommesResponse", v230, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v231);
              v225 = v389;
              MEMORY[0x223DE0F80](v231, -1, -1);
              MEMORY[0x223DE0F80](v230, -1, -1);
            }

            else
            {

              v279 = *(v223 + 8);
              v437 = ((v223 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v279;
              (v279)(v224, v226);
            }

            v259 = v416;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v280 = v364;
            v281 = v365;
            (*(v364 + 16))(v359, v369, v365);
            (*(v415 + 16))(v398, v413, v417);
            v282 = objc_allocWithZone(type metadata accessor for VideoExperience());
            v283 = v439;
            v284 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v123 = swift_allocObject();
            *(v123 + 16) = xmmword_2234D0FE0;
            *(v123 + 32) = v284;

            (*(v280 + 8))(v369, v281);
          }

          else if (v213 == *MEMORY[0x277D39A40])
          {
            (*(v188 + 96))(v212, v189);
            (*(v357 + 32))(v360, v212, v358);
            v265 = v393;
            v266 = v353;
            v225 = v389;
            v267 = v394;
            (*(v393 + 16))(v353, v389, v394);
            v268 = Logger.logObject.getter();
            v269 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v268, v269))
            {
              v270 = v267;
              v271 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              v440 = v272;
              *v271 = 136315138;
              v273 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v274 = v266;
              v276 = v275;
              v277 = *(v265 + 8);
              v437 = ((v265 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v277;
              (v277)(v274, v270);
              v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v276, &v440);

              *(v271 + 4) = v278;
              _os_log_impl(&dword_2232BB000, v268, v269, "Adding GeoExperience with identifier %s to PommesResponse", v271, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v272);
              v225 = v389;
              MEMORY[0x223DE0F80](v272, -1, -1);
              MEMORY[0x223DE0F80](v271, -1, -1);
            }

            else
            {

              v299 = *(v265 + 8);
              v437 = ((v265 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v299;
              (v299)(v266, v267);
            }

            v259 = v416;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v300 = v357;
            v301 = v358;
            (*(v357 + 16))(v354, v360, v358);
            (*(v415 + 16))(v398, v413, v417);
            v302 = objc_allocWithZone(type metadata accessor for GeoExperience());
            v303 = v439;
            v304 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v123 = swift_allocObject();
            *(v123 + 16) = xmmword_2234D0FE0;
            *(v123 + 32) = v304;

            (*(v300 + 8))(v360, v301);
          }

          else
          {
            if (v213 != *MEMORY[0x277D39A48])
            {
              if (v213 == *MEMORY[0x277D39A38])
              {
                (*(v188 + 96))(v212, v189);
                (*(v349 + 32))(v348, v212, v350);
                v305 = v393;
                v306 = v344;
                v307 = v394;
                (*(v393 + 16))(v344, v389, v394);
                v308 = Logger.logObject.getter();
                v309 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v308, v309))
                {
                  v310 = swift_slowAlloc();
                  v311 = swift_slowAlloc();
                  v440 = v311;
                  *v310 = 136315138;
                  v312 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
                  v314 = v313;
                  v315 = *(v305 + 8);
                  v437 = ((v305 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  v438 = v315;
                  (v315)(v306, v307);
                  v316 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v312, v314, &v440);

                  *(v310 + 4) = v316;
                  _os_log_impl(&dword_2232BB000, v308, v309, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v310, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v311);
                  MEMORY[0x223DE0F80](v311, -1, -1);
                  MEMORY[0x223DE0F80](v310, -1, -1);
                }

                else
                {

                  v330 = *(v305 + 8);
                  v437 = ((v305 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  v438 = v330;
                  (v330)(v306, v307);
                }

                v331 = v416;
                Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
                v332 = v349;
                v333 = v348;
                v334 = v350;
                (*(v349 + 16))(v345, v348, v350);
                v335 = v417;
                (*(v415 + 16))(v398, v413, v417);
                v336 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
                v337 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
                Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
                dispatch thunk of Experience.associatedEntities.setter();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v123 = swift_allocObject();
                *(v123 + 16) = xmmword_2234D0FE0;
                *(v123 + 32) = v337;

                (*(v332 + 8))(v333, v334);
                (*(v390 + 8))(v376, v391);
                (v438)(v389, v394);
                v125 = v413;
                v124 = v335;
                (*(v400 + 8))(v397, v399);
                (*(v331 + 8))(v404, v122);
                goto LABEL_86;
              }

              v323 = Logger.logObject.getter();
              v324 = static os_log_type_t.error.getter();
              v325 = os_log_type_enabled(v323, v324);
              v326 = v439;
              if (v325)
              {
                v327 = swift_slowAlloc();
                *v327 = 0;
                _os_log_impl(&dword_2232BB000, v323, v324, "Unexpected DomainComponent encountered when building Client Driven experience", v327, 2u);
                v188 = v390;
                MEMORY[0x223DE0F80](v327, -1, -1);
              }

              v328 = *(v188 + 8);
              v329 = v391;
              v328(v376, v391);
              (*(v393 + 8))(v389, v394);
              (*(v400 + 8))(v397, v399);
              (*(v416 + 8))(v404, v122);
              v328(v212, v329);

LABEL_85:
              v123 = MEMORY[0x277D84F90];
              goto LABEL_86;
            }

            (*(v188 + 96))(v212, v189);
            (*(v351 + 32))(v355, v212, v352);
            v285 = v393;
            v286 = v346;
            v225 = v389;
            v287 = v394;
            (*(v393 + 16))(v346, v389, v394);
            v288 = Logger.logObject.getter();
            v289 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v288, v289))
            {
              v290 = v287;
              v291 = swift_slowAlloc();
              v292 = swift_slowAlloc();
              v440 = v292;
              *v291 = 136315138;
              v293 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v294 = v286;
              v296 = v295;
              v297 = *(v285 + 8);
              v437 = ((v285 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v297;
              (v297)(v294, v290);
              v298 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v293, v296, &v440);

              *(v291 + 4) = v298;
              _os_log_impl(&dword_2232BB000, v288, v289, "Adding AppsExperience with identfier %s to PommesResponse", v291, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v292);
              v225 = v389;
              MEMORY[0x223DE0F80](v292, -1, -1);
              MEMORY[0x223DE0F80](v291, -1, -1);
            }

            else
            {

              v317 = *(v285 + 8);
              v437 = ((v285 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v438 = v317;
              (v317)(v286, v287);
            }

            v259 = v416;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v318 = v351;
            v319 = v352;
            (*(v351 + 16))(v347, v355, v352);
            (*(v415 + 16))(v398, v413, v417);
            v320 = objc_allocWithZone(type metadata accessor for AppLaunchExperience());
            v321 = v439;
            v322 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v123 = swift_allocObject();
            *(v123 + 16) = xmmword_2234D0FE0;
            *(v123 + 32) = v322;

            (*(v318 + 8))(v355, v319);
          }

          (*(v390 + 8))(v376, v391);
          v264 = v225;
        }

        (v438)(v264, v394);
        v125 = v413;
        v124 = v417;
        (*(v400 + 8))(v397, v399);
        (*(v259 + 8))(v404, v414);
        goto LABEL_86;
      }

      (*(v183 + 8))(v184, v186);
      outlined destroy of MediaUserStateCenter?(v187, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v118 = v439;
      v169 = v400;
      v121 = v416;
    }

    else
    {
    }

    v196 = v381;
    v197 = v399;
    v437 = *(v169 + 16);
    v435 = (v169 + 16);
    (v437)(v381, v170, v399);
    v198 = Logger.logObject.getter();
    v199 = v169;
    v200 = static os_log_type_t.debug.getter();
    v436 = v198;
    if (os_log_type_enabled(v198, v200))
    {
      LODWORD(isa) = v200;
      v201 = swift_slowAlloc();
      *v201 = 67109120;
      v202 = MEMORY[0x223DDB8B0]();
      if (*(v202 + 16))
      {
        v203 = v386;
        v204 = v366;
        v205 = v387;
        (*(v386 + 16))(v366, v202 + ((*(v203 + 80) + 32) & ~*(v203 + 80)), v387);
        v196 = v381;

        v206 = v374;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v203 + 8))(v204, v205);
        v207 = 0;
        v208 = 1;
      }

      else
      {

        v208 = 0;
        v207 = 1;
        v206 = v374;
      }

      (*(v393 + 56))(v206, v207, 1, v394);
      outlined destroy of MediaUserStateCenter?(v206, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v209 = *(v400 + 8);
      v197 = v399;
      v209(v196, v399);
      *(v201 + 4) = v208;
      v210 = v436;
      _os_log_impl(&dword_2232BB000, v436, isa, "Has clientComponent? %{BOOL}d", v201, 8u);
      MEMORY[0x223DE0F80](v201, -1, -1);
      v170 = v397;
    }

    else
    {
      v209 = *(v199 + 8);
      v209(v196, v197);
      v210 = v436;
    }

    v238 = v382;
    (v437)(v382, v170, v197);
    v239 = Logger.logObject.getter();
    v240 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v239, v240))
    {
      LODWORD(v437) = v240;
      v438 = v209;
      v241 = swift_slowAlloc();
      *v241 = 67109120;
      v242 = MEMORY[0x223DDB8B0]();
      v124 = v417;
      v125 = v413;
      if (*(v242 + 16))
      {
        v243 = v386;
        v244 = v368;
        v245 = v387;
        (*(v386 + 16))(v368, v242 + ((*(v243 + 80) + 32) & ~*(v243 + 80)), v387);

        v246 = v367;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v243 + 8))(v244, v245);
        v247 = v373;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v248 = v246;
        v238 = v382;
        (*(v393 + 8))(v248, v394);
        v249 = (*(v390 + 48))(v247, 1, v391) != 1;
      }

      else
      {

        v247 = v373;
        (*(v390 + 56))(v373, 1, 1, v391);
        v249 = 0;
      }

      outlined destroy of MediaUserStateCenter?(v247, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v251 = v238;
      v250 = v399;
      v252 = v438;
      (v438)(v251, v399);
      *(v241 + 4) = v249;
      _os_log_impl(&dword_2232BB000, v239, v437, "Has domainComponent? %{BOOL}d", v241, 8u);
      v253 = v241;
      v209 = v252;
      MEMORY[0x223DE0F80](v253, -1, -1);
      v118 = v439;
    }

    else
    {
      v209(v238, v197);
      v250 = v197;
      v124 = v417;
      v125 = v413;
    }

    v209(v397, v250);
    (*(v121 + 8))(v404, v122);
    goto LABEL_85;
  }

  (*(v121 + 96))(v127, v122);
  (*(v401 + 32))(v409, v127, v402);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v129 = type metadata accessor for Logger();
  __swift_project_value_buffer(v129, static Logger.pommes);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&dword_2232BB000, v130, v131, "Adding a server driven experience", v132, 2u);
    MEMORY[0x223DE0F80](v132, -1, -1);
  }

  v133 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
  v439 = v118;
  if (v133)
  {
    v438 = v116;
    v134 = v383;
    v135 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
    MEMORY[0x223DDAE00](v135);
    v136 = *(v384 + 8);
    v137 = v125;
    v138 = v385;
    v136(v134, v385);
    (*(v415 + 16))(v398, v137, v124);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
    v139 = objc_allocWithZone(type metadata accessor for GenericExperience());
    v140 = v118;
    v141 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
    LOBYTE(v137) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
    v136(v134, v138);
    if (v137)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
      type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
      *(swift_allocObject() + 16) = xmmword_2234CF920;
      v142 = v141;
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
      v136(v134, v138);
      dispatch thunk of Experience.associatedEntities.setter();

      v120 = v419;
    }

    if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
    {
      v143 = v388;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
      v144 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
      (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
      dispatch thunk of GenericExperience.serverSuggestions.setter();
    }

    v145 = v141;
    MEMORY[0x223DDF820]();
    v116 = v438;
    v118 = v439;
    v122 = v414;
    v124 = v417;
    v121 = v416;
    v125 = v413;
    if (*((v441 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v441 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v146 = MEMORY[0x223DDB9D0]();
  MEMORY[0x28223BE20](v146);
  v340 = *&a3;
  v341 = v125;
  v342 = v120;
  v343 = v118;
  v147 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:), &v338, v146);

  v148 = v409;
  v149 = specialized Array.append<A>(contentsOf:)(v147);
  v150 = *(MEMORY[0x223DDB9C0](v149) + 16);

  if (v150)
  {
    v151 = v124;
    v152 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
    v153 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
    MEMORY[0x223DDB9C0]();
    (*(v415 + 16))(v398, v125, v151);
    v154 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
    MEMORY[0x28223BE20](v154);
    v155 = v411;
    *(&v344 - 8) = v410;
    *(&v344 - 7) = v155;
    v338 = v148;
    LOBYTE(v339) = v152 & 1;
    v340 = v392;
    v341 = v412;
    LOBYTE(v342) = v153 & 1;
    v343 = v437;
    v156 = objc_allocWithZone(v116);
    PommesRenderOptions.init(_:)();

    v157 = objc_allocWithZone(type metadata accessor for GenericExperience());
    v158 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
    {
      v159 = v388;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
      v160 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
      (*(*(v160 - 8) + 56))(v159, 0, 1, v160);
      dispatch thunk of GenericExperience.serverSuggestions.setter();
    }

    v161 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
    if (v161)
    {
      v162 = v380;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
      v163 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
      (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
      v161 = dispatch thunk of GenericExperience.sageExperience.setter();
    }

    MEMORY[0x223DDF820](v161);
    v164 = v439;
    v165 = v414;
    v166 = v416;
    v124 = v417;
    if (*((v441 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v441 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v166 + 8))(v404, v165);
    v148 = v409;
  }

  else
  {
    (*(v121 + 8))(v404, v122);
  }

  v123 = v441;
  (*(v401 + 8))(v148, v402);
LABEL_86:
  v254 = v408;
  v255 = v407;
  v256 = v406;
  (*(v415 + 8))(v125, v124);
  (*(v255 + 8))(v256, v254);
  return v123;
}

uint64_t closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, char *a3@<X4>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v20 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v18 = ExperiencesResolver.extractExperiences(from:score:with:with:)(v15, a1, a5, v17, a2, a3);
  outlined destroy of MediaUserStateCenter?(v11, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v13 + 8))(v15, v12);
  *v20 = v18;
  return result;
}

uint64_t closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  *&v15[5] = a6;
  v15[6] = a2;
  v13 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v15, v12);

  *a5 = v13;
  return result;
}

uint64_t closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, char *a3@<X3>, char *a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v17 = ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a6, v16, a3, a4);
  result = outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a5 = v17;
  return result;
}

uint64_t specialized ExperiencesResolver.isSquawkResponse(serverExp:)()
{
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v0 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v78 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v71 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v46 - v8;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v16 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v18 = *(v58 - 8);
  v19 = MEMORY[0x28223BE20](v58);
  v73 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v19);
  v64 = *(result + 16);
  if (!v64)
  {
LABEL_21:

    return 0;
  }

  v22 = 0;
  v63 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v62 = v18 + 16;
  v55 = *MEMORY[0x277D398F8];
  v61 = (v18 + 8);
  v54 = (v16 + 32);
  v75 = v10 + 8;
  v74 = (v78 + 48);
  v70 = (v78 + 32);
  v69 = (v78 + 16);
  v68 = (v78 + 88);
  v67 = *MEMORY[0x277D38D40];
  v66 = (v78 + 8);
  v48 = (v78 + 96);
  v47 = (v0 + 32);
  v46 = (v0 + 8);
  v51 = (v16 + 8);
  v23 = v58;
  v52 = v15;
  v59 = v18;
  v60 = result;
  v53 = v10 + 16;
  v65 = v12;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v24 = *(v18 + 72);
    v72 = v22;
    v25 = v73;
    (*(v18 + 16))(v73, v63 + v24 * v22, v23);
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v27 = v23;
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v15, 1, v26) != 1)
    {
      break;
    }

    (*v61)(v25, v27);
    outlined destroy of MediaUserStateCenter?(v15, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
LABEL_4:
    v23 = v27;
LABEL_5:
    v22 = v72 + 1;
    v18 = v59;
    result = v60;
    if (v72 + 1 == v64)
    {
      goto LABEL_21;
    }
  }

  v29 = (*(v28 + 88))(v15, v26);
  if (v29 != v55)
  {
    v27 = v58;
    (*v61)(v73, v58);
    (*(v28 + 8))(v15, v26);
    goto LABEL_4;
  }

  (*(v28 + 96))(v15, v26);
  v30 = (*v54)(v56, v15, v57);
  result = MEMORY[0x223DDB910](v30);
  v31 = result;
  v32 = v73;
  v78 = *(result + 16);
  if (!v78)
  {
LABEL_18:

    (*v51)(v56, v57);
    v23 = v58;
    (*v61)(v32, v58);
    v15 = v52;
    goto LABEL_5;
  }

  v33 = 0;
  v77 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v10 + 16))(v12, v77 + *(v10 + 72) * v33, v9);
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
    (*(v10 + 8))(v12, v9);
    if ((*v74)(v4, 1, v5) != 1)
    {
      break;
    }

    result = outlined destroy of MediaUserStateCenter?(v4, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
LABEL_12:
    if (v78 == ++v33)
    {
      goto LABEL_18;
    }
  }

  v34 = v76;
  (*v70)(v76, v4, v5);
  v35 = v71;
  (*v69)(v71, v34, v5);
  v36 = (*v68)(v35, v5);
  if (v36 != v67)
  {
    v37 = v10;
    v38 = v9;
    v39 = v4;
    v40 = v35;
    v41 = *v66;
    (*v66)(v76, v5);
    v42 = v40;
    v4 = v39;
    v9 = v38;
    v10 = v37;
    result = (v41)(v42, v5);
    v12 = v65;
    v32 = v73;
    goto LABEL_12;
  }

  (*v48)(v35, v5);
  v43 = v49;
  v44 = v50;
  (*v47)(v49, v35, v50);
  v45 = Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasAudioData.getter();
  (*v46)(v43, v44);
  (*v66)(v76, v5);
  (*v51)(v56, v57);
  v23 = v58;
  (*v61)(v73, v58);
  v12 = v65;
  v15 = v52;
  if ((v45 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.containsDelayedActionComponent(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = 0;
    v16 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v37 = v8 + 16;
    v35 = *MEMORY[0x277D398F8];
    v36 = (v8 + 8);
    v28 = (v5 + 8);
    v29 = (v5 + 32);
    v30 = v16;
    while (v15 < *(v13 + 16))
    {
      (*(v8 + 16))(v11, v16 + *(v8 + 72) * v15, v7);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v4, 1, v17) == 1)
      {
        (*v36)(v11, v7);
        result = outlined destroy of MediaUserStateCenter?(v4, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v19 = (*(v18 + 88))(v4, v17);
        if (v19 == v35)
        {
          (*(v18 + 96))(v4, v17);
          v20 = v8;
          v21 = v7;
          v22 = v13;
          v23 = v14;
          v25 = v31;
          v24 = v32;
          (*v29)(v31, v4, v32);
          v26 = v33(v25);
          v27 = v25;
          v14 = v23;
          v13 = v22;
          v7 = v21;
          v8 = v20;
          v16 = v30;
          (*v28)(v27, v24);
          result = (*v36)(v11, v7);
          if (v26)
          {

            return 1;
          }
        }

        else
        {
          (*v36)(v11, v7);
          result = (*(v18 + 8))(v4, v17);
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t specialized ExperiencesResolver.extractSwitchProfile(serverExp:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v51 - v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v51 - v8;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v51 - v15;
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v16 = *(v59 - 8);
  v17 = MEMORY[0x28223BE20](v59);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v51 - v19;
  v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v20 = *(v76 - 8);
  v21 = MEMORY[0x28223BE20](v76);
  v75 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v21);
  v69 = *(result + 16);
  if (v69)
  {
    v81 = v7;
    v52 = a1;
    v24 = 0;
    v74 = result + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v72 = v20 + 8;
    v73 = v20 + 16;
    v71 = (v16 + 48);
    v64 = (v16 + 32);
    v63 = (v16 + 16);
    v62 = (v16 + 88);
    v61 = *MEMORY[0x277D398F8];
    v60 = (v16 + 8);
    v56 = (v16 + 96);
    v55 = (v12 + 32);
    v86 = v10 + 8;
    v87 = v10 + 16;
    v85 = (v53 + 48);
    v80 = (v53 + 32);
    v79 = (v53 + 88);
    v78 = *MEMORY[0x277D38D20];
    v77 = (v53 + 8);
    v54 = (v12 + 8);
    v25 = v59;
    v26 = v58;
    v27 = v57;
    v68 = v20;
    v70 = result;
    while (v24 < *(result + 16))
    {
      v28 = *(v20 + 72);
      v84 = v24;
      v29 = v75;
      v30 = v76;
      (*(v20 + 16))(v75, v74 + v28 * v24, v76);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*(v20 + 8))(v29, v30);
      if ((*v71)(v26, 1, v25) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v26, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v31 = v67;
        (*v64)(v67, v26, v25);
        (*v63)(v27, v31, v25);
        v32 = (*v62)(v27, v25);
        if (v32 == v61)
        {
          (*v56)(v27, v25);
          v33 = (*v55)(v65, v27, v66);
          result = MEMORY[0x223DDB910](v33);
          v34 = result;
          v35 = *(result + 16);
          if (v35)
          {
            v36 = 0;
            v37 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
            v83 = result;
            while (v36 < *(v34 + 16))
            {
              v38 = v88;
              (*(v10 + 16))(v88, v37 + *(v10 + 72) * v36, v9);
              v39 = v89;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
              (*(v10 + 8))(v38, v9);
              if ((*v85)(v39, 1, v4) == 1)
              {
                result = outlined destroy of MediaUserStateCenter?(v89, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
              }

              else
              {
                v40 = v10;
                v41 = v9;
                v42 = *v80;
                v43 = v82;
                (*v80)(v82, v89, v4);
                v44 = v81;
                v42(v81, v43, v4);
                v45 = (*v79)(v44, v4);
                if (v45 == v78)
                {

                  (*v54)(v65, v66);
                  (*v60)(v67, v59);
                  (*(v53 + 96))(v44, v4);
                  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
                  v48 = *(v47 - 8);
                  v49 = v52;
                  (*(v48 + 32))(v52, v44, v47);
                  return (*(v48 + 56))(v49, 0, 1, v47);
                }

                result = (*v77)(v44, v4);
                v9 = v41;
                v10 = v40;
                v34 = v83;
              }

              if (v35 == ++v36)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

LABEL_17:

          (*v54)(v65, v66);
          v25 = v59;
          (*v60)(v67, v59);
          v26 = v58;
          v27 = v57;
        }

        else
        {
          v46 = *v60;
          (*v60)(v31, v25);
          v46(v27, v25);
        }
      }

      v20 = v68;
      v24 = v84 + 1;
      result = v70;
      if (v84 + 1 == v69)
      {

        a1 = v52;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    return (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA608LL9serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v51 - v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v51 - v8;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v51 - v15;
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v16 = *(v59 - 8);
  v17 = MEMORY[0x28223BE20](v59);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v51 - v19;
  v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v20 = *(v76 - 8);
  v21 = MEMORY[0x28223BE20](v76);
  v75 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v21);
  v69 = *(result + 16);
  if (v69)
  {
    v81 = v7;
    v52 = a1;
    v24 = 0;
    v74 = result + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v72 = v20 + 8;
    v73 = v20 + 16;
    v71 = (v16 + 48);
    v64 = (v16 + 32);
    v63 = (v16 + 16);
    v62 = (v16 + 88);
    v61 = *MEMORY[0x277D398F8];
    v60 = (v16 + 8);
    v56 = (v16 + 96);
    v55 = (v12 + 32);
    v86 = v10 + 8;
    v87 = v10 + 16;
    v85 = (v53 + 48);
    v80 = (v53 + 32);
    v79 = (v53 + 88);
    v78 = *MEMORY[0x277D38D20];
    v77 = (v53 + 8);
    v54 = (v12 + 8);
    v25 = v59;
    v26 = v58;
    v27 = v57;
    v68 = v20;
    v70 = result;
    while (v24 < *(result + 16))
    {
      v28 = *(v20 + 72);
      v84 = v24;
      v29 = v75;
      v30 = v76;
      (*(v20 + 16))(v75, v74 + v28 * v24, v76);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*(v20 + 8))(v29, v30);
      if ((*v71)(v26, 1, v25) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v26, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v31 = v67;
        (*v64)(v67, v26, v25);
        (*v63)(v27, v31, v25);
        v32 = (*v62)(v27, v25);
        if (v32 == v61)
        {
          (*v56)(v27, v25);
          v33 = (*v55)(v65, v27, v66);
          result = MEMORY[0x223DDB910](v33);
          v34 = result;
          v35 = *(result + 16);
          if (v35)
          {
            v36 = 0;
            v37 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
            v83 = result;
            while (v36 < *(v34 + 16))
            {
              v38 = v88;
              (*(v10 + 16))(v88, v37 + *(v10 + 72) * v36, v9);
              v39 = v89;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
              (*(v10 + 8))(v38, v9);
              if ((*v85)(v39, 1, v4) == 1)
              {
                result = outlined destroy of MediaUserStateCenter?(v89, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
              }

              else
              {
                v40 = v10;
                v41 = v9;
                v42 = *v80;
                v43 = v82;
                (*v80)(v82, v89, v4);
                v44 = v81;
                v42(v81, v43, v4);
                v45 = (*v79)(v44, v4);
                if (v45 == v78)
                {

                  (*v54)(v65, v66);
                  (*v60)(v67, v59);
                  (*(v53 + 96))(v44, v4);
                  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
                  v48 = *(v47 - 8);
                  v49 = v52;
                  (*(v48 + 32))(v52, v44, v47);
                  return (*(v48 + 56))(v49, 0, 1, v47);
                }

                result = (*v77)(v44, v4);
                v9 = v41;
                v10 = v40;
                v34 = v83;
              }

              if (v35 == ++v36)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

LABEL_17:

          (*v54)(v65, v66);
          v25 = v59;
          (*v60)(v67, v59);
          v26 = v58;
          v27 = v57;
        }

        else
        {
          v46 = *v60;
          (*v60)(v31, v25);
          v46(v27, v25);
        }
      }

      v20 = v68;
      v24 = v84 + 1;
      result = v70;
      if (v84 + 1 == v69)
      {

        a1 = v52;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    return (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
  }

  return result;
}

uint64_t specialized ExperiencesResolver.shouldPreserveResultSpaceIfPossible(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.preserveResultSpaceIfPossible.getter())
  {
    return 1;
  }

  result = MEMORY[0x223DDB9C0]();
  v10 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v11 = 0;
    v25 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v24 = v6 + 16;
    v23 = *MEMORY[0x277D398F8];
    v12 = (v6 + 8);
    v19 = (v3 + 8);
    v20 = (v3 + 32);
    while (v11 < *(v10 + 16))
    {
      (*(v6 + 16))(v8, v25 + *(v6 + 72) * v11, v5);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {
        (*v12)(v8, v5);
        result = outlined destroy of MediaUserStateCenter?(v2, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v15 = (*(v14 + 88))(v2, v13);
        if (v15 == v23)
        {
          (*(v14 + 96))(v2, v13);
          v16 = v21;
          v17 = v22;
          (*v20)(v21, v2, v22);
          v18 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.preserveResultSpaceIfPossible.getter();
          (*v19)(v16, v17);
          result = (*v12)(v8, v5);
          if (v18)
          {

            return 1;
          }
        }

        else
        {
          (*v12)(v8, v5);
          result = (*(v14 + 8))(v2, v13);
        }
      }

      if (v26 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA608LL3forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.preserveResultSpaceIfPossible.getter())
  {
    return 1;
  }

  result = MEMORY[0x223DDB9C0]();
  v10 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v11 = 0;
    v25 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v24 = v6 + 16;
    v23 = *MEMORY[0x277D398F8];
    v12 = (v6 + 8);
    v19 = (v3 + 8);
    v20 = (v3 + 32);
    while (v11 < *(v10 + 16))
    {
      (*(v6 + 16))(v8, v25 + *(v6 + 72) * v11, v5);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {
        (*v12)(v8, v5);
        result = outlined destroy of MediaUserStateCenter?(v2, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v15 = (*(v14 + 88))(v2, v13);
        if (v15 == v23)
        {
          (*(v14 + 96))(v2, v13);
          v16 = v21;
          v17 = v22;
          (*v20)(v21, v2, v22);
          v18 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.preserveResultSpaceIfPossible.getter();
          (*v19)(v16, v17);
          result = (*v12)(v8, v5);
          if (v18)
          {

            return 1;
          }
        }

        else
        {
          (*v12)(v8, v5);
          result = (*(v14 + 8))(v2, v13);
        }
      }

      if (v26 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA608LL4from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      outlined consume of Data._Representation(v10, v11);
      if (v14 == v15)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    outlined consume of Data._Representation(v10, v11);
  }

  else
  {
    if (!v12)
    {
      v13 = v11;
      outlined consume of Data._Representation(v10, v11);
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v17 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v16 = v10;
    outlined consume of Data._Representation(v10, v11);
    if (v16 != v16 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v17 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v19 = v17;
  v20 = v18;
  v21 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v21 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_27;
    }
  }

  else if (v21)
  {
    if (v17 == v17 >> 32)
    {
LABEL_27:
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
        *v34 = 0;
        _os_log_impl(&dword_2232BB000, v32, v33, "Empty UDA data in server understanding.", v34, 2u);
        MEMORY[0x223DE0F80](v34, -1, -1);
      }

      Siri_Nlu_External_UserDialogAct.init()();

      return outlined consume of Data._Representation(v19, v20);
    }
  }

  else if ((v18 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

  v38 = v4;
  v39 = a2;
  if (one-time initialization token for shared != -1)
  {
    v17 = swift_once();
  }

  v22 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v17);
  v36 = v19;
  v37 = v20;
  Date.init()();
  v23 = *(*v22 + 200);
  v36 = &v35;
  v37 = v7;
  LOBYTE(v35) = 2;
  v23(0xD000000000000030, 0x80000002234DF2D0, 0, v6, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 405, "userDialogAct(from:)", 20, v35, v40);
  (*(v38 + 8))(v6, v3);
  v24 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v27, v28, "Unable to deserialize UserDialogAct from ServerUnderstanding", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    Siri_Nlu_External_UserDialogAct.init()();
    return outlined consume of Data._Representation(v19, v20);
  }

  else
  {
    outlined consume of Data._Representation(v19, v20);
    return (*(v25 + 32))(v39, v9, v24);
  }
}

uint64_t static ExperiencesResolver.userDialogAct(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      outlined consume of Data._Representation(v9, v10);
      if (v14 == v13)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    outlined consume of Data._Representation(v9, v10);
  }

  else
  {
    if (!v11)
    {
      v12 = v10;
      outlined consume of Data._Representation(v9, v10);
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v16 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v15 = v9;
    outlined consume of Data._Representation(v9, v10);
    if (v15 != v15 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v16 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v18 = v16;
  v19 = v17;
  v20 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v20 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_27;
    }
  }

  else if (v20)
  {
    if (v16 == v16 >> 32)
    {
LABEL_27:
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
        _os_log_impl(&dword_2232BB000, v31, v32, "Empty UDA data in server understanding.", v33, 2u);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      Siri_Nlu_External_UserDialogAct.init()();

      return outlined consume of Data._Representation(v18, v19);
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

  v38 = v3;
  v39 = a1;
  if (one-time initialization token for shared != -1)
  {
    v16 = swift_once();
  }

  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v16);
  v35 = v18;
  v36 = v19;
  Date.init()();
  v22 = *(*v21 + 200);
  v35 = &v34;
  v36 = v6;
  LOBYTE(v34) = 2;
  v22(0xD000000000000030, 0x80000002234DF2D0, 0, v5, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 405, "userDialogAct(from:)", 20, v34, closure #1 in static ExperiencesResolver.userDialogAct(from:)partial apply);
  (*(v38 + 8))(v5, v2);
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "Unable to deserialize UserDialogAct from ServerUnderstanding", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    Siri_Nlu_External_UserDialogAct.init()();
    return outlined consume of Data._Representation(v18, v19);
  }

  else
  {
    outlined consume of Data._Representation(v18, v19);
    return (*(v24 + 32))(v39, v8, v23);
  }
}

uint64_t closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(uint64_t a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  v22 = a3;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v20 = &v20 - v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223DDAE00](v10);
  (*(v9 + 16))(v12, a1, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
  v13 = objc_allocWithZone(type metadata accessor for GenericExperience());
  v14 = v21;
  v15 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
  if (Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
    type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
    *(swift_allocObject() + 16) = xmmword_2234CF920;
    v16 = v15;
    Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
    dispatch thunk of Experience.associatedEntities.setter();
  }

  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter();
  if (result)
  {
    v18 = v20;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    result = dispatch thunk of GenericExperience.serverSuggestions.setter();
  }

  *v22 = v15;
  return result;
}

uint64_t specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v13);
  v14 = type metadata accessor for ClientExperienceSignals();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v15 + 8))(v13, v14);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  specialized ExperiencesResolver.extractSwitchProfile(serverExp:)(v10);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v18 = a8;
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v14);
  v15 = type metadata accessor for ClientExperienceSignals();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v16 + 8))(v14, v15);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA6089serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm(v11);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t closure #1 in static ExperiencesResolver.userDialogAct(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
  Message.init(serializedData:extensions:partial:options:)();
  if (v3)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return (*(*(v8 - 8) + 56))(a3, v9, 1, v8);
}

uint64_t outlined init with copy of ClientExperienceSignals?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(uint64_t a1@<X8>)
{
  return _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA6084from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm(partial apply for closure #1 in static ExperiencesResolver.userDialogAct(from:), a1);
}

{
  return _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA6084from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm(closure #1 in static ExperiencesResolver.userDialogAct(from:)partial apply, a1);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct)
  {
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct);
  }

  return result;
}

uint64_t specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v12);
  v13 = type metadata accessor for ClientExperienceSignals();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v14 + 8))(v12, v13);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA6089serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm(v9);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1)
{
  return specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

{
  return specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 48), *(v1 + 56));
}

uint64_t specialized Sequence.flatMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = *(a3 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction() - 8);
  v33 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v32 = *(v7 + 72);
  while (1)
  {
    v10 = v4;
    a1(&v39, v33 + v32 * v6);
    if (v4)
    {

      return v8;
    }

    v11 = v39;
    v12 = v39 >> 62;
    if (v39 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      v16 = v30 + v13;
      if (__OFADD__(v30, v13))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      __CocoaSet.count.getter();
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v19 >> 1) - v18) < v37)
    {
      goto LABEL_38;
    }

    v36 = v8;
    v22 = v17 + 8 * v18 + 32;
    v31 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type [Experience] and conformance [A]();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
        v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, i, v11);
        v26 = *v25;
        (v24)(v38, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      type metadata accessor for Experience();
      swift_arrayInitWithCopy();
    }

    v4 = v10;
    v8 = v36;
    if (v37 > 0)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v37);
      v29 = v27 + v37;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v6 == v34)
    {
      return v8;
    }
  }

  v21 = v17;
  result = __CocoaSet.count.getter();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2)
{
  return specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, a2, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
}

{
  return specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, a2, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
}

unint64_t specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v34 = a4;
  v32 = a3;
  v5 = v4;
  v35 = type metadata accessor for Date();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  v11 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v13 = v12;
  if (one-time initialization token for shared != -1)
  {
    v11 = swift_once();
  }

  v31 = &v28;
  v14 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v11);
  v24 = v5;
  v25 = v10;
  v26 = v13;
  v27 = a2;
  Date.init()();
  v15 = (*v14 + 200);
  v29 = *v15;
  v16 = v29;
  v30 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v26 = &v23;
  v27 = v17;
  LOBYTE(v24) = 2;
  v16(&v36, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v24, v32);
  v18 = *(v33 + 8);
  v19 = v18(v9, v35);
  v32 = &v28;
  v33 = v36;
  MEMORY[0x28223BE20](v19);
  LODWORD(v24) = v20;
  Date.init()();
  v26 = &v23;
  v27 = v17;
  LOBYTE(v24) = 2;
  v29(&v36, 0xD00000000000002ELL, 0x80000002234DF250, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v24, v34);
  v18(v9, v35);
  v21 = v36;
  v36 = v33;
  specialized Array.append<A>(contentsOf:)(v21);
  return v36;
}

void *specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v10 = v9;
  if (one-time initialization token for shared != -1)
  {
    v8 = swift_once();
  }

  v26 = v25;
  v11 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v8);
  v22 = a1;
  v23 = v10;
  v24 = a2;
  Date.init()();
  v12 = (*v11 + 200);
  v25[0] = *v12;
  v13 = v25[0];
  v25[1] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v25[2] = a2;
  v15 = v14;
  v23 = &v20;
  v24 = v14;
  LOBYTE(v21) = 2;
  v13(&v27, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v7, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v21, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:));
  v16 = *(v5 + 8);
  v17 = v16(v7, v4);
  v26 = v27;
  MEMORY[0x28223BE20](v17);
  v21 = a1;
  Date.init()();
  v23 = &v20;
  v24 = v15;
  LOBYTE(v21) = 2;
  (v25[0])(&v27, 0xD00000000000002ELL, 0x80000002234DF250, 0, v7, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v21, partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
  v16(v7, v4);
  v18 = v27;
  v27 = v26;
  specialized Array.append<A>(contentsOf:)(v18);
  return v27;
}

uint64_t *specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v12 = v11;
  if (one-time initialization token for shared != -1)
  {
    v10 = swift_once();
  }

  v31 = &v27;
  v13 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v10);
  v23 = &v33;
  v24 = a1;
  v25 = v12;
  v26 = a2;
  Date.init()();
  v14 = (*v13 + 200);
  v28 = *v14;
  v15 = v28;
  v29 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v30 = a2;
  v17 = v16;
  v25 = &v22;
  v26 = v16;
  LOBYTE(v23) = 2;
  v15(&v32, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v23, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:));
  v18 = *(v7 + 8);
  v19 = v18(v9, v6);
  v31 = v32;
  MEMORY[0x28223BE20](v19);
  LODWORD(v23) = a1;
  Date.init()();
  v25 = &v22;
  v26 = v17;
  LOBYTE(v23) = 2;
  v28(&v32, 0xD00000000000002ELL, 0x80000002234DF250, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v23, partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
  v18(v9, v6);
  v20 = v32;
  v32 = v31;
  specialized Array.append<A>(contentsOf:)(v20);
  return v32;
}

uint64_t _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v86 = a1;
  v4 = type metadata accessor for SportsResolverMetrics();
  v80 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v74 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v72 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v81 = type metadata accessor for SportsResolverConfig();
  v79 = *(v81 - 8);
  v22 = MEMORY[0x28223BE20](v81);
  v77 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v87 = &v71 - v24;
  outlined init with copy of MediaUserStateCenter?(a2, v16, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v16, 1, v25);
  v73 = v17;
  if (v28 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v29 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v26 + 8))(v16, v25);
    if (*(v29 + 16))
    {
      v76 = v4;
      v30 = a2;
      v31 = v74;
      (*(v74 + 16))(v21, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v17);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      v32 = v31;
      a2 = v30;
      v4 = v76;
      (*(v32 + 8))(v21, v17);
    }

    else
    {
    }
  }

  SportsResolverConfig.init(intentTypeName:bundleId:)();
  v33 = v85;
  outlined init with copy of MediaUserStateCenter?(a2, v85, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v34 = v86;
  outlined copy of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(v86);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  outlined consume of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(v34);
  if (os_log_type_enabled(v35, v36))
  {
    v76 = v4;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v88[0] = v38;
    *v37 = 136315394;
    v39 = v33;
    v40 = v75;
    outlined init with copy of MediaUserStateCenter?(v39, v75, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    if (v27(v40, 1, v25) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v40, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v41 = 0xE700000000000000;
      v43 = v80;
      v42 = v81;
      v44 = v82;
      v45 = v86;
      v46 = 0x6E776F6E6B6E75;
    }

    else
    {
      v49 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v26 + 8))(v40, v25);
      v46 = 0x6E776F6E6B6E75;
      if (*(v49 + 16))
      {
        v50 = v73;
        v51 = v74;
        v52 = v72;
        (*(v74 + 16))(v72, v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v73);

        v46 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v41 = v53;
        (*(v51 + 8))(v52, v50);
      }

      else
      {

        v41 = 0xE700000000000000;
      }

      v43 = v80;
      v42 = v81;
      v44 = v82;
      v45 = v86;
    }

    outlined destroy of MediaUserStateCenter?(v85, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v41, v88);

    *(v37 + 4) = v54;
    *(v37 + 12) = 2080;
    v55 = specialized SportsPersonalizationSelection<A>.debugDescription.getter(v45);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v88);

    *(v37 + 14) = v57;
    _os_log_impl(&dword_2232BB000, v35, v36, "Logging sports personalization metrics: intent=%s selection=%s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);

    v4 = v76;
    v48 = v78;
    v47 = v84;
  }

  else
  {

    outlined destroy of MediaUserStateCenter?(v33, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v43 = v80;
    v42 = v81;
    v47 = v84;
    v44 = v82;
    v48 = v78;
    v45 = v86;
  }

  v58 = v79;
  if (v45 == 1)
  {
    v59 = 1;
  }

  else
  {
    (*(v79 + 16))(v77, v87, v42);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    v59 = 0;
  }

  (*(v43 + 56))(v44, v59, 1, v4);
  outlined init with copy of MediaUserStateCenter?(v44, v48, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  if ((*(v43 + 48))(v48, 1, v4) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v58 + 8))(v87, v42);
    return outlined destroy of MediaUserStateCenter?(v48, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v43 + 32))(v47, v48, v4);
  SportsResolverMetrics.logSportsMetric()();
  if (v61)
  {
    v62 = v61;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v88[0] = v66;
      *v65 = 136315138;
      swift_getErrorValue();
      v67 = Error.localizedDescription.getter();
      v69 = v58;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v88);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_2232BB000, v63, v64, "Logging sports metrics failed with: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x223DE0F80](v66, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);

      (*(v43 + 8))(v84, v4);
      outlined destroy of MediaUserStateCenter?(v82, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
      return (*(v69 + 8))(v87, v81);
    }

    (*(v43 + 8))(v84, v4);
  }

  else
  {
    (*(v43 + 8))(v47, v4);
  }

  outlined destroy of MediaUserStateCenter?(v44, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v58 + 8))(v87, v42);
}

uint64_t specialized SportsPersonalizationSelection<A>.debugDescription.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x63696C7070616E69;
  }

  if (a1 == 2)
  {
    return 0x756769626D616E75;
  }

  _StringGuts.grow(_:)(33);

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v3, v4);

  MEMORY[0x223DDF6D0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)(void *a1, uint64_t a2)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v77 - v4;
  v89 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = MEMORY[0x28223BE20](v89);
  v88 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v77 - v7;
  v8 = type metadata accessor for OSSignpostID();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  v99 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OSSignposter();
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  if (one-time initialization token for shared != -1)
  {
    v17 = swift_once();
  }

  v18 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v17);
  v95 = a1;
  v75 = a1;
  Date.init()();
  v19 = *(*v18 + 200);
  v20 = *v18 + 200;
  v75 = &v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontGSgMd, &_sSay13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontGSgMR);
  LOBYTE(v74) = 2;
  v84 = v20;
  v19(v100, 0xD000000000000030, 0x80000002234DF330, 0, v14, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 44, "buildExperiences(from:with:)", 28, v74, partial apply for closure #1 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:));
  v21 = *(v12 + 8);
  v21(v14, v11);
  if (v100[0])
  {
    v79 = v21;
    v81 = v19;
    v82 = v11;
    v88 = v100[0];
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v80 = __swift_project_value_buffer(v22, static Logger.pommes);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v96;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2232BB000, v23, v24, "Got a request that is applicable for sports personalization via alternative selection. Will attempt to select an alternative", v27, 2u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    v28 = v94;

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v26, static Signposter.pommes);
    (*(v98 + 16))(v97, v29, v26);
    static OSSignpostID.exclusive.getter();
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.begin.getter();
    v33 = OSSignpostID.rawValue.getter();
    v77 = v31;
    v78 = v30;
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v31, v32, v33, "selectSportsAlternative", "", v30, 2u);
    MEMORY[0x28223BE20](v34);
    v74 = v28;
    Date.init()();
    v75 = &v73;
    v76 = &type metadata for DisambiguatedSportsExperiencesResult;
    LOBYTE(v74) = 2;
    v81(v100, 0xD000000000000021, 0x80000002234DF440, 0, v14, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 64, "buildExperiences(from:with:)", 28, v74, partial apply for closure #1 in closure #2 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:));
    v79(v14, v82);
    v35 = v100[0];
    v36 = v85;
    Date.init()();
    v37 = v89;
    v38 = &v36[*(v89 + 20)];
    *v38 = "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift";
    *(v38 + 1) = 68;
    v38[16] = 2;
    *&v36[v37[6]] = 68;
    v39 = &v36[v37[7]];
    *v39 = "buildExperiences(from:with:)";
    *(v39 + 1) = 28;
    v40 = v36;
    v39[16] = 2;
    v41 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL, 0x80000002234DF3E0);
    v42 = &v36[v37[8]];
    *v42 = v41;
    v42[1] = v43;
    v44 = v91;
    v45 = v92;
    v46 = v90;
    v47 = v93;
    (*(v92 + 16))(v90, v91, v93);
    (*(v45 + 56))(v46, 0, 1, v47);

    _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(v48, v46, v80);

    outlined destroy of MediaUserStateCenter?(v46, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (*(*v18 + 184))(v40, 0);
    if (!v35)
    {
      v35 = specialized ExperiencesResolver.defaultExperiences(from:with:)(v95, v83, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
    }

    outlined destroy of PerformanceUtil.Ticket(v40);
    v49 = static os_signpost_type_t.end.getter();
    v50 = v99;
    v51 = OSSignpostID.rawValue.getter();
    v52 = v49;
    v53 = v77;
    v54 = v78;
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v77, v52, v51, "selectSportsAlternative", "", v78, 2u);

    MEMORY[0x223DE0F80](v54, -1, -1);

    (*(v86 + 8))(v50, v87);
    (*(v98 + 8))(v97, v96);
  }

  else
  {
    v45 = v92;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    v56 = __swift_project_value_buffer(v55, static Logger.pommes);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v95;
    v47 = v93;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2232BB000, v57, v58, "Request doesn't have a supported (SportsEntity -> Instruction) mapping. Not performing sports personalization...", v61, 2u);
      MEMORY[0x223DE0F80](v61, -1, -1);
    }

    v62 = v88;
    Date.init()();
    v63 = v89;
    v64 = v62 + *(v89 + 20);
    *v64 = "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift";
    *(v64 + 8) = 68;
    *(v64 + 16) = 2;
    *(v62 + v63[6]) = 51;
    v65 = v62 + v63[7];
    *v65 = "buildExperiences(from:with:)";
    *(v65 + 8) = 28;
    *(v65 + 16) = 2;
    v66 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL, 0x80000002234DF3E0);
    v67 = (v62 + v63[8]);
    *v67 = v66;
    v67[1] = v68;
    v70 = v90;
    v69 = v91;
    (*(v45 + 16))(v90, v91, v47);
    (*(v45 + 56))(v70, 0, 1, v47);
    _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(0, v70, v56);
    outlined destroy of MediaUserStateCenter?(v70, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (*(*v18 + 184))(v62, 0);
    v71 = v60;
    v44 = v69;
    v35 = specialized ExperiencesResolver.defaultExperiences(from:with:)(v71, v83, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
    outlined destroy of PerformanceUtil.Ticket(v62);
  }

  (*(v45 + 8))(v44, v47);
  return v35;
}

uint64_t partial apply for closure #1 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v3 = specialized static SportsPersonalizationExperiencesResolver.makeEntityInstructionMapping(alternatives:)(v2);

  *a1 = v3;
  return result;
}

uint64_t SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v102 = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x28223BE20](v2);
  v110 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v89 - v13;
  v114 = type metadata accessor for Date();
  v14 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  v20 = type metadata accessor for SportsItem();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v103 = &v89 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v111 = &v89 - v27;
  if (one-time initialization token for shared != -1)
  {
    v26 = swift_once();
  }

  v28 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v26);
  v87 = v116;
  v88 = v115;
  Date.init()();
  v29 = *(*v28 + 200);
  v30 = *v28 + 200;
  v87 = &v86;
  v88 = v17;
  LOBYTE(v86) = 2;
  v100 = v28;
  v99 = v29;
  v98 = v30;
  (v29)(0xD000000000000045, 0x80000002234DF470, 0, v16, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 110, "personalizedSelection(from:with:)", 33, v86, partial apply for closure #1 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:));
  v33 = *(v14 + 8);
  v32 = v14 + 8;
  v31 = v33;
  v33(v16, v114);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v19, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.pommes);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2232BB000, v35, v36, "Inference was unable to recommend an alternative. Will use original instruction", v37, 2u);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    return 0;
  }

  v38 = v20;
  v94 = 0;
  v91 = v31;
  v92 = v16;
  v93 = v32;
  v39 = v111;
  (*(v21 + 32))(v111, v19, v38);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.pommes);
  v41 = v21;
  v42 = *(v21 + 16);
  v43 = v103;
  v42(v103, v39, v38);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  v46 = os_log_type_enabled(v44, v45);
  v96 = v38;
  v95 = v41;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v117[0] = v90;
    *v47 = 136315138;
    v42(v97, v43, v38);
    v48 = String.init<A>(describing:)();
    v49 = v43;
    v50 = v48;
    v52 = v51;
    v103 = *(v41 + 8);
    (v103)(v49, v38);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v117);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_2232BB000, v44, v45, "Got a recommended alternative entity: %s", v47, 0xCu);
    v54 = v90;
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x223DE0F80](v54, -1, -1);
    v55 = v47;
    v39 = v111;
    MEMORY[0x223DE0F80](v55, -1, -1);
  }

  else
  {

    v103 = *(v41 + 8);
    v56 = (v103)(v43, v38);
  }

  v58 = v109;
  v57 = v110;
  v59 = v107;
  MEMORY[0x28223BE20](v56);
  v87 = v39;
  v60 = v104;
  specialized Sequence.first(where:)(partial apply for closure #2 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:), v61, v104);
  v62 = v105;
  outlined init with take of PommesSearchReason?(v60, v105, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMR);
  v63 = 1;
  v64 = (*(v106 + 48))(v62, 1, v59);
  v65 = v116;
  if (v64 != 1)
  {
    v66 = v62;
    v67 = v101;
    outlined init with take of PommesSearchReason?(v66, v101, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
    (*(v112 + 32))(v58, v67 + *(v59 + 48), v113);
    v68 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v68 - 8) + 8))(v67, v68);
    v63 = 0;
  }

  v69 = v112;
  v70 = v113;
  (*(v112 + 56))(v58, v63, 1, v113);
  v71 = v108;
  outlined init with copy of MediaUserStateCenter?(v58, v108, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  if ((*(v69 + 48))(v71, 1, v70) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v71, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2232BB000, v72, v73, "Unable to map the recommended sports item back to an alternative. This is unexpected. Will continue with original instruction", v74, 2u);
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    outlined destroy of MediaUserStateCenter?(v58, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (v103)(v39, v96);
    return 0;
  }

  v76 = v112;
  v77 = v39;
  v78 = v113;
  (*(v112 + 32))(v57, v71, v113);
  v79 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.modify();
  *v80 = MEMORY[0x277D84F90];

  v81 = v79(v117, 0);
  MEMORY[0x28223BE20](v81);
  v86 = v65;
  v82 = v92;
  Date.init()();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v87 = &v85;
  v88 = v83;
  LOBYTE(v86) = 2;
  v99(v117, 0xD000000000000049, 0x80000002234DF4C0, 0, v82, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 137, "personalizedSelection(from:with:)", 33, v86, partial apply for closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:));
  v91(v82, v114);
  outlined destroy of MediaUserStateCenter?(v58, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v84 = v117[0];
  (*(v76 + 8))(v57, v78);
  (v103)(v77, v96);
  return v84;
}

BOOL static SportsPersonalizationExperiencesResolver.hasPersonalizationInstruction(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  if (*(v13 + 16))
  {
    (*(v1 + 16))(v9, v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 56))(v9, 0, 1, v0);
  }

  else
  {

    (*(v1 + 56))(v9, 1, 1, v0);
  }

  outlined init with copy of MediaUserStateCenter?(v9, v7, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    v14 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    static SportsPersonalizationExperiencesResolver.makeSportsEntity(entity:)(v3, v12);
    (*(v1 + 8))(v3, v0);
    outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  }

  v15 = type metadata accessor for SportsPersonalizationEntity();
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of MediaUserStateCenter?(v12, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  return v16;
}

uint64_t static SportsPersonalizationExperiencesResolver.makeSportsEntity(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SportsItem();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  if (one-time initialization token for pommes != -1)
  {
LABEL_37:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.pommes);
  v21 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(a1, v20);
  if (v21)
  {
    v41 = v21;
    v42 = v16;
    v22 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    if (v22)
    {
      v23 = v22;
      SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
      v16 = (v23 & 0xFFFFFFFFFFFFFF8);
      v39 = v9;
      v40 = a2;
      v37 = v18;
      v38 = v7;
      v35 = v11;
      v36 = v10;
      if (v23 >> 62)
      {
        a1 = __CocoaSet.count.getter();
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
LABEL_6:
          v11 = 0;
          v44 = v23 & 0xC000000000000001;
          do
          {
            if (v44)
            {
              v9 = MEMORY[0x223DDFF80](v11, v23);
              v24 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              if (v11 >= *(v18 + 2))
              {
                __break(1u);
                goto LABEL_37;
              }

              v9 = *(v23 + 8 * v11 + 32);

              v24 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_31;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            v16 = v45;
            if (!v45)
            {
              goto LABEL_7;
            }

            v10 = specialized static SportsProperty.from(entity:)(v25);
            v7 = v26;
            a2 = v27;

            if (a2 <= 3u)
            {
              if (a2 > 1u)
              {
                if (a2 == 2)
                {
                  outlined copy of SportsProperty(v10, v7, 2u);
                  v16 = v43;
                  SportsItem.league.setter();

                  outlined consume of SportsProperty?(v10, v7, 2u);
                }

                else
                {
                  outlined copy of SportsProperty(v10, v7, 3u);
                  v16 = v43;
                  SportsItem.leagueQId.setter();

                  outlined consume of SportsProperty?(v10, v7, 3u);
                }
              }

              else if (a2)
              {
                outlined copy of SportsProperty(v10, v7, 1u);
                v16 = v43;
                SportsItem.teamQId.setter();

                outlined consume of SportsProperty?(v10, v7, 1u);
              }

              else
              {
                outlined copy of SportsProperty(v10, v7, 0);
                v16 = v43;
                SportsItem.team.setter();

                outlined consume of SportsProperty?(v10, v7, 0);
              }

              goto LABEL_8;
            }

            if (a2 <= 5u)
            {
              if (a2 == 4)
              {
                outlined copy of SportsProperty(v10, v7, 4u);
                v16 = v43;
                SportsItem.sport.setter();

                outlined consume of SportsProperty?(v10, v7, 4u);
              }

              else
              {
                outlined copy of SportsProperty(v10, v7, 5u);
                v16 = v43;
                SportsItem.sportQId.setter();

                outlined consume of SportsProperty?(v10, v7, 5u);
              }

              goto LABEL_8;
            }

            if (a2 == 6)
            {
              outlined copy of SportsProperty(v10, v7, 6u);
              v16 = v43;
              SportsItem.athlete.setter();

              outlined consume of SportsProperty?(v10, v7, 6u);
              goto LABEL_8;
            }

            if (a2 == 7)
            {
              outlined copy of SportsProperty(v10, v7, 7u);
              v16 = v43;
              SportsItem.athleteQId.setter();

              outlined consume of SportsProperty?(v10, v7, 7u);
            }

            else
            {
LABEL_7:
            }

LABEL_8:
            ++v11;
          }

          while (v24 != a1);
        }
      }

      v32 = v35;
      v31 = v36;
      v18 = v37;
      (*(v35 + 32))(v37, v43, v36);
      (*(v32 + 56))(v18, 0, 1, v31);
      v9 = v39;
      a2 = v40;
      v7 = v38;
    }

    else
    {
      (*(v11 + 56))(v18, 1, 1, v10);
    }

    static PersonalizationLevel.from(uso:)(v9);
    outlined init with copy of MediaUserStateCenter?(v18, v42, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    outlined init with copy of MediaUserStateCenter?(v9, v7, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

    outlined destroy of MediaUserStateCenter?(v9, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    outlined destroy of MediaUserStateCenter?(v18, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v33 = type metadata accessor for SportsPersonalizationEntity();
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  else
  {
LABEL_32:
    v28 = type metadata accessor for SportsPersonalizationEntity();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

uint64_t closure #1 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v36 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = v30 - v10;
  v11 = type metadata accessor for SportsPersonalizationEntity();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppDataProviding(a1, v41);
  v15 = v42;
  v16 = v43;
  v17 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v18 = *(a2 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = a2;
    v30[1] = v17;
    v31 = v16;
    v32 = v15;
    v33 = a3;
    v44 = MEMORY[0x277D84F90];
    v40 = v18;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v21 = v44;
    v22 = v20 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v34 = *(v39 + 72);
    v35 = v12;
    do
    {
      v23 = v37;
      outlined init with copy of MediaUserStateCenter?(v22, v37, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v24 = v36;
      outlined init with take of PommesSearchReason?(v23, v36, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v25 = *(v38 + 48);
      v39 = *(v12 + 32);
      (v39)(v14, v24, v11);
      v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
      (*(*(v26 - 8) + 8))(v24 + v25, v26);
      v44 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v21 = v44;
      }

      *(v21 + 16) = v28 + 1;
      (v39)(v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28, v14, v11);
      v22 += v34;
      --v40;
    }

    while (v40);
    v19 = v21;
    v16 = v31;
    v15 = v32;
  }

  (*(v16 + 8))(v19, v15, v16);

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t closure #2 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  v10 = type metadata accessor for SportsItem();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v9, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v14 = *(v7 + 56);
  SportsPersonalizationEntity.sportsItem.getter();
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v5, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v15 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v15 - 8) + 8))(v9, v15);
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v16 - 8) + 8))(&v9[v14], v16);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    v18 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v19 - 8) + 8))(&v9[v14], v19);
    v17 = static SportsItem.partiallyEqual(lhs:rhs:)();
    (*(v11 + 8))(v13, v10);
  }

  return v17 & 1;
}

uint64_t closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v13, a1, v10);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v15 = v14;
  v16 = type metadata accessor for ClientExperienceSignals();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v13, v9, v6, v15);
  outlined destroy of MediaUserStateCenter?(v6, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v9, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  result = (*(v11 + 8))(v13, v10);
  *a2 = v18;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(char *, uint64_t, char *, double)@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = a2(v14, a1, v10, a4);
  outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v12 + 8))(v14, v11);
  *a3 = v16;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v13[2] = a1;
  *&v13[3] = a5;
  v13[4] = a2;
  v11 = specialized Sequence.flatMap<A>(_:)(a3, v13, v10);

  *a4 = v11;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t, char *, double)@<X3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a3(a1, a2, v12, a5);
  result = outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a4 = v14;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v12, a1, a3);
  outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v10 + 8))(v12, v9);
  *a2 = v14;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  *&v9[3] = a3;
  v9[4] = a1;
  v7 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v9, v6);

  *a2 = v7;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4);
  result = outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a3 = v12;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v14, a2, a4, v10, v15);
  outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v12 + 8))(v14, v11);
  *a3 = v17;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v11 = *a1;
  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v10[2] = &v11;
  *&v10[3] = a4;
  v10[4] = a2;
  v8 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v10, v7);

  *a3 = v8;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = *a2;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a3, a5, v12, v13);
  result = outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a4 = v15;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  result = SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void *specialized static SportsPersonalizationExperiencesResolver.makeEntityInstructionMapping(alternatives:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v80 = &v73 - v5;
  v91 = type metadata accessor for SportsItem();
  v6 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v96 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v108 = &v73 - v24;
  v106 = type metadata accessor for SportsPersonalizationEntity();
  v25 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v90 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v88 = *(v89 - 8);
  v27 = MEMORY[0x28223BE20](v89);
  v87 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v105 = &v73 - v29;
  v114 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  MEMORY[0x28223BE20](v114);
  v113 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a1 + 16);
  if (v107)
  {
    v78 = v12;
    v109 = v22;
    v32 = v14;
    v33 = 0;
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    v103 = a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v104 = v35;
    v102 = *(v34 + 56);
    v94 = v32 + 16;
    v100 = (v32 + 48);
    v101 = (v32 + 56);
    v86 = (v32 + 32);
    v73 = (v6 + 32);
    v74 = (v6 + 56);
    v82 = (v32 + 8);
    v97 = (v25 + 48);
    v98 = (v25 + 56);
    v85 = (v25 + 32);
    v84 = (v34 + 16);
    v36 = MEMORY[0x277D84F90];
    v83 = (v34 - 8);
    v77 = v13;
    v95 = v32;
    v76 = v16;
    v75 = v20;
    v99 = v34;
    while (1)
    {
      v112 = v36;
      v104(v113, v103 + v102 * v33, v114);
      v37 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      if (*(v37 + 16))
      {
        v38 = v109;
        (*(v95 + 16))(v109, v37 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v13);
        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v109;
      }

      v40 = 1;
      (*v101)(v38, v39, 1, v13);
      outlined init with copy of MediaUserStateCenter?(v38, v20, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      if ((*v100)(v20, 1, v13) == 1)
      {
        goto LABEL_74;
      }

      (*v86)(v16, v20, v13);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v42 = __swift_project_value_buffer(v41, static Logger.pommes);
      v43 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(v16, v42);
      if (v43)
      {
        break;
      }

LABEL_73:
      (*v82)(v16, v13);
      v38 = v109;
LABEL_74:
      outlined destroy of MediaUserStateCenter?(v38, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      v58 = v108;
      v59 = v106;
      (*v98)(v108, v40, 1, v106);
      if ((*v97)(v58, 1, v59) == 1)
      {
        (*v83)(v113, v114);
        outlined destroy of MediaUserStateCenter?(v58, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
        v36 = v112;
      }

      else
      {
        v60 = v20;
        v61 = v13;
        v62 = *v85;
        v63 = v90;
        (*v85)(v90, v58, v59);
        v64 = *(v89 + 48);
        v65 = v87;
        v62(v87, v63, v59);
        (*v84)(v65 + v64, v113, v114);
        outlined init with take of PommesSearchReason?(v65, v105, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
        v36 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v67 = v36[2];
        v66 = v36[3];
        if (v67 >= v66 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v36);
        }

        v13 = v61;
        v20 = v60;
        v36[2] = v67 + 1;
        outlined init with take of PommesSearchReason?(v105, v36 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v67, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      }

      if (++v33 == v107)
      {
        goto LABEL_81;
      }
    }

    v92 = v43;
    v44 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    v93 = v33;
    if (!v44)
    {
      v55 = 1;
      v56 = v78;
LABEL_72:
      (*v74)(v56, v55, 1, v91);
      v57 = v80;
      static PersonalizationLevel.from(uso:)(v80);
      outlined init with copy of MediaUserStateCenter?(v56, v79, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
      outlined init with copy of MediaUserStateCenter?(v57, v81, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
      SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

      outlined destroy of MediaUserStateCenter?(v57, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
      outlined destroy of MediaUserStateCenter?(v56, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
      v40 = 0;
      v20 = v75;
      v33 = v93;
      v13 = v77;
      v16 = v76;
      goto LABEL_73;
    }

    v45 = v44;
    SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
    if (!(v45 >> 62))
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_15;
      }

      goto LABEL_71;
    }

    v46 = __CocoaSet.count.getter();
    if (!v46)
    {
LABEL_71:

      v56 = v78;
      (*v73)(v78, v96, v91);
      v55 = 0;
      goto LABEL_72;
    }

LABEL_15:
    v47 = 0;
    v48 = v45 & 0xC000000000000001;
    v110 = v45 & 0xC000000000000001;
    v111 = v46;
    while (1)
    {
      if (v48)
      {
        MEMORY[0x223DDFF80](v47, v45);
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          swift_once();
LABEL_83:
          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.pommes);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_2232BB000, v69, v70, "One or more alternative instruction did not have a single sports entity. Will ignore alternatives...", v71, 2u);
            MEMORY[0x223DE0F80](v71, -1, -1);
          }

          return 0;
        }
      }

      dispatch thunk of CodeGenListEntry.entry.getter();
      if (v115)
      {
        if (!dispatch thunk of UsoEntity_common_SportsItem.type.getter())
        {
          dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_32:

          goto LABEL_17;
        }

        v50 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
        v52 = v51;

        dispatch thunk of UsoEntity_common_SportsItem.name.getter();
        if (!v52)
        {
          v48 = v110;
          v46 = v111;
          goto LABEL_32;
        }

        if (v53)
        {
          if (v50 == 0x74726F7073 && v52 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.sport.setter();
          }

          else if (v50 == 0x69715F74726F7073 && v52 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.sportQId.setter();
          }

          else if (v50 == 0x65756761656CLL && v52 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.league.setter();
          }

          else if (v50 == 0x715F65756761656CLL && v52 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.leagueQId.setter();
          }

          else if (v50 == 1835099508 && v52 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.team.setter();
          }

          else if (v50 == 0x6469715F6D616574 && v52 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.teamQId.setter();
          }

          else if (v50 == 0x6574656C687461 && v52 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.athlete.setter();
          }

          else
          {
            if (v50 == 0x5F6574656C687461 && v52 == 0xEB00000000646971)
            {

LABEL_67:
              v48 = v110;

              SportsItem.athleteQId.setter();

              v46 = v111;
              goto LABEL_17;
            }

            v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v54)
            {

              goto LABEL_67;
            }
          }
        }

        else
        {
        }

        v48 = v110;
        v46 = v111;
      }

      else
      {
      }

LABEL_17:
      ++v47;
      if (v49 == v46)
      {
        goto LABEL_71;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_81:
  if (v36[2] != v107)
  {

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  return v36;
}

uint64_t specialized static SportsPersonalizationExperiencesResolver.isSupportedPersonalizationInstruction(_:)(uint64_t a1)
{
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = (v9 + 8);
  do
  {
    v38 = v15 != v14;
    if (v15 == v14)
    {
      break;
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
    if (Apple_Parsec_Siri_Context_ResultEntity.name.getter() == 0x6769626D61736944 && v18 == 0xEE006E6F69746175)
    {

      (*v16)(v11, v8);
      break;
    }

    ++v14;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v16)(v11, v8);
  }

  while ((v17 & 1) == 0);

  v19 = v33;
  v20 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v21 = MEMORY[0x223DDB9C0](v20);
  v35[1](v19, v40);
  result = v21;
  v22 = 0;
  v44 = *(v21 + 16);
  v23 = v45;
  ++v39;
  v40 = v46 + 16;
  v35 = v41 + 1;
  v41 = (v46 + 8);
  v24 = v34;
  while (1)
  {
    if (v44 == v22)
    {

      return v38;
    }

    if (v22 >= *(result + 16))
    {
      goto LABEL_19;
    }

    v25 = result;
    (*(v46 + 16))(v24, result + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, v23);
    v26 = v42;
    v27 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.getter();
    MEMORY[0x223DDB2A0](v27);
    (*v39)(v26, v43);
    v28 = String.lowercased()();

    v48 = v28;
    strcpy(v47, "disambiguation");
    v47[15] = -18;
    lazy protocol witness table accessor for type String and conformance String();
    v29 = StringProtocol.contains<A>(_:)();

    if (v29)
    {
      break;
    }

    ++v22;
    v30 = v36;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
    Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    (*v35)(v30, v37);
    v31 = String.lowercased()();

    v48 = v31;
    strcpy(v47, "disambiguation");
    v47[15] = -18;
    v32 = StringProtocol.contains<A>(_:)();
    v23 = v45;

    (*v41)(v24, v23);
    result = v25;
    if (v32)
    {

      return 1;
    }
  }

  (*v41)(v24, v23);
  return 1;
}

uint64_t getEnumTagSinglePayload for DisambiguatedSportsExperiencesResult(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisambiguatedSportsExperiencesResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t getEnumTag for DisambiguatedSportsExperiencesResult(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for DisambiguatedSportsExperiencesResult(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
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

uint64_t getEnumTagSinglePayload for SportsPersonalizationExperiencesResolver(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SportsPersonalizationExperiencesResolver(uint64_t result, int a2, int a3)
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

uint64_t partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 16), *(v1 + 40), a1, *(v1 + 32));
}

{
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), a1, *(v1 + 32));
}

{
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a1, *(v1 + 32));
}

{
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a1, *(v1 + 32));
}

uint64_t partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), a1, *(v1 + 32));
}

{
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), a1, *(v1 + 32));
}

{
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), a1, *(v1 + 32));
}

{
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), a1, *(v1 + 32));
}

unint64_t lazy protocol witness table accessor for type [Experience] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Experience] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Experience] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Experience] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(a1, *(v2 + 32), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a2, *(v2 + 24));
}

{
  return specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(a1, *(v2 + 32), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a2, *(v2 + 24));
}

double outlined copy of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t outlined consume of SportsProperty?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SportsProperty(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

double outlined copy of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
  }

  return result;
}

uint64_t outlined consume of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.firstUserDialogAct.getter@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v31 = &v30 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v30 = &v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v33 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v16;
  v34 = v1;
  result = Siri_Nlu_External_Span.matcherNames.getter();
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v3 + 16))(v13, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v2);
      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
      {
        break;
      }

      ++v20;
      result = (*(v3 + 8))(v13, v2);
      if (v19 == v20)
      {
        goto LABEL_6;
      }
    }

    v26 = *(v3 + 32);
    v27 = v33;
    v26(v33, v13, v2);
    v28 = v32;
LABEL_15:
    v26(v28, v27, v2);
    v25 = v35;
    v26(v35, v28, v2);
    goto LABEL_16;
  }

LABEL_6:

  result = Siri_Nlu_External_Span.matcherNames.getter();
  v21 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_11:

    v24 = Siri_Nlu_External_Span.matcherNames.getter();
    if (!*(v24 + 16))
    {

      v29 = 1;
      v25 = v35;
      return (*(v3 + 56))(v25, v29, 1, v2);
    }

    v25 = v35;
    (*(v3 + 16))(v35, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

LABEL_16:
    v29 = 0;
    return (*(v3 + 56))(v25, v29, 1, v2);
  }

  v23 = 0;
  while (v23 < *(v21 + 16))
  {
    (*(v3 + 16))(v6, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v2);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v26 = *(v3 + 32);
      v27 = v31;
      v26(v31, v6, v2);
      v28 = v30;
      goto LABEL_15;
    }

    ++v23;
    result = (*(v3 + 8))(v6, v2);
    if (v22 == v23)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

void *LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36[-v5];
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v36[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v45 = &v36[-v17];
  MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(&v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  result = LazySequenceProtocol.filter(_:)();
  v21 = v53;
  v51 = v55;
  v22 = *(v53 + 16);
  if (v22)
  {
    v42 = v6;
    v23 = 0;
    v49 = v8 + 16;
    v50 = v54;
    v24 = (v8 + 8);
    v47 = (v8 + 32);
    v48 = v22;
    v40 = v22 - 1;
    v46 = MEMORY[0x277D84F90];
    while (2)
    {
      v25 = v23;
      while (1)
      {
        if (v25 >= *(v21 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v27 = *(v8 + 72);
        (*(v8 + 16))(v13, v21 + v26 + v27 * v25, v7);
        v23 = v25 + 1;
        if (v50(v13))
        {
          break;
        }

        result = (*v24)(v13, v7);
        ++v25;
        if (v48 == v23)
        {
          goto LABEL_20;
        }
      }

      v28 = *v47;
      (*v47)(v44, v13, v7);
      v41 = v28;
      v28(v45, v44, v7);
      Siri_Nlu_External_UserParse.firstUserDialogAct.getter(v42);
      v29 = v42;
      v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      v38 = *(v30 - 8);
      v39 = v30;
      if ((*(v38 + 48))(v29, 1) == 1)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v29);
      }

      else
      {
        v37 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
        (*(v38 + 8))(v29, v39);
        if (v37)
        {
          result = (*v24)(v45, v7);
          goto LABEL_17;
        }
      }

      v41(v43, v45, v7);
      v31 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
        v31 = v52;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v46 = v34 + 1;
        v39 = v34;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v35 = v46;
        v34 = v39;
        v31 = v52;
      }

      *(v31 + 16) = v35;
      v46 = v31;
      result = v41(v31 + v26 + v34 * v27, v43, v7);
LABEL_17:
      if (v40 != v25)
      {
        continue;
      }

      goto LABEL_20;
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_20:

  return v46;
}

BOOL closure #1 in LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_Parser();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  v18 = *(v10 + 8);
  v19 = v9;
  v18(v12, v9);
  v13 = *MEMORY[0x277D5DA78];
  v17 = *(v3 + 104);
  v17(v6, v13, v2);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  if (v22 != v21)
  {
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    v18(v12, v19);
    v17(v6, *MEMORY[0x277D5DA80], v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v14(v6, v2);
    v14(v8, v2);
    if (v22 != v21)
    {
      return 0;
    }
  }

  Siri_Nlu_External_UserParse.comparableProbability.getter();
  return v15 > 0.05;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

uint64_t PommesSearchPreflightHandling.handleAndLog(pommesSearchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  swift_getDynamicType();
  v14 = _typeName(_:qualified:)();
  v16 = v15;

  v41 = v14;
  v42 = v16;
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DF530);
  v17 = v41;
  v18 = v42;
  Date.init()();
  v19 = &v13[v11[7]];
  *v19 = "SiriInformationSearch/PommesSearchPreflightHandling.swift";
  *(v19 + 1) = 57;
  v19[16] = 2;
  *&v13[v11[8]] = 39;
  v20 = &v13[v11[9]];
  *v20 = "handleAndLog(pommesSearchRequest:)";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v21 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v17, v18);
  v23 = v22;

  v24 = &v13[v11[10]];
  *v24 = v21;
  v24[1] = v23;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  (*(v7 + 16))(v9, v4, a2);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136446210;
    swift_getDynamicType();
    v30 = _typeName(_:qualified:)();
    v39 = v4;
    v31 = v30;
    v32 = v7;
    v33 = a3;
    v35 = v34;
    (*(v32 + 8))(v9, a2);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v35, &v41);
    a3 = v33;

    *(v28 + 4) = v36;
    _os_log_impl(&dword_2232BB000, v26, v27, "%{public}s#handle", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, a2);
  }

  v37 = (*(a3 + 16))(v40, a2, a3);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v13, 0);
  outlined destroy of PerformanceUtil.Ticket(v13);
  return v37;
}

uint64_t static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v80 = a7;
  v77 = a5;
  v78 = a6;
  v74 = a3;
  v75 = a4;
  v72 = a2;
  v79 = a1;
  v86 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v70 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a8;
  v87 = a8;
  v88 = a9;
  v73 = a9;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v71 = v21;
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v24 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v25 = *(v16 + 8);
  v69 = v16 + 8;
  v25(v20, v15);
  v26 = *(v24 + 16);
  v81 = v23;
  if (v26)
  {
    v66 = v25;
    v67 = v15;
    v90 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v90;
    v85 = v12;
    v29 = *(v12 + 16);
    v28 = v12 + 16;
    v83 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v65 = v24;
    v31 = v24 + v30;
    v82 = *(v28 + 56);
    v84 = v28;
    v32 = (v28 - 8);
    do
    {
      v33 = v86;
      v83(v14, v31, v86);
      v34 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
      v36 = v35;
      (*v32)(v14, v33);
      v90 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v27 = v90;
      }

      *(v27 + 16) = v38 + 1;
      v39 = v27 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v31 += v82;
      --v26;
    }

    while (v26);

    v23 = v81;
    v12 = v85;
    v15 = v67;
    v25 = v66;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v40 = a11;
  v82 = a10;
  v90 = v27;
  v41 = v68;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v42 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v25(v41, v15);
  v43 = *(v42 + 16);
  if (v43)
  {
    v69 = a11;
    v89 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v44 = v89;
    v46 = *(v12 + 16);
    v45 = v12 + 16;
    v84 = v46;
    v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
    v68 = v42;
    v48 = v42 + v47;
    v83 = *(v45 + 56);
    v85 = v45;
    v49 = (v45 - 8);
    do
    {
      v50 = v86;
      v84(v14, v48, v86);
      v51 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v53 = v52;
      (*v49)(v14, v50);
      v89 = v44;
      v55 = *(v44 + 16);
      v54 = *(v44 + 24);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        v44 = v89;
      }

      *(v44 + 16) = v55 + 1;
      v56 = v44 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v53;
      v48 += v83;
      --v43;
    }

    while (v43);

    v23 = v81;
    v40 = v69;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v89 = v44;
  v57 = type metadata accessor for PommesResponse();
  MEMORY[0x28223BE20](v57);
  v58 = v74;
  *(&v65 - 14) = v72;
  *(&v65 - 13) = v58;
  v59 = v76;
  *(&v65 - 12) = v23;
  *(&v65 - 11) = v59;
  v60 = v75;
  *(&v65 - 10) = v73;
  *(&v65 - 9) = v60;
  v61 = v78;
  *(&v65 - 8) = v77;
  *(&v65 - 7) = v61;
  *(&v65 - 6) = v82;
  *(&v65 - 5) = v40;
  *(&v65 - 4) = &v90;
  *(&v65 - 3) = &v89;
  v62 = v79;
  *(&v65 - 2) = v80;
  *(&v65 - 1) = v62;
  v63 = PommesResponse.__allocating_init(_:)();

  (*(v70 + 8))(v23, v71);
  return v63;
}

uint64_t closure #1 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  return v3(&v5, 0);
}

uint64_t closure #4 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v36 = a8;
  v37 = a7;
  v32 = a5;
  v45 = a14;
  v46 = a15;
  v43 = a13;
  v41 = a12;
  v38 = a11;
  v39 = a10;
  v35 = a9;
  v44 = type metadata accessor for PommesSearchReason();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v34 = v31 - v18;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v19 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  v31[1] = a4;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();

  PommesResponse.Builder.metadataDomainName.setter();
  PommesResponse.Builder.metadataFallbackTriggered.setter();
  PommesResponse.Builder.renderedTexts.setter();
  PommesResponse.Builder.redactedRenderedTexts.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v26 = *(v23 + 8);
  v32 = v23 + 8;
  v27 = v22;
  v26(v25, v22);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
  v28 = *(v19 + 8);
  v29 = v33;
  v28(v21, v33);
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v26(v25, v27);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
  v28(v21, v29);
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  PommesResponse.Builder.listenAfterSpeaking.setter();

  PommesResponse.Builder.requestId.setter();
  outlined init with copy of PommesCandidateId?(v35, v34);
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.Builder.isHandledByPreflight.setter();

  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();

  PommesResponse.Builder.taskStepLogs.setter();

  PommesResponse.Builder.userSensitiveTier1Logs.setter();
  PommesResponse.Builder.componentsWarmedUp.setter();
  (*(v42 + 16))(v40, v45, v44);
  PommesResponse.Builder.searchReason.setter();
  PommesResponse.Builder.isCachedResponse.setter();
  type metadata accessor for PommesSearchRequest(0);

  PommesResponse.Builder.searchRequestUtterance.setter();

  return PommesResponse.Builder.sharedUserId.setter();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch06PommesC15PreflightResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for PommesSearchPreflightResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PommesSearchPreflightResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PommesSearchPreflightResult(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t AssistantLocationProvider.__allocating_init(serviceHelper:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AssistantLocationProvider.init(serviceHelper:)(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t AssistantLocationProvider.init(serviceHelper:)(uint64_t a1)
{
  v1 = specialized AssistantLocationProvider.init(serviceHelper:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t AssistantLocationProvider.serviceHelper.setter(uint64_t a1)
{
  swift_beginAccess();
  v1[2] = a1;
  swift_unknownObjectRetain();
  v3 = swift_unknownObjectRelease();
  (*(*v1 + 288))(v3);
  swift_unknownObjectRelease();
}

uint64_t (*AssistantLocationProvider.serviceHelper.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AssistantLocationProvider.serviceHelper.modify;
}

uint64_t AssistantLocationProvider.serviceHelper.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*(**(a1 + 24) + 288))(result);
  }

  return result;
}

uint64_t AssistantLocationProvider.setServiceHelper(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v2 = swift_unknownObjectRetain();

  return v4(v2);
}

uint64_t key path setter for AssistantLocationProvider.status : AssistantLocationProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(a1, v6);
  return (*(**a2 + 216))(v6);
}

void (*AssistantLocationProvider.status.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for LocationStatus(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  OS_dispatch_queue.sync<A>(execute:)();

  return AssistantLocationProvider.status.modify;
}

void AssistantLocationProvider.status.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of LocationStatus(v3, v2);
    AssistantLocationProvider.status.setter(v2);
    outlined destroy of LocationStatus(v3);
  }

  else
  {
    AssistantLocationProvider.status.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t AssistantLocationProvider.statusPublisher.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher;
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Result<LocationStatus, LocationError>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR, MEMORY[0x277CBCE20]);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*AssistantLocationProvider.statusPublisher.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = AssistantLocationProvider.statusPublisher.getter();
  return AssistantLocationProvider.statusPublisher.modify;
}

Swift::Void __swiftcall AssistantLocationProvider.setCachedLocation(location:)(CLLocation location)
{
  isa = location.super.isa;
  v3 = type metadata accessor for LocationStatus(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - v8);
  (*(*v1 + 208))(v7);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of LocationStatus(v9);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "Cannot set cached location on cachedLocation status that is not .available", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }
  }

  else
  {
    v11 = *v9;
    v14 = v9[1];
    *v6 = isa;
    *(v6 + 1) = v14;
    v6[16] = 0;
    swift_storeEnumTagMultiPayload();
    v15 = *(*v1 + 216);
    v16 = isa;
    v15(v6);
  }
}

uint64_t AssistantLocationProvider.cachedLocationInfo(options:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1[2])
  {
    v8 = *(*v2 + 208);

    v8(v9);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of LocationStatus(v7);
      v10 = 0;
    }

    else
    {
      v12 = *v7;
      type metadata accessor for PommesCodableLocation(0);
      swift_allocObject();
      v10 = specialized PommesCodableLocation.init(fromCLLocation:)(v12);
    }

    v27[2] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21PommesCodableLocationCSgMd, &_s21SiriInformationSearch21PommesCodableLocationCSgMR);
    lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(&lazy protocol witness table cache variable for type PommesCodableLocation? and conformance <A> A?, &lazy protocol witness table cache variable for type PommesCodableLocation and conformance PommesCodableLocation, &protocol conformance descriptor for PommesCodableLocation, MEMORY[0x277D84F58]);
    lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(&lazy protocol witness table cache variable for type PommesCodableLocation? and conformance <A> A?, &lazy protocol witness table cache variable for type PommesCodableLocation and conformance PommesCodableLocation, &protocol conformance descriptor for PommesCodableLocation, MEMORY[0x277D84F40]);
    runSimulatableTask<A, B>(interactionId:input:_:)();

    if (v28)
    {
      v13 = *(*v28 + 168);

      v15 = v13(v14);

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.pommes);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_2232BB000, v18, v19, "SimulatedLocation is: %@", v20, 0xCu);
        outlined destroy of MediaUserStateCenter?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE0F80](v21, -1, -1);
        MEMORY[0x223DE0F80](v20, -1, -1);
      }

      *a2 = v17;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.pommes);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2232BB000, v24, v25, "LocationInformation from simulation is not present, continue with normal checks.", v26, 2u);
        MEMORY[0x223DE0F80](v26, -1, -1);
      }

      AssistantLocationProvider.locationStatusCheck()(a2);
    }
  }

  else
  {

    return AssistantLocationProvider.locationStatusCheck()(a2);
  }

  return result;
}

uint64_t AssistantLocationProvider.locationStatusCheck()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationStatus(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  (*(*v1 + 208))(v13);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  outlined init with copy of LocationStatus(v15, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v33 = a1;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    outlined init with copy of LocationStatus(v12, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v24 = 0x80000002234DF6F0;
        outlined destroy of LocationStatus(v12);
        v25 = 0xD000000000000015;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of LocationStatus(v12);
        v24 = 0xEC000000656C6261;
        v25 = 0x6C696176616E752ELL;
      }

      else
      {
        outlined destroy of LocationStatus(v12);
        v24 = 0xE800000000000000;
        v25 = 0x6E776F6E6B6E752ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
        outlined destroy of LocationStatus(v12);
        v23 = type metadata accessor for Date();
        (*(*(v23 - 8) + 8))(&v9[v22], v23);
        v24 = 0xE800000000000000;
        v25 = 0x676E69646E65702ELL;
      }

      else
      {
        v25 = 0xD000000000000011;
        v24 = 0x80000002234DF710;
        outlined destroy of LocationStatus(v12);
      }
    }

    else
    {
      outlined destroy of LocationStatus(v9);
      v24 = 0x80000002234DF730;
      outlined destroy of LocationStatus(v12);
      v25 = 0xD00000000000001ELL;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v34);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2232BB000, v17, v18, "Checking locationStatus with %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223DE0F80](v20, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);

    a1 = v33;
  }

  else
  {

    outlined destroy of LocationStatus(v12);
  }

  outlined init with take of LocationStatus(v15, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      goto LABEL_22;
    }

    v32 = xmmword_2234D6480;
LABEL_26:
    *a1 = v32;
    goto LABEL_27;
  }

  if (!result)
  {
    v30 = *(v6 + 1);
    v31 = v6[16];
    *a1 = *v6;
    *(a1 + 8) = v30;
    *(a1 + 16) = v31;
    return result;
  }

  if (result != 1)
  {
    v32 = xmmword_2234D6490;
    goto LABEL_26;
  }

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
  v29 = type metadata accessor for Date();
  result = (*(*(v29 - 8) + 8))(&v6[v28], v29);
LABEL_22:
  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_27:
  *(a1 + 16) = 256;
  return result;
}

Swift::String_optional __swiftcall AssistantLocationProvider.countryCode()()
{
  v0 = _AFPreferencesCountryCode();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::Void __swiftcall AssistantLocationProvider.reset()()
{
  v1 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 216))(v3);
}

uint64_t AssistantLocationProvider.deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of LocationStatus(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status);

  return v0;
}

uint64_t AssistantLocationProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of LocationStatus(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status);

  return swift_deallocClassInstance();
}