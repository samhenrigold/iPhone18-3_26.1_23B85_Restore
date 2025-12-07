uint64_t ContentSelector.getPriority(content:)()
{
  v0 = type metadata accessor for OnScreenContent.UIMetadata();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OnScreenContent.isVisualIntelligenceCameraEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.contentSelector);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v32);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v32);
      _os_log_impl(&dword_24FD67000, v9, v10, "%s.%s content is a Visual Intelligence entity, returning Priority.highest", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v12, -1, -1);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    return 4;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  (*(v1 + 8))(v3, v0);
  v14 = OnScreenContent.UIMetadata.Window.isActive.getter();
  (*(v5 + 8))(v7, v4);
  if ((v14 & 1) == 0 || OnScreenContent.isScreenshot()())
  {
    return 0;
  }

  if (OnScreenContent.isRelevantEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.contentSelector);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v32);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v32);
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s content is a relevant app entity, returning Priority.high", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    return 3;
  }

  else if (OnScreenContent.isAppEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.contentSelector);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v32);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v32);
      _os_log_impl(&dword_24FD67000, v22, v23, "%s.%s content is an app entity, returning Priority.medium", v24, 0x16u);
      v13 = 2;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v25, -1, -1);
      MEMORY[0x253057F40](v24, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  else
  {
    if (OnScreenContent.isWindowContentGeneratedPDF()())
    {
      return 0;
    }

    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.contentSelector);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v32);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v32);
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s content is a regular document, returning Priority.normal", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v30, -1, -1);
      MEMORY[0x253057F40](v29, -1, -1);
    }

    return 1;
  }

  return v13;
}

uint64_t ContentSelector.getSelectedContent(content:contents:isAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v53 = a3;
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - v6;
  v7 = type metadata accessor for OnScreenContent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = type metadata accessor for ScreenContent(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v47 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v48 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  (*(v8 + 16))(v10, a1, v7);
  ScreenContent.init(_:isAppEntity:)(v10, v53, v18);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v18, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.contentSelector);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v55);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, &v55);
      _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v32, -1, -1);
      MEMORY[0x253057F40](v31, -1, -1);
    }

    v33 = type metadata accessor for SelectedContent(0);
    return (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  }

  else
  {
    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v18, v26, type metadata accessor for ScreenContent);
    v35 = v54;
    ContentSelector.getAssociatedScreenshot(for:in:)(a1, v51, v16);
    if (v35)
    {
      return outlined destroy of SelectedContent(v26, type metadata accessor for ScreenContent);
    }

    else
    {
      v36 = v48;
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v26, v48, type metadata accessor for ScreenContent);
      v37 = v49;
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v16, v49, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (v27(v37, 1, v19) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v37, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
        v38 = type metadata accessor for ImageInfo(0);
        v39 = v50;
        (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      }

      else
      {
        v40 = v47;
        outlined init with copy of SelectedContent(v37, v47, type metadata accessor for ScreenContent);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v39 = v50;
        if (EnumCaseMultiPayload == 1)
        {
          v42 = type metadata accessor for ImageInfo(0);
          (*(*(v42 - 8) + 56))(v39, 1, 1, v42);
          outlined destroy of SelectedContent(v40, type metadata accessor for ScreenContent);
        }

        else
        {
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v40, v50, type metadata accessor for ImageInfo);
          v43 = type metadata accessor for ImageInfo(0);
          (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
        }

        outlined destroy of SelectedContent(v37, type metadata accessor for ScreenContent);
      }

      v44 = v52;
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v36, v52, type metadata accessor for ScreenContent);
      v45 = type metadata accessor for SelectedContent(0);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v44 + *(v45 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }
  }
}

