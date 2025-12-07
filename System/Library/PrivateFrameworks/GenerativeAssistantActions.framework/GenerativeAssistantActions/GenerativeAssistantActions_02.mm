uint64_t GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v142 = v8;
  v10 = *(v8 + 120);
  v9 = *(v8 + 128);
  *(v8 + 2368) = v10;
  *(v8 + 2376) = v9;
  v138 = v10;
  v139 = v9;
  v140 = 0;
  v141 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v138);
  outlined consume of GenerativeAssistantProgressLevel(v138, v139, v140, v141);
  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  v11 = SessionPersistenceUtils.SessionStoredValues.didSelectAlternateAttachment.getter();
  v12 = *(v8 + 1432);
  v13 = *(v12 + 16);
  if (v11)
  {
    v14 = *(v8 + 1840);
    if (v13)
    {
      v15 = v13 - 1;
      v16 = type metadata accessor for Attachment();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v14, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16);
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    else
    {
      v16 = type metadata accessor for Attachment();
      (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    }
  }

  else
  {
    v16 = type metadata accessor for Attachment();
    v18 = *(v16 - 8);
    v19 = v18;
    v20 = *(v8 + 1840);
    if (v13)
    {
      (*(v18 + 16))(*(v8 + 1840), v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16);
      (*(v19 + 56))(v20, 0, 1, v16);
    }

    else
    {
      (*(v18 + 56))(*(v8 + 1840), 1, 1, v16);
    }
  }

  v21 = *(v8 + 1832);
  outlined init with copy of Date?(*(v8 + 1840), v21, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  type metadata accessor for Attachment();
  v22 = *(v16 - 8);
  v23 = (*(v22 + 48))(v21, 1, v16);
  v24 = *(v8 + 1832);
  if (v23 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v8 + 1832), &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter();
    if ((SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  v25 = Attachment.isScreenshot.getter();
  (*(v22 + 8))(v24, v16);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0 && (v25)
  {
    v26 = *(v8 + 1440);
    *(v8 + 2384) = v26;
    if (v26)
    {
      v27 = *(v8 + 2224);

      v28 = (v27 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
      swift_beginAccess();
      v29 = *v28;
      v30 = *(v28 + 4);
      *v28 = 1;
      *(v28 + 4) = 0;
      if ((v30 & 1) == 0 && v29 == 6)
      {
        *v28 = 6;
      }

      v31 = *(v8 + 1744);
      outlined init with copy of Date?(*(v8 + 1488), v31, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v32 = type metadata accessor for ImageInfo(0);
      v137 = *(*(v32 - 8) + 48);
      v33 = v137(v31, 1, v32);
      v145 = v32;
      if (v33 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v8 + 1744), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      }

      else
      {
        v80 = *(v8 + 2264);
        v81 = *(v8 + 2248);
        v82 = *(v8 + 2032);
        v83 = *(v8 + 1744);
        outlined init with copy of Date?(v83 + *(v32 + 32), v82, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        outlined destroy of DocumentInfo(v83, type metadata accessor for ImageInfo);
        if (v80(v82, 1, v81) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v8 + 2032), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        }

        else
        {
          v84 = *(v8 + 2256);
          v85 = *(v8 + 2248);
          v86 = *(v8 + 2032);
          v87 = *(v8 + 2016);
          v88 = *(v8 + 2008);
          v89 = *(v8 + 2000);
          OnScreenContent.UIMetadata.window.getter();
          (*(v84 + 8))(v86, v85);
          OnScreenContent.UIMetadata.Window.boundingBox.getter();
          (*(v88 + 8))(v87, v89);
          if ((*(v8 + 1328) & 1) == 0)
          {
            v134 = 0;
            v135 = *(v8 + 1320);
            v136 = *(v8 + 1312);
            goto LABEL_47;
          }
        }
      }

      v135 = 0;
      v136 = 0;
      v134 = 1;
LABEL_47:
      v90 = *(v8 + 1330);
      v91 = *(v8 + 1728);
      v92 = *(v8 + 1712);
      v93 = *(v8 + 1704);
      IntelligenceFile.attributes.getter();
      v94 = IntelligenceFile.Attributes.fileSize.getter();
      v96 = v95;
      v97 = *(v92 + 8);
      v97(v91, v93);
      v98 = vcvts_n_f32_s64(v94, 0x14uLL);
      v133 = v96;
      if (v96)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = v98;
      }

      if (v90 == 1)
      {
        outlined init with copy of Date?(*(v8 + 1976), *(v8 + 1696), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
        v100 = v145;
      }

      else
      {
        v132 = v99;
        v101 = *(v8 + 1720);
        v102 = *(v8 + 1704);
        v103 = *(v8 + 1672);
        v131 = IntelligenceFile.name.getter();
        v105 = v104;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v97(v101, v102);
        v106 = type metadata accessor for UTType();
        v107 = *(v106 - 8);
        v108 = (*(v107 + 48))(v103, 1, v106);
        v109 = *(v8 + 1672);
        if (v108 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v8 + 1672), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v110 = 0;
          v111 = 0;
        }

        else
        {
          v110 = UTType.preferredMIMEType.getter();
          v111 = v112;
          (*(v107 + 8))(v109, v106);
        }

        v113 = *(v8 + 1696);
        *v113 = v131;
        v113[1] = v105;
        v113[2] = v110;
        v113[3] = v111;
        swift_storeEnumTagMultiPayload();
        v100 = v145;
        v99 = v132;
      }

      v114 = *(v8 + 1760);
      v115 = *(v8 + 1752);
      v116 = *(v8 + 1736);
      v117 = *(v8 + 1696);
      v118 = *(v8 + 1656);
      v119 = *(v8 + 1496);
      v120 = *(v8 + 1488);
      *v114 = v26;
      *(v114 + 8) = v136;
      *(v114 + 16) = v135;
      *(v114 + 24) = v134;
      *(v114 + 28) = v99;
      *(v114 + 32) = v133 & 1;
      outlined init with take of SelectedContent(v117, v114 + *(v115 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ModelOrchestrator(v119 + 40, v8 + 968);
      outlined init with copy of ScreenContent(v114, v118, type metadata accessor for UploadableImageData);
      v121 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v121 - 8) + 56))(v118, 0, 1, v121);
      v122 = *(v8 + 128);
      *(v8 + 520) = *(v8 + 112);
      *(v8 + 536) = v122;
      *(v8 + 552) = *(v8 + 144);
      v123 = *(v8 + 64);
      *(v8 + 456) = *(v8 + 48);
      *(v8 + 472) = v123;
      v124 = *(v8 + 96);
      *(v8 + 488) = *(v8 + 80);
      *(v8 + 504) = v124;
      v125 = *(v8 + 32);
      *(v8 + 424) = *(v8 + 16);
      *(v8 + 440) = v125;
      outlined init with copy of Date?(v120, v116, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v126 = v137(v116, 1, v100);
      v127 = *(v8 + 1736);
      if (v126 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v8 + 1736), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
        v128 = 0;
        v129 = 0;
      }

      else
      {
        v128 = *(v127 + 24);
        v129 = *(v127 + 32);

        outlined destroy of DocumentInfo(v127, type metadata accessor for ImageInfo);
      }

      *(v8 + 2392) = v129;
      v130 = swift_task_alloc();
      *(v8 + 2400) = v130;
      *v130 = v8;
      v130[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
      v44 = *(v8 + 1816);
      v45 = *(v8 + 1656);
      v46 = *(v8 + 1472);
      v47 = *(v8 + 1464);
      v48 = *(v8 + 1456);
      v144 = v129;
      v49 = v8 + 424;
      v78 = v128;
      goto LABEL_40;
    }
  }

  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
LABEL_20:

    goto LABEL_21;
  }

  if ((v25 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

  v50 = *(v8 + 1488);
  v51 = type metadata accessor for ImageInfo(0);
  LODWORD(v50) = (*(*(v51 - 8) + 48))(v50, 1, v51);

  if (v50 == 1)
  {
LABEL_21:
    v34 = *(v8 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v35 = *v34;
    v36 = *(v34 + 4);
    *v34 = 4;
    *(v34 + 4) = 0;
    if ((v36 & 1) == 0 && v35 == 6)
    {
      *v34 = 6;
    }

    v37 = *(v8 + 1648);
    v38 = type metadata accessor for UploadableMedia(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v39 = *(v8 + 128);
    *(v8 + 384) = *(v8 + 112);
    *(v8 + 400) = v39;
    *(v8 + 416) = *(v8 + 144);
    v40 = *(v8 + 64);
    *(v8 + 320) = *(v8 + 48);
    *(v8 + 336) = v40;
    v41 = *(v8 + 96);
    *(v8 + 352) = *(v8 + 80);
    *(v8 + 368) = v41;
    v42 = *(v8 + 32);
    *(v8 + 288) = *(v8 + 16);
    *(v8 + 304) = v42;
    v43 = swift_task_alloc();
    *(v8 + 2416) = v43;
    *v43 = v8;
    v43[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v44 = *(v8 + 1808);
    v45 = *(v8 + 1648);
    v46 = *(v8 + 1472);
    v47 = *(v8 + 1464);
    v48 = *(v8 + 1456);
    v144 = 0;
    v49 = v8 + 288;
    goto LABEL_39;
  }

LABEL_29:
  v52 = *(v8 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  swift_beginAccess();
  v53 = *v52;
  v54 = *(v52 + 4);
  *v52 = 2;
  *(v52 + 4) = 0;
  if ((v54 & 1) == 0 && v53 == 6)
  {
    *v52 = 6;
  }

  v55 = *(v8 + 1330);
  (*(v8 + 2160))(*(v8 + 2104), *(v8 + 2120), *(v8 + 2088));
  if (v55 == 1)
  {
    outlined init with copy of Date?(*(v8 + 1976), *(v8 + 1688), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v56 = *(v8 + 1664);
    v57 = (*(v8 + 1480) + *(*(v8 + 2176) + 24));
    v59 = *v57;
    v58 = v57[1];

    UTType.init(_:)();
    v60 = type metadata accessor for UTType();
    v61 = *(v60 - 8);
    v62 = (*(v61 + 48))(v56, 1, v60);
    v63 = *(v8 + 1664);
    if (v62 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v8 + 1664), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v64 = UTType.preferredMIMEType.getter();
      v65 = v66;
      (*(v61 + 8))(v63, v60);
    }

    v67 = *(v8 + 1688);
    *v67 = v59;
    v67[1] = v58;
    v67[2] = v64;
    v67[3] = v65;
  }

  swift_storeEnumTagMultiPayload();
  v68 = *(v8 + 1688);
  v69 = *(v8 + 1640);
  v70 = *(v8 + 1632);
  v71 = *(v8 + 1624);
  (*(*(v8 + 2096) + 32))(v70, *(v8 + 2104), *(v8 + 2088));
  outlined init with take of SelectedContent(v68, v70 + *(v71 + 20), type metadata accessor for UploadableMedia.Source);
  outlined init with copy of ScreenContent(v70, v69, type metadata accessor for UploadableDocumentData);
  v72 = type metadata accessor for UploadableMedia(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
  v73 = *(v8 + 80);
  *(v8 + 232) = *(v8 + 96);
  v74 = *(v8 + 128);
  *(v8 + 248) = *(v8 + 112);
  *(v8 + 264) = v74;
  v75 = *(v8 + 16);
  *(v8 + 168) = *(v8 + 32);
  v76 = *(v8 + 64);
  *(v8 + 184) = *(v8 + 48);
  *(v8 + 200) = v76;
  *(v8 + 216) = v73;
  *(v8 + 280) = *(v8 + 144);
  *(v8 + 152) = v75;
  v77 = swift_task_alloc();
  *(v8 + 2432) = v77;
  *v77 = v8;
  v77[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  v44 = *(v8 + 1800);
  v45 = *(v8 + 1640);
  v46 = *(v8 + 1472);
  v47 = *(v8 + 1464);
  v48 = *(v8 + 1456);
  v144 = 0;
  v49 = v8 + 152;
LABEL_39:
  v78 = 0;
LABEL_40:

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v44, v48, v47, v46, v45, v49, 0, v78);
}

uint64_t specialized GenerateController.handleGATError(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v117.value._countAndFlagsBits = a2;
  v117.value._object = a3;
  v126 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v111 = *(v126 - 8);
  v7 = MEMORY[0x28223BE20](v126);
  v108 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v122 = &v105 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v107 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = (&v105 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v124 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v105 - v14;
  v112 = type metadata accessor for GeneratedResponse(0);
  MEMORY[0x28223BE20](v112);
  v116 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v105 - v17;
  v19 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v114 = *(v19 - 8);
  boxed_opaque_existential_1 = v19;
  MEMORY[0x28223BE20](v19);
  v113 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GATError();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v105 - v25;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static GenerateTextFromMediaController.logger);
  v119 = *(v22 + 16);
  *&v120 = a1;
  (v119)(v26, a1, v21);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v30 = os_log_type_enabled(v28, v29);
  v110 = v4;
  v109 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v127[0] = v106;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v127);
    v128 = v29;
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1FE30, v127);
    *(v31 + 22) = 2080;
    lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    v32 = Error.localizedDescription.getter();
    v33 = v18;
    v35 = v34;
    v105 = v22;
    v36 = *(v22 + 8);
    v36(v26, v21);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, v127);
    v18 = v33;

    *(v31 + 24) = v37;
    _os_log_impl(&dword_24FD67000, v28, v128, "%s.%s [GATError = %s]", v31, 0x20u);
    v38 = v106;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v38, -1, -1);
    v39 = v31;
    v40 = v36;
    MEMORY[0x253057F40](v39, -1, -1);

    v41 = v105;
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v26, v21);
    v41 = v22;
  }

  v43 = v119;
  v42 = v120;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = GATError.errorCode.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  SELFUtils.recordRequestFailed(code:domain:)(result, 4);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
  v45 = swift_allocError();
  (v43)(v46, v42, v21);

  v47 = v121;
  (v43)(v121, v42, v21);
  v48 = (*(v41 + 88))(v47, v21);
  if (v48 == *MEMORY[0x277D0D710] || v48 == *MEMORY[0x277D0D718])
  {
    v40(v47, v21);
    swift_allocError();
    (v43)(v49, v42, v21);
    return swift_willThrow();
  }

  if (v48 == *MEMORY[0x277D0D708])
  {
    v51 = v113;
    v50 = v114;
    v52 = boxed_opaque_existential_1;
    (*(v114 + 104))(v113, *MEMORY[0x277D0D7A0], boxed_opaque_existential_1);
    v53 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v50 + 8))(v51, v52);
    countAndFlagsBits = v117.value._countAndFlagsBits;
    object = v117.value._object;
    if (v53._countAndFlagsBits == v117.value._countAndFlagsBits && v53._object == v117.value._object)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v127[0]) = 10;

        v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v103.value._countAndFlagsBits = countAndFlagsBits;
        v103.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v103, v102);

        v104 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        return swift_willThrow();
      }
    }

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v127[0]) = 18;
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v60.value._countAndFlagsBits = countAndFlagsBits;
    v60.value._object = object;
    v61 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v60, v59);
    v117.value._object = v61._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v62 = swift_allocObject();
    v120 = xmmword_24FE1A560;
    *(v62 + 16) = xmmword_24FE1A560;
    *(v62 + 32) = v61;
    v63 = type metadata accessor for URL();
    (*(*(v63 - 8) + 56))(v18, 1, 1, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
    v64 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v121 = *(v111 + 72);
    v65 = swift_allocObject();
    *(v65 + 16) = v120;
    v114 = v64;
    v66 = (v65 + v64);
    *v66 = 0;
    v66[1] = 0xE000000000000000;
    *&v120 = v65 + v64;
    swift_storeEnumTagMultiPayload();
    v67 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v119 = v18;
    v117.value._countAndFlagsBits = v67;
    v127[3] = v67;
    v127[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v68 = v112;
    v69 = v116;
    v70 = &v116[*(v112 + 56)];
    v129 = 49;
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v72 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v129, 0, v71);

    *v70 = v72;
    v73 = v65;
    v74 = v117.value._object;
    *v69 = v117.value._object;
    *(v69 + 8) = v61._object;
    *(v69 + 16) = v73;
    *(v69 + 24) = v62;
    *(v69 + 32) = 64;
    v75 = MEMORY[0x277D84F90];
    v76 = v119;
    *(v69 + 40) = MEMORY[0x277D84F90];
    *(v69 + 48) = v75;
    *(v69 + v68[15]) = v75;
    *(v69 + v68[12]) = 4;
    v77 = (v69 + v68[13]);
    *v77 = 0;
    v77[1] = 0xE000000000000000;
    outlined init with copy of Date?(v76, v69 + v68[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = (v69 + v68[11]);
    *v78 = 0;
    v78[1] = 0xE000000000000000;
    *(v69 + v68[16]) = 1;
    *(v69 + v68[17]) = 0;
    v79 = (v69 + v68[18]);
    *v79 = 0;
    v79[1] = 0xE000000000000000;
    v80 = (v69 + v68[19]);
    *v80 = 0;
    v80[1] = 0xE000000000000000;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v127, v69 + v68[21]);
    *(v69 + v68[20]) = xmmword_24FE1AE00;
    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v81._countAndFlagsBits = v74;
      v81._object = v61._object;
      v82 = GeneratedResponse.updateText(_:)(v81);

      v117.value._countAndFlagsBits = v82._countAndFlagsBits;
      *v69 = v82;
      boxed_opaque_existential_1 = v82._object;
      v83 = (v107 + 56);
      v84 = (v107 + 48);
      v85 = v73[2];

      v86 = 0;
      v87 = v73;
      v117.value._object = v73;
      v69 = v125;
      while (1)
      {
        if (v86 == v85)
        {
          v88 = 1;
          v86 = v85;
          v89 = v124;
        }

        else
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v86 >= v87[2])
          {
            goto LABEL_42;
          }

          v90 = v120 + v86 * v121;
          v91 = *(v69 + 48);
          v92 = v118;
          *v118 = v86;
          outlined init with copy of ScreenContent(v90, v92 + v91, type metadata accessor for GeneratedResponse.RichContentEntity);
          v93 = v92;
          v89 = v124;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v93, v124, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v88 = 0;
          ++v86;
        }

        v94 = v123;
        (*v83)(v89, v88, 1, v69);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v89, v94, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v84)(v94, 1, v69) == 1)
        {
          break;
        }

        v95 = *v94;
        v96 = v94 + *(v69 + 48);
        v97 = v122;
        outlined init with take of SelectedContent(v96, v122, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v99 = v97;
        v69 = v125;
        result = outlined destroy of DocumentInfo(v99, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v100 = v108;
          v101 = boxed_opaque_existential_1;
          *v108 = v117.value._countAndFlagsBits;
          v100[1] = v101;
          swift_storeEnumTagMultiPayload();

          v76 = v117.value._object;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v95 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v76);
            v76 = result;
            if ((v95 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v95 >= v76[2])
          {
            goto LABEL_43;
          }

          result = outlined assign with take of GeneratedResponse.RichContentEntity(v108, v76 + v114 + v95 * v121);
          v117.value._object = v76;
          *(v116 + 2) = v76;
        }
      }

      outlined destroy of OnScreenContent.Document?(v119, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v69 = v116;
    }

    else
    {
LABEL_35:
      outlined destroy of OnScreenContent.Document?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    outlined init with copy of ScreenContent(v69, v109, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v127);
    return outlined destroy of DocumentInfo(v69, type metadata accessor for GeneratedResponse);
  }

  else
  {
    static GATError.errorDomain.getter();
    GATError.errorCode.getter();
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v127[0]) = 16;
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v117, v56);

    v57 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    return (v40)(v121, v21);
  }
}

{
  v117.value._countAndFlagsBits = a2;
  v117.value._object = a3;
  v126 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v111 = *(v126 - 8);
  v7 = MEMORY[0x28223BE20](v126);
  v108 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v122 = &v105 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v107 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = (&v105 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v124 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v105 - v14;
  v112 = type metadata accessor for GeneratedResponse(0);
  MEMORY[0x28223BE20](v112);
  v116 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v105 - v17;
  v19 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v114 = *(v19 - 8);
  boxed_opaque_existential_1 = v19;
  MEMORY[0x28223BE20](v19);
  v113 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GATError();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v105 - v25;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static GenerateTextController.logger);
  v119 = *(v22 + 16);
  *&v120 = a1;
  (v119)(v26, a1, v21);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v30 = os_log_type_enabled(v28, v29);
  v110 = v4;
  v109 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v127[0] = v106;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1FE10, v127);
    v128 = v29;
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1FE30, v127);
    *(v31 + 22) = 2080;
    lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    v32 = Error.localizedDescription.getter();
    v33 = v18;
    v35 = v34;
    v105 = v22;
    v36 = *(v22 + 8);
    v36(v26, v21);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, v127);
    v18 = v33;

    *(v31 + 24) = v37;
    _os_log_impl(&dword_24FD67000, v28, v128, "%s.%s [GATError = %s]", v31, 0x20u);
    v38 = v106;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v38, -1, -1);
    v39 = v31;
    v40 = v36;
    MEMORY[0x253057F40](v39, -1, -1);

    v41 = v105;
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v26, v21);
    v41 = v22;
  }

  v43 = v119;
  v42 = v120;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = GATError.errorCode.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  SELFUtils.recordRequestFailed(code:domain:)(result, 4);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
  v45 = swift_allocError();
  (v43)(v46, v42, v21);

  v47 = v121;
  (v43)(v121, v42, v21);
  v48 = (*(v41 + 88))(v47, v21);
  if (v48 == *MEMORY[0x277D0D710] || v48 == *MEMORY[0x277D0D718])
  {
    v40(v47, v21);
    swift_allocError();
    (v43)(v49, v42, v21);
    return swift_willThrow();
  }

  if (v48 == *MEMORY[0x277D0D708])
  {
    v51 = v113;
    v50 = v114;
    v52 = boxed_opaque_existential_1;
    (*(v114 + 104))(v113, *MEMORY[0x277D0D7A0], boxed_opaque_existential_1);
    v53 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v50 + 8))(v51, v52);
    countAndFlagsBits = v117.value._countAndFlagsBits;
    object = v117.value._object;
    if (v53._countAndFlagsBits == v117.value._countAndFlagsBits && v53._object == v117.value._object)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v127[0]) = 10;

        v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v103.value._countAndFlagsBits = countAndFlagsBits;
        v103.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v103, v102);

        v104 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        return swift_willThrow();
      }
    }

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v127[0]) = 18;
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v60.value._countAndFlagsBits = countAndFlagsBits;
    v60.value._object = object;
    v61 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v60, v59);
    v117.value._object = v61._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v62 = swift_allocObject();
    v120 = xmmword_24FE1A560;
    *(v62 + 16) = xmmword_24FE1A560;
    *(v62 + 32) = v61;
    v63 = type metadata accessor for URL();
    (*(*(v63 - 8) + 56))(v18, 1, 1, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
    v64 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v121 = *(v111 + 72);
    v65 = swift_allocObject();
    *(v65 + 16) = v120;
    v114 = v64;
    v66 = (v65 + v64);
    *v66 = 0;
    v66[1] = 0xE000000000000000;
    *&v120 = v65 + v64;
    swift_storeEnumTagMultiPayload();
    v67 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v119 = v18;
    v117.value._countAndFlagsBits = v67;
    v127[3] = v67;
    v127[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v68 = v112;
    v69 = v116;
    v70 = &v116[*(v112 + 56)];
    v129 = 49;
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v72 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v129, 0, v71);

    *v70 = v72;
    v73 = v65;
    v74 = v117.value._object;
    *v69 = v117.value._object;
    *(v69 + 8) = v61._object;
    *(v69 + 16) = v73;
    *(v69 + 24) = v62;
    *(v69 + 32) = 64;
    v75 = MEMORY[0x277D84F90];
    v76 = v119;
    *(v69 + 40) = MEMORY[0x277D84F90];
    *(v69 + 48) = v75;
    *(v69 + v68[15]) = v75;
    *(v69 + v68[12]) = 4;
    v77 = (v69 + v68[13]);
    *v77 = 0;
    v77[1] = 0xE000000000000000;
    outlined init with copy of Date?(v76, v69 + v68[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = (v69 + v68[11]);
    *v78 = 0;
    v78[1] = 0xE000000000000000;
    *(v69 + v68[16]) = 1;
    *(v69 + v68[17]) = 0;
    v79 = (v69 + v68[18]);
    *v79 = 0;
    v79[1] = 0xE000000000000000;
    v80 = (v69 + v68[19]);
    *v80 = 0;
    v80[1] = 0xE000000000000000;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v127, v69 + v68[21]);
    *(v69 + v68[20]) = xmmword_24FE1AE00;
    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v81._countAndFlagsBits = v74;
      v81._object = v61._object;
      v82 = GeneratedResponse.updateText(_:)(v81);

      v117.value._countAndFlagsBits = v82._countAndFlagsBits;
      *v69 = v82;
      boxed_opaque_existential_1 = v82._object;
      v83 = (v107 + 56);
      v84 = (v107 + 48);
      v85 = v73[2];

      v86 = 0;
      v87 = v73;
      v117.value._object = v73;
      v69 = v125;
      while (1)
      {
        if (v86 == v85)
        {
          v88 = 1;
          v86 = v85;
          v89 = v124;
        }

        else
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v86 >= v87[2])
          {
            goto LABEL_42;
          }

          v90 = v120 + v86 * v121;
          v91 = *(v69 + 48);
          v92 = v118;
          *v118 = v86;
          outlined init with copy of ScreenContent(v90, v92 + v91, type metadata accessor for GeneratedResponse.RichContentEntity);
          v93 = v92;
          v89 = v124;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v93, v124, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v88 = 0;
          ++v86;
        }

        v94 = v123;
        (*v83)(v89, v88, 1, v69);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v89, v94, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v84)(v94, 1, v69) == 1)
        {
          break;
        }

        v95 = *v94;
        v96 = v94 + *(v69 + 48);
        v97 = v122;
        outlined init with take of SelectedContent(v96, v122, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v99 = v97;
        v69 = v125;
        result = outlined destroy of DocumentInfo(v99, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v100 = v108;
          v101 = boxed_opaque_existential_1;
          *v108 = v117.value._countAndFlagsBits;
          v100[1] = v101;
          swift_storeEnumTagMultiPayload();

          v76 = v117.value._object;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v95 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v76);
            v76 = result;
            if ((v95 & 0x8000000000000000) != 0)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          if (v95 >= v76[2])
          {
            goto LABEL_43;
          }

          result = outlined assign with take of GeneratedResponse.RichContentEntity(v108, v76 + v114 + v95 * v121);
          v117.value._object = v76;
          *(v116 + 2) = v76;
        }
      }

      outlined destroy of OnScreenContent.Document?(v119, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v69 = v116;
    }

    else
    {
LABEL_35:
      outlined destroy of OnScreenContent.Document?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    outlined init with copy of ScreenContent(v69, v109, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v127);
    return outlined destroy of DocumentInfo(v69, type metadata accessor for GeneratedResponse);
  }

  else
  {
    static GATError.errorDomain.getter();
    GATError.errorCode.getter();
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v127[0]) = 16;
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v127, v117, v56);

    v57 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    return (v40)(v121, v21);
  }
}