uint64_t ContentSelector.getAssociatedScreenshot(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v163 = a3;
  v167 = type metadata accessor for IntelligenceProcessInfo();
  v180 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v155 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMd, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v166);
  v165 = &v146 - v7;
  v174 = type metadata accessor for OnScreenContent.UIMetadata();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v171 = *(v175 - 8);
  v9 = MEMORY[0x28223BE20](v175);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v154 = &v146 - v13;
  MEMORY[0x28223BE20](v12);
  v170 = &v146 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v159 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v177 = &v146 - v19;
  MEMORY[0x28223BE20](v18);
  v182 = &v146 - v20;
  v184 = type metadata accessor for OnScreenContent.Content();
  v21 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v146 - v24;
  v26 = type metadata accessor for OnScreenContent();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v152 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v146 - v31;
  MEMORY[0x28223BE20](v30);
  v186 = &v146 - v33;
  v176 = a1;
  if (OnScreenContent.isScreenshot()() && (specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter() & 1) == 0)
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.contentSelector);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v197 = v134;
      *v133 = 136315394;
      *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v197);
      *(v133 + 12) = 2080;
      *(v133 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v197);
      _os_log_impl(&dword_24FD67000, v131, v132, "%s.%s content is a screenshot and screenshots are prohibited, throwing an error", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v134, -1, -1);
      MEMORY[0x253057F40](v133, -1, -1);
    }

    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    *v135 = 1;
    return swift_willThrow();
  }

  else
  {
    if (OnScreenContent.isScreenshot()())
    {
      v34 = type metadata accessor for ScreenContent(0);
      return (*(*(v34 - 8) + 56))(v163, 1, 1, v34);
    }

    if (specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter())
    {
      v148 = v11;
      v146 = v32;
      v149 = v3;
      v36 = *(a2 + 16);
      if (!v36)
      {
LABEL_51:
        v143 = type metadata accessor for ScreenContent(0);
        return (*(*(v143 - 8) + 56))(v163, 1, 1, v143);
      }

      v37 = a2;
      v38 = v27;
      v39 = v26;
      v41 = *(v38 + 16);
      v38 += 16;
      v40 = v41;
      v42 = v37 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
      v179 = (v21 + 88);
      v169 = (v21 + 8);
      v168 = (v21 + 96);
      v178 = *MEMORY[0x277D1D360];
      v162 = (v172 + 8);
      v161 = (v171 + 8);
      v153 = (v180 + 6);
      v147 = (v180 + 4);
      v150 = (v180 + 1);
      v180 = (v38 - 8);
      v43 = *(v38 + 56);
      v185 = v39;
      v181 = v38;
      v158 = v41;
      v156 = v25;
      v157 = v43;
      v41(v186, v42, v39);
      while (1)
      {
        v45 = v183;
        OnScreenContent.content.getter();
        v46 = v184;
        v47 = (*v179)(v45, v184);
        if (v47 == v178)
        {
          (*v168)(v45, v46);
          v48 = type metadata accessor for OnScreenContent.Image();
          v49 = v45;
          v50 = v48;
          v51 = *(v48 - 8);
          (*(v51 + 32))(v25, v49, v48);
          (*(v51 + 56))(v25, 0, 1, v50);
        }

        else
        {
          v52 = v40;
          v53 = v45;
          v50 = type metadata accessor for OnScreenContent.Image();
          (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
          v54 = v53;
          v40 = v52;
          (*v169)(v54, v46);
        }

        type metadata accessor for OnScreenContent.Image();
        v55 = *(v50 - 8);
        if ((*(v55 + 48))(v25, 1, v50) == 1)
        {
          outlined destroy of OnScreenContent.Document?(v25, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
          v44 = v185;
          goto LABEL_9;
        }

        v56 = OnScreenContent.Image.isSnapshot.getter();
        (*(v55 + 8))(v25, v50);
        v44 = v185;
        if (v56)
        {
          v171 = v42;
          v172 = v36;
          v57 = v173;
          OnScreenContent.uiMetadata.getter();
          v58 = v170;
          OnScreenContent.UIMetadata.window.getter();
          v59 = *v162;
          v60 = v174;
          (*v162)(v57, v174);
          OnScreenContent.UIMetadata.Window.appProcess.getter();
          v61 = *v161;
          v62 = v175;
          (*v161)(v58, v175);
          OnScreenContent.uiMetadata.getter();
          OnScreenContent.UIMetadata.window.getter();
          v160 = v59;
          v59(v57, v60);
          OnScreenContent.UIMetadata.Window.appProcess.getter();
          v63 = v62;
          v64 = v182;
          v164 = v61;
          v61(v58, v63);
          v65 = *(v166 + 48);
          v66 = v165;
          outlined init with copy of IntelligenceProcessInfo?(v64, v165);
          outlined init with copy of IntelligenceProcessInfo?(v177, v66 + v65);
          v67 = *v153;
          v68 = v167;
          if ((*v153)(v66, 1, v167) == 1)
          {
            outlined destroy of OnScreenContent.Document?(v177, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            outlined destroy of OnScreenContent.Document?(v64, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            v69 = v67(v66 + v65, 1, v68);
            v44 = v185;
            v25 = v156;
            v36 = v172;
            v42 = v171;
            if (v69 != 1)
            {
              goto LABEL_21;
            }

            outlined destroy of OnScreenContent.Document?(v66, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
LABEL_23:
            v73 = v173;
            OnScreenContent.uiMetadata.getter();
            v74 = v170;
            OnScreenContent.UIMetadata.window.getter();
            v75 = v174;
            v76 = v160;
            v160(v73, v174);
            v151 = OnScreenContent.UIMetadata.Window.isActive.getter();
            v77 = v175;
            v164(v74, v175);
            OnScreenContent.uiMetadata.getter();
            OnScreenContent.UIMetadata.window.getter();
            v78 = v73;
            v44 = v185;
            v79 = v75;
            v80 = v158;
            v76(v78, v79);
            v81 = OnScreenContent.UIMetadata.Window.isActive.getter();
            v82 = v74;
            v40 = v80;
            v43 = v157;
            v164(v82, v77);
            v42 = v171;
            v36 = v172;
            if (((v151 ^ v81) & 1) == 0)
            {
              v83 = v173;
              OnScreenContent.uiMetadata.getter();
              v84 = v154;
              OnScreenContent.UIMetadata.window.getter();
              v85 = v174;
              v86 = v160;
              v160(v83, v174);
              v87 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
              v89 = v88;
              v90 = v164;
              v164(v84, v175);
              v91 = (v89 & 1) != 0 ? 0.0 : v87;
              OnScreenContent.uiMetadata.getter();
              v92 = v148;
              OnScreenContent.UIMetadata.window.getter();
              v86(v83, v85);
              v93 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
              v95 = v94;
              v90(v92, v175);
              v96 = (v95 & 1) != 0 ? v91 == 0.0 : v91 == v93;
              v40 = v158;
              v44 = v185;
              v25 = v156;
              v36 = v172;
              v43 = v157;
              v42 = v171;
              if (v96)
              {
                v97 = v173;
                OnScreenContent.uiMetadata.getter();
                v98 = v170;
                OnScreenContent.UIMetadata.window.getter();
                v99 = v174;
                v100 = v160;
                v160(v97, v174);
                OnScreenContent.UIMetadata.Window.boundingBox.getter();
                v101 = v187;
                v102 = v188;
                v103 = v189;
                v104 = v190;
                v105 = v175;
                v106 = v164;
                v164(v98, v175);
                OnScreenContent.uiMetadata.getter();
                OnScreenContent.UIMetadata.window.getter();
                v100(v97, v99);
                OnScreenContent.UIMetadata.Window.boundingBox.getter();
                v107 = v192;
                v108 = v193;
                v109 = v194;
                v110 = v195;
                v106(v98, v105);
                if (v191)
                {
                  v40 = v158;
                  v44 = v185;
                  v25 = v156;
                  v36 = v172;
                  v43 = v157;
                  v42 = v171;
                  if (v196)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  v40 = v158;
                  v44 = v185;
                  v25 = v156;
                  v36 = v172;
                  v43 = v157;
                  v42 = v171;
                  if ((v196 & 1) == 0)
                  {
                    v198.origin.x = v101;
                    v198.origin.y = v102;
                    v198.size.width = v103;
                    v198.size.height = v104;
                    v199.origin.x = v107;
                    v199.origin.y = v108;
                    v199.size.width = v109;
                    v199.size.height = v110;
                    if (CGRectEqualToRect(v198, v199))
                    {
LABEL_37:
                      if (one-time initialization token for contentSelector != -1)
                      {
                        swift_once();
                      }

                      v111 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v111, static Logger.contentSelector);
                      v112 = v146;
                      v40(v146, v186, v44);
                      v113 = Logger.logObject.getter();
                      v114 = static os_log_type_t.info.getter();
                      if (os_log_type_enabled(v113, v114))
                      {
                        v115 = swift_slowAlloc();
                        LODWORD(v183) = v114;
                        v116 = v115;
                        v184 = swift_slowAlloc();
                        v197 = v184;
                        *v116 = 136315650;
                        *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v197);
                        *(v116 + 12) = 2080;
                        *(v116 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v197);
                        *(v116 + 22) = 2080;
                        v117 = v44;
                        v118 = v152;
                        v40(v152, v112, v117);
                        v119 = String.init<A>(describing:)();
                        v121 = v120;
                        v122 = v40;
                        v123 = *v180;
                        v124 = v122;
                        (*v180)(v112, v185);
                        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, &v197);
                        v126 = v185;

                        *(v116 + 24) = v125;
                        v127 = v124;
                        _os_log_impl(&dword_24FD67000, v113, v183, "%s.%s found the associated screenshot: %s", v116, 0x20u);
                        v128 = v184;
                        swift_arrayDestroy();
                        MEMORY[0x253057F40](v128, -1, -1);
                        MEMORY[0x253057F40](v116, -1, -1);

                        v129 = v163;
                      }

                      else
                      {

                        v144 = v40;
                        v123 = *v180;
                        v127 = v144;
                        (*v180)(v112, v44);
                        v129 = v163;
                        v126 = v44;
                        v118 = v152;
                      }

                      v145 = v186;
                      v127(v118, v186, v126);
                      ScreenContent.init(_:isAppEntity:)(v118, 0, v129);
                      return (v123)(v145, v126);
                    }
                  }
                }
              }
            }

            goto LABEL_9;
          }

          v70 = v159;
          outlined init with copy of IntelligenceProcessInfo?(v66, v159);
          if (v67(v66 + v65, 1, v68) == 1)
          {
            outlined destroy of OnScreenContent.Document?(v177, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            outlined destroy of OnScreenContent.Document?(v182, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            (*v150)(v70, v68);
            v44 = v185;
            v25 = v156;
            v36 = v172;
            v42 = v171;
LABEL_21:
            outlined destroy of OnScreenContent.Document?(v66, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMd, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMR);
            v40 = v158;
            v43 = v157;
            goto LABEL_9;
          }

          v71 = v155;
          (*v147)(v155, v66 + v65, v68);
          lazy protocol witness table accessor for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo();
          v151 = dispatch thunk of static Equatable.== infix(_:_:)();
          v72 = *v150;
          (*v150)(v71, v68);
          outlined destroy of OnScreenContent.Document?(v177, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          outlined destroy of OnScreenContent.Document?(v182, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          v72(v70, v68);
          outlined destroy of OnScreenContent.Document?(v66, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          v40 = v158;
          v44 = v185;
          v25 = v156;
          v36 = v172;
          v43 = v157;
          v42 = v171;
          if (v151)
          {
            goto LABEL_23;
          }
        }

LABEL_9:
        (*v180)(v186, v44);
        v42 += v43;
        if (!--v36)
        {
          goto LABEL_51;
        }

        v40(v186, v42, v44);
      }
    }

    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, static Logger.contentSelector);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v197 = v140;
      *v139 = 136315394;
      *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v197);
      *(v139 + 12) = 2080;
      *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v197);
      _os_log_impl(&dword_24FD67000, v137, v138, "%s.%s screenshots are prohibited, returning content without a screenshot", v139, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v140, -1, -1);
      MEMORY[0x253057F40](v139, -1, -1);
    }

    v141 = v163;
    v142 = type metadata accessor for ScreenContent(0);
    return (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
  }
}

unint64_t lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error()
{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

uint64_t outlined destroy of SelectedContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SelectedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s26GenerativeAssistantActions15SelectedContentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of IntelligenceProcessInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo()
{
  result = lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo;
  if (!lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo)
  {
    type metadata accessor for IntelligenceProcessInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo);
  }

  return result;
}

uint64_t static DialogEngineClient.instance.getter(uint64_t a1)
{
  type metadata accessor for DialogEngineClient();

  return swift_initStaticObject();
}

uint64_t key path setter for DialogEngineClient.locale : DialogEngineClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t DialogEngineClient.locale.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DialogEngineClient.locale.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

Swift::String __swiftcall DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(GenerativeAssistantActions::CatId catId, Swift::String_optional partnerName, Swift::OpaquePointer additionalParameters)
{
  v4 = v3;
  object = partnerName.value._object;
  countAndFlagsBits = partnerName.value._countAndFlagsBits;
  v6 = catId;
  v74 = type metadata accessor for TemplatingText();
  v63 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TemplatingSection();
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x28223BE20](v8);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TemplatingResult();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CATOption();
  v66 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v14 = MEMORY[0x28223BE20](v65);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - v16;
  v18 = *v6;
  v19 = *(v4 + 40);
  *&v80 = *(v4 + 32);
  *(&v80 + 1) = v19;

  MEMORY[0x253056FE0](35, 0xE100000000000000);
  v21 = *(&v80 + 1);
  v20 = v80;
  LOBYTE(v79[0]) = v18;
  v22 = CatId.rawValue.getter();
  v24 = v23;
  v80 = __PAIR128__(v21, v20);

  MEMORY[0x253056FE0](v22, v24);

  v25 = v80;
  type metadata accessor for DialogEngineClient();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  swift_beginAccess();
  type metadata accessor for CATGlobals.Builder();

  CATGlobals.Builder.__allocating_init(siriLocale:)();
  v28 = dispatch thunk of CATGlobals.Builder.build()();

  if (object)
  {
    *(&v81 + 1) = MEMORY[0x277D837D0];
    *&v80 = countAndFlagsBits;
    *(&v80 + 1) = object;
    outlined init with take of Any(&v80, v79);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = additionalParameters._rawValue;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  v30 = v77;
  type metadata accessor for CATExecutor();
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  static CATOption.defaultMode.getter();
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:)();

  (*(v66 + 1))(v13, v67);
  outlined destroy of OnScreenContent.Document?(&v80, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  v31 = v71;
  outlined init with copy of Result<TemplatingResult, Error>(v17, v71);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (one-time initialization token for dialog != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.dialog);
    v34 = v32;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v67 = v28;
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v80 = v40;
      *v38 = 138412546;
      v41 = v32;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v42;
      *v39 = v42;
      *(v38 + 12) = 2080;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v80);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_24FD67000, v35, v36, "Received error %@ for retrieving cat: %s", v38, 0x16u);
      outlined destroy of OnScreenContent.Document?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x253057F40](v40, -1, -1);
      MEMORY[0x253057F40](v38, -1, -1);
    }

    else
    {
    }

    outlined destroy of OnScreenContent.Document?(v17, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v46 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v67 = v28;
    v65 = v27;
    v66 = v17;

    (*(v69 + 32))(v68, v31, v70);
    v44 = TemplatingResult.sections.getter();
    v45 = *(v44 + 16);
    countAndFlagsBits = v44;
    v46 = 0;
    if (v45)
    {
      v47 = *(v76 + 16);
      v48 = v44 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v71 = *(v76 + 72);
      object = v47;
      v49 = (v63 + 8);
      v76 += 16;
      v50 = (v76 - 8);
      v51 = 0xE000000000000000;
      v47(v30, v48, v75);
      while (1)
      {
        v59 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v59 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          *&v80 = v46;
          *(&v80 + 1) = v51;

          MEMORY[0x253056FE0](32, 0xE100000000000000);

          v51 = *(&v80 + 1);
          v46 = v80;
        }

        v52 = v73;
        TemplatingSection.content.getter();
        v53 = TemplatingText.text.getter();
        v55 = v54;
        (*v49)(v52, v74);
        *&v80 = v46;
        *(&v80 + 1) = v51;

        v56 = v53;
        v57 = v77;
        MEMORY[0x253056FE0](v56, v55);

        v51 = *(&v80 + 1);
        v46 = v80;
        v58 = v75;
        (*v50)(v57, v75);
        v48 += v71;
        if (!--v45)
        {
          break;
        }

        object(v57, v48, v58);
      }
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    (*(v69 + 8))(v68, v70);
    outlined destroy of OnScreenContent.Document?(v66, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  v60 = v46;
  v61 = v51;
  result._object = v61;
  result._countAndFlagsBits = v60;
  return result;
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DialogEngineClient.deinit()
{

  return v0;
}

uint64_t DialogEngineClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24FE0E29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F656372756F73;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D696D5F656C6966;
    }

    else
    {
      v5 = 0x5F65746973626577;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00657079745F65;
    }

    else
    {
      v6 = 0xEB000000006C7275;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D616E5F656C6966;
    }

    else
    {
      v5 = 0x745F656372756F73;
    }

    if (v4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 0x6D696D5F656C6966;
  v8 = 0xEE00657079745F65;
  if (a2 != 2)
  {
    v7 = 0x5F65746973626577;
    v8 = 0xEB000000006C7275;
  }

  if (a2)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xE900000000000079;
  v3 = 0x6C6E4F6563696F76;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x4679616C70736964;
    }

    else
    {
      v5 = 0x4F79616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0064726177726FLL;
    }

    else
    {
      v6 = 0xEB00000000796C6ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F466563696F76;
    }

    else
    {
      v5 = 0x6C6E4F6563696F76;
    }

    if (v4)
    {
      v6 = 0xEC00000064726177;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0x4679616C70736964;
  v8 = 0xEE0064726177726FLL;
  if (a2 != 2)
  {
    v7 = 0x4F79616C70736964;
    v8 = 0xEB00000000796C6ELL;
  }

  if (a2)
  {
    v3 = 0x726F466563696F76;
    v2 = 0xEC00000064726177;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE700000000000000;
    v15 = 0x646F50656D6F68;
    v16 = 0xE300000000000000;
    v17 = 6513005;
    if (a1 != 3)
    {
      v17 = 0x73646F50726961;
      v16 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0x6565724673657965;
    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v18 = 0x79616C50726163;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 22100;
    v5 = 0xE600000000000000;
    v6 = 0x6E6F69736976;
    if (a1 != 9)
    {
      v6 = 0x6E776F6E6B6E75;
      v5 = 0xE700000000000000;
    }

    if (a1 != 8)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x656E6F685069;
    v9 = 0xE400000000000000;
    v10 = 1684099177;
    if (a1 != 6)
    {
      v10 = 0x6863746177;
      v9 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (v2 <= 7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x6565724673657965)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x79616C50726163)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x646F50656D6F68)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE300000000000000;
      if (v11 != 6513005)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x73646F50726961)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xE200000000000000;
      if (v11 != 22100)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 9)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x6E6F69736976)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x6E776F6E6B6E75)
      {
LABEL_62:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v19 = 0xE600000000000000;
    if (v11 != 0x656E6F685069)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 6)
  {
    v19 = 0xE400000000000000;
    if (v11 != 1684099177)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v19 = 0xE500000000000000;
    if (v11 != 0x6863746177)
    {
      goto LABEL_62;
    }
  }

  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v20 = 1;