uint64_t specialized GenerateController.handleModelOrchestratorError(error:partnerName:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a4;
  v107 = a2;
  v6 = *(a1 + 1);
  v7 = *(a1 + 3);
  boxed_opaque_existential_1 = *(a1 + 2);
  v99 = v6;
  v100 = v7;
  LODWORD(v106) = *(a1 + 32);
  v105 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v8 = *(v105 - 8);
  v9 = MEMORY[0x28223BE20](v105);
  v93 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v101 = &v89 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = (&v89 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v89 - v17;
  object = type metadata accessor for GeneratedResponse(0);
  MEMORY[0x28223BE20](object);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v89 - v20;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static GenerateTextFromMediaController.logger);
  outlined init with copy of ModelOrchestrator.Error(a1, &v108);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  outlined destroy of ModelOrchestrator.Error(a1);
  v25 = os_log_type_enabled(v23, v24);
  v103 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v91 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v90 = v8;
    v29 = v28;
    v111 = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v111);
    v30 = v21;
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000024FE1FE50, &v111);
    *(v27 + 22) = 2080;
    v31 = a1[1];
    v108 = *a1;
    v109 = v31;
    LOBYTE(v110) = *(a1 + 32);
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    v32 = Error.localizedDescription.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v111);

    *(v27 + 24) = v34;
    v21 = v30;
    _os_log_impl(&dword_24FD67000, v23, v24, "%s.%s [ModelOrchestrator.Error = %s]", v27, 0x20u);
    swift_arrayDestroy();
    v35 = v29;
    v8 = v90;
    MEMORY[0x253057F40](v35, -1, -1);
    v36 = v27;
    a3 = v91;
    MEMORY[0x253057F40](v36, -1, -1);
  }

  if (*(a1 + 32) != 3)
  {
    goto LABEL_41;
  }

  v37 = *a1;
  v38 = *(a1 + 2) | *(a1 + 3) | *(a1 + 1);
  if (*a1 == 2 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 10;

    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v40.value._countAndFlagsBits = v107;
    v40.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v40, v39);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 3 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 11;

    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, 0, v41);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 4 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 12;

    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v43.value._countAndFlagsBits = v107;
    v43.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v43, v42);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 5 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 13;

    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v45.value._countAndFlagsBits = v107;
    v45.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v45, v44);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 != 9 || v38)
  {
    goto LABEL_41;
  }

  v46 = type metadata accessor for URL();
  (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v107 = *(v8 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_24FE1A560;
  v91 = v47;
  v49 = (v48 + v47);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  v106 = v48 + v47;
  swift_storeEnumTagMultiPayload();
  v99 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(&v109 + 1) = v99;
  v110 = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v51 = object;
  v50 = v96;
  v52 = &v96[*(object + 56)];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v111) = 49;
  v100 = v21;
  v53 = MEMORY[0x277D84F90];
  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v55 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v111, 0, v54);
  v56 = v48;

  *v52 = v55;
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 16) = v48;
  *(v50 + 24) = v53;
  *(v50 + 32) = 64;
  *(v50 + 40) = v53;
  *(v50 + 48) = v53;
  *(v50 + v51[15]) = v53;
  v57 = v100;
  *(v50 + v51[12]) = 3;
  v58 = (v50 + v51[13]);
  *v58 = 0;
  v58[1] = 0xE000000000000000;
  outlined init with copy of Date?(v57, v50 + v51[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v59 = (v50 + v51[11]);
  *v59 = 0;
  v59[1] = 0xE000000000000000;
  *(v50 + v51[16]) = 0;
  *(v50 + v51[17]) = 0;
  v60 = (v50 + v51[18]);
  *v60 = 0;
  v60[1] = 0xE000000000000000;
  v61 = (v50 + v51[19]);
  *v61 = 0;
  v61[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v108, v50 + v51[21]);
  *(v50 + v51[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_38:
    outlined init with copy of ScreenContent(v50, v94, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(&v108);
    return outlined destroy of DocumentInfo(v50, type metadata accessor for GeneratedResponse);
  }

  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v63 = GeneratedResponse.updateText(_:)(v62);
  boxed_opaque_existential_1 = v63._countAndFlagsBits;
  *v50 = v63;
  object = v63._object;
  v64 = *(v56 + 16);
  v65 = (v92 + 56);
  v66 = (v92 + 48);

  v67 = v56;
  a3 = 0;
  v68 = v67;
  v99 = v67;
  v69 = v104;
  while (a3 == v64)
  {
    v70 = 1;
    a3 = v64;
    v71 = v103;
LABEL_27:
    v77 = v102;
    (*v65)(v71, v70, 1, v69);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v71, v77, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v66)(v77, 1, v69) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v100, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v50 = v96;
      goto LABEL_38;
    }

    v78 = *v77;
    v79 = v77 + *(v69 + 48);
    v80 = v101;
    outlined init with take of SelectedContent(v79, v101, type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = v80;
    v69 = v104;
    outlined destroy of DocumentInfo(v82, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v83 = v93;
      v84 = object;
      *v93 = boxed_opaque_existential_1;
      v83[1] = v84;
      swift_storeEnumTagMultiPayload();

      v85 = v99;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v78 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v85);
        v85 = result;
        if ((v78 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
          goto LABEL_41;
        }
      }

      if (v78 >= v85[2])
      {
        __break(1u);
        return result;
      }

      outlined assign with take of GeneratedResponse.RichContentEntity(v93, v85 + v91 + v78 * v107);
      v99 = v85;
      *(v96 + 2) = v85;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v72 = *(v68 + 16);
    if (a3 >= v72)
    {
      goto LABEL_40;
    }

    v73 = v106 + a3 * v107;
    v74 = *(v69 + 48);
    v75 = v97;
    *v97 = a3;
    outlined init with copy of ScreenContent(v73, v75 + v74, type metadata accessor for GeneratedResponse.RichContentEntity);
    v76 = v75;
    v71 = v103;
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v76, v103, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v70 = 0;
    ++a3;
    goto LABEL_27;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v108) = 16;

  v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v88.value._countAndFlagsBits = v107;
  v88.value._object = a3;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v88, v87);

  objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_42:
  CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  return swift_willThrow();
}

{
  v94 = a4;
  v107 = a2;
  v6 = *(a1 + 1);
  v7 = *(a1 + 3);
  boxed_opaque_existential_1 = *(a1 + 2);
  v99 = v6;
  v100 = v7;
  LODWORD(v106) = *(a1 + 32);
  v105 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v8 = *(v105 - 8);
  v9 = MEMORY[0x28223BE20](v105);
  v93 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v101 = &v89 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = (&v89 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v89 - v17;
  object = type metadata accessor for GeneratedResponse(0);
  MEMORY[0x28223BE20](object);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v89 - v20;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static GenerateTextController.logger);
  outlined init with copy of ModelOrchestrator.Error(a1, &v108);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  outlined destroy of ModelOrchestrator.Error(a1);
  v25 = os_log_type_enabled(v23, v24);
  v103 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v91 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v90 = v8;
    v29 = v28;
    v111 = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1FE10, &v111);
    v30 = v21;
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000024FE1FE50, &v111);
    *(v27 + 22) = 2080;
    v31 = a1[1];
    v108 = *a1;
    v109 = v31;
    LOBYTE(v110) = *(a1 + 32);
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    v32 = Error.localizedDescription.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v111);

    *(v27 + 24) = v34;
    v21 = v30;
    _os_log_impl(&dword_24FD67000, v23, v24, "%s.%s [ModelOrchestrator.Error = %s]", v27, 0x20u);
    swift_arrayDestroy();
    v35 = v29;
    v8 = v90;
    MEMORY[0x253057F40](v35, -1, -1);
    v36 = v27;
    a3 = v91;
    MEMORY[0x253057F40](v36, -1, -1);
  }

  if (*(a1 + 32) != 3)
  {
    goto LABEL_41;
  }

  v37 = *a1;
  v38 = *(a1 + 2) | *(a1 + 3) | *(a1 + 1);
  if (*a1 == 2 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 10;

    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v40.value._countAndFlagsBits = v107;
    v40.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v40, v39);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 3 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 11;

    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, 0, v41);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 4 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 12;

    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v43.value._countAndFlagsBits = v107;
    v43.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v43, v42);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 == 5 && !v38)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v108) = 13;

    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v45.value._countAndFlagsBits = v107;
    v45.value._object = a3;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v45, v44);

    objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    goto LABEL_42;
  }

  if (v37 != 9 || v38)
  {
    goto LABEL_41;
  }

  v46 = type metadata accessor for URL();
  (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v107 = *(v8 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_24FE1A560;
  v91 = v47;
  v49 = (v48 + v47);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  v106 = v48 + v47;
  swift_storeEnumTagMultiPayload();
  v99 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(&v109 + 1) = v99;
  v110 = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v51 = object;
  v50 = v96;
  v52 = &v96[*(object + 56)];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v111) = 49;
  v100 = v21;
  v53 = MEMORY[0x277D84F90];
  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v55 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v111, 0, v54);
  v56 = v48;

  *v52 = v55;
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 16) = v48;
  *(v50 + 24) = v53;
  *(v50 + 32) = 64;
  *(v50 + 40) = v53;
  *(v50 + 48) = v53;
  *(v50 + v51[15]) = v53;
  v57 = v100;
  *(v50 + v51[12]) = 3;
  v58 = (v50 + v51[13]);
  *v58 = 0;
  v58[1] = 0xE000000000000000;
  outlined init with copy of Date?(v57, v50 + v51[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v59 = (v50 + v51[11]);
  *v59 = 0;
  v59[1] = 0xE000000000000000;
  *(v50 + v51[16]) = 0;
  *(v50 + v51[17]) = 0;
  v60 = (v50 + v51[18]);
  *v60 = 0;
  v60[1] = 0xE000000000000000;
  v61 = (v50 + v51[19]);
  *v61 = 0;
  v61[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v108, v50 + v51[21]);
  *(v50 + v51[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_38:
    outlined init with copy of ScreenContent(v50, v94, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(&v108);
    return outlined destroy of DocumentInfo(v50, type metadata accessor for GeneratedResponse);
  }

  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v63 = GeneratedResponse.updateText(_:)(v62);
  boxed_opaque_existential_1 = v63._countAndFlagsBits;
  *v50 = v63;
  object = v63._object;
  v64 = *(v56 + 16);
  v65 = (v92 + 56);
  v66 = (v92 + 48);

  v67 = v56;
  a3 = 0;
  v68 = v67;
  v99 = v67;
  v69 = v104;
  while (a3 == v64)
  {
    v70 = 1;
    a3 = v64;
    v71 = v103;
LABEL_27:
    v77 = v102;
    (*v65)(v71, v70, 1, v69);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v71, v77, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v66)(v77, 1, v69) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v100, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v50 = v96;
      goto LABEL_38;
    }

    v78 = *v77;
    v79 = v77 + *(v69 + 48);
    v80 = v101;
    outlined init with take of SelectedContent(v79, v101, type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = v80;
    v69 = v104;
    outlined destroy of DocumentInfo(v82, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v83 = v93;
      v84 = object;
      *v93 = boxed_opaque_existential_1;
      v83[1] = v84;
      swift_storeEnumTagMultiPayload();

      v85 = v99;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v78 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v85);
        v85 = result;
        if ((v78 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
          goto LABEL_41;
        }
      }

      if (v78 >= v85[2])
      {
        __break(1u);
        return result;
      }

      outlined assign with take of GeneratedResponse.RichContentEntity(v93, v85 + v91 + v78 * v107);
      v99 = v85;
      *(v96 + 2) = v85;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v72 = *(v68 + 16);
    if (a3 >= v72)
    {
      goto LABEL_40;
    }

    v73 = v106 + a3 * v107;
    v74 = *(v69 + 48);
    v75 = v97;
    *v97 = a3;
    outlined init with copy of ScreenContent(v73, v75 + v74, type metadata accessor for GeneratedResponse.RichContentEntity);
    v76 = v75;
    v71 = v103;
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v76, v103, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v70 = 0;
    ++a3;
    goto LABEL_27;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v108) = 16;

  v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v88.value._countAndFlagsBits = v107;
  v88.value._object = a3;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v108, v88, v87);

  objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_42:
  CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  return swift_willThrow();
}

uint64_t GenerateTextFromMediaController.isFromWebsite(activityType:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.genFromMediaController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000024FE200E0, &v15);
    *(v7 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s [NSUserActivity activityType = %s]", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  if (a2)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v12 == a2)
    {
      LOBYTE(a2) = 1;
    }

    else
    {
      LOBYTE(a2) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return a2 & 1;
}

uint64_t GenerateTextFromMediaController.appName(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for IntelligenceProcessInfo();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v4, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v4, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.genFromMediaController);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v37);
      *(v12 + 12) = 2080;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v37);
      _os_log_impl(&dword_24FD67000, v10, v11, "%s.%s No IntelligenceProcessInfo found, not returning an appName.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v13, -1, -1);
      MEMORY[0x253057F40](v12, -1, -1);
    }

    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = IntelligenceProcessInfo.bundleIdentifier.getter();
  if (!v15)
  {
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.genFromMediaController);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v37);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v37);
    v23 = "%s.%s No bundleIdentifier found in IntelligenceProcessInfo, not returning an appName.";
    goto LABEL_17;
  }

  v16 = v15;
  v17 = v14;
  if (IntelligenceProcessInfo.isSystemApp.getter())
  {

    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.genFromMediaController);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v37);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v37);
    v23 = "%s.%s Content came from a system app, not returning an appName.";
LABEL_17:
    _os_log_impl(&dword_24FD67000, v19, v20, v23, v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v22, -1, -1);
    MEMORY[0x253057F40](v21, -1, -1);
LABEL_23:

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  type metadata accessor for LSBundleRecord();
  v25 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v17, v16, 0);
  v26 = [v25 localizedName];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.genFromMediaController);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v33 = 136315650;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v37);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x28656D614E707061, 0xEE00293A6D6F7266, &v37);
    *(v33 + 22) = 2080;
    *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v37);
    _os_log_impl(&dword_24FD67000, v31, v32, "%s.%s Using localized appName: %s.", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v34, -1, -1);
    MEMORY[0x253057F40](v33, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return v27;
}

Swift::String __swiftcall GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(Swift::String partnerName, Swift::Bool isExplicit, Swift::String_optional appName)
{
  object = appName.value._object;
  countAndFlagsBits = appName.value._countAndFlagsBits;
  v5 = partnerName._object;
  v6 = partnerName._countAndFlagsBits;
  v7 = 31;
  if (!isExplicit)
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v7 = 31;
    }

    else
    {
      v7 = 29;
    }
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  if (object)
  {
    v17 = MEMORY[0x277D837D0];
    *&v16 = countAndFlagsBits;
    *(&v16 + 1) = object;
    outlined init with take of Any(&v16, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x656D614E707061, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v16) = v7;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v5;
  v11 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v16, v10, v8);

  v12 = v11._countAndFlagsBits;
  v13 = v11._object;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

id GenerateTextFromMediaController.generatePDFThumbnail(for:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = URL.startAccessingSecurityScopedResource()();
  v7 = objc_allocWithZone(MEMORY[0x277CD93D8]);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL_];

  if (!v11)
  {
LABEL_8:
    if (one-time initialization token for genFromMediaController != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.genFromMediaController);
    (*(v3 + 16))(v5, a1, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      HIDWORD(v27) = v6;
      v21 = v20;
      v28 = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v28);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE20250, &v28);
      *(v19 + 22) = 2080;
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s Failed to create a (non-empty) PDFDocument from url: %s", v19, 0x20u);
      swift_arrayDestroy();
      v26 = v21;
      LOBYTE(v21) = BYTE4(v27);
      MEMORY[0x253057F40](v26, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      if (!v6)
      {
        return 0;
      }
    }

    URL.stopAccessingSecurityScopedResource()();
    return 0;
  }

  if ([v11 pageCount] < 1 || (v12 = objc_msgSend(v11, sel_pageAtIndex_, 0)) == 0)
  {

    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v12 thumbnailOfSize:4 forBox:{256.0, 256.0}];

  if (v6)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return v14;
}

Swift::String __swiftcall GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(Swift::String partnerName, Swift::Bool isExplicit, Swift::Bool isScreenshot)
{
  object = partnerName._object;
  countAndFlagsBits = partnerName._countAndFlagsBits;
  if (isExplicit)
  {
    if (isScreenshot)
    {
      v6 = 28;
    }

    else
    {
      v6 = 25;
    }
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v7 = MEMORY[0x253056490]();
    if (v7)
    {
      v8 = 25;
    }

    else
    {
      v8 = 23;
    }

    if (v7)
    {
      v9 = 28;
    }

    else
    {
      v9 = 26;
    }

    if (isScreenshot)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v16 = v6;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v11.value._countAndFlagsBits = countAndFlagsBits;
  v11.value._object = object;
  v12 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v16, v11, v10);

  v13 = v12._countAndFlagsBits;
  v14 = v12._object;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(uint64_t a1, void *a2, char a3, char a4)
{
  if (a3)
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (a4)
    {
      v15 = v7;
LABEL_7:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v10 = v15;
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v11 = 27;
      goto LABEL_14;
    }

    v15 = v7;
    goto LABEL_11;
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v9 = MEMORY[0x253056490]();
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a4)
  {
    if (v9)
    {
      v15 = v10;
      goto LABEL_7;
    }

    v15 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v11 = 26;
  }

  else
  {
    if (v9)
    {
      v15 = v10;
LABEL_11:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v10 = v15;
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v11 = 24;
      goto LABEL_14;
    }

    v15 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v11 = 23;
  }

LABEL_14:
  LOBYTE(v15) = v11;
  v12 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  v13.value._countAndFlagsBits = a1;
  v13.value._object = a2;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v15, v13, v12);

  return IntentDialog.init(stringLiteral:)();
}

uint64_t GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 264) = a2;
  v5 = type metadata accessor for ConfirmationActionName();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  *(v3 + 88) = v6;
  *(v3 + 96) = *(v6 - 8);
  *(v3 + 104) = swift_task_alloc();
  v7 = type metadata accessor for RequestType();
  *(v3 + 112) = v7;
  *(v3 + 120) = *(v7 - 8);
  *(v3 + 128) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v3 + 136) = v8;
  *(v3 + 144) = *(v8 - 8);
  *(v3 + 152) = swift_task_alloc();
  v9 = *(a1 + 88);
  *(v3 + 160) = *(a1 + 40);
  *(v3 + 176) = v9;
  type metadata accessor for MainActor();
  *(v3 + 192) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 200) = v11;
  *(v3 + 208) = v10;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v11, v10);
}

uint64_t GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)()
{
  v27 = v0;
  v1 = *(v0 + 56);
  *(v0 + 216) = type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()();
  v2 = *(v1 + 40);
  *(v0 + 265) = v2;
  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    (*(v4 + 104))(v3, *MEMORY[0x277D0D7D8], v5);
    MEMORY[0x253056460](v3);
    (*(v4 + 8))(v3, v5);
  }

  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 224) = __swift_project_value_buffer(v6, static Logger.genFromTextController);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000024FE20090, &v26);
    _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s Confirming JIT enablement", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  v11 = *(v0 + 264);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  if (v11)
  {
    v12 = 34;
  }

  else
  {
    v12 = 35;
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v16 = *(v0 + 88);
  v17 = static Disclaimer.partnerName;

  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17.value._countAndFlagsBits, v17.value._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  v20 = v26;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v26) = v12;
  v21 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v26, v17, v21);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(dialog:)();
  (*(v14 + 8))(v15, v16);
  static ConfirmationButtonActionUtils.getJITEnablementButtonActions()();
  v25 = (v13 + *v13);
  v22 = swift_task_alloc();
  *(v0 + 232) = v22;
  *v22 = v0;
  v22[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  v23 = *(v0 + 80);

  return v25(v0 + 16, v23, 1);
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v2 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v1, v2);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:), v1, v2);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v5 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(uint64_t a1)
{
  v13 = v1;
  if ((*(v1 + 265) & 1) == 0)
  {
    v3 = *(v1 + 120);
    v2 = *(v1 + 128);
    v4 = *(v1 + 112);
    (*(v3 + 104))(v2, *MEMORY[0x277D0D7D8], v4);
    static GenerativeAssistantSettingsUserDefaults.decrementDecline(for:expirationDate:)();
    (*(v3 + 8))(v2, v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000024FE20090, &v12);
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s User Confirmed Showing JIT Enablement.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v11 = (*(v1 + 176) + **(v1 + 176));
  v9 = swift_task_alloc();
  *(v1 + 248) = v9;
  *v9 = v1;
  v9[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);

  return v11();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x253056EA0](a1);

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
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

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

unint64_t lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors()
{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors;
  if (!lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentRequestErrors and conformance ContentRequestErrors);
  }

  return result;
}

void outlined consume of GenerativeAssistantProgressLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 6u)
  {
  }
}

uint64_t outlined consume of GenerateTextFromMediaController.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextFromMediaController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for GenerateTextFromMediaController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextFromMediaController.Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerateTextFromMediaController.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error()
{
  result = lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error;
  if (!lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error;
  if (!lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error);
  }

  return result;
}

uint64_t outlined copy of GenerateTextFromMediaController.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error()
{
  result = lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error;
  if (!lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error;
  if (!lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

uint64_t outlined init with take of SelectedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of ScreenContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DocumentInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v26;
  *(v8 + 144) = v27;
  *(v8 + 120) = v25;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for ConfirmationActionName();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 240) = swift_task_alloc();
  v12 = type metadata accessor for SupportedDocumentType();
  *(v8 + 248) = v12;
  *(v8 + 256) = *(v12 - 8);
  *(v8 + 264) = swift_task_alloc();
  v13 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 272) = v13;
  *(v8 + 280) = *(v13 - 8);
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  *(v8 + 296) = swift_task_alloc();
  v14 = type metadata accessor for ImageInfo(0);
  *(v8 + 304) = v14;
  *(v8 + 312) = *(v14 - 8);
  *(v8 + 320) = swift_task_alloc();
  v15 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 328) = v15;
  *(v8 + 336) = *(v15 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v16 = type metadata accessor for Attachment();
  *(v8 + 360) = v16;
  *(v8 + 368) = *(v16 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v17 = type metadata accessor for UTType();
  *(v8 + 392) = v17;
  *(v8 + 400) = *(v17 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v18 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 456) = v18;
  *(v8 + 464) = *(v18 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v19 = type metadata accessor for IntentDialog();
  *(v8 + 488) = v19;
  *(v8 + 496) = *(v19 - 8);
  *(v8 + 504) = swift_task_alloc();
  v20 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 512) = v20;
  *(v8 + 520) = *(v20 - 8);
  *(v8 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v8 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  *(v8 + 544) = swift_task_alloc();

  type metadata accessor for MainActor();
  *(v8 + 552) = static MainActor.shared.getter();
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 560) = v22;
  *(v8 + 568) = v21;

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v22, v21);
}

{
  *(v8 + 136) = v26;
  *(v8 + 144) = v27;
  *(v8 + 120) = v25;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for ConfirmationActionName();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 240) = swift_task_alloc();
  v12 = type metadata accessor for SupportedDocumentType();
  *(v8 + 248) = v12;
  *(v8 + 256) = *(v12 - 8);
  *(v8 + 264) = swift_task_alloc();
  v13 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 272) = v13;
  *(v8 + 280) = *(v13 - 8);
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  *(v8 + 296) = swift_task_alloc();
  v14 = type metadata accessor for ImageInfo(0);
  *(v8 + 304) = v14;
  *(v8 + 312) = *(v14 - 8);
  *(v8 + 320) = swift_task_alloc();
  v15 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 328) = v15;
  *(v8 + 336) = *(v15 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v16 = type metadata accessor for Attachment();
  *(v8 + 360) = v16;
  *(v8 + 368) = *(v16 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v17 = type metadata accessor for UTType();
  *(v8 + 392) = v17;
  *(v8 + 400) = *(v17 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v18 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 456) = v18;
  *(v8 + 464) = *(v18 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v19 = type metadata accessor for IntentDialog();
  *(v8 + 488) = v19;
  *(v8 + 496) = *(v19 - 8);
  *(v8 + 504) = swift_task_alloc();
  v20 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 512) = v20;
  *(v8 + 520) = *(v20 - 8);
  *(v8 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v8 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  *(v8 + 544) = swift_task_alloc();

  type metadata accessor for MainActor();
  *(v8 + 552) = static MainActor.shared.getter();
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 560) = v22;
  *(v8 + 568) = v21;

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v22, v21);
}

uint64_t specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:)()
{
  v105 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 64);
  *(v0 + 576) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  v102 = type metadata accessor for DocumentInfo(0);
  outlined init with copy of Date?(v2 + *(v102 + 40), v1, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v3 = type metadata accessor for OnScreenContent.UIMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  if (v5 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 536), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v8 = type metadata accessor for IntelligenceProcessInfo();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  else
  {
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    OnScreenContent.UIMetadata.window.getter();
    (*(v4 + 8))(v7, v3);
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 544);
  v13 = GenerateTextFromMediaController.appName(from:)(v12);
  v15 = v14;
  outlined destroy of OnScreenContent.Document?(v12, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v16 = static Disclaimer.partnerName;
  v17 = *(*(v0 + 56) + 40);

  v18.value._countAndFlagsBits = v13;
  v18.value._object = v15;
  GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(v16, v17, v18);
  if (v17)
  {
    v19 = 30;
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v19 = 30;
    }

    else
    {
      v19 = 29;
    }
  }

  swift_bridgeObjectRetain_n();
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16._countAndFlagsBits, v16._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  if (v15)
  {

    specialized Dictionary.subscript.setter(v13, v15, 0x656D614E707061, 0xE700000000000000);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v104[0]) = v19;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v22);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 584) = IntelligenceFile.snippetPreviewFile()();
  v23 = *(v0 + 480);
  v25 = *(v0 + 456);
  v24 = *(v0 + 464);
  v27 = *(v0 + 440);
  v26 = *(v0 + 448);
  v28 = *(v0 + 424);
  v97 = *(v0 + 416);
  v29 = *(v0 + 392);
  v30 = *(v0 + 400);
  IntelligenceFile.attributes.getter();
  IntelligenceFile.Attributes.contentType.getter();
  v95 = *(v24 + 8);
  v95(v23, v25);
  static UTType.pdf.getter();
  (*(v30 + 56))(v27, 0, 1, v29);
  v31 = *(v97 + 48);
  outlined init with copy of Date?(v26, v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of Date?(v27, v28 + v31, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v32 = *(v30 + 48);
  if (v32(v28, 1, v29) != 1)
  {
    v35 = *(v0 + 392);
    outlined init with copy of Date?(*(v0 + 424), *(v0 + 432), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v36 = v32(v28 + v31, 1, v35);
    v37 = *(v0 + 440);
    v38 = *(v0 + 448);
    v39 = *(v0 + 432);
    if (v36 != 1)
    {
      v98 = *(v0 + 424);
      v43 = *(v0 + 400);
      v44 = *(v0 + 408);
      v45 = *(v0 + 392);
      (*(v43 + 32))(v44, v28 + v31, v45);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v43 + 8);
      v47(v44, v45);
      outlined destroy of OnScreenContent.Document?(v37, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      outlined destroy of OnScreenContent.Document?(v38, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v47(v39, v45);
      outlined destroy of OnScreenContent.Document?(v98, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      if (v46)
      {
        goto LABEL_23;
      }

LABEL_21:
      v42 = 0;
      goto LABEL_24;
    }

    v40 = *(v0 + 392);
    v41 = *(v0 + 400);
    outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of OnScreenContent.Document?(v38, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v41 + 8))(v39, v40);
LABEL_20:
    outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
    goto LABEL_21;
  }

  v33 = *(v0 + 448);
  v34 = *(v0 + 392);
  outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined destroy of OnScreenContent.Document?(v33, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v32(v28 + v31, 1, v34) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_23:
  v42 = GenerateTextFromMediaController.generatePDFThumbnail(for:)(*(v0 + 104));
LABEL_24:
  *(v0 + 592) = v42;
  v91 = *(*(v0 + 336) + 104);
  v91(*(v0 + 352), *MEMORY[0x277D0D860], *(v0 + 328));
  if (v42)
  {
    v48 = v42;
    UIImage.getPlatformData()();
  }

  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  v51 = *(v0 + 296);
  v52 = *(v0 + 72);

  LOBYTE(v104[0]) = 0;
  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  outlined init with copy of Date?(v52, v51, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    v53 = *(v0 + 384);
    v54 = *(v0 + 360);
    v55 = *(v0 + 368);
    outlined destroy of OnScreenContent.Document?(*(v0 + 296), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24FE1A560;
    (*(v55 + 16))(v57 + v56, v53, v54);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v60 = *(v0 + 320);
    v61 = *(v0 + 80);
    outlined init with take of SelectedContent(*(v0 + 296), v60, type metadata accessor for ImageInfo);
    v63 = *v60;
    v62 = v60[1];

    *v61 = v63;
    v58 = IntelligenceFile.snippetPreviewFile()();
    v64 = *(v0 + 472);
    v88 = *(v0 + 456);
    v99 = *(v0 + 384);
    v89 = *(v0 + 376);
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    v100 = *(v0 + 320);
    v91(*(v0 + 344), *MEMORY[0x277D0D858], *(v0 + 328));

    v93 = v62;
    UIImage.getPlatformData()();
    IntelligenceFile.attributes.getter();
    IntelligenceFile.Attributes.fileSize.getter();
    LOBYTE(v63) = v67;
    v95(v64, v88);
    LOBYTE(v104[0]) = v63 & 1;
    Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v68 = *(v65 + 72);
    v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24FE1A8C0;
    v70 = v57 + v69;
    v71 = *(v65 + 16);
    v71(v70, v89, v66);
    v71(v70 + v68, v99, v66);
    (*(v65 + 8))(v89, v66);
    outlined destroy of DocumentInfo(v100, type metadata accessor for ImageInfo);
    v59 = v93;
  }

  *(v0 + 608) = v59;
  *(v0 + 600) = v58;
  v72 = *(v0 + 256);
  v83 = *(v0 + 264);
  v84 = *(v0 + 248);
  v86 = *(v0 + 240);
  v87 = *(v0 + 232);
  v90 = *(v0 + 288);
  v92 = *(v0 + 224);
  v94 = *(v0 + 216);
  v96 = *(v0 + 208);
  v101 = *(v0 + 144);
  v85 = *(v0 + 112);
  v82 = *(v0 + 96);
  v74 = *(v0 + 56);
  v73 = *(v0 + 64);
  **(v0 + 88) = v57;
  LOBYTE(v104[0]) = 40;
  v75 = MEMORY[0x277D84F90];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v76);

  LOBYTE(v104[0]) = 39;
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v75);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v77);

  v78 = (v74 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52));
  *(v0 + 616) = *v78;
  *(v0 + 624) = v78[1];
  (*(v72 + 16))(v83, v82, v84);
  outlined init with copy of Date?(v73 + *(v102 + 32), v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v85, v87, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v90);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v94 + 8))(v92, v96);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v103 = (*(v101 + 40) + **(v101 + 40));
  v79 = swift_task_alloc();
  *(v0 + 632) = v79;
  *v79 = v0;
  v79[1] = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  v80 = *(v0 + 200);

  return v103(v0 + 16, v80, 0);
}

{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  else
  {
    v2 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  v43 = v0;

  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.genFromMediaController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v42);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x800000024FE20190, &v42);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s User confirmed", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = v0[22];
  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2u, v6);
  outlined destroy of OnScreenContent.Document?(v6, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (v0[78])
  {
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v19 = v0[76];
    v20 = v0[74];
    v21 = v0[62];
    v39 = v0[61];
    v41 = v0[63];
    v22 = v0[46];
    v35 = v0[45];
    v37 = v0[48];
    v23 = v0[35];
    v31 = v0[34];
    v33 = v0[36];
    v24 = v0[20];
    v25 = v0[21];
    v26 = v0[19];

    (*(v24 + 8))(v25, v26);
    (*(v23 + 8))(v33, v31);
    (*(v22 + 8))(v37, v35);
    (*(v21 + 8))(v41, v39);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[76];
    v36 = v0[74];
    v13 = v0[62];
    v12 = v0[63];
    v14 = v0[61];
    v15 = v0[46];
    v38 = v0[45];
    v40 = v0[48];
    v16 = v0[35];
    v32 = v0[34];
    v34 = v0[36];
    if (v10)
    {
      v30 = v0[63];
      v17 = swift_slowAlloc();
      v29 = v14;
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v42);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x800000024FE20190, &v42);
      _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Attempting to save the current sessionID but found nil", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v18, -1, -1);
      MEMORY[0x253057F40](v17, -1, -1);

      (*(v16 + 8))(v34, v32);
      (*(v15 + 8))(v40, v38);
      (*(v13 + 8))(v30, v29);
    }

    else
    {

      (*(v16 + 8))(v34, v32);
      (*(v15 + 8))(v40, v38);
      (*(v13 + 8))(v12, v14);
    }
  }

  v27 = v0[1];

  return v27();
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  v1 = v0[76];
  v2 = v0[62];
  v13 = v0[63];
  v11 = v0[74];
  v12 = v0[61];
  v10 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[36];
  v7 = v0[34];
  v6 = v0[35];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v13, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