LABEL_63:

  return v20 & 1;
}

{
  v2 = 0xEE00416E51656761;
  v3 = 0x6D49656E696C6E49;
  v4 = a1;
  v5 = 0x6973734174786554;
  v6 = 0xED0000746E617473;
  if (a1 != 5)
  {
    v5 = 0x6E65476567616D49;
    v6 = 0xEF6E6F6974617265;
  }

  v7 = 0x656E654774786554;
  v8 = 0xEE006E6F69746172;
  if (a1 != 3)
  {
    v7 = 0x6764656C776F6E4BLL;
    v8 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x746E656D75636F44;
  v10 = 0xEB00000000416E51;
  if (a1 != 1)
  {
    v9 = 0x496E6F6973736553;
    v10 = 0xEF416E516567616DLL;
  }

  if (!a1)
  {
    v9 = 0x6D49656E696C6E49;
    v10 = 0xEE00416E51656761;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000416E51;
        if (v11 != 0x746E656D75636F44)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF416E516567616DLL;
        if (v11 != 0x496E6F6973736553)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000746E617473;
        if (v11 != 0x6973734174786554)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6E6F6974617265;
        if (v11 != 0x6E65476567616D49)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEE006E6F69746172;
      if (v11 != 0x656E654774786554)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6764656C776F6E4BLL;
    v2 = 0xE900000000000065;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

BOOL protocol witness for CarSessionProtocol.isConnectedToCarPlay.getter in conformance CARSessionStatus()
{
  v1 = *v0;
  [*v0 waitForSessionInitialization];
  v2 = [v1 currentSession];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t static CarUtils.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CarUtils.isConnectedToCar(requestMetadata:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  if ((*(v4 + 8))(v3, v4))
  {
    v5 = 1;
  }

  else
  {
    if (*(a1 + 42) < 2u && *(a1 + 42))
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v5 & 1;
}

uint64_t CarUtils.errorIntentDialogIfUnsupportedInCar(requestMetadata:partnerName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, Swift::String *a4@<X8>)
{
  v68.value._countAndFlagsBits = a2;
  v68.value._object = a3;
  v69 = a4;
  v6 = type metadata accessor for GenerativeRequestMetadata(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v12 = type metadata accessor for GenerativeAssistantUseCase();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4[5];
  v16 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v17);
  if ((*(v16 + 8))(v17, v16))
  {
    goto LABEL_5;
  }

  if (*(a1 + 42) < 2u && *(a1 + 42))
  {

LABEL_5:
    (*(v13 + 16))(v15, a1 + *(v6 + 32), v12);
    v19 = (*(v13 + 88))(v15, v12);
    if (v19 == *MEMORY[0x277D0D658] || v19 == *MEMORY[0x277D0D640])
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      if (static GenerativeAssistantSettingsUserDefaults.isEnabled()())
      {
        if (one-time initialization token for intent != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.intent);
        outlined init with copy of GenerativeRequestMetadata(a1, v11);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v70 = v25;
          *v24 = 136315138;
          v26 = GenerativeAssistantUseCase.rawValue.getter();
          v28 = v27;
          outlined destroy of GenerativeRequestMetadata(v11);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v70);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_24FD67000, v22, v23, "Intent type %s is supported in the car.", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x253057F40](v25, -1, -1);
          MEMORY[0x253057F40](v24, -1, -1);
        }

        else
        {

          outlined destroy of GenerativeRequestMetadata(v11);
        }

        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
        return (*(*(v67 - 8) + 56))(v69, 1, 1, v67);
      }

      else
      {
        if (one-time initialization token for intent != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.intent);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_24FD67000, v45, v46, "User needs to enable generative assistant tools when not driving.", v47, 2u);
          MEMORY[0x253057F40](v47, -1, -1);
        }

        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v70) = 42;
        v48 = MEMORY[0x277D84F90];
        v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        countAndFlagsBits = v68.value._countAndFlagsBits;
        object = v68.value._object;
        v52 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v70, v68, v49);

        v53 = v69;
        *v69 = v52;
        v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v48);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v54;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
        v57 = v70;
        LOBYTE(v70) = 42;
        v58 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v57);

        v59.value._countAndFlagsBits = countAndFlagsBits;
        v59.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v70, v59, v58);

        IntentDialog.init(stringLiteral:)();
        return (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.intent);
      outlined init with copy of GenerativeRequestMetadata(a1, v9);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v70 = v34;
        *v33 = 136315138;
        v35 = GenerativeAssistantUseCase.rawValue.getter();
        v37 = v36;
        outlined destroy of GenerativeRequestMetadata(v9);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v70);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_24FD67000, v31, v32, "Intent type %s is not enabled for car use", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x253057F40](v34, -1, -1);
        MEMORY[0x253057F40](v33, -1, -1);
      }

      else
      {

        outlined destroy of GenerativeRequestMetadata(v9);
      }

      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v70) = 41;
      v60 = MEMORY[0x277D84F90];
      v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v62 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v70, 0, v61);

      v63 = v69;
      *v69 = v62;
      v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v60);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
      LOBYTE(v70) = 41;
      v66 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);

      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v70, 0, v66);

      IntentDialog.init(stringLiteral:)();
      return (*(*(v65 - 8) + 56))(v63, 0, 1, v65);
    }
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_5;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
  v40 = *(*(v39 - 8) + 56);
  v41 = v39;
  v42 = v69;

  return v40(v42, 1, 1, v41);
}

uint64_t outlined init with copy of GenerativeRequestMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeRequestMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenerativeRequestMetadata(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeRequestMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CarUtils.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for CARSessionStatus()
{
  result = lazy cache variable for type metadata for CARSessionStatus;
  if (!lazy cache variable for type metadata for CARSessionStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CARSessionStatus);
  }

  return result;
}

uint64_t GenerativeAssistantUseCase.promptSanitizer.getter()
{
  v15 = type metadata accessor for StringRenderedPromptSanitizer.PrewarmMetadata();
  v0 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantUseCase.inputOverrides()(v10);
  (*(v8 + 104))(v10, *MEMORY[0x277D0E5C0], v7);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D0E5C8], v3);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  GenerativeAssistantUseCase.useCaseIdentifier.getter();
  v12 = [objc_opt_self() processInfo];
  [v12 processIdentifier];

  StringRenderedPromptSanitizer.PrewarmMetadata.init(useCaseIdentifier:onBehalfOfProcessId:)();
  StringRenderedPromptSanitizer.prewarm(metadata:)();
  return (*(v0 + 8))(v2, v15);
}

uint64_t GenerativeAssistantUseCase.responseSanitizer.getter()
{
  v15 = type metadata accessor for StringResponseSanitizer.PrewarmMetadata();
  v0 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantUseCase.outputOverrides()(v10);
  (*(v8 + 104))(v10, *MEMORY[0x277D0E578], v7);
  v11 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D0E580], v3);
  StringResponseSanitizer.init(overrides:guardrails:)();
  GenerativeAssistantUseCase.useCaseIdentifier.getter();
  v12 = [objc_opt_self() processInfo];
  [v12 processIdentifier];

  StringResponseSanitizer.PrewarmMetadata.init(useCaseIdentifier:onBehalfOfProcessId:)();
  StringResponseSanitizer.prewarm(metadata:)();
  return (*(v0 + 8))(v2, v15);
}

uint64_t GenerativeAssistantUseCase.inputDenyList()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for GenerativeAssistantUseCase();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = *(v7 + 16);
  v16(&v61 - v14, v1, v6);
  v17 = (*(v7 + 88))(v15, v6);
  if (v17 == *MEMORY[0x277D0D638])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList()();
LABEL_9:
    v18 = v67;
    v19 = v68;
    v20 = __swift_project_boxed_opaque_existential_1(v66, v67);
    MEMORY[0x28223BE20](v20);
    v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    MEMORY[0x253055870](v22, v18, v19[2].isa);
    v24 = type metadata accessor for InputDenyListBundle();
    (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  if (v17 == *MEMORY[0x277D0D650])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D658])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D640])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D648])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList()();
    v26 = v67;
    v64 = v68;
    v27 = __swift_project_boxed_opaque_existential_1(v66, v67);
    v65 = &v61;
    MEMORY[0x28223BE20](v27);
    v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    MEMORY[0x253055870](v29, v26, v64[2].isa);
    v31 = type metadata accessor for InputDenyListBundle();
    v32 = *(v31 - 8);
    isa = v32[7].isa;
    v64 = v32 + 7;
    isa(v5, 0, 1, v31);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v33 = v32[6].isa;
    v65 = v31;
    if (v33(v5, 1, v31) == 1)
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.modelInteraction);
      v16(v13, v1, v6);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v66[0] = v62;
        *v37 = 136315650;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v66);
        *(v37 + 12) = 2080;
        *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65447475706E69, 0xEF29287473694C79, v66);
        *(v37 + 22) = 2080;
        v38 = GenerativeAssistantUseCase.rawValue.getter();
        v40 = v39;
        (*(v7 + 8))(v13, v6);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v66);

        *(v37 + 24) = v41;
        _os_log_impl(&dword_24FD67000, v35, v36, "%s.%s Unable to find a valid input deny list for use case: %s, falling back to MediaQA", v37, 0x20u);
        v42 = v62;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v42, -1, -1);
        MEMORY[0x253057F40](v37, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v13, v6);
      }

      static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList()();
      v55 = v67;
      v56 = v68;
      v57 = __swift_project_boxed_opaque_existential_1(v66, v67);
      MEMORY[0x28223BE20](v57);
      v59 = &v61 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v59);
      MEMORY[0x253055870](v59, v55, v56[2].isa);
      outlined destroy of OnScreenContent.Document?(v5, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
      isa(a1, 0, 1, v65);
      return __swift_destroy_boxed_opaque_existential_0(v66);
    }

    return outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v5, a1, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.modelInteraction);
    v16(v10, v1, v6);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66[0] = v65;
      *v46 = 136315650;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v66);
      v64 = v44;
      *(v46 + 12) = 2080;
      *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65447475706E69, 0xEF29287473694C79, v66);
      *(v46 + 22) = 2080;
      v47 = GenerativeAssistantUseCase.rawValue.getter();
      v49 = v48;
      v50 = *(v7 + 8);
      LODWORD(isa) = v45;
      v50(v10, v6);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v66);

      *(v46 + 24) = v51;
      v52 = v64;
      _os_log_impl(&dword_24FD67000, v64, isa, "%s.%s Unable to find a valid input deny list for use case: %s", v46, 0x20u);
      v53 = v65;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v53, -1, -1);
      MEMORY[0x253057F40](v46, -1, -1);
    }

    else
    {

      v50 = *(v7 + 8);
      v50(v10, v6);
    }

    v54 = type metadata accessor for InputDenyListBundle();
    (*(*(v54 - 8) + 56))(a1, 1, 1, v54);
    return (v50)(v15, v6);
  }
}