{
  v105 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 64);
  *(v0 + 576) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  v102 = type metadata accessor for DocumentInfo(0);
  outlined init with copy of Date?(v2 + *(v102 + 40), v1, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v3 = type metadata accessor for OnScreenContent.UIMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  if (v5 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 536), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v8 = type metadata accessor for IntelligenceProcessInfo();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  else
  {
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    OnScreenContent.UIMetadata.window.getter();
    (*(v4 + 8))(v7, v3);
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 544);
  v13 = GenerateTextFromMediaController.appName(from:)(v12);
  v15 = v14;
  outlined destroy of OnScreenContent.Document?(v12, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v16 = static Disclaimer.partnerName;
  v17 = *(*(v0 + 56) + 40);

  v18.value._countAndFlagsBits = v13;
  v18.value._object = v15;
  GenerateTextFromMediaController.getDocumentConfirmationText(partnerName:isExplicit:appName:)(v16, v17, v18);
  if (v17)
  {
    v19 = 30;
  }

  else
  {
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    if (MEMORY[0x253056490]())
    {
      v19 = 30;
    }

    else
    {
      v19 = 29;
    }
  }

  swift_bridgeObjectRetain_n();
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16._countAndFlagsBits, v16._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  if (v15)
  {

    specialized Dictionary.subscript.setter(v13, v15, 0x656D614E707061, 0xE700000000000000);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v104[0]) = v19;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v22);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 584) = IntelligenceFile.snippetPreviewFile()();
  v23 = *(v0 + 480);
  v25 = *(v0 + 456);
  v24 = *(v0 + 464);
  v27 = *(v0 + 440);
  v26 = *(v0 + 448);
  v28 = *(v0 + 424);
  v97 = *(v0 + 416);
  v29 = *(v0 + 392);
  v30 = *(v0 + 400);
  IntelligenceFile.attributes.getter();
  IntelligenceFile.Attributes.contentType.getter();
  v95 = *(v24 + 8);
  v95(v23, v25);
  static UTType.pdf.getter();
  (*(v30 + 56))(v27, 0, 1, v29);
  v31 = *(v97 + 48);
  outlined init with copy of Date?(v26, v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of Date?(v27, v28 + v31, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v32 = *(v30 + 48);
  if (v32(v28, 1, v29) != 1)
  {
    v35 = *(v0 + 392);
    outlined init with copy of Date?(*(v0 + 424), *(v0 + 432), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v36 = v32(v28 + v31, 1, v35);
    v37 = *(v0 + 440);
    v38 = *(v0 + 448);
    v39 = *(v0 + 432);
    if (v36 != 1)
    {
      v98 = *(v0 + 424);
      v43 = *(v0 + 400);
      v44 = *(v0 + 408);
      v45 = *(v0 + 392);
      (*(v43 + 32))(v44, v28 + v31, v45);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v43 + 8);
      v47(v44, v45);
      outlined destroy of OnScreenContent.Document?(v37, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      outlined destroy of OnScreenContent.Document?(v38, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v47(v39, v45);
      outlined destroy of OnScreenContent.Document?(v98, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      if (v46)
      {
        goto LABEL_23;
      }

LABEL_21:
      v42 = 0;
      goto LABEL_24;
    }

    v40 = *(v0 + 392);
    v41 = *(v0 + 400);
    outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of OnScreenContent.Document?(v38, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v41 + 8))(v39, v40);
LABEL_20:
    outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
    goto LABEL_21;
  }

  v33 = *(v0 + 448);
  v34 = *(v0 + 392);
  outlined destroy of OnScreenContent.Document?(*(v0 + 440), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined destroy of OnScreenContent.Document?(v33, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v32(v28 + v31, 1, v34) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of OnScreenContent.Document?(*(v0 + 424), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_23:
  v42 = GenerateTextFromMediaController.generatePDFThumbnail(for:)(*(v0 + 104));
LABEL_24:
  *(v0 + 592) = v42;
  v91 = *(*(v0 + 336) + 104);
  v91(*(v0 + 352), *MEMORY[0x277D0D860], *(v0 + 328));
  if (v42)
  {
    v48 = v42;
    UIImage.getPlatformData()();
  }

  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  v51 = *(v0 + 296);
  v52 = *(v0 + 72);

  LOBYTE(v104[0]) = 0;
  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  outlined init with copy of Date?(v52, v51, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    v53 = *(v0 + 384);
    v54 = *(v0 + 360);
    v55 = *(v0 + 368);
    outlined destroy of OnScreenContent.Document?(*(v0 + 296), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24FE1A560;
    (*(v55 + 16))(v57 + v56, v53, v54);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v60 = *(v0 + 320);
    v61 = *(v0 + 80);
    outlined init with take of SelectedContent(*(v0 + 296), v60, type metadata accessor for ImageInfo);
    v63 = *v60;
    v62 = v60[1];

    *v61 = v63;
    v58 = IntelligenceFile.snippetPreviewFile()();
    v64 = *(v0 + 472);
    v88 = *(v0 + 456);
    v99 = *(v0 + 384);
    v89 = *(v0 + 376);
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    v100 = *(v0 + 320);
    v91(*(v0 + 344), *MEMORY[0x277D0D858], *(v0 + 328));

    v93 = v62;
    UIImage.getPlatformData()();
    IntelligenceFile.attributes.getter();
    IntelligenceFile.Attributes.fileSize.getter();
    LOBYTE(v63) = v67;
    v95(v64, v88);
    LOBYTE(v104[0]) = v63 & 1;
    Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
    v68 = *(v65 + 72);
    v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24FE1A8C0;
    v70 = v57 + v69;
    v71 = *(v65 + 16);
    v71(v70, v89, v66);
    v71(v70 + v68, v99, v66);
    (*(v65 + 8))(v89, v66);
    outlined destroy of DocumentInfo(v100, type metadata accessor for ImageInfo);
    v59 = v93;
  }

  *(v0 + 608) = v59;
  *(v0 + 600) = v58;
  v72 = *(v0 + 256);
  v83 = *(v0 + 264);
  v84 = *(v0 + 248);
  v86 = *(v0 + 240);
  v87 = *(v0 + 232);
  v90 = *(v0 + 288);
  v92 = *(v0 + 224);
  v94 = *(v0 + 216);
  v96 = *(v0 + 208);
  v101 = *(v0 + 144);
  v85 = *(v0 + 112);
  v82 = *(v0 + 96);
  v74 = *(v0 + 56);
  v73 = *(v0 + 64);
  **(v0 + 88) = v57;
  LOBYTE(v104[0]) = 40;
  v75 = MEMORY[0x277D84F90];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v76);

  LOBYTE(v104[0]) = 39;
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v75);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v104, v16, v77);

  v78 = (v74 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52));
  *(v0 + 616) = *v78;
  *(v0 + 624) = v78[1];
  (*(v72 + 16))(v83, v82, v84);
  outlined init with copy of Date?(v73 + *(v102 + 32), v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v85, v87, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v90);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v94 + 8))(v92, v96);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v103 = (*(v101 + 40) + **(v101 + 40));
  v79 = swift_task_alloc();
  *(v0 + 632) = v79;
  *v79 = v0;
  v79[1] = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  v80 = *(v0 + 200);

  return v103(v0 + 16, v80, 0);
}

{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  else
  {
    v2 = specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[71];
  v2 = v0[70];

  return MEMORY[0x2822009F8](specialized GenerateTextFromMediaController.requestDocumentConfirmation(requestMetadata:documentInfo:associatedScreenshot:associatedScreenshotFile:availableAttachments:fileType:fileURL:webpageURL:userQuery:requestConfirmationCallback:), v2, v1);
}

uint64_t lazy protocol witness table accessor for type GATError and conformance GATError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata accessor for LSBundleRecord()
{
  result = lazy cache variable for type metadata for LSBundleRecord;
  if (!lazy cache variable for type metadata for LSBundleRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LSBundleRecord);
  }

  return result;
}

uint64_t dispatch thunk of EntityConverterProviding.convert(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v11(a1, a2, a3, a4);
}

uint64_t EntityConverter.convert(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for OnScreenContent.UIMetadata();
  v3[5] = swift_task_alloc();
  type metadata accessor for OnScreenContent.Content();
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for OnScreenContent();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for OnScreenContent.EntityFormat();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMR);
  v3[18] = swift_task_alloc();
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V_26GenerativeAssistantActions0E4TypeOtMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V_26GenerativeAssistantActions0E4TypeOtMR);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for TypedValue.EntityIdentifierValue();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](EntityConverter.convert(content:), 0, 0);
}

uint64_t EntityConverter.convert(content:)()
{
  v48 = v0;
  v1 = *(v0 + 144);
  OnScreenContent.entityWithType.getter(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 144), &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetSgMR);
    if (one-time initialization token for entityConverter != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.entityConverter);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v47 = v7;
      *v6 = 136315394;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v47);
      *(v6 + 12) = 2080;
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v47);
      _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s content is not an entity, returning nil", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v7, -1, -1);
      MEMORY[0x253057F40](v6, -1, -1);
    }

    (*(*(v0 + 80) + 56))(*(v0 + 16), 1, 1, *(v0 + 72));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = *(*(v0 + 144) + *(v2 + 48));
    v15 = *(v13 + 48);
    v16 = *(*(v0 + 176) + 32);
    v16(v12);
    *(v12 + v15) = v14;
    v17 = *(v12 + *(v13 + 48));
    (v16)(v10, v12, v11);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
      type metadata accessor for IntelligenceImage.Representation();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A8C0;
      static ContentLoader.fullRepresentation.getter();
      static ContentLoader.thumbnailRepresentation.getter();
      v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
      type metadata accessor for UTType();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24FE1B550;
      static UTType.pdf.getter();
      static UTType.rtf.getter();
      static UTType.plainText.getter();
    }

    v20 = *(v0 + 104);
    **(v0 + 136) = v19;
    (*(v20 + 104))();
    if (one-time initialization token for entityConverter != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = type metadata accessor for Logger();
    *(v0 + 192) = __swift_project_value_buffer(v25, static Logger.entityConverter);
    v26 = *(v24 + 16);
    *(v0 + 200) = v26;
    *(v0 + 208) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v21, v22, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 128);
    if (v29)
    {
      v45 = *(v0 + 120);
      v32 = *(v0 + 96);
      v31 = *(v0 + 104);
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v33 = 136315650;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v47);
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v47);
      *(v33 + 22) = 2080;
      v26(v45, v30, v32);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v30, v32);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v47);

      *(v33 + 24) = v38;
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s attempting to convert entity to format: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v46, -1, -1);
      MEMORY[0x253057F40](v33, -1, -1);
    }

    else
    {
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);

      v37 = *(v40 + 8);
      v37(v30, v39);
    }

    *(v0 + 216) = v37;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    *(v0 + 224) = static MetricsUtils.shared;
    MetricsUtils.recordSignpostBegin(for:)("EntityConversion.Time", 21, 2);
    v41 = swift_task_alloc();
    *(v0 + 232) = v41;
    *v41 = v0;
    v41[1] = EntityConverter.convert(content:);
    v42 = *(v0 + 184);
    v43 = *(v0 + 136);
    v44 = *(v0 + 64);

    return MEMORY[0x282176410](v44, v42, v43);
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = EntityConverter.convert(content:);
  }

  else
  {
    v2 = EntityConverter.convert(content:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v52 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v3, &_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[27];
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[17];
    v12 = v0[12];
    if (v6)
    {
      v50 = v0[23];
      v13 = swift_slowAlloc();
      v48 = v10;
      v14 = swift_slowAlloc();
      v51 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v51);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v51);
      _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s converted content is unexpectedly nil", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v14, -1, -1);
      MEMORY[0x253057F40](v13, -1, -1);

      v7(v11, v12);
      (*(v9 + 8))(v50, v48);
    }

    else
    {

      v7(v11, v12);
      (*(v9 + 8))(v8, v10);
    }

    v34 = 1;
  }

  else
  {
    v15 = v0[25];
    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[12];
    v19 = v0[7];
    (*(v2 + 32))(v0[11], v3, v1);
    v20 = type metadata accessor for OSSignpostID();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("EntityConversion.Time", 21, 2u, v19);
    outlined destroy of OnScreenContent.Document?(v19, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    v15(v17, v16, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[27];
    if (v23)
    {
      v46 = v0[25];
      v25 = v0[14];
      v26 = v0[15];
      v27 = v0[12];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v51);
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v51);
      *(v28 + 22) = 2080;
      v46(v26, v25, v27);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      v24(v25, v27);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v51);

      *(v28 + 24) = v33;
      _os_log_impl(&dword_24FD67000, v21, v22, "%s.%s app entity was successfully converted to %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v29, -1, -1);
      MEMORY[0x253057F40](v28, -1, -1);
    }

    else
    {
      v35 = v0[14];
      v36 = v0[12];

      v24(v35, v36);
    }

    v37 = v0[22];
    v49 = v0[23];
    v45 = v0[27];
    v47 = v0[21];
    v38 = v0[11];
    v43 = v0[12];
    v44 = v0[17];
    v40 = v0[9];
    v39 = v0[10];
    OnScreenContent.content.getter();
    OnScreenContent.uiMetadata.getter();
    OnScreenContent.init(content:uiMetadata:)();
    (*(v39 + 8))(v38, v40);
    v45(v44, v43);
    (*(v37 + 8))(v49, v47);
    v34 = 0;
  }

  (*(v0[10] + 56))(v0[2], v34, 1, v0[9]);

  v41 = v0[1];

  return v41();
}

{
  v21 = v0;
  v1 = v0[30];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F43797469746E45, 0xEF7265747265766ELL, &v20);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE202A0, &v20);
    *(v6 + 22) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s unable to convert the app entity due to an error: %@", v6, 0x20u);
    outlined destroy of OnScreenContent.Document?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v11 = v0[30];
  v12 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  v16 = v0[17];
  v17 = v0[12];
  MetricsUtils.emitSignpostEvent(_:)("Error.EntityConversion", 22, 2);

  v12(v16, v17);
  (*(v14 + 8))(v13, v15);
  (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);

  v18 = v0[1];

  return v18();
}

BOOL static VisualIntelligenceUtils.isVisualIntelligenceCameraForeground()()
{
  if (one-time initialization token for visualIntelligenceUtils != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.visualIntelligenceUtils);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v9);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x800000024FE202C0, v9);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s isVisualIntelligenceCameraForeground executed", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v6 = ForegroundAppDetector.getForegroundAppBundleID()();
  if (v5)
  {

    return 0;
  }

  if (!v6.value._object)
  {
    return 0;
  }

  v8 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v6.value._countAndFlagsBits, v6.value._object);

  return (v8 & 1) != 0;
}

Swift::Bool __swiftcall OnScreenContent.isVisualIntelligenceCameraEntity()()
{
  v1 = type metadata accessor for IntelligenceProcessInfo();
  v57 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OnScreenContent.UIMetadata();
  v59 = *(v56 - 8);
  v3 = MEMORY[0x28223BE20](v56);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for OnScreenContent.Content();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OnScreenContent.content.getter();
  if ((*(v17 + 88))(v19, v16) != *MEMORY[0x277D1D360] || !OnScreenContent.isAppEntity()())
  {
    goto LABEL_18;
  }

  v50 = v19;
  v51 = v16;
  v52 = v17;
  v49 = v0;
  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v20 = *(v59 + 8);
  v59 += 8;
  v48 = v20;
  v20(v6, v56);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v21 = *(v58 + 8);
  v58 += 8;
  v47 = v21;
  v21(v9, v7);
  v22 = v57;
  v46 = *(v57 + 48);
  v23 = v46(v15, 1, v1);
  v53 = v1;
  if (v23 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v15, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = IntelligenceProcessInfo.bundleIdentifier.getter();
    v25 = v26;
    (*(v22 + 8))(v15, v1);
  }

  v27 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v24, v25);

  if (v27)
  {
    LOBYTE(v28) = 1;
    v16 = v51;
LABEL_10:
    v17 = v52;
    v19 = v50;
LABEL_19:
    (*(v17 + 8))(v19, v16);
    return v28;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v48(v6, v56);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v47(v9, v7);
  v29 = v53;
  v30 = v46(v13, 1, v53);
  v16 = v51;
  if (v30 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v13, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    LOBYTE(v28) = 0;
    goto LABEL_10;
  }

  v31 = IntelligenceProcessInfo.bundleIdentifier.getter();
  v28 = v32;
  v33 = v57;
  v58 = *(v57 + 8);
  (v58)(v13, v29);
  v17 = v52;
  v19 = v50;
  if (!v28)
  {
    goto LABEL_19;
  }

  if (v31 == 0xD000000000000015 && v28 == 0x800000024FE203B0)
  {

    goto LABEL_16;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
LABEL_18:
    LOBYTE(v28) = 0;
    goto LABEL_19;
  }

LABEL_16:
  v35 = v54;
  OnScreenContent.uiMetadata.getter();
  v36 = OnScreenContent.UIMetadata.nestedRemoteProcesses.getter();
  result = (v48)(v35, v56);
  v38 = *(v36 + 16);
  if (!v38)
  {
LABEL_34:

    LOBYTE(v28) = 0;
LABEL_39:
    v17 = v52;
    goto LABEL_19;
  }

  v39 = 0;
  v59 = v36 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v56 = 0x800000024FE20390;
  v54 = 0x800000024FE20370;
  v49 = 0x800000024FE20340;
  v40 = v55;
  while (v39 < *(v36 + 16))
  {
    (*(v57 + 16))(v40, v59 + *(v57 + 72) * v39, v29);
    v41 = IntelligenceProcessInfo.bundleIdentifier.getter();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
      if (v41 == 0xD000000000000010 && v42 == v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v43 == 0xD00000000000001ELL && v44 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (v58)(v55, v53);
        goto LABEL_38;
      }

      if (v43 == 0xD000000000000022 && v44 == v49)
      {

        (v58)(v55, v53);
LABEL_37:

LABEL_38:
        LOBYTE(v28) = 1;
        goto LABEL_39;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = v55;
      result = (v58)(v55, v53);
      if (v45)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = (v58)(v40, v29);
    }

    ++v39;
    v29 = v53;
    if (v38 == v39)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x800000024FE20390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001ELL && 0x800000024FE20370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000022 && 0x800000024FE20340 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v49 - v7;
  v9 = type metadata accessor for DirectInvocationClientID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - v14;
  outlined init with copy of DirectInvocationClientID?(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v8, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.visualIntelligenceUtils);
    v17 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v32))
    {
      goto LABEL_40;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v50);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v50);
    v35 = "%s.%s sessionId not available";