uint64_t GenerativeAssistantUseCase.inputOverrides()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for InputDenyListBundle();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  GenerativeAssistantUseCase.inputDenyList()(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v4, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
    v12 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    (*(v6 + 8))(v11, v5);
    v12 = 0;
  }

  v13 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

uint64_t GenerativeAssistantUseCase.useCaseIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeAssistantUseCase();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  (*(v3 + 16))(&v16 - v7, v1, v2);
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D0D638] || v9 == *MEMORY[0x277D0D650] || v9 == *MEMORY[0x277D0D658] || v9 == *MEMORY[0x277D0D640] || v9 == *MEMORY[0x277D0D648])
  {
    (*(v3 + 104))(v6, v9, v2);
    v14 = GenerativeAssistantUseCase.rawValue.getter();
    (*(v3 + 8))(v6, v2);
    return v14;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantUseCase.outputDenyList()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for GenerativeAssistantUseCase();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = *(v7 + 16);
  v16(&v61 - v14, v1, v6);
  v17 = (*(v7 + 88))(v15, v6);
  if (v17 == *MEMORY[0x277D0D638])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList()();
LABEL_9:
    v18 = v67;
    v19 = v68;
    v20 = __swift_project_boxed_opaque_existential_1(v66, v67);
    MEMORY[0x28223BE20](v20);
    v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    MEMORY[0x253055890](v22, v18, v19[2].isa);
    v24 = type metadata accessor for OutputDenyListBundle();
    (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  if (v17 == *MEMORY[0x277D0D650])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D658])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D640])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList()();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D0D648])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList()();
    v26 = v67;
    v64 = v68;
    v27 = __swift_project_boxed_opaque_existential_1(v66, v67);
    v65 = &v61;
    MEMORY[0x28223BE20](v27);
    v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    MEMORY[0x253055890](v29, v26, v64[2].isa);
    v31 = type metadata accessor for OutputDenyListBundle();
    v32 = *(v31 - 8);
    isa = v32[7].isa;
    v64 = v32 + 7;
    isa(v5, 0, 1, v31);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v33 = v32[6].isa;
    v65 = v31;
    if (v33(v5, 1, v31) == 1)
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.modelInteraction);
      v16(v13, v1, v6);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v66[0] = v62;
        *v37 = 136315650;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v66);
        *(v37 + 12) = 2080;
        *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE35F30, v66);
        *(v37 + 22) = 2080;
        v38 = GenerativeAssistantUseCase.rawValue.getter();
        v40 = v39;
        (*(v7 + 8))(v13, v6);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v66);

        *(v37 + 24) = v41;
        _os_log_impl(&dword_24FD67000, v35, v36, "%s.%s Unable to find a valid output deny list for use case: %s, falling back to MediaQA", v37, 0x20u);
        v42 = v62;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v42, -1, -1);
        MEMORY[0x253057F40](v37, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v13, v6);
      }

      static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList()();
      v55 = v67;
      v56 = v68;
      v57 = __swift_project_boxed_opaque_existential_1(v66, v67);
      MEMORY[0x28223BE20](v57);
      v59 = &v61 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v59);
      MEMORY[0x253055890](v59, v55, v56[2].isa);
      outlined destroy of OnScreenContent.Document?(v5, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
      isa(a1, 0, 1, v65);
      return __swift_destroy_boxed_opaque_existential_0(v66);
    }

    return outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v5, a1, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.modelInteraction);
    v16(v10, v1, v6);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66[0] = v65;
      *v46 = 136315650;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v66);
      v64 = v44;
      *(v46 + 12) = 2080;
      *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE35F30, v66);
      *(v46 + 22) = 2080;
      v47 = GenerativeAssistantUseCase.rawValue.getter();
      v49 = v48;
      v50 = *(v7 + 8);
      LODWORD(isa) = v45;
      v50(v10, v6);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v66);

      *(v46 + 24) = v51;
      v52 = v64;
      _os_log_impl(&dword_24FD67000, v64, isa, "%s.%s Unable to find a valid output deny list for use case: %s", v46, 0x20u);
      v53 = v65;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v53, -1, -1);
      MEMORY[0x253057F40](v46, -1, -1);
    }

    else
    {

      v50 = *(v7 + 8);
      v50(v10, v6);
    }

    v54 = type metadata accessor for OutputDenyListBundle();
    (*(*(v54 - 8) + 56))(a1, 1, 1, v54);
    return (v50)(v15, v6);
  }
}

uint64_t GenerativeAssistantUseCase.outputOverrides()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for OutputDenyListBundle();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  GenerativeAssistantUseCase.outputDenyList()(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v4, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
    v12 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    StringResponseSanitizer.Overrides.init(denyList:)();
    (*(v6 + 8))(v11, v5);
    v12 = 0;
  }

  v13 = type metadata accessor for StringResponseSanitizer.Overrides();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

uint64_t sub_24FE11A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UploadableMedia.Source(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE11B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UploadableMedia.Source(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for UploadableDocumentData(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UploadableMedia.Source(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for UploadableMedia(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for (fileName: String, mimeType: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (fileName: String, mimeType: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fileName: String, mimeType: String?));
    }
  }
}

void type metadata accessor for (url: URL?)()
{
  if (!lazy cache variable for type metadata for (url: URL?))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL?));
    }
  }
}