LABEL_27:
    _os_log_impl(&dword_24FD67000, v17, v32, v35, v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v34, -1, -1);
    MEMORY[0x253057F40](v33, -1, -1);
    goto LABEL_40;
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 104))(v13, *MEMORY[0x277D0D6F0], v9);
  lazy protocol witness table accessor for type DirectInvocationClientID and conformance DirectInvocationClientID();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v50[0] == v49[0] && v50[1] == v49[1])
  {
    v24 = 1;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v25 = *(v10 + 8);
  v25(v13, v9);

  if (v24)
  {
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.visualIntelligenceUtils);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v50);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v50);
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s Current session from Direct Invocation", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v30, -1, -1);
      MEMORY[0x253057F40](v29, -1, -1);
    }

    v25(v15, v9);
    return 1;
  }

  v25(v15, v9);
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v16 = static SessionPersistenceUtils.getExtensionDomain()();
  v17 = MEMORY[0x2530562A0](v16);

  if (!v17)
  {
    if (one-time initialization token for visualIntelligenceUtils != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.visualIntelligenceUtils);
    v17 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v32))
    {
      goto LABEL_40;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v50);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v50);
    v35 = "%s.%s Cannot retrieve defaults from the extension domain";
    goto LABEL_27;
  }

  v18 = static SessionPersistenceUtils.getVISessionKey()();
  v19 = MEMORY[0x253056EA0](v18);

  v20 = [v17 stringForKey:v19];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == a1 && v23 == a2)
    {

LABEL_29:
      if (one-time initialization token for visualIntelligenceUtils != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.visualIntelligenceUtils);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50[0] = v42;
        *v41 = 136315650;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v50);
        *(v41 + 12) = 2080;
        *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v50);
        *(v41 + 22) = 2080;
        *(v41 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v50);
        _os_log_impl(&dword_24FD67000, v39, v40, "%s.%s sessionId matched. We are still in the same VI session %s", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v42, -1, -1);
        MEMORY[0x253057F40](v41, -1, -1);
      }

      return 1;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_29;
    }
  }

  if (one-time initialization token for visualIntelligenceUtils != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.visualIntelligenceUtils);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE1B600, v50);
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000024FE202F0, v50);
    _os_log_impl(&dword_24FD67000, v45, v46, "%s.%s We are NOT in a Visual Intelligence session.", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v48, -1, -1);
    MEMORY[0x253057F40](v47, -1, -1);
  }

LABEL_40:
  return 0;
}

uint64_t outlined init with copy of DirectInvocationClientID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DirectInvocationClientID and conformance DirectInvocationClientID()
{
  result = lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID;
  if (!lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID)
  {
    type metadata accessor for DirectInvocationClientID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DirectInvocationClientID and conformance DirectInvocationClientID);
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of Date?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of Date?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for ModelResponse(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  type metadata accessor for ModelResponse(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t static ContentLoader.fullRepresentation.getter(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, void (*a4)(uint64_t, void))
{
  IntelligenceImage.Representation.init()();
  v8 = IntelligenceImage.Representation.sizeConstraints.modify();
  a2(a1, 0);
  v8(&v13, 0);
  v9 = IntelligenceImage.Representation.sizeConstraints.modify();
  a4(a3, 0);
  v9(&v13, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  static UTType.jpeg.getter();
  IntelligenceImage.Representation.preferredFormats.setter();
  if (one-time initialization token for _compressionRatio != -1)
  {
    swift_once();
  }

  if (byte_27F39FB20 == 1)
  {
    v10 = unk_27F39FB10;
    v11 = static Overrides._compressionRatio;

    v10(&v13, v11);
  }

  IntelligenceImage.Representation.lossyCompressionQuality.setter();
  return IntelligenceImage.Representation.alwaysStripMetadata.setter();
}

uint64_t closure #1 in ContentLoader.load()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  outlined init with copy of ContentLoader(a2, v20);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  v15 = v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = v20[3];
  *(v15 + 32) = v20[2];
  *(v15 + 48) = v16;
  *(v15 + 64) = v20[4];
  *(v15 + 80) = v21;
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 16) = v17;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in ContentLoader.load(), v14);
}

uint64_t closure #1 in closure #1 in ContentLoader.load()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[229] = a5;
  v5[223] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySay23IntelligenceFlowContext15OnScreenContentVG__GMd, &_sScS12ContinuationV11YieldResultOySay23IntelligenceFlowContext15OnScreenContentVG__GMR);
  v5[230] = v6;
  v5[231] = *(v6 - 8);
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

uint64_t closure #1 in closure #1 in ContentLoader.load()()
{
  v1 = *(v0 + 1832);
  outlined init with copy of ContentLoader(v1, v0 + 1336);
  v2 = swift_allocObject();
  *(v0 + 1872) = v2;
  v3 = *(v0 + 1384);
  *(v2 + 48) = *(v0 + 1368);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 1400);
  *(v2 + 96) = *(v0 + 1416);
  v4 = *(v0 + 1352);
  *(v2 + 16) = *(v0 + 1336);
  *(v2 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext15OnScreenContentVGMd, &_sSay23IntelligenceFlowContext15OnScreenContentVGMR);
  swift_asyncLet_begin();
  outlined init with copy of ContentLoader(v1, v0 + 1464);
  v5 = swift_allocObject();
  *(v0 + 1880) = v5;
  v6 = *(v0 + 1512);
  *(v5 + 48) = *(v0 + 1496);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v0 + 1528);
  *(v5 + 96) = *(v0 + 1544);
  v7 = *(v0 + 1480);
  *(v5 + 16) = *(v0 + 1464);
  *(v5 + 32) = v7;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1296);
}

{
  *(v1 + 1888) = v0;
  if (v0)
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  else
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[233];
  v2 = v0[231];
  v3 = v0[230];
  v0[211] = v0[199];

  v0[237] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  AsyncStream.Continuation.yield(_:)();
  v4 = *(v2 + 8);
  v0[238] = v4;
  v0[239] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);

  return MEMORY[0x282200930](v0 + 82, v0 + 205, closure #1 in closure #1 in ContentLoader.load(), v0 + 200);
}

{
  *(v1 + 1920) = v0;
  if (v0)
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  else
  {
    v2 = closure #1 in closure #1 in ContentLoader.load();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[238];
  v2 = v0[232];
  v3 = v0[230];
  v0[217] = v0[205];

  AsyncStream.Continuation.yield(_:)();
  v1(v2, v3);

  return MEMORY[0x282200920](v0 + 82, v0 + 205, closure #1 in closure #1 in ContentLoader.load(), v0 + 218);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1792);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  AsyncStream.Continuation.finish()();

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x282200920](v0 + 656, v0 + 1640, closure #1 in closure #1 in ContentLoader.load(), v0 + 1424);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1552);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  AsyncStream.Continuation.finish()();

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x282200920](v0 + 656, v0 + 1640, closure #1 in closure #1 in ContentLoader.load(), v0 + 1648);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1592, closure #1 in closure #1 in ContentLoader.load(), v0 + 1696);
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in ContentLoader.load(), 0, 0);
}

{
  AsyncStream.Continuation.finish()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #1 in closure #1 in closure #1 in ContentLoader.load();

  return ContentLoader.retrieve(method:)(0);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in closure #1 in ContentLoader.load(), 0, 0);
  }
}

uint64_t ContentLoader.retrieve(method:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v2 + 24) = swift_task_alloc();
  v3 = type metadata accessor for OnScreenContentRequestParameters();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = type metadata accessor for OnScreenContentSources();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentLoader.retrieve(method:), 0, 0);
}

uint64_t ContentLoader.retrieve(method:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  ContentLoader.getSources(method:)(*(v0 + 128), *(v0 + 80));
  v4 = MEMORY[0x277D1D4E0];
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, v4, MEMORY[0x277D1D4E8]);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  *(v0 + 88) = v6;
  *(v0 + 96) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (v5)
  {
    v6(*(v0 + 80), *(v0 + 56));

    v7 = *(v0 + 8);
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }

  v10 = *(v0 + 128);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
  type metadata accessor for IntelligenceImage.Representation();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24FE1A8C0;
  static ContentLoader.fullRepresentation.getter(2048, MEMORY[0x277D744E8], 768, MEMORY[0x277D744F0]);
  static ContentLoader.fullRepresentation.getter(256, MEMORY[0x277D744D8], 256, MEMORY[0x277D744E0]);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  specialized ContentLoader.getContentTypes(representations:)();

  OnScreenContentRequestParameters.init(sources:contentTypes:)();
  OnScreenContentRequestParameters.downscaleWindowSnapshots.setter();
  if (!v10)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v12 = "LoadAllButWindowContentGeneratedPDF.Time";
    v13 = 40;
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v12 = "LoadWindowContentGeneratedPDF.Time";
    v13 = 34;
LABEL_13:
    MetricsUtils.recordSignpostBegin(for:)(v12, v13, 2);
  }

  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = ContentLoader.retrieve(method:);
  v15 = *(v0 + 48);

  return MEMORY[0x282176408](v15);
}

{
  v37 = v0;
  if (*(v0 + 128))
  {
    if (*(v0 + 128) != 1)
    {
      goto LABEL_10;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for OSSignpostID();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = "LoadWindowContentGeneratedPDF.Time";
    v4 = 34;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v5 = type metadata accessor for OSSignpostID();
    (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
    v3 = "LoadAllButWindowContentGeneratedPDF.Time";
    v4 = 40;
  }

  MetricsUtils.recordSignpostEnd(for:signPostID:)(v3, v4, 2u, v1);
  outlined destroy of OnScreenContent.Document?(*(v0 + 24), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
LABEL_10:
  if (one-time initialization token for contentLoader != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.contentLoader);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    v14 = *(v0 + 88);
    v15 = *(v0 + 80);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    (*(v19 + 8))(v17, v18);
    v14(v15, v16);
    goto LABEL_21;
  }

  v9 = *(v0 + 128);
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v36 = v11;
  *v10 = 136315906;
  *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, &v36);
  *(v10 + 12) = 2080;
  *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE203D0, &v36);
  *(v10 + 22) = 2080;
  if (v9)
  {
    if (v9 != 1)
    {
      v20 = 0xE300000000000000;
      v13 = 7105633;
      goto LABEL_20;
    }

    v12 = "retrieve(method:)";
    v13 = 0xD000000000000019;
  }

  else
  {
    v13 = 0xD00000000000001FLL;
    v12 = "windowContentGeneratedPDF";
  }

  v20 = v12 | 0x8000000000000000;
LABEL_20:
  v21 = *(v0 + 112);
  v35 = *(v0 + 88);
  v33 = *(v0 + 56);
  v34 = *(v0 + 80);
  v32 = *(v0 + 48);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v20, &v36);

  *(v10 + 24) = v24;
  *(v10 + 32) = 2080;
  v25 = type metadata accessor for OnScreenContent();
  v26 = MEMORY[0x2530570A0](v21, v25);
  v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v36);

  *(v10 + 34) = v28;
  _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s content returned by Context Retrieval with %s retrieval method: %s", v10, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x253057F40](v11, -1, -1);
  MEMORY[0x253057F40](v10, -1, -1);

  (*(v22 + 8))(v32, v23);
  v35(v34, v33);
LABEL_21:
  v29 = *(v0 + 112);

  v30 = *(v0 + 8);

  return v30(v29);
}

{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ContentLoader.retrieve(method:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = ContentLoader.retrieve(method:);
  }

  else
  {
    v4 = ContentLoader.retrieve(method:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in closure #1 in closure #1 in ContentLoader.load();

  return ContentLoader.retrieve(method:)(1);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #2 in closure #1 in closure #1 in ContentLoader.load(), 0, 0);
  }
}

uint64_t ContentLoader.getSources(method:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for OnScreenContentSources();
  v45 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v46[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMd, &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMR);
  v11 = a1;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OnScreenContentSources] and conformance [A], &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMd, &_sSay23IntelligenceFlowContext22OnScreenContentSourcesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!a1)
  {
    v12 = 0x800000024FE20410;

    goto LABEL_5;
  }

  v12 = 0x800000024FE20410;
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_5:
    static OnScreenContentSources.windowContentGeneratedPDFDisabled.getter();
    v14 = v44;
    specialized OptionSet<>.insert(_:)(v44, v6);
    v15 = *(v45 + 8);
    v15(v6, v3);
    v15(v14, v3);
  }

  v43 = a1;
  if (!a1)
  {
    v16 = v44;
LABEL_12:

LABEL_13:
    static OnScreenContentSources.uiHierarchyContent.getter();
    specialized OptionSet<>.insert(_:)(v16, v6);
    v19 = *(v45 + 8);
    v19(v6, v3);
    v19(v16, v3);
    static OnScreenContentSources.appEntities.getter();
    specialized OptionSet<>.insert(_:)(v16, v6);
    v19(v6, v3);
    v19(v16, v3);
    __swift_project_boxed_opaque_existential_1((v41 + 40), *(v41 + 64));
    if (!ScreenLockChecker.isScreenLocked()())
    {
      if (one-time initialization token for contextRetrieval != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.contextRetrieval);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46[0] = v44;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, v46);
        *(v23 + 12) = 2080;
        *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024FE205D0, v46);
        _os_log_impl(&dword_24FD67000, v21, v22, "%s.%s screen is unlocked, adding app window snapshots", v23, 0x16u);
        v24 = v44;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v24, -1, -1);
        MEMORY[0x253057F40](v23, -1, -1);
      }

      v11 = v43;
      static OnScreenContentSources.appWindowSnapshots.getter();
      specialized OptionSet<>.insert(_:)(v16, v6);
      v19(v6, v3);
      v19(v16, v3);
    }

    goto LABEL_19;
  }

  v16 = v44;
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_13;
  }

  if (a1 > 1u)
  {
    goto LABEL_12;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (v11 == 1)
  {
    goto LABEL_25;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_26:
    static OnScreenContentSources.windowContentGeneratedPDFEnabled.getter();
    specialized OptionSet<>.insert(_:)(v16, v6);
    v27 = *(v45 + 8);
    v27(v6, v3);
    v27(v16, v3);
    goto LABEL_27;
  }

  if (v43 && v43 != 1)
  {
LABEL_25:

    goto LABEL_26;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (one-time initialization token for contextRetrieval != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.contextRetrieval);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46[0] = v32;
    *v31 = 136315906;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, v46);
    *(v31 + 12) = 2080;
    v33 = 0xD00000000000001FLL;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024FE205D0, v46);
    *(v31 + 22) = 2080;
    if (v43)
    {
      if (v43 == 1)
      {
        v33 = 0xD000000000000019;
      }

      else
      {
        v33 = 7105633;
      }

      if (v43 == 1)
      {
        v12 = 0x800000024FE203F0;
      }

      else
      {
        v12 = 0xE300000000000000;
      }
    }

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v12, v46);

    *(v31 + 24) = v34;
    *(v31 + 32) = 2080;
    swift_beginAccess();
    v35 = OnScreenContentSources.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v46);

    *(v31 + 34) = v37;
    _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s Context Retrieval sources for method '%s': %s", v31, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v32, -1, -1);
    MEMORY[0x253057F40](v31, -1, -1);
  }

  swift_beginAccess();
  v38 = v45;
  (*(v45 + 16))(v42, v10, v3);
  return (*(v38 + 8))(v10, v3);
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMd, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMR);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for OnScreenContentSources();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D1D4E0];
  v25 = lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v16;
  v18 = v28;
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, v17, MEMORY[0x277D1D4E8]);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v7, v29, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMd, &_sSb8inserted_23IntelligenceFlowContext22OnScreenContentSourcesV17memberAfterInserttMR);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t OnScreenContentSources.description.getter()
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
  v1 = *(v25 - 8);
  v2 = MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  v7 = swift_beginAccess();
  v8 = static OnScreenContentSources.debugDescriptions;
  MEMORY[0x28223BE20](v7);
  *(&v24 - 2) = v0;

  v9 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in OnScreenContentSources.description.getter, (&v24 - 4), v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v27;
    v12 = *(v1 + 80);
    v24 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v26 = *(v1 + 72);
    v14 = v25;
    do
    {
      outlined init with copy of Date?(v13, v6, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v6, v4, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      v15 = &v4[*(v14 + 48)];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = type metadata accessor for OnScreenContentSources();
      (*(*(v18 - 8) + 8))(v4, v18);
      v27 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v14 = v25;
        v11 = v27;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      v13 += v26;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t protocol witness for ContentLoaderProviding.load() in conformance ContentLoader(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay23IntelligenceFlowContext15OnScreenContentVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay23IntelligenceFlowContext15OnScreenContentVG__GMR);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](protocol witness for ContentLoaderProviding.load() in conformance ContentLoader, 0, 0);
}

uint64_t protocol witness for ContentLoaderProviding.load() in conformance ContentLoader()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  *(swift_task_alloc() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23IntelligenceFlowContext15OnScreenContentVGMd, &_sSay23IntelligenceFlowContext15OnScreenContentVGMR);
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMd, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMR);
  v5[4] = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[OnScreenContent]> and conformance AsyncStream<A>, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMd, &_sScSySay23IntelligenceFlowContext15OnScreenContentVGGMR, MEMORY[0x277D857C0]);
  __swift_allocate_boxed_opaque_existential_1(v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v6 = v0[1];

  return v6();
}

uint64_t one-time initialization function for debugDescriptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMR);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = 2 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24FE1B550;
  v5 = v4 + v2;
  v6 = v5 + v0[14];
  static OnScreenContentSources.appEntities.getter();
  strcpy(v6, "App Entities");
  *(v6 + 13) = 0;
  *(v6 + 14) = -5120;
  v7 = (v5 + v1 + v0[14]);
  static OnScreenContentSources.uiHierarchyContent.getter();
  *v7 = 0xD000000000000013;
  v7[1] = 0x800000024FE205F0;
  v8 = v5 + v3 + v0[14];
  result = static OnScreenContentSources.appWindowSnapshots.getter();
  strcpy(v8, "App Snapshots");
  *(v8 + 14) = -4864;
  static OnScreenContentSources.debugDescriptions = v4;
  return result;
}

uint64_t static OnScreenContentSources.debugDescriptions.getter()
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static OnScreenContentSources.debugDescriptions.setter(uint64_t a1)
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static OnScreenContentSources.debugDescriptions = a1;
}

uint64_t (*static OnScreenContentSources.debugDescriptions.modify(uint64_t a1))()
{
  if (one-time initialization token for debugDescriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return SELFUtils.gatMediaInfo.modify;
}

uint64_t partial apply for closure #1 in OnScreenContentSources.description.getter(uint64_t a1)
{
  type metadata accessor for OnScreenContentSources();
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentSources and conformance OnScreenContentSources, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  return dispatch thunk of SetAlgebra.isSuperset(of:)() & 1;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      outlined init with copy of Date?(a3 + v15 + v16 * v13, v12, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      v17 = a1(v12);
      if (v3)
      {
        outlined destroy of OnScreenContent.Document?(v12, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);

        goto LABEL_15;
      }

      if (v17)
      {
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v12, v24, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v24, v14 + v15 + v20 * v16, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = outlined destroy of OnScreenContent.Document?(v12, &_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t dispatch thunk of ContentLoaderProviding.load()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of ContentLoaderProviding.load();

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentLoader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for ContentLoader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FDB16E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 40));

  return MEMORY[0x2821FE8E8](v0, v5 + 88, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMd, &_sScS12ContinuationVySay23IntelligenceFlowContext15OnScreenContentVG_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in closure #1 in ContentLoader.load()(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of ContentLoaderProviding.load();

  return implicit closure #1 in closure #1 in closure #1 in ContentLoader.load()(a1);
}

uint64_t objectdestroy_4Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return implicit closure #2 in closure #1 in closure #1 in ContentLoader.load()(a1);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OnScreenContentType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for OnScreenContentType();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for OnScreenContentType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for OnScreenContentType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for OnScreenContentType();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceImage.Representation();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss11_SetStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
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
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type IntelligenceImage.Representation and conformance IntelligenceImage.Representation, MEMORY[0x277D74500], MEMORY[0x277D74518]);
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
          lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type IntelligenceImage.Representation and conformance IntelligenceImage.Representation, MEMORY[0x277D74500], MEMORY[0x277D74528]);
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC23IntelligenceFlowContext19OnScreenContentTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for OnScreenContentType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
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
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
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
          lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D450]);
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

uint64_t specialized ContentLoader.getContentTypes(representations:)()
{
  v0 = type metadata accessor for OnScreenContentType();
  v62 = *(v0 - 8);
  v2 = v62;
  v1 = v62;
  v3 = MEMORY[0x28223BE20](v0);
  v60 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = v54 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v64 = *(v58 - 8);
  v65 = v64;
  v6 = MEMORY[0x28223BE20](v58);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v54 - v9;
  v54[0] = type metadata accessor for UTType();
  v63 = *(v54[0] - 8);
  v10 = MEMORY[0x28223BE20](v54[0]);
  v66 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v61 = *(v1 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v57 = xmmword_24FE1A8C0;
  *(v13 + 16) = xmmword_24FE1A8C0;
  v55 = (v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
  type metadata accessor for IntelligenceImage.Representation();
  v14 = swift_allocObject();
  *(v14 + 16) = v57;
  v15 = &_s22UniformTypeIdentifiers6UTTypeVSgMR;
  static ContentLoader.fullRepresentation.getter(2048, MEMORY[0x277D744E8], 768, MEMORY[0x277D744F0]);
  static ContentLoader.fullRepresentation.getter(256, MEMORY[0x277D744D8], 256, MEMORY[0x277D744E0]);
  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = v55;
  *v55 = v16;
  v18 = v54[0];
  v19 = v62 + 104;
  v20 = *(v62 + 104);
  v20(v17, *MEMORY[0x277D1D428], v0);
  v21 = *MEMORY[0x277D1D430];
  v56 = v20;
  *&v57 = v19;
  v20(&v17[v61], v21, v0);
  v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC23IntelligenceFlowContext19OnScreenContentTypeO_Tt0g5Tf4g_n(v13);
  swift_setDeallocating();
  v61 = v0;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v69 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVSgGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVSgGMR);
  v23 = *(v64 + 72);
  v24 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v55 = swift_allocObject();
  v25 = &v55[v24];
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.vCard.getter();
  v26 = *(v63 + 56);
  v26(&v25[4 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.html.getter();
  v26(&v25[7 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.xml.getter();
  v26(&v25[10 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.javaScript.getter();
  v26(&v25[14 * v23], 0, 1, v18);
  static UTType.cHeader.getter();
  v26(&v25[15 * v23], 0, 1, v18);
  static UTType.cSource.getter();
  v26(&v25[16 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.cPlusPlusHeader.getter();
  v26(&v25[18 * v23], 0, 1, v18);
  static UTType.cPlusPlusSource.getter();
  v26(&v25[19 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.phpScript.getter();
  v26(&v25[23 * v23], 0, 1, v18);
  static UTType.pythonScript.getter();
  v26(&v25[24 * v23], 0, 1, v18);
  static UTType.rubyScript.getter();
  v26(&v25[25 * v23], 0, 1, v18);
  static UTType.shellScript.getter();
  v26(&v25[26 * v23], 0, 1, v18);
  static UTType.pdf.getter();
  v26(&v25[27 * v23], 0, 1, v18);
  static UTType.commaSeparatedText.getter();
  v26(&v25[28 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.json.getter();
  v26(&v25[31 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.rtf.getter();
  v26(&v25[33 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.plainText.getter();
  v26(&v25[35 * v23], 0, 1, v18);
  static UTType.tarArchive.getter();
  v26(&v25[36 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.zip.getter();
  v26(&v25[38 * v23], 0, 1, v18);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v27 = 40;
  v28 = (v63 + 48);
  v65 = v63 + 32;
  v29 = MEMORY[0x277D84F90];
  v54[1] = v25;
  v30 = v25;
  do
  {
    v31 = v67;
    outlined init with copy of Date?(v30, v67, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v15);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v31, v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v15);
    if ((*v28)(v8, 1, v18) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v15);
    }

    else
    {
      v64 = v27;
      v32 = v23;
      v33 = v18;
      v34 = v15;
      v35 = *v65;
      v36 = v8;
      v37 = v8;
      v38 = v33;
      (*v65)(v66, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
      }

      v40 = v29[2];
      v39 = v29[3];
      if (v40 >= v39 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v29);
      }

      v29[2] = v40 + 1;
      (v35)(v29 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v40, v66, v38);
      v15 = v34;
      v18 = v38;
      v8 = v36;
      v23 = v32;
      v27 = v64;
    }

    v30 += v23;
    --v27;
  }

  while (v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = v60;
  v42 = v61;
  *v60 = v29;
  v56(v41, *MEMORY[0x277D1D438], v42);
  v43 = v59;
  specialized Set._Variant.insert(_:)(v59, v41);
  (*(v62 + 8))(v43, v42);
  if (one-time initialization token for contextRetrieval != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.contextRetrieval);
  v45 = v69;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v68 = v49;
    *v48 = 136315650;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, &v68);
    *(v48 + 12) = 2080;
    *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE205A0, &v68);
    *(v48 + 22) = 2080;
    lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440], MEMORY[0x277D1D448]);
    v50 = Set.description.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v68);

    *(v48 + 24) = v52;
    _os_log_impl(&dword_24FD67000, v46, v47, "%s.%s Context Retrieval should return the following content types: %s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v49, -1, -1);
    MEMORY[0x253057F40](v48, -1, -1);
  }

  return v45;
}

uint64_t lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

Swift::Bool __swiftcall String.isLongerThan(num:unit:)(Swift::Int num, NLTokenUnit unit)
{
  v4 = v3;
  v5 = v2;
  v7 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v8 = MEMORY[0x253056EA0](v5, v4);
  [v7 setString_];

  NLTokenizer.enumerateTokens(in:using:)();
  return num < 0;
}

uint64_t String.withoutEmoji.getter(uint64_t a1, unint64_t a2)
{

  v4 = specialized RangeReplaceableCollection.filter(_:)(a1, a2);
  v6 = v5;

  specialized Sequence.reduce<A>(into:_:)(0, 0xE000000000000000, v4, v6);
  v8 = v7;

  return v8;
}

uint64_t closure #1 in String.withoutEmoji.getter(unsigned int *a1)
{
  v2 = type metadata accessor for Unicode.NumericType();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  MEMORY[0x28223BE20](v39);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v12;
  v13 = type metadata accessor for Unicode.Scalar.Properties();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = *a1;
  Unicode.Scalar.properties.getter();
  v21 = Unicode.Scalar.Properties.isEmojiPresentation.getter();
  v22 = *(v14 + 8);
  v22(v19, v13);
  if ((v21 & 1) == 0)
  {
    Unicode.Scalar.properties.getter();
    v23 = Unicode.Scalar.Properties.isEmoji.getter();
    v22(v19, v13);
    if ((v23 & 1) == 0)
    {
      Unicode.Scalar.properties.getter();
      v32 = Unicode.Scalar.Properties.isVariationSelector.getter();
      v22(v19, v13);
      if ((v32 & 1) == 0 && v20 != 8205)
      {
        goto LABEL_11;
      }
    }
  }

  Unicode.Scalar.properties.getter();
  v24 = v42;
  Unicode.Scalar.Properties.numericType.getter();
  v25 = v24;
  v22(v17, v13);
  v27 = v40;
  v26 = v41;
  (*(v40 + 104))(v11, *MEMORY[0x277D84E00], v41);
  (*(v27 + 56))(v11, 0, 1, v26);
  v28 = *(v39 + 48);
  outlined init with copy of Unicode.NumericType?(v24, v5);
  outlined init with copy of Unicode.NumericType?(v11, &v5[v28]);
  v29 = *(v27 + 48);
  if (v29(v5, 1, v26) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v11, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    outlined destroy of OnScreenContent.Document?(v25, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    if (v29(&v5[v28], 1, v26) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v5, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
LABEL_11:
      v31 = 1;
      return v31 & 1;
    }
  }

  else
  {
    v30 = v38;
    outlined init with copy of Unicode.NumericType?(v5, v38);
    if (v29(&v5[v28], 1, v26) != 1)
    {
      v33 = v37;
      (*(v27 + 32))(v37, &v5[v28], v26);
      v34 = v30;
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v27 + 8);
      v35(v33, v26);
      outlined destroy of OnScreenContent.Document?(v11, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      outlined destroy of OnScreenContent.Document?(v42, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      v35(v34, v26);
      outlined destroy of OnScreenContent.Document?(v5, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      return v31 & 1;
    }

    outlined destroy of OnScreenContent.Document?(v11, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    outlined destroy of OnScreenContent.Document?(v42, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    (*(v27 + 8))(v30, v26);
  }

  outlined destroy of OnScreenContent.Document?(v5, &_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  v31 = 0;
  return v31 & 1;
}

void specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[3] = a2;
  v19[2] = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v20 = a4 & 0xFFFFFFFFFFFFFFLL;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v19[0] = a3;
          v19[1] = v20;
          v9 = v19 + v7;
        }

        else
        {
          v8 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v7);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v14 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if (v10 > 0x7F)
      {
        v15 = (v10 & 0x3F) << 8;
        if (v10 >= 0x800)
        {
          v16 = (v15 | (v10 >> 6) & 0x3F) << 8;
          v17 = (((v16 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
          v12 = (v10 >> 12) + v16 + 8487393;
          if (HIWORD(v10))
          {
            v12 = v17;
          }
        }

        else
        {
          v12 = (v10 >> 6) + v15 + 33217;
        }
      }

      else
      {
        v12 = v10 + 1;
      }

      v7 += v11;
      v19[0] = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v12) >> 3))));
      v13 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x253056FE0](v13);
    }

    while (v7 < v4);
  }
}

double closure #1 in String.withoutMarkdownURLs.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  Regex.Match.output.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t String.asDisplayURL.getter(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  URL.init(string:)();
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_17:
    if (one-time initialization token for intent != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.intent);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v58);
      _os_log_impl(&dword_24FD67000, v52, v53, "Url is invalid: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x253057F40](v55, -1, -1);
      MEMORY[0x253057F40](v54, -1, -1);
    }

    return 0;
  }

  v9 = URL.host.getter();
  v11 = v10;
  (*(v8 + 8))(v6, v7);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = specialized String.withCString<A>(_:)(v9, v11, v9, v11);
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16._countAndFlagsBits = v12;
    v16._object = v14;
    v17 = String.hasSuffix(_:)(v16);

    v18 = v9;
    v19 = v11;
    if (v17)
    {
      v20 = String.count.getter();
      v21 = specialized BidirectionalCollection.dropLast(_:)(v20, v9, v11);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v18 = MEMORY[0x253056F50](v21, v23, v25, v27);
      v19 = v28;
    }

    v29 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v29 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      v30._countAndFlagsBits = 46;
      v30._object = 0xE100000000000000;
      v31 = String.hasSuffix(_:)(v30);
      if (v31)
      {
        v32 = String.count.getter();
        v33 = specialized BidirectionalCollection.dropLast(_:)(v32, v18, v19);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v18 = MEMORY[0x253056F50](v33, v35, v37, v39);
        v19 = v40;
      }

      v58 = 46;
      v59 = 0xE100000000000000;
      MEMORY[0x28223BE20](v31);
      *(&v57 - 2) = &v58;
      specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v57 - 4), v18, v19);
      if ((v41 & 1) == 0)
      {
        v42 = String.index(after:)();
        v43 = specialized Collection.suffix(from:)(v42, v18, v19);
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v18 = MEMORY[0x253056F50](v43, v45, v47, v49);
        v19 = v50;
      }

      v58 = v18;
      v59 = v19;

      MEMORY[0x253056FE0](46, 0xE100000000000000);

      MEMORY[0x253056FE0](v12, v14);

      return v58;
    }

    else
    {
    }
  }

  else
  {
  }

  return v9;
}

uint64_t closure #1 in String.asDisplayURL.getter@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  strlen(a1);
  if (_CFHostGetTopLevelDomain())
  {
    result = String.init(cString:)();
    a2 = result;
    a3 = v8;
  }

  else
  {
  }

  *a4 = a2;
  a4[1] = a3;
  return result;
}

Swift::String __swiftcall String.createBreadcrumbURL(_:)(Swift::Bool a1)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v121 = type metadata accessor for CharacterSet();
  v6 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v115 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v108 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v108 - v17;
  URL.init(string:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v18, v11, v12);
    v24 = URL.host.getter();
    if (!v25)
    {
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.intent);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v128 = v45;
        *v44 = 136315138;
        *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v128);
        _os_log_impl(&dword_24FD67000, v42, v43, "Invalid host: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x253057F40](v45, -1, -1);
        MEMORY[0x253057F40](v44, -1, -1);
      }

      (*(v13 + 8))(v18, v12);
      goto LABEL_14;
    }

    v26 = v24;
    v27 = v25;
    v28._countAndFlagsBits = 779581303;
    v28._object = 0xE400000000000000;
    v29 = String.hasPrefix(_:)(v28);
    v112 = v5;
    v114 = v6;
    if (v29)
    {
      v30 = String.count.getter();
      v31 = specialized Collection.dropFirst(_:)(v30, v26, v27);
      v33 = v32;
      v35 = v34;
      v36 = v18;
      v38 = v37;

      v39 = MEMORY[0x253056F50](v31, v33, v35, v38);
      v3 = v40;
      v18 = v36;
      v4 = v39;
    }

    else
    {
      v4 = v26;
      v3 = v27;
    }

    v48 = URL.pathComponents.getter();
    v49 = *(v48 + 16);
    if (v49 <= 1)
    {
      (*(v13 + 8))(v18, v12);

      goto LABEL_15;
    }

    v108 = v18;
    v109 = v4;
    v110 = v3;
    v111 = v13;
    v118 = v12;
    specialized _copyCollectionToContiguousArray<A>(_:)(v48, v48 + 32, 1, (2 * v49) | 1);
    v51 = v50;

    v52 = *(v51 + 2);

    v119 = v52;
    if (v52)
    {
      v53 = 0;
      v3 = 0;
      v4 = 0xE100000000000000;
      while (v3 < *(v51 + 2))
      {
        v54 = *&v51[v53 + 40];
        v128 = *&v51[v53 + 32];
        v129 = v54;
        v126 = 45;
        v127 = 0xE100000000000000;
        v124 = 32;
        v125 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v55 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v57 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
        }

        if (v3 >= *(v51 + 2))
        {
          goto LABEL_67;
        }

        v58 = &v51[v53];
        *(v58 + 4) = v55;
        *(v58 + 5) = v57;

        if (v3 >= *(v51 + 2))
        {
          goto LABEL_68;
        }

        v59 = *(v58 + 5);
        v128 = *(v58 + 4);
        v129 = v59;
        v126 = 95;
        v127 = 0xE100000000000000;
        v124 = 32;
        v125 = 0xE100000000000000;
        v60 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        if (v3 >= *(v51 + 2))
        {
          goto LABEL_69;
        }

        ++v3;
        *(v58 + 4) = v60;
        *(v58 + 5) = v61;

        v53 += 16;
        if (v119 == v3)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_28:
    v119 = *(v51 + 2);
    if (v119)
    {
      v62 = 0;
      v63 = 0;
      v116 = "UI Hiearchy Content";
      v117 = (v111 + 8);
      ++v114;
      ++v115;
      v113 = v16;
      v4 = v123;
      while (v63 < *(v51 + 2))
      {

        URL.init(fileURLWithPath:)();

        v64 = URL.lastPathComponent.getter();
        v66 = v65;
        v67._countAndFlagsBits = URL.pathExtension.getter();
        if (String.hasSuffix(_:)(v67))
        {
          v68 = String.count.getter();

          if (v68 < 0)
          {
            goto LABEL_77;
          }

          String.index(_:offsetBy:limitedBy:)();
          v69 = String.subscript.getter();
          v71 = v70;
          v73 = v72;
          v3 = v74;

          v64 = MEMORY[0x253056F50](v69, v71, v73, v3);
          v66 = v75;

          (*v117)(v16, v118);
        }

        else
        {
          (*v117)(v16, v118);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
        }

        if (v63 >= *(v51 + 2))
        {
          goto LABEL_71;
        }

        v3 = &v51[v62];
        *(v3 + 32) = v64;
        *(v3 + 40) = v66;

        if (v63 >= *(v51 + 2))
        {
          goto LABEL_72;
        }

        v76 = *(v3 + 40);
        v126 = *(v3 + 32);
        v127 = v76;

        v77 = v122;
        Regex.init(_regexString:version:)();
        v124 = 32;
        v125 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR, MEMORY[0x277D85AC0]);
        RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
        (*v115)(v77, v4);

        if (v63 >= *(v51 + 2))
        {
          goto LABEL_73;
        }

        v78 = v129;
        *(v3 + 32) = v128;
        *(v3 + 40) = v78;

        if (v63 >= *(v51 + 2))
        {
          goto LABEL_74;
        }

        v79 = *(v3 + 40);
        v128 = *(v3 + 32);
        v129 = v79;

        v80 = v120;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v81 = StringProtocol.trimmingCharacters(in:)();
        v83 = v82;
        (*v114)(v80, v121);

        if (v63 >= *(v51 + 2))
        {
          goto LABEL_75;
        }

        ++v63;
        *(v3 + 32) = v81;
        *(v3 + 40) = v83;

        v62 += 16;
        v16 = v113;
        if (v119 == v63)
        {
          v84 = *(v51 + 2);
          if (!v84)
          {
            goto LABEL_56;
          }

          v3 = 0;
          v85 = v51 + 40;
          v86 = (v84 - 1);
          v87 = MEMORY[0x277D84F90];
LABEL_45:
          v88 = &v85[16 * v3];
          v4 = v3;
          while (v4 < *(v51 + 2))
          {
            v90 = *(v88 - 1);
            v89 = *v88;
            v3 = v4 + 1;

            if (String.count.getter() > 1)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v128 = v87;
              v122 = v86;
              v123 = v85;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1);
                v87 = v128;
              }

              v93 = *(v87 + 2);
              v92 = *(v87 + 3);
              if (v93 >= v92 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
                v87 = v128;
              }

              *(v87 + 2) = v93 + 1;
              v94 = &v87[16 * v93];
              *(v94 + 4) = v90;
              *(v94 + 5) = v89;
              v86 = v122;
              v85 = v123;
              if (v122 != v4)
              {
                goto LABEL_45;
              }

              goto LABEL_57;
            }

            v88 += 16;
            ++v4;
            if (v84 == v3)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_76;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_56:
    v87 = MEMORY[0x277D84F90];
LABEL_57:
    v95 = v110;
    v96 = v111;

    v97 = *(v87 + 2);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v87;
    v99 = v118;
    v100 = v109;
    if (!v98 || v97 >= *(v87 + 3) >> 1)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v98, v97 + 1, 1, v87);
      v130 = v87;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v100, v95);

    v128 = v87;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v3 = v101;

    if (*(v87 + 2) >= 3uLL && v112)
    {

      if (*(v87 + 2))
      {
        v102 = *(v87 + 5);
        v128 = *(v87 + 4);
        v129 = v102;

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](12222690, 0xA300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](3026478, 0xE300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](12222690, 0xA300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        v103 = *(v87 + 2);
        if (v103)
        {
          v104 = &v87[16 * v103 + 32];
          v105 = *(v104 - 16);
          v106 = *(v104 - 8);

          MEMORY[0x253056FE0](v105, v106);

          v4 = v128;
          v3 = v129;
          goto LABEL_65;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_81;
    }

LABEL_65:
    (*(v96 + 8))(v108, v99);

    goto LABEL_15;
  }

  outlined destroy of OnScreenContent.Document?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (one-time initialization token for intent != -1)
  {
LABEL_78:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.intent);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v128 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v128);
    _os_log_impl(&dword_24FD67000, v20, v21, "Url is invalid: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x253057F40](v23, -1, -1);
    MEMORY[0x253057F40](v22, -1, -1);
  }