uint64_t sub_24FE11E70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UploadableMedia.Source(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE11F30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UploadableMedia.Source(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for UploadableImageData(uint64_t a1)
{
  type metadata accessor for IntelligenceFile();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for CGSize?, type metadata accessor for CGSize);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Float?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UploadableMedia.Source(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Float?()
{
  if (!lazy cache variable for type metadata for Float?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Float?);
    }
  }
}

void type metadata completion function for ScreenContent(uint64_t a1)
{
  type metadata accessor for (info: ImageInfo)(319, &lazy cache variable for type metadata for (info: ImageInfo), type metadata accessor for ImageInfo);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (info: ImageInfo)(319, &lazy cache variable for type metadata for (info: DocumentInfo), type metadata accessor for DocumentInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (info: ImageInfo)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24FE122BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE1238C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ImageInfo(uint64_t a1)
{
  type metadata accessor for IntelligenceFile();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIImage(319, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for OnScreenContent.UIMetadata?, MEMORY[0x277D1D388]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24FE12538(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FE126D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for DocumentInfo(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntelligenceFile();
    if (v2 <= 0x3F)
    {
      type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for OnScreenContent.UIMetadata?, MEMORY[0x277D1D388]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for OnScreenContent.UIMetadata?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ScreenContent.init(_:isAppEntity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v203 = a2;
  v228 = a3;
  v201 = type metadata accessor for DocumentInfo(0);
  MEMORY[0x28223BE20](v201);
  v200 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for CharacterSet();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for IntelligenceFile.Attributes();
  v212 = *(v213 - 8);
  v6 = MEMORY[0x28223BE20](v213);
  v199 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v205 = &v184 - v9;
  MEMORY[0x28223BE20](v8);
  v210 = &v184 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v211 = &v184 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v216 = &v184 - v14;
  v15 = type metadata accessor for URL();
  v222 = *(v15 - 8);
  v223 = v15;
  MEMORY[0x28223BE20](v15);
  v217 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OnScreenContent.Document();
  v224 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v188 = &v184 - v22;
  v206 = type metadata accessor for IntelligenceProcessInfo();
  v207 = *(v206 - 8);
  v23 = MEMORY[0x28223BE20](v206);
  v209 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v190 = &v184 - v26;
  MEMORY[0x28223BE20](v25);
  v204 = &v184 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v189 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v193 = &v184 - v32;
  MEMORY[0x28223BE20](v31);
  v195 = &v184 - v33;
  v192 = type metadata accessor for ImageInfo(0);
  v34 = MEMORY[0x28223BE20](v192);
  v194 = (&v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v191 = &v184 - v36;
  v37 = type metadata accessor for IntelligenceImage.Representation();
  v208 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v184 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport17IntelligenceImageVSgMd, &_s21UIIntelligenceSupport17IntelligenceImageVSgMR);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v184 - v41;
  v43 = type metadata accessor for IntelligenceImage();
  v218 = *(v43 - 8);
  v219 = v43;
  MEMORY[0x28223BE20](v43);
  v214 = &v184 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for OnScreenContent.Image();
  v221 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v220 = &v184 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OnScreenContent.Content();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OnScreenContent.UIMetadata();
  v51 = *(v50 - 8);
  v229 = v50;
  v230 = v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v184 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ScreenContent(0);
  v226 = *(v54 - 8);
  v227 = v54;
  MEMORY[0x28223BE20](v54);
  v202 = &v184 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v53;
  OnScreenContent.uiMetadata.getter();
  v225 = a1;
  OnScreenContent.content.getter();
  v56 = (*(v47 + 88))(v49, v46);
  if (v56 == *MEMORY[0x277D1D368])
  {
    (*(v47 + 96))(v49, v46);
    v57 = v224;
    (*(v224 + 32))(v19, v49, v17);
    v58 = OnScreenContent.Document.file.getter();
    v59 = v17;
    v60 = v57;
    if (!v58)
    {
      v76 = type metadata accessor for OnScreenContent();
      (*(*(v76 - 8) + 8))(v225, v76);
      (*(v57 + 8))(v19, v59);
LABEL_10:
      (*(v230 + 8))(v231, v229);
      return (*(v226 + 56))(v228, 1, 1, v227);
    }

    v61 = v58;
    v62 = v216;
    IntelligenceFile.fileURL.getter();
    v64 = v222;
    v63 = v223;
    if ((*(v222 + 48))(v62, 1, v223) == 1)
    {

      v65 = type metadata accessor for OnScreenContent();
      (*(*(v65 - 8) + 8))(v225, v65);
      (*(v60 + 8))(v19, v59);
      (*(v230 + 8))(v231, v229);
      v66 = &_s10Foundation3URLVSgMd;
      v67 = &_s10Foundation3URLVSgMR;
      v68 = v62;
LABEL_13:
      outlined destroy of OnScreenContent.Document?(v68, v66, v67);
      return (*(v226 + 56))(v228, 1, 1, v227);
    }

    v220 = v59;
    v221 = v19;
    (*(v64 + 32))(v217, v62, v63);
    v77 = v210;
    IntelligenceFile.attributes.getter();
    v78 = v211;
    IntelligenceFile.Attributes.contentType.getter();
    v79 = v64;
    v80 = *(v212 + 1);
    v81 = v63;
    v82 = v213;
    v80(v77, v213);
    v83 = type metadata accessor for UTType();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v78, 1, v83) == 1)
    {

      v85 = type metadata accessor for OnScreenContent();
      (*(*(v85 - 8) + 8))(v225, v85);
      (*(v79 + 8))(v217, v81);
      (*(v60 + 8))(v221, v220);
      (*(v230 + 8))(v231, v229);
      v66 = &_s22UniformTypeIdentifiers6UTTypeVSgMd;
      v67 = &_s22UniformTypeIdentifiers6UTTypeVSgMR;
      v68 = v78;
      goto LABEL_13;
    }

    v218 = UTType.identifier.getter();
    v219 = v97;
    (*(v84 + 8))(v78, v83);
    v98 = v205;
    IntelligenceFile.attributes.getter();
    v99 = IntelligenceFile.Attributes.fileSize.getter();
    v101 = v100;
    v80(v98, v82);
    if (v101)
    {

      v102 = type metadata accessor for OnScreenContent();
      (*(*(v102 - 8) + 8))(v225, v102);
      (*(v222 + 8))(v217, v223);
      (*(v60 + 8))(v221, v220);
      goto LABEL_10;
    }

    v216 = v80;
    v104 = vcvts_n_f32_s64(v99, 0x14uLL);
    v232 = IntelligenceFile.name.getter();
    v233 = v105;
    v106 = v196;
    static CharacterSet.whitespaces.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v107 = StringProtocol.trimmingCharacters(in:)();
    v109 = v108;
    (*(v197 + 8))(v106, v198);

    v110 = HIBYTE(v109) & 0xF;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v110 = v107 & 0xFFFFFFFFFFFFLL;
    }

    v111 = v217;
    if (v110)
    {
      v112 = IntelligenceFile.name.getter();
    }

    else
    {
      v112 = static IntelligenceLocalizedStrings.document.getter();
    }

    v215 = v112;
    v214 = v113;
    v124 = v222;
    v125 = v223;
    v126 = v200;
    (*(v222 + 16))(v200, v111, v223);
    v127 = v199;
    IntelligenceFile.attributes.getter();
    v128 = v201;
    IntelligenceFile.Attributes.creationDate.getter();
    v129 = type metadata accessor for OnScreenContent();
    (*(*(v129 - 8) + 8))(v225, v129);
    (v216)(v127, v213);
    (*(v124 + 8))(v111, v125);
    (*(v224 + 8))(v221, v220);
    v130 = v128[10];
    v131 = v230;
    v132 = v229;
    (*(v230 + 32))(v126 + v130, v231, v229);
    (*(v131 + 56))(v126 + v130, 0, 1, v132);
    *(v126 + v128[5]) = v61;
    v133 = (v126 + v128[6]);
    v134 = v214;
    *v133 = v215;
    v133[1] = v134;
    v135 = (v126 + v128[7]);
    v136 = v219;
    *v135 = v218;
    v135[1] = v136;
    *(v126 + v128[9]) = v104;
    *(v126 + v128[11]) = v203 & 1;
    v137 = v202;
    outlined init with take of DocumentInfo(v126, v202, type metadata accessor for DocumentInfo);
    v138 = v227;
LABEL_65:
    swift_storeEnumTagMultiPayload();
    v183 = v228;
    outlined init with take of DocumentInfo(v137, v228, type metadata accessor for ScreenContent);
    return (*(v226 + 56))(v183, 0, 1, v138);
  }

  if (v56 != *MEMORY[0x277D1D360])
  {
    v75 = type metadata accessor for OnScreenContent();
    (*(*(v75 - 8) + 8))(v225, v75);
    (*(v230 + 8))(v231, v229);
    (*(v47 + 8))(v49, v46);
    return (*(v226 + 56))(v228, 1, 1, v227);
  }

  (*(v47 + 96))(v49, v46);
  v69 = v220;
  v70 = v221;
  v71 = v215;
  (*(v221 + 4))(v220, v49, v215);
  OnScreenContent.Image.image.getter();
  v72 = v218;
  v73 = v219;
  if ((*(v218 + 48))(v42, 1, v219) == 1)
  {
    v74 = type metadata accessor for OnScreenContent();
    (*(*(v74 - 8) + 8))(v225, v74);
    (*(v70 + 1))(v69, v71);
    (*(v230 + 8))(v231, v229);
    v66 = &_s21UIIntelligenceSupport17IntelligenceImageVSgMd;
    v67 = &_s21UIIntelligenceSupport17IntelligenceImageVSgMR;
    v68 = v42;
    goto LABEL_13;
  }

  v87 = v214;
  (*(v72 + 32))(v214, v42, v73);
  static ContentLoader.fullRepresentation.getter();
  v88 = IntelligenceImage.image(for:)();
  v89 = *(v208 + 8);
  v89(v39, v37);
  if (!v88)
  {
    v103 = type metadata accessor for OnScreenContent();
    (*(*(v103 - 8) + 8))(v225, v103);
    (*(v72 + 8))(v87, v73);
    (*(v221 + 1))(v69, v71);
    goto LABEL_10;
  }

  static ContentLoader.thumbnailRepresentation.getter();
  v90 = IntelligenceImage.image(for:)();
  v89(v39, v37);
  v91 = v229;
  v92 = v230;
  v93 = v221;
  if (!v90)
  {
LABEL_19:

    v96 = type metadata accessor for OnScreenContent();
    (*(*(v96 - 8) + 8))(v225, v96);
    (*(v218 + 8))(v214, v219);
    (*(v93 + 1))(v220, v71);
    (*(v92 + 8))(v231, v91);
    return (*(v226 + 56))(v228, 1, 1, v227);
  }

  v94 = IntelligenceFile.getImage()();
  if (v95)
  {

    goto LABEL_19;
  }

  v114 = v94;

  if (!v114)
  {
    goto LABEL_19;
  }

  v115 = OnScreenContent.Image.isSnapshot.getter();
  v116 = v195;
  (*(v92 + 16))(v195, v231, v91);
  (*(v92 + 56))(v116, 0, 1, v91);
  v117 = v194;
  *v194 = v88;
  v117[1] = v114;
  *(v117 + 16) = v115 & 1;
  v118 = v192;
  outlined init with copy of Date?(v116, v117 + *(v192 + 32), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v117 + *(v118 + 36)) = v203 & 1;
  v119 = v193;
  outlined init with copy of Date?(v116, v193, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v120 = *(v92 + 48);
  if (v120(v119, 1, v91) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v119, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v121 = MEMORY[0x277D84F90];
    v122 = v206;
    v123 = v207;
    goto LABEL_56;
  }

  v212 = v120;
  v213 = v92 + 48;
  v139 = OnScreenContent.UIMetadata.nestedRemoteProcesses.getter();
  v140 = v91;
  v141 = v139;
  result = (*(v92 + 8))(v119, v140);
  v123 = v207;
  v224 = *(v141 + 16);
  if (!v224)
  {
    v121 = MEMORY[0x277D84F90];
    v122 = v206;
LABEL_55:

    v91 = v229;
    v92 = v230;
    v93 = v221;
    v120 = v212;
LABEL_56:
    v156 = v214;
    if (*(v121 + 16))
    {
      v157 = v190;
      (*(v123 + 16))(v190, v121 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v122);

      v158 = v122;
      v159 = v91;
      v160 = IntelligenceProcessInfo.bundleIdentifier.getter();
      v162 = v161;
      v163 = type metadata accessor for OnScreenContent();
      (*(*(v163 - 8) + 8))(v225, v163);
      (*(v123 + 8))(v157, v158);
      outlined destroy of OnScreenContent.Document?(v195, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      (*(v218 + 8))(v156, v219);
      (*(v93 + 1))(v220, v215);
      (*(v92 + 8))(v231, v159);
    }

    else
    {

      v164 = v195;
      v165 = v189;
      outlined init with copy of Date?(v195, v189, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      if (v120(v165, 1, v91) == 1)
      {
        v166 = type metadata accessor for OnScreenContent();
        (*(*(v166 - 8) + 8))(v225, v166);
        outlined destroy of OnScreenContent.Document?(v164, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        (*(v218 + 8))(v156, v219);
        (*(v93 + 1))(v220, v215);
        (*(v92 + 8))(v231, v91);
        v167 = v165;
        v168 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
        v169 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
      }

      else
      {
        v170 = v185;
        OnScreenContent.UIMetadata.window.getter();
        v171 = *(v92 + 8);
        v171(v165, v91);
        v172 = v91;
        v173 = v188;
        OnScreenContent.UIMetadata.Window.appProcess.getter();
        v174 = v206;
        (*(v186 + 8))(v170, v187);
        if ((*(v123 + 48))(v173, 1, v174) != 1)
        {
          v176 = v173;
          v177 = v123;
          v178 = v174;
          v160 = IntelligenceProcessInfo.bundleIdentifier.getter();
          v162 = v179;
          v180 = type metadata accessor for OnScreenContent();
          (*(*(v180 - 8) + 8))(v225, v180);
          outlined destroy of OnScreenContent.Document?(v195, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
          (*(v218 + 8))(v156, v219);
          (*(v93 + 1))(v220, v215);
          v171(v231, v172);
          (*(v177 + 8))(v176, v178);
          goto LABEL_64;
        }

        v175 = type metadata accessor for OnScreenContent();
        (*(*(v175 - 8) + 8))(v225, v175);
        outlined destroy of OnScreenContent.Document?(v195, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        (*(v218 + 8))(v156, v219);
        (*(v93 + 1))(v220, v215);
        v171(v231, v172);
        v168 = &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd;
        v169 = _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR;
        v167 = v173;
      }

      outlined destroy of OnScreenContent.Document?(v167, v168, v169);
      v160 = 0;
      v162 = 0;
    }

LABEL_64:
    v181 = v194;
    v194[3] = v160;
    *(v181 + 32) = v162;
    v182 = v191;
    outlined init with take of DocumentInfo(v181, v191, type metadata accessor for ImageInfo);
    v137 = v202;
    outlined init with take of DocumentInfo(v182, v202, type metadata accessor for ImageInfo);
    v138 = v227;
    goto LABEL_65;
  }

  v142 = 0;
  v222 = 0x800000024FE20390;
  v223 = v207 + 16;
  v216 = 0x800000024FE20370;
  v211 = 0x800000024FE20340;
  v217 = (v207 + 8);
  v143 = (v207 + 32);
  v121 = MEMORY[0x277D84F90];
  v122 = v206;
  v144 = v204;
  while (v142 < *(v141 + 16))
  {
    v145 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v146 = *(v123 + 72);
    (*(v123 + 16))(v144, v141 + v145 + v146 * v142, v122);
    v147 = IntelligenceProcessInfo.bundleIdentifier.getter();
    if (v148)
    {
      v149 = v147;
      v150 = v148;
      if (v147 == 0xD000000000000010 && v148 == v222 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v149 == 0xD00000000000001ELL && v150 == v216 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v149 == 0xD000000000000022 && v150 == v211)
      {

LABEL_47:
        v151 = *v143;
        v122 = v206;
        (*v143)(v209, v144, v206);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v232 = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1);
          v122 = v206;
          v121 = v232;
        }

        v154 = *(v121 + 16);
        v153 = *(v121 + 24);
        if (v154 >= v153 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1);
          v122 = v206;
          v121 = v232;
        }

        *(v121 + 16) = v154 + 1;
        result = v151((v121 + v145 + v154 * v146), v209, v122);
        v144 = v204;
        goto LABEL_35;
      }

      v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v155)
      {
        goto LABEL_47;
      }

      v122 = v206;
      result = (*v217)(v144, v206);
    }

    else
    {
      result = (*v217)(v144, v122);
    }

LABEL_35:
    ++v142;
    v123 = v207;
    if (v224 == v142)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static ImageInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnScreenContent.UIMetadata();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  type metadata accessor for IntelligenceFile();
  if ((MEMORY[0x253055BB0](*a1, *a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for UIImage(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_4;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  if (v16)
  {
    if (!v17 || (*(a1 + 24) != *(a2 + 24) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (v17)
  {
    goto LABEL_4;
  }

  v24 = type metadata accessor for ImageInfo(0);
  v18 = *(v24 + 32);
  v19 = *(v11 + 48);
  outlined init with copy of Date?(a1 + v18, v13, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  outlined init with copy of Date?(a2 + v18, &v13[v19], &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v13, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
LABEL_20:
      v14 = *(a1 + *(v24 + 36)) ^ *(a2 + *(v24 + 36)) ^ 1;
      return v14 & 1;
    }

    goto LABEL_18;
  }

  outlined init with copy of Date?(v13, v10, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    outlined destroy of OnScreenContent.Document?(v13, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
    goto LABEL_4;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata, MEMORY[0x277D1D388], MEMORY[0x277D1D390]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  outlined destroy of OnScreenContent.Document?(v13, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_4:
  v14 = 0;
  return v14 & 1;
}

uint64_t specialized static ScreenContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for DocumentInfo(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ImageInfo(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for ScreenContent(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentO_ACtMd, &_s26GenerativeAssistantActions13ScreenContentO_ACtMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v32 - v23;
  v25 = *(v22 + 56);
  outlined init with copy of ScreenContent(a1, &v32 - v23);
  outlined init with copy of ScreenContent(v33, &v24[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of ScreenContent(v24, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of DocumentInfo(v18, v8, type metadata accessor for DocumentInfo);
      outlined init with take of DocumentInfo(&v24[v25], v6, type metadata accessor for DocumentInfo);
      v26 = specialized static DocumentInfo.== infix(_:_:)(v8, v6);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v6, type metadata accessor for DocumentInfo);
      v27 = v8;
      v28 = type metadata accessor for DocumentInfo;
LABEL_9:
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v27, v28);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v24, type metadata accessor for ScreenContent);
      return v26 & 1;
    }

    v29 = type metadata accessor for DocumentInfo;
    v30 = v18;
  }

  else
  {
    outlined init with copy of ScreenContent(v24, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of DocumentInfo(v20, v14, type metadata accessor for ImageInfo);
      outlined init with take of DocumentInfo(&v24[v25], v12, type metadata accessor for ImageInfo);
      v26 = specialized static ImageInfo.== infix(_:_:)(v14, v12);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v12, type metadata accessor for ImageInfo);
      v27 = v14;
      v28 = type metadata accessor for ImageInfo;
      goto LABEL_9;
    }

    v29 = type metadata accessor for ImageInfo;
    v30 = v20;
  }

  _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v30, v29);
  outlined destroy of OnScreenContent.Document?(v24, &_s26GenerativeAssistantActions13ScreenContentO_ACtMd, &_s26GenerativeAssistantActions13ScreenContentO_ACtMR);
  v26 = 0;
  return v26 & 1;
}

uint64_t outlined init with copy of ScreenContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of DocumentInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for UIImage(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t specialized static DocumentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnScreenContent.UIMetadata();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
  MEMORY[0x28223BE20](v9);
  v56 = &v50 - v10;
  v11 = type metadata accessor for Date();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v52 = v5;
  v53 = v4;
  type metadata accessor for IntelligenceFile();
  v20 = type metadata accessor for DocumentInfo(0);
  if ((MEMORY[0x253055BB0](*(a1 + v20[5]), *(a2 + v20[5])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = v20[6];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v25 = v20[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = v20[8];
  v30 = *(v17 + 48);
  outlined init with copy of Date?(a1 + v29, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = v30;
  outlined init with copy of Date?(a2 + v29, &v19[v30], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = *(v57 + 48);
  if (v31(v19, 1, v11) == 1)
  {
    if (v31(&v19[v51], 1, v11) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_17;
    }

LABEL_14:
    v32 = &_s10Foundation4DateVSg_ADtMd;
    v33 = &_s10Foundation4DateVSg_ADtMR;
    v34 = v19;
    goto LABEL_15;
  }

  outlined init with copy of Date?(v19, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v31(&v19[v51], 1, v11) == 1)
  {
    (*(v57 + 8))(v16, v11);
    goto LABEL_14;
  }

  v36 = v57;
  (*(v57 + 32))(v13, &v19[v51], v11);
  lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v36 + 8);
  v37(v13, v11);
  v37(v16, v11);
  outlined destroy of OnScreenContent.Document?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v51 & 1) == 0)
  {
LABEL_21:
    v35 = 0;
    return v35 & 1;
  }

LABEL_17:
  if (*(a1 + v20[9]) != *(a2 + v20[9]))
  {
    goto LABEL_21;
  }

  v38 = v20[10];
  v39 = *(v9 + 48);
  v40 = a1 + v38;
  v41 = v56;
  outlined init with copy of Date?(v40, v56, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  outlined init with copy of Date?(a2 + v38, v41 + v39, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v43 = v52;
  v42 = v53;
  v44 = *(v52 + 48);
  if (v44(v41, 1, v53) == 1)
  {
    if (v44(v41 + v39, 1, v42) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v41, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      v35 = 1;
      return v35 & 1;
    }
  }

  else
  {
    v46 = v55;
    outlined init with copy of Date?(v41, v55, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    if (v44(v41 + v39, 1, v42) != 1)
    {
      v47 = v41 + v39;
      v48 = v54;
      (*(v43 + 32))(v54, v47, v42);
      lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata, MEMORY[0x277D1D388], MEMORY[0x277D1D390]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v43 + 8);
      v49(v48, v42);
      v49(v46, v42);
      outlined destroy of OnScreenContent.Document?(v41, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      return v35 & 1;
    }

    (*(v43 + 8))(v46, v42);
  }

  v32 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd;
  v33 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR;
  v34 = v41;
LABEL_15:
  outlined destroy of OnScreenContent.Document?(v34, v32, v33);
  v35 = 0;
  return v35 & 1;
}

uint64_t lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ContentRequestErrors.logError()()
{
  v1 = *v0;
  v2 = *v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRequestFailed(code:domain:)(dword_24FE1DBD4[v1], 6);
  lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
  result = swift_allocError();
  *v4 = v2;
  return result;
}

uint64_t static ContentRequestErrors.errorDomain.getter()
{
  swift_beginAccess();
  v0 = static ContentRequestErrors.errorDomain;

  return v0;
}

uint64_t static ContentRequestErrors.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static ContentRequestErrors.errorDomain = a1;
  off_27F3A0790 = a2;
}

uint64_t key path setter for static ContentRequestErrors.errorDomain : ContentRequestErrors.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static ContentRequestErrors.errorDomain = v2;
  off_27F3A0790 = v1;
}

unint64_t ContentRequestErrors.NSLocalizedDescriptionKey.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000047;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000028;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 0xA:
      result = 0xD000000000000022;
      break;
    case 0xB:
    case 0xD:
      result = 0xD000000000000035;
      break;
    case 0xC:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ContentRequestErrors.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000024FE1FD40;
  v1 = ContentRequestErrors.NSLocalizedDescriptionKey.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  return v3;
}

Swift::Int ContentRequestErrors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ContentRequestErrors()
{
  swift_beginAccess();
  v0 = static ContentRequestErrors.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance ContentRequestErrors(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ContentRequestErrors(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24FE15D40@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27F3A0790;
  *a1 = static ContentRequestErrors.errorDomain;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for ContentRequestErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentRequestErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static SnippetPluginUtils.createConfirmationContainer(payload:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentViewOptions();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for AttachmentConfirmationPayload();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeResultModels();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  GenerativeMediaConfirmationSnippetModel.init(payload:)();
  (*(v8 + 104))(v10, *MEMORY[0x277D0D848], v7);
  lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels();
  SnippetPluginModel.data.getter();
  (*(v8 + 8))(v10, v7);
  static GenerativeResultModels.bundleName.getter();
  IntentViewOptions.init(canReplacePrintableText:)();
  return SnippetPluginContainer.init(data:bundleIdentifier:intentViewOptions:)();
}

unint64_t lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels()
{
  result = lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels;
  if (!lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels)
  {
    type metadata accessor for GenerativeResultModels();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels);
  }

  return result;
}

uint64_t static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()(char a1, char a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v17 = a1;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v17, 0, v11);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v16 = a2;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v16, 0, v12);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  return (v13)(v10, v4);
}

uint64_t static ConfirmationButtonActionUtils.getTextConfirmationButtonActions(partnerName:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v18 = 57;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v12.value._countAndFlagsBits = a1;
  v12.value._object = a2;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v18, v12, v11);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v17 = 58;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v17, 0, v13);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  return (v14)(v10, v4);
}

uint64_t static ConfirmationButtonActionUtils.getSignInRequiredActionConfirmationButtonActions(partnerName:)()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-v5];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v13 = 55;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v13, 0, v7);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v12 = 58;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v12, 0, v8);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for openSettingsDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v6, v0);
}

uint64_t AutoBugCaptureHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Overridable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40) == 1)
  {
    return (*(v2 + 24))(*v2);
  }

  v4 = *(*(*(a1 + 16) - 8) + 56);

  return v4(a2, 1, 1);
}

uint64_t type metadata instantiation function for Overridable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for Overridable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for Overridable(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a5);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a5);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a5);
}

{
  v7 = MEMORY[0x253056EA0](a2, a3);
  v8 = [a1 valueForKey_];

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

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a5 = 0;
    }

    v10 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v13);
    *a5 = 0;
    v10 = 1;
  }

  *(a5 + 8) = v10;
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in Overridable<A>.init(key:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = MEMORY[0x253056EA0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = MEMORY[0x253056EA0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 2;
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for SessionConfiguration()
{
  return MEMORY[0x2821D9C40]();
}

{
  return MEMORY[0x2821AB7B8]();
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = MEMORY[0x2821658D0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t GeneratedValues.extract<A>(field:)()
{
  return MEMORY[0x282165F20]();
}

{
  return MEMORY[0x282165F28]();
}

uint64_t Schema.Field.init<A>(name:description:type:)()
{
  return MEMORY[0x282166168]();
}

{
  return MEMORY[0x282166170]();
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{
  v0 = MEMORY[0x2821AB9D8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}