LABEL_14:

LABEL_15:
  v46 = v4;
  v47 = v3;
LABEL_81:
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t String.numberOfLines(attributes:width:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = MEMORY[0x253056EA0](a3, a4);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithString:v8 attributes:isa];

  v11 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v11 setLineFragmentPadding_];
  [v11 setMaximumNumberOfLines_];
  v12 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  [v12 addTextContainer_];
  v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  [v13 addLayoutManager_];
  [v12 glyphRangeForTextContainer_];
  if ([v12 numberOfGlyphs] >= 1)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v23 = 0;
      v24 = 0;
      [v12 lineFragmentRectForGlyphAtIndex:v15 effectiveRange:&v23];
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v15 = v24 + v23;
      ++v14;
      if (v15 >= [v12 numberOfGlyphs])
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = 0;
LABEL_7:
  v17 = MEMORY[0x253056EA0](a3, a4);
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v17 sizeWithAttributes_];
  v20 = v19;

  v21 = v20 / a1;
  if (COERCE__INT64(fabs(v20 / a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v21, 1))
  {
    goto LABEL_18;
  }

  if (v21 + 1 <= v16)
  {
    return v16;
  }

  else
  {
    return v21 + 1;
  }
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v11 = v10;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v18;
          v8 = v15 + v6;
        }

        else
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v7 = _StringObject.sharedUTF8.getter();
          }

          v8 = (v7 + v6);
        }

        v9 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = (__clz(v9 ^ 0xFF) - 24);
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v9 = ((v9 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
            v11 = 3;
          }

          else
          {
            v9 = ((v9 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
            v11 = 4;
          }

          goto LABEL_16;
        }

        if (v13 == 1)
        {
LABEL_15:
          v11 = 1;
        }

        else
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
          v11 = 2;
        }
      }

LABEL_16:
      LODWORD(v15[0]) = v9;
      v12 = closure #1 in String.withoutEmoji.getter(v15);
      if (v2)
      {
      }

      if (v12)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v6 += v11;
      if (v6 >= v4)
      {
        return v16;
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      strlen(__s);
LABEL_6:
      if (_CFHostGetTopLevelDomain())
      {
        return String.init(cString:)();
      }

      return a3;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v9;
  }

  return a3;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

BOOL partial apply for closure #1 in String.isLongerThan(num:unit:)()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 <= v3;
  }

  return result;
}

uint64_t outlined init with copy of Unicode.NumericType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static IntentDialogUtils.getDialog(catID:response:partnerName:currentPartnerName:requestedPartnerName:appName:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *a1;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v27 = v18;
  v19 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v19 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, 0x65736E6F70736572, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v27 = v20;
  }

  if (a5)
  {

    specialized Dictionary.subscript.setter(a4, a5, 0xD000000000000013, 0x800000024FE20070);
  }

  if (a9)
  {

    specialized Dictionary.subscript.setter(a8, a9, 0xD000000000000014, 0x800000024FE20650);
  }

  if (a7)
  {

    specialized Dictionary.subscript.setter(a6, a7, 0xD000000000000012, 0x800000024FE20630);
  }

  if (a11)
  {

    specialized Dictionary.subscript.setter(a10, a11, 0x656D614E707061, 0xE700000000000000);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v26) = v25;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

  v23.value._countAndFlagsBits = a4;
  v23.value._object = a5;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v26, v23, v22);

  return IntentDialog.init(stringLiteral:)();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v18;
      }

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2 == 1)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v14;
      }

      result = specialized _NativeDictionary._delete(at:)(v7, v9);
      *v4 = v9;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, v13);
    *v3 = v15;
  }

  return result;
}

uint64_t static IntentDialogUtils.getDialogAndInsertToFeatureStore(requestID:catID:responseDialog:responseText:alternativeExecutorRequired:userQuery:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v14 = *a3;
  v15 = a7;
  if (!a7)
  {

    a6 = a4;
    v15 = a5;
  }

  v27 = v14;
  v16 = CatId.rawValue.getter();
  v26 = a4;
  v18 = v17;
  *&v30 = 0xD000000000000019;
  *(&v30 + 1) = 0x800000024FE20670;

  MEMORY[0x253056FE0](v16, v18);

  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v32 = a6;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = a8 & 1;
  *(&v33 + 1) = a9;
  v34 = a10;
  type metadata accessor for FeatureStoreService();
  v28[2] = v32;
  v28[3] = v33;
  v29 = a10;
  v28[0] = v30;
  v28[1] = v31;
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult();
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult();

  static FeatureStoreService.insert<A>(interactionId:item:)();
  outlined destroy of IntentDialogUtils.GenerativeAssistantToolResult(&v30);
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v20 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28[0] = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a5, 0x65736E6F70736572, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v28[0]) = v27;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v28, 0, v22);

  return IntentDialog.init(stringLiteral:)();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6449746163;
  v3 = 0x65736E6F70736572;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0x7265755172657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4974736575716572;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentDialogUtils.GenerativeAssistantToolResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMd, &_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 protocol witness for Decodable.init(from:) in conformance IntentDialogUtils.GenerativeAssistantToolResult@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized IntentDialogUtils.GenerativeAssistantToolResult.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7ToolKit25TypedValueAsyncResolvable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMd, &_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMd, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of TypedValueAsyncResolvable(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult()
{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FE206D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265755172657375 && a2 == 0xE900000000000079)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized IntentDialogUtils.GenerativeAssistantToolResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMd, &_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v10;
  LOBYTE(v37[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  v28 = v11;
  LOBYTE(v37[0]) = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v13;
  LOBYTE(v37[0]) = 3;
  LODWORD(v26) = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 4;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v26 & 1;
  v16 = *(v6 + 8);
  v17 = v14;
  v26 = v18;
  v16(v8, v5);
  v19 = v30;
  *&v32 = v9;
  *(&v32 + 1) = v31;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  LOBYTE(v35) = v15;
  v21 = v26;
  *(&v35 + 1) = v17;
  v36 = v26;
  outlined init with copy of IntentDialogUtils.GenerativeAssistantToolResult(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v9;
  v37[1] = v31;
  v37[2] = v28;
  v37[3] = v19;
  v37[4] = v27;
  v37[5] = v20;
  v38 = v15;
  v39 = v17;
  v40 = v21;
  result = outlined destroy of IntentDialogUtils.GenerativeAssistantToolResult(v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}