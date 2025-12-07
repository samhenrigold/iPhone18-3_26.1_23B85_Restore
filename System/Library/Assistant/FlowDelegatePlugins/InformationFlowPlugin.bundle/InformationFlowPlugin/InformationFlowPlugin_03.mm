uint64_t KnowledgeFallbackHelper.contentProviderName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 24));
  result = outlined consume of String??(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*KnowledgeFallbackHelper.contentProviderName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = KnowledgeFallbackHelper.contentProviderName.getter();
  a1[1] = v3;
  return KnowledgeFallbackHelper.contentProviderName.modify;
}

uint64_t KnowledgeFallbackHelper.contentProviderName.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = (v4 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 24));
  v7 = *v6;
  v8 = v6[1];
  if (a2)
  {

    outlined consume of String??(v7, v8);
    *v6 = v5;
    v6[1] = v3;
  }

  else
  {
    result = outlined consume of String??(v7, v6[1]);
    *v6 = v5;
    v6[1] = v3;
  }

  return result;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.getter()
{
  v1 = (v0 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1;
  if (v3 == 1)
  {
    v4 = closure #1 in KnowledgeFallbackHelper.contentProviderID.getter();
    *v1 = v4;
    v1[1] = v5;
  }

  outlined copy of String??(v2, v3);
  return v4;
}

uint64_t closure #1 in KnowledgeFallbackHelper.contentProviderID.getter()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  *(&v7 + 1) = &type metadata for Features;
  v8 = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v6) = 5;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(&v6);
  if (v0)
  {
    dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();
    if (*(&v7 + 1))
    {
      outlined init with take of SiriSuggestionsBroker(&v6, &v3);
    }

    else
    {
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
      if (*(&v7 + 1))
      {
        outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
      }
    }
  }

  else
  {
    dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(&v6, &v3, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
  if (*(&v4 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    v1 = dispatch thunk of LLMProvider.id.getter();

    outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v3);
  }

  else
  {
    outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);

    outlined destroy of Any?(&v3, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    return 0;
  }

  return v1;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 28));
  result = outlined consume of String??(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*KnowledgeFallbackHelper.contentProviderID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = KnowledgeFallbackHelper.contentProviderID.getter();
  a1[1] = v3;
  return KnowledgeFallbackHelper.contentProviderID.modify;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = (v4 + *(type metadata accessor for KnowledgeFallbackHelper(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  if (a2)
  {

    outlined consume of String??(v7, v8);
    *v6 = v5;
    v6[1] = v3;
  }

  else
  {
    result = outlined consume of String??(v7, v6[1]);
    *v6 = v5;
    v6[1] = v3;
  }

  return result;
}

uint64_t specialized KnowledgeFallbackHelperProviding.eligibleForKnowledgeFallback(response:)()
{
  v0 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v80 = *(v0 - 8);
  v81 = v0;
  v1 = __chkstk_darwin(v0);
  v78[1] = v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = v78 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v78 - v6;
  v8 = type metadata accessor for SiriXRedirectContext();
  v82 = *(v8 - 1);
  v83 = v8;
  v9 = __chkstk_darwin(v8);
  v79 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = v78 - v13;
  v15 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v85 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v78 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v78 - v23;
  __chkstk_darwin(v22);
  v26 = v78 - v25;
  if ((PommesResponse.isLowConfidenceKnowledgeResult.getter() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.information);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_20;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Suppressing knowledge fallback: isLowConfidenceKnowledgeResult is false";
    goto LABEL_19;
  }

  if (!KnowledgeFallbackHelper.isEnabled()())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.information);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_20;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Suppressing knowledge fallback: isEnabled is false";
    goto LABEL_19;
  }

  if ((AFDeviceSupportsSAE() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.information);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_20;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Suppressing knowledge fallback because the device doesn't support SAE";
LABEL_19:
    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);

LABEL_20:

    return 0;
  }

  v78[0] = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.nlRoutingDecision.getter();

  dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

  v27 = v85;
  v28 = v15;
  if ((*(v85 + 48))(v14, 1, v15) != 1)
  {
    (*(v27 + 32))(v26, v14, v15);
    v39 = *(v27 + 16);
    v39(v24, v26, v15);
    v40 = (*(v27 + 88))(v24, v15);
    if (v40 == enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.genAINotAvailable(_:))
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.information);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v15;
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Suppressing knowledge fallback because GenAI is not available";
LABEL_36:
        _os_log_impl(&dword_0, v42, v43, v46, v45, 2u);

        (*(v85 + 8))(v26, v44);
        return 0;
      }
    }

    else
    {
      if (v40 != enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.userAgentCorrection(_:))
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.information);
        v39(v21, v26, v15);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        v57 = v26;
        if (os_log_type_enabled(v55, v56))
        {
          v58 = swift_slowAlloc();
          v82 = v58;
          v83 = swift_slowAlloc();
          v86 = v83;
          *v58 = 136315138;
          v39(v18, v21, v15);
          v59 = String.init<A>(describing:)();
          v61 = v60;
          v84 = v57;
          v62 = *(v85 + 8);
          v62(v21, v28);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v86);

          v64 = v82;
          *(v82 + 1) = v63;
          _os_log_impl(&dword_0, v55, v56, "Unknown knowledge fallback suppress reason: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          v62(v84, v28);
        }

        else
        {

          v62 = *(v85 + 8);
          v62(v21, v15);
          v62(v26, v15);
        }

        v62(v24, v28);
        return 0;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.information);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v15;
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Suppressing knowledge fallback because user specified an agent correction";
        goto LABEL_36;
      }
    }

    (*(v85 + 8))(v26, v15);
    return 0;
  }

  outlined destroy of Any?(v14, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowRedirectContextProvider.getter();

  FlowRedirectContextProvider.flowRedirectContext.getter();

  v29 = type metadata accessor for FlowRedirectContext();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v7, 1, v29) == 1)
  {
    outlined destroy of Any?(v7, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
    return 1;
  }

  if ((*(v30 + 88))(v7, v29) == enum case for FlowRedirectContext.intelligenceFlowToSiriX(_:))
  {
    (*(v30 + 96))(v7, v29);
    v48 = v82;
    v47 = v83;
    v49 = v84;
    (*(v82 + 4))(v84, v7, v83);
    SiriXRedirectContext.reason.getter();
    v50 = v80;
    v51 = v81;
    v52 = (*(v80 + 88))(v4, v81);
    if (v52 != enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:) && v52 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
    {
      (*(v48 + 1))(v49, v47);
      (*(v50 + 8))(v4, v51);
      return 1;
    }

    (*(v50 + 8))(v4, v51);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.information);
    v66 = v79;
    (*(v48 + 2))(v79, v49, v47);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v66;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v86 = v71;
      *v70 = 136315138;
      SiriXRedirectContext.reason.getter();
      v72 = String.init<A>(describing:)();
      v74 = v73;
      v75 = *(v48 + 1);
      v75(v69, v47);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v86);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_0, v67, v68, "Suppressing knowledge fallback due to %s redirect to Siri X", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);

      v75(v84, v47);
    }

    else
    {

      v77 = *(v48 + 1);
      v77(v66, v47);
      v77(v49, v47);
    }

    return 0;
  }

  (*(v30 + 8))(v7, v29);
  return 1;
}

uint64_t KnowledgeFallbackHelperProviding.eligibleForKnowledgeFallback(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = __chkstk_darwin(v5);
  v83[1] = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v83 - v10;
  v12 = type metadata accessor for SiriXRedirectContext();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = __chkstk_darwin(v12);
  v84 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = v83 - v17;
  v19 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v20 = *(v19 - 8);
  v91 = v19;
  v92 = v20;
  v21 = __chkstk_darwin(v19);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v83 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v83 - v28;
  __chkstk_darwin(v27);
  v31 = v83 - v30;
  if ((PommesResponse.isLowConfidenceKnowledgeResult.getter() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.information);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_20;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Suppressing knowledge fallback: isLowConfidenceKnowledgeResult is false";
    goto LABEL_19;
  }

  if (((*(a3 + 8))(a2, a3) & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.information);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_20;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Suppressing knowledge fallback: isEnabled is false";
    goto LABEL_19;
  }

  if (!AFDeviceSupportsSAE())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.information);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_20;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Suppressing knowledge fallback because the device doesn't support SAE";
LABEL_19:
    _os_log_impl(&dword_0, v37, v38, v40, v39, 2u);

LABEL_20:

    return 0;
  }

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.nlRoutingDecision.getter();

  dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

  v33 = v91;
  v32 = v92;
  if ((*(v92 + 48))(v18, 1, v91) != 1)
  {
    (*(v32 + 32))(v31, v18, v33);
    v44 = *(v32 + 16);
    v44(v29, v31, v33);
    v45 = (*(v32 + 88))(v29, v33);
    if (v45 == enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.genAINotAvailable(_:))
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.information);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_37;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "Suppressing knowledge fallback because GenAI is not available";
    }

    else
    {
      if (v45 != enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.userAgentCorrection(_:))
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.information);
        v44(v26, v31, v33);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v90 = v31;
          v63 = v62;
          v64 = swift_slowAlloc();
          v93 = v64;
          *v63 = 136315138;
          v44(v23, v26, v91);
          v65 = String.init<A>(describing:)();
          v67 = v66;
          LODWORD(v89) = v61;
          v68 = *(v92 + 8);
          v68(v26, v91);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v93);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_0, v60, v89, "Unknown knowledge fallback suppress reason: %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          v33 = v91;

          v68(v90, v33);
        }

        else
        {

          v68 = *(v92 + 8);
          v68(v26, v33);
          v68(v31, v33);
        }

        v68(v29, v33);
        return 0;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.information);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_37;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "Suppressing knowledge fallback because user specified an agent correction";
    }

    _os_log_impl(&dword_0, v47, v48, v50, v49, 2u);

LABEL_37:

    (*(v92 + 8))(v31, v33);
    return 0;
  }

  outlined destroy of Any?(v18, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowRedirectContextProvider.getter();

  FlowRedirectContextProvider.flowRedirectContext.getter();

  v34 = type metadata accessor for FlowRedirectContext();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v11, 1, v34) != 1)
  {
    if ((*(v35 + 88))(v11, v34) != enum case for FlowRedirectContext.intelligenceFlowToSiriX(_:))
    {
      (*(v35 + 8))(v11, v34);
      return 1;
    }

    (*(v35 + 96))(v11, v34);
    v52 = v88;
    v51 = v89;
    v53 = v90;
    (*(v88 + 32))(v90, v11, v89);
    v54 = v85;
    SiriXRedirectContext.reason.getter();
    v55 = v86;
    v56 = v87;
    v57 = (*(v86 + 88))(v54, v87);
    if (v57 != enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:) && v57 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
    {
      (*(v52 + 8))(v53, v51);
      (*(v55 + 8))(v54, v56);
      return 1;
    }

    (*(v55 + 8))(v54, v56);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.information);
    v71 = v84;
    (*(v52 + 16))(v84, v53, v51);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v71;
      v76 = swift_slowAlloc();
      v93 = v76;
      *v74 = 136315138;
      SiriXRedirectContext.reason.getter();
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v80 = *(v52 + 8);
      v80(v75, v51);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v93);

      *(v74 + 4) = v81;
      _os_log_impl(&dword_0, v72, v73, "Suppressing knowledge fallback due to %s redirect to Siri X", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);

      v80(v90, v51);
    }

    else
    {

      v82 = *(v52 + 8);
      v82(v71, v51);
      v82(v53, v51);
    }

    return 0;
  }

  outlined destroy of Any?(v11, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return 1;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType);
  }

  return result;
}

uint64_t sub_5762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  v16 = v15 <= 0;
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_57768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 + 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for KnowledgeFallbackHelper(uint64_t a1)
{
  type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GenerativeModelsAvailability?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String??(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for GenerativeModelsAvailability?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GenerativeModelsAvailability?)
  {
    type metadata accessor for GenerativeModelsAvailability();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GenerativeModelsAvailability?);
    }
  }
}

void type metadata accessor for String??(uint64_t a1)
{
  if (!lazy cache variable for type metadata for String??)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for String??);
    }
  }
}

uint64_t lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL Parse.isRejection.getter()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *(v2 + 16);
  v11(&v22 - v9, v0, v1);
  if ((*(v2 + 88))(v10, v1) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v2 + 96))(v10, v1);
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.information);
    v11(v8, v0, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v16 = 136315138;
      v11(v5, v8, v1);
      v23 = String.init<A>(describing:)();
      v18 = v17;
      v19 = *(v2 + 8);
      v19(v8, v1);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v18, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "Unexpected parse type: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    else
    {

      v19 = *(v2 + 8);
      v19(v8, v1);
    }

    v19(v10, v1);
    return 0;
  }

  return v12;
}

BOOL Parse.isCancel.getter()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *(v2 + 16);
  v11(&v22 - v9, v0, v1);
  if ((*(v2 + 88))(v10, v1) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v2 + 96))(v10, v1);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass() != 0;
      swift_unknownObjectRelease();
      return v21;
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.information);
    v11(v8, v0, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v16 = 136315138;
      v11(v5, v8, v1);
      v23 = String.init<A>(describing:)();
      v18 = v17;
      v19 = *(v2 + 8);
      v19(v8, v1);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v18, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "Unexpected parse type: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    else
    {

      v19 = *(v2 + 8);
      v19(v8, v1);
    }

    v19(v10, v1);
    return 0;
  }
}

uint64_t Parse.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = *(v4 + 16);
  v13(&v31 - v11, v1, v3);
  if ((*(v4 + 88))(v12, v3) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v4 + 96))(v12, v3);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      v14 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_14:
      v27 = *v14;
      v28 = type metadata accessor for ConfirmationResponse();
      v29 = *(v28 - 8);
      (*(v29 + 104))(a1, v27, v28);
      return (*(v29 + 56))(a1, 0, 1, v28);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_13:
      v14 = &enum case for ConfirmationResponse.rejected(_:);
      goto LABEL_14;
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v26)
    {
      goto LABEL_13;
    }

    v30 = type metadata accessor for ConfirmationResponse();
    return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.information);
    v13(v10, v1, v3);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a1;
      v19 = v18;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v19 = 136315138;
      v13(v7, v10, v3);
      v31 = String.init<A>(describing:)();
      v21 = v20;
      v22 = *(v4 + 8);
      v22(v10, v3);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v21, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unexpected parse type: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);

      a1 = v33;
    }

    else
    {

      v22 = *(v4 + 8);
      v22(v10, v3);
    }

    v24 = type metadata accessor for ConfirmationResponse();
    (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
    return (v22)(v12, v3);
  }
}

uint64_t static PatternHelper.makeParameters(jsonData:)()
{
  v0 = Data.base64EncodedString(options:)(0);
  v1 = specialized static PatternHelper.makeParameters(jsonBase64:)(v0._countAndFlagsBits, v0._object);

  return v1;
}

uint64_t specialized static PatternHelper.makeParameters(jsonBase64:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v59 - v9;
  static String.Encoding.utf8.getter();
  v11 = Data.init(base64Encoded:options:)();
  if (v12 >> 60 == 15)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v62);
      _os_log_impl(&dword_0, v27, v28, "Failed to base64 decode json %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v13 = v11;
  v14 = v12;
  (*(v5 + 16))(v8, v10, v4);
  v15 = String.init(data:encoding:)();
  v17 = v16;
  outlined consume of Data?(v13, v14);
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (!v17)
  {
    goto LABEL_10;
  }

  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;
  v18(v8, v4);
  if (v21 >> 60 == 15)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Failed to encode JSON data using utf8", v25, 2u);
    }

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v32 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v62[0] = 0;
  v34 = [v32 JSONObjectWithData:isa options:0 error:v62];

  v35 = v62[0];
  if (v34)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      outlined consume of Data?(v19, v21);
      return v61;
    }

    else
    {
      v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      outlined consume of Data?(v19, v21);
      return v53;
    }
  }

  else
  {
    v36 = v35;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.information);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v60 = v37;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v59 = v19;
      v43 = v42;
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136315138;
      v61 = v37;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v45 = String.init<A>(describing:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v62);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "Failed to convert JSON to dictionary %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);

      v19 = v59;
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62[0] = v51;
      *v50 = 136315138;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v62);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_0, v48, v49, "Failed to convert JSON to dictionary %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    else
    {
    }

    v54 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B8690;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v62[0] = v54;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v56 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v56;
    *(inited + 56) = v57;
    v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Any?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    outlined consume of Data?(v19, v21);

    return v58;
  }
}

id specialized static PatternHelper.bundle(from:with:)(uint64_t a1, void *a2)
{
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = Apple_Parsec_Responseframework_PatternModel.patternBundleID.getter();
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() bundleWithIdentifier:v11];

    if (v12)
    {

      return v12;
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      v20 = __swift_project_value_buffer(v19, static Logger.information);
      v21 = *(v19 - 8);
      (*(v21 + 16))(v7, v20, v19);
      (*(v21 + 56))(v7, 0, 1, v19);
      outlined init with copy of Logger?(v7, v5);
      if ((*(v21 + 48))(v5, 1, v19) == 1)
      {
        outlined destroy of Any?(v5, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v24 = 136315650;
          v25 = StaticString.description.getter();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2048;
          *(v24 + 14) = 47;
          *(v24 + 22) = 2080;
          *(v24 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000B2, 0x80000000000BF550, &v29);
          _os_log_impl(&dword_0, v22, v23, "FatalError at %s:%lu - %s", v24, 0x20u);
          swift_arrayDestroy();
        }

        (*(v21 + 8))(v5, v19);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.information);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "No bundle was specified on the PatternModel. Defaulting to the InformationPlugin Bundle.", v17, 2u);
    }

    v18 = v28;

    return v18;
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PegasusPatternFlowFactory.__allocating_init(outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(a1, v8 + 16);
  outlined init with copy of OutputPublisherAsync(a3, v8 + 56);
  *(v8 + 96) = a2;
  static PatternFlowProvidingHelper.unwrap(_:with:)(a4, a1, (v8 + 104));
  outlined destroy of PatternFlowProviding?(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t PegasusPatternFlowFactory.init(outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  outlined init with copy of OutputPublisherAsync(a1, v4 + 16);
  outlined init with copy of OutputPublisherAsync(a3, v4 + 56);
  *(v4 + 96) = a2;
  static PatternFlowProvidingHelper.unwrap(_:with:)(a4, a1, v10);
  outlined destroy of PatternFlowProviding?(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  outlined init with take of SiriSuggestionsBroker(v10, v4 + 104);
  return v4;
}

uint64_t PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a3;
  v10 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v17 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v22;
  *(v18 + 5) = a5;
  *(v18 + 6) = v6;
  (*(v11 + 32))(&v18[v17], &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = &v18[(v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = v23;
  *v19 = a2;
  *(v19 + 1) = v20;

  outlined copy of Data?(a2, v20);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:), v18);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a5;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:);

  return specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(a7);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:), 0, 0);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)()
{
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_598B8()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + v5), v6);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(a1);
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[166] = v3;
  v4[165] = a3;
  v4[164] = a2;
  v4[163] = a1;
  type metadata accessor for DialogPhase();
  v4[167] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v4[168] = v5;
  v4[169] = *(v5 - 8);
  v4[170] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[171] = v6;
  v4[172] = *(v6 - 8);
  v4[173] = swift_task_alloc();
  v7 = type metadata accessor for PerformanceUtil.Ticket();
  v4[174] = v7;
  v4[175] = *(v7 - 8);
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[181] = v8;
  v4[182] = *(v8 - 8);
  v4[183] = swift_task_alloc();

  return _swift_task_switch(PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:), 0, 0);
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)()
{
  v1 = v0[183];
  v2 = v0[182];
  v3 = v0[181];
  v4 = v0[163];
  v0[184] = Apple_Parsec_Responseframework_PatternModel.patternID.getter();
  v0[185] = v5;
  v0[186] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  Date.init()();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  LOBYTE(v13) = 2;
  v12 = 50;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v2 + 8))(v1, v3);

  v0[187] = v0[160];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v7 = specialized static PatternHelper.bundle(from:with:)(v0[163], static PegasusPatternFlowFactory.bundle);
  v0[188] = v7;
  Date.init()();
  LOBYTE(v12) = 2;
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v0[189] = v9;
  v0[2] = v0;
  v0[7] = v0 + 161;
  v0[3] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  v10 = swift_continuation_init();
  v0[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17PatternLoadResultCs5Error_pGMd, &_sSccySo17PatternLoadResultCs5Error_pGMR);
  v0[75] = v10;
  v0[71] = _NSConcreteStackBlock;
  v0[72] = 1107296256;
  v0[73] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult;
  v0[74] = &block_descriptor_3;
  [v8 load:v7 patternId:v9 completion:{v0 + 71, 50, v12, v13, partial apply for closure #1 in PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:), v6, v14}];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 1520) = v1;
  if (v1)
  {

    v2 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    v2 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v101 = v0;
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1288);
  *(v0 + 1528) = v2;

  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v100 = v8;
    *v7 = 136315138;
    *(v0 + 1296) = [v4 patternType];
    type metadata accessor for PatternType(0);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v100);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "RenderPegasusFlow found pattern of type %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = [v4 patternType];
  if (v12 == (&dword_0 + 1))
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "RenderPegasusFlow making a ResultSet Flow", v62, 2u);
    }

    v63 = *(v0 + 1328);

    Date.init()();
    LOBYTE(v99) = 2;
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();

    v64 = *(v63 + 96);
    outlined init with copy of OutputPublisherAsync(v63 + 104, v0 + 992);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 992, v63 + 16, (v0 + 1032));

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 1480);
      v68 = *(v0 + 1472);
      v69 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v67, &v100);
      *(v69 + 12) = 2080;
      v70 = Dictionary.description.getter();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v100);

      *(v69 + 14) = v72;
      _os_log_impl(&dword_0, v65, v66, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v69, 0x16u);
      swift_arrayDestroy();
    }

    v73 = *(v0 + 1504);
    v74 = *(v0 + 1496);
    v75 = *(v0 + 1480);
    v76 = *(v0 + 1472);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 1032, v63 + 16, (v0 + 1072));
    outlined init with copy of OutputPublisherAsync(v63 + 16, v0 + 1112);
    outlined init with copy of OutputPublisherAsync(v63 + 56, v0 + 1152);
    outlined init with copy of OutputPublisherAsync(v0 + 1072, v0 + 1192);
    v77 = type metadata accessor for PatternExecutor();
    v78 = swift_allocObject();
    *(v0 + 528) = v77;
    *(v0 + 536) = &protocol witness table for PatternExecutor;
    *(v0 + 504) = v78;
    *(v0 + 552) = v76;
    *(v0 + 560) = v75;
    *(v0 + 328) = specialized GenericResultSetParamBuilder.init(parameters:)(v74);
    *(v0 + 336) = v79;
    *(v0 + 344) = v80;
    *(v0 + 352) = v81;
    *(v0 + 544) = v73;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0xF000000000000000;
    outlined init with copy of OutputPublisherAsync(v0 + 1112, v0 + 360);
    outlined init with copy of OutputPublisherAsync(v0 + 1152, v0 + 400);
    v82 = v73;
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 1192, v0 + 1112, (v0 + 456));
    outlined destroy of PatternFlowProviding?(v0 + 1192);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1152));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1112));
    *(v0 + 496) = v64;
    v83 = *(v0 + 1096);
    v84 = *(v0 + 1104);
    __swift_project_boxed_opaque_existential_1((v0 + 1072), v83);

    v85 = swift_task_alloc();
    *(v0 + 1560) = v85;
    v86 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
    *v85 = v0;
    v85[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);

    return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 328, &type metadata for ContinuationResultSetFlowProvider, v86, v83, v84);
  }

  else if (v12 == &dword_4)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "RenderPegasusFlow making a DetailedResult Flow", v33, 2u);
    }

    v34 = (v0 + 1264);
    v35 = *(v0 + 1328);

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v36 = *(v35 + 96);
    outlined init with copy of OutputPublisherAsync(v35 + 104, v0 + 752);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 1480);
      v40 = *(v0 + 1472);
      v41 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v100);
      *(v41 + 12) = 2080;
      v42 = Dictionary.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v100);

      *(v41 + 14) = v44;
      _os_log_impl(&dword_0, v37, v38, "DetailedResultFlowFactory.makeDetailedResultFlow called with %s : %s", v41, 0x16u);
      v34 = (v0 + 1264);
      swift_arrayDestroy();
    }

    v45 = *(v0 + 1496);
    v46 = *(v0 + 1480);
    v47 = *(v0 + 1472);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 752, v35 + 16, (v0 + 792));
    outlined init with copy of OutputPublisherAsync(v35 + 16, v0 + 832);
    outlined init with copy of OutputPublisherAsync(v35 + 56, v0 + 872);
    outlined init with copy of OutputPublisherAsync(v0 + 792, v0 + 912);
    v48 = type metadata accessor for PatternExecutor();
    v49 = swift_allocObject();
    *(v0 + 976) = v48;
    *(v0 + 984) = &protocol witness table for PatternExecutor;
    *(v0 + 952) = v49;
    *(v0 + 312) = v47;
    *(v0 + 320) = v46;
    v100 = v45;

    specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, (v0 + 1232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v50 = swift_dynamicCast();
    v51 = 0uLL;
    if (v50)
    {
      v51 = *v34;
    }

    v52 = *(v0 + 1504);
    v53 = *(v0 + 1320);
    v54 = *(v0 + 1312);
    *(v0 + 80) = v100;
    *(v0 + 88) = v51;
    strcpy((v0 + 104), "detailedText");
    *(v0 + 117) = 0;
    *(v0 + 118) = -5120;
    *(v0 + 304) = v52;
    *(v0 + 200) = v54;
    *(v0 + 208) = v53;
    outlined init with copy of OutputPublisherAsync(v0 + 832, v0 + 120);
    outlined init with copy of OutputPublisherAsync(v0 + 872, v0 + 160);
    outlined copy of Data?(v54, v53);
    v55 = v52;
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 912, v0 + 832, (v0 + 216));
    outlined destroy of PatternFlowProviding?(v0 + 912);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 872));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 832));
    *(v0 + 256) = v36;
    outlined init with take of SiriSuggestionsBroker((v0 + 952), v0 + 264);
    v56 = *(v0 + 816);
    v57 = *(v0 + 824);
    __swift_project_boxed_opaque_existential_1((v0 + 792), v56);

    v58 = swift_task_alloc();
    *(v0 + 1584) = v58;
    v59 = lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider();
    *v58 = v0;
    v58[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);

    return dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(v0 + 80, &type metadata for DetailedResultProvider, v59, v56, v57);
  }

  else if (v12 == (&dword_0 + 3))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "RenderPegasusFlow making a SimpleResult Flow", v15, 2u);
    }

    v16 = *(v0 + 1328);

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    outlined init with copy of OutputPublisherAsync(v16 + 104, v0 + 632);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1480);
      v20 = *(v0 + 1472);
      v21 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v100);
      *(v21 + 12) = 2080;
      v22 = Dictionary.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v100);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_0, v17, v18, "ResponseFlowFactory.makeRenderPatternFlow making default pattern flow for patternId %s : %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v25 = swift_task_alloc();
    *(v0 + 1536) = v25;
    *v25 = v0;
    v25[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
    v26 = *(v0 + 1504);
    v27 = *(v0 + 1496);
    v28 = *(v0 + 1480);
    v29 = *(v0 + 1472);

    return specialized PatternExecutor.execute(pattern:in:with:deviceState:)(v29, v28, v26, v27, v16 + 56);
  }

  else
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "RenderPegasusFlow received unsupported pattern type. Only simple result is supported at the moment.", v89, 2u);
    }

    v90 = *(v0 + 1504);
    v91 = *(v0 + 1440);
    v92 = *(v0 + 1400);
    v93 = *(v0 + 1392);
    v94 = *(v0 + 1328);

    outlined init with copy of OutputPublisherAsync(v94 + 16, v0 + 712);
    v95 = *(v94 + 96);
    type metadata accessor for ErrorFlowFactory();
    v96 = swift_allocObject();
    outlined init with take of SiriSuggestionsBroker((v0 + 712), v96 + 16);
    *(v96 + 56) = v95;

    v97 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

    (*(v92 + 8))(v91, v93);

    v98 = *(v0 + 8);

    return v98(v97 | 0xC000000000000000);
  }
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[174];
  v6 = *(v0[175] + 8);
  v6(v0[178], v5);
  outlined destroy of PatternFlowProviding?((v0 + 79));

  v6(v4, v5);
  v6(v3, v5);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[197];
  v2 = v0[191];
  v3 = v0[188];
  v4 = v0[180];
  v5 = v0[177];
  v6 = v0[175];
  v7 = v0[174];
  outlined destroy of PatternFlowProviding?((v0 + 129));
  outlined destroy of PatternFlowProviding?((v0 + 124));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 41));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 134);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);

  v9 = v0[1];

  return v9(v1 | 0x4000000000000000);
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[180];
  v4 = v0[177];
  v5 = v0[175];
  v6 = v0[174];
  outlined destroy of PatternFlowProviding?((v0 + 129));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 41));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 134);
  outlined destroy of PatternFlowProviding?((v0 + 124));

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[200];
  v2 = v0[191];
  v3 = v0[188];
  v4 = v0[180];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];

  outlined destroy of DetailedResultProvider((v0 + 10));
  outlined destroy of PatternFlowProviding?((v0 + 94));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 99);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);

  v9 = v0[1];

  return v9(v1 | 0x8000000000000000);
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[180];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];

  outlined destroy of DetailedResultProvider((v0 + 10));
  outlined destroy of PatternFlowProviding?((v0 + 94));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 99);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);

  v8 = v0[1];

  return v8();
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1544) = v1;

  if (v1)
  {
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    *(v4 + 1552) = a1;
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v15 = v1[194];
  v20 = v1[188];
  v21 = v1[191];
  v22 = v1[180];
  v2 = v1[178];
  v3 = v1[175];
  v18 = v1[174];
  v19 = v1[179];
  v16 = v1[172];
  v17 = v1[171];
  v4 = v1[170];
  v5 = v1[169];
  v13 = v1[173];
  v14 = v1[168];
  v6 = v1[166];
  v7 = v1[165];
  v8 = v1[164];
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PatternFlowProvidingHelper.unwrap(_:with:)((v1 + 79), v6 + 16, v1 + 84);
  __swift_project_boxed_opaque_existential_1(v1 + 84, v1[87]);
  NLContextUpdate.init()();
  outlined copy of Data?(v8, v7);
  NLContextUpdate.pegasusConversationContext.setter();
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  (*(v5 + 8))(v4, v14);
  v9 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v16 + 8))(v13, v17);
  v10 = *(v3 + 8);
  v10(v2, v18);
  outlined destroy of PatternFlowProviding?((v1 + 79));
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 84);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v10(v19, v18);
  v10(v22, v18);

  v11 = v1[1];

  return v11(v9);
}

{
  v4 = *v2;
  *(*v2 + 1568) = v1;

  if (v1)
  {
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    *(v4 + 1576) = a1;
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 1592) = v1;

  if (v1)
  {
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    *(v4 + 1600) = a1;
    v5 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v2 = v1[189];
  v3 = v1[188];
  v4 = v1[180];
  v5 = v1[175];
  v6 = v1[174];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

Swift::Void __swiftcall PegasusPatternFlowFactory.PatternUseCase.log()()
{
  v1 = v0 >> 62;
  if ((v0 >> 62) > 1)
  {
    if (v1 == 2)
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.information);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "PegasusPatternFlowFactory returning a Detailed Result Flow";
        goto LABEL_20;
      }
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.information);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "PegasusPatternFlowFactory returning an Error Flow: Received Unsupported Pattern Type";
        goto LABEL_20;
      }
    }
  }

  else if (v1)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.information);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "PegasusPatternFlowFactory returning a Result Set Continuation Flow";
      goto LABEL_20;
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.information);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "PegasusPatternFlowFactory returning a SimpleResult Flow";
LABEL_20:
      _os_log_impl(&dword_0, oslog, v3, v5, v4, 2u);
    }
  }
}

unint64_t PegasusPatternFlowFactory.PatternUseCase.extractFlow()(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  v3 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v2)
  {
    v1 = v3;
  }

  if (v2 <= 1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t closure #1 in PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = Apple_Parsec_Responseframework_PatternModel.patternParameters.getter();
  v4 = v3;
  v5 = Data.base64EncodedString(options:)(0);
  v6 = specialized static PatternHelper.makeParameters(jsonBase64:)(v5._countAndFlagsBits, v5._object);

  result = outlined consume of Data._Representation(v2, v4);
  *a1 = v6;
  return result;
}

uint64_t specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  v4 = swift_task_alloc();
  *(v2 + 96) = v4;
  *v4 = v2;
  v4[1] = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);

  return PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(a1, 0, 0xF000000000000000);
}

{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);
  }

  else
  {
    v4 = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)()
{
  v1 = *(v0 + 104);
  PegasusPatternFlowFactory.PatternUseCase.log()();
  v2 = *(v0 + 104);
  v3 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  if ((v1 >> 62) <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v16 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "ResponseFlowFactory.makeRenderPatternFlow failed to generate pattern %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0 + 88);
  outlined init with copy of OutputPublisherAsync(v9 + 16, v0 + 16);
  v10 = *(v9 + 96);
  type metadata accessor for ErrorFlowFactory();
  v11 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker((v0 + 16), v11 + 16);
  *(v11 + 56) = v10;

  v12 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t getEnumTagSinglePayload for PegasusPatternFlowFactory.PatternUseCase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PegasusPatternFlowFactory.PatternUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t SportsProperty.apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        return SportsItem.athlete.setter();
      }

      else
      {
        return SportsItem.athleteQId.setter();
      }
    }

    else if (a4 == 4)
    {
      return SportsItem.sport.setter();
    }

    else
    {
      return SportsItem.sportQId.setter();
    }
  }

  else if (a4 > 1u)
  {
    if (a4 == 2)
    {
      return SportsItem.league.setter();
    }

    else
    {
      return SportsItem.leagueQId.setter();
    }
  }

  else if (a4)
  {
    return SportsItem.teamQId.setter();
  }

  else
  {
    return SportsItem.team.setter();
  }
}

uint64_t static PersonalizationLevel.from(uso:)@<X0>(uint64_t a2@<X8>)
{
  v3 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (v3)
  {
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v18 = a2;
      v7 = 0;
      a2 = v4 & 0xC000000000000001;
      while (1)
      {
        if (a2)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_26;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v19 && (v8 = dispatch thunk of UsoEntity_common_SportsItem.type.getter(), , v8) && (v9 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter(), v11 = v10, , v11))
        {
          if (v9 == 0xD000000000000015 && v11 == 0x80000000000BF8A0)
          {

            goto LABEL_24;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {

LABEL_24:
            v19 = v7;
            return closure #2 in static PersonalizationLevel.from(uso:)(&v19, v18);
          }
        }

        else
        {
        }

        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        ++v7;
        if (v13 == i)
        {

          a2 = v18;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
    v17 = type metadata accessor for PersonalizationLevel();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v14 = type metadata accessor for PersonalizationLevel();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t closure #2 in static PersonalizationLevel.from(uso:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (!result)
  {
LABEL_26:
    v13 = type metadata accessor for PersonalizationLevel();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_6:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v14)
    {
      v5 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
      v7 = v6;

      if (v7)
      {
        if (v5 == 0xD00000000000001ALL && 0x80000000000BF8C0 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = &enum case for PersonalizationLevel.team(_:);
LABEL_12:
          v9 = *v8;
          v10 = type metadata accessor for PersonalizationLevel();
          v11 = *(v10 - 8);
          (*(v11 + 104))(a2, v9, v10);
          return (*(v11 + 56))(a2, 0, 1, v10);
        }

        if (v5 == 0xD00000000000001CLL && 0x80000000000BF8E0 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = &enum case for PersonalizationLevel.league(_:);
          goto LABEL_12;
        }

        if (v5 == 0xD00000000000001DLL && 0x80000000000BF900 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = &enum case for PersonalizationLevel.athlete(_:);
          goto LABEL_12;
        }

        if (v5 == 0xD00000000000001BLL && 0x80000000000BF920 == v7)
        {

LABEL_25:
          v8 = &enum case for PersonalizationLevel.sport(_:);
          goto LABEL_12;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Typespb_Domain();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
  (*(v9 + 104))(v12, enum case for Typespb_Domain.sports(_:), v8);
  lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Typespb_Domain and conformance Typespb_Domain, &type metadata accessor for Typespb_Domain, &protocol conformance descriptor for Typespb_Domain);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v15(v14, v8);
  result = 0;
  if (v42 == v45)
  {
    Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
    Message.init(serializedData:extensions:partial:options:)();
    v17 = v6;
    v18 = v40;
    (*(v40 + 56))(v5, 0, 1, v6);
    v19 = v39;
    (*(v18 + 32))(v39, v5, v6);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v42 = v24;
      *v23 = 136315138;
      v25 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v42);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v20, v21, "Got USO graph for alternative entity: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {

      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (*(&v43 + 1))
      {
        type metadata accessor for UsoEntity_common_SportsItem();
        if (swift_dynamicCast())
        {
          (*(v18 + 8))(v19, v17);

          return v45;
        }
      }

      else
      {
        outlined destroy of Any?(&v42, &_sypSgMd, &_sypSgMR);
      }

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v42 = v34;
        *v33 = 136315138;
        v35 = UsoEntity.valueTypeString.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v42);
        v41 = v17;
        v38 = v37;

        *(v33 + 4) = v38;
        _os_log_impl(&dword_0, v31, v32, "Entity was not a sports entity but was a %s. Will ignore item", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);

        (*(v18 + 8))(v19, v41);
        return 0;
      }
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Unable to extract sports entity from USO graph", v30, 2u);

LABEL_3:
        (*(v18 + 8))(v19, v17);
        return 0;
      }
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t specialized static SportsProperty.from(entity:)(uint64_t a1)
{
  if (dispatch thunk of UsoEntity_common_SportsItem.type.getter())
  {
    v1 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
    v3 = v2;

    v4 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
    if (!v3 || !v5)
    {
      goto LABEL_10;
    }

    v6 = v4;
    if (v1 == 0x74726F7073 && v3 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x69715F74726F7073 && v3 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x65756761656CLL && v3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x715F65756761656CLL && v3 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 1835099508 && v3 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x6469715F6D616574 && v3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x6574656C687461 && v3 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x5F6574656C687461 && v3 == 0xEB00000000646971)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v6;
  }

  dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_10:

  return 0;
}

uint64_t getEnumTagSinglePayload for SportsProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CommonCATs.genericError()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return (v5)(a1, 0xD00000000000001FLL, 0x80000000000BF940, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:)()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x80000000000BF9A0;
  *(v4 + 72) = &type metadata for String;
  v10 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_B8690;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  if (v1 == 1)
  {
    v6 = "contentProviderName";
    v5[1] = CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:);
    v7 = *(v0 + 16);
    v8 = 0xD000000000000044;
  }

  else
  {
    v6 = "runInformationFlow#genericError";
    v5[1] = CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:);
    v7 = *(v0 + 16);
    v8 = 0xD00000000000003ALL;
  }

  return v10(v7, v8, v6 | 0x8000000000000000, v4);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CommonCATs.knowledgeFallbackConfirmation(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmation(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackConfirmation(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v7 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = CommonCATs.knowledgeFallbackConfirmation(contentProviderName:);
  v5 = v0[2];

  return v7(v5, 0xD000000000000030, 0x80000000000BFA10, v3);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmation(contentProviderName:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v7 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v5 = v0[2];

  return v7(v5, 0xD000000000000038, 0x80000000000BFA50, v3);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v7 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v5 = v0[2];

  return v7(v5, 0xD000000000000036, 0x80000000000BFA90, v3);
}

uint64_t CommonCATs.knowledgeFallbackConfirmationNoLabel()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v5)(a1, 0xD000000000000037, 0x80000000000BFAD0, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v7 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v5 = v0[2];

  return v7(v5, 0xD000000000000035, 0x80000000000BFB10, v3);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationYesLabel()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v5)(a1, 0xD00000000000003DLL, 0x80000000000BFB50, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationNoLabel()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v5)(a1, 0xD00000000000003CLL, 0x80000000000BFB90, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  outlined init with copy of URL?(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t CommonCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommonCATs.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommonCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for CommonCATs;
  if (!type metadata singleton initialization cache for CommonCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)()
{
  type metadata accessor for SiriSuggestionsBrokerProvider();
  *(v0 + 112) = static SiriSuggestionsBrokerProvider.instance.getter();
  lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), v2, v1);
}

{
  dispatch thunk of SiriSuggestionsBrokerProvider.getBrokerInstance()();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of SiriSuggestionsBroker((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);

    return static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)(v2, v0 + 16, v3);
  }

  else
  {
    outlined destroy of Any?(v0 + 56, &_s11SiriKitFlow0A17SuggestionsBroker_pSgMd, &_s11SiriKitFlow0A17SuggestionsBroker_pSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.information);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "SiriSuggestionBroker instance is nil. Returning nil suggestion", v8, 2u);
    }

    v9 = *(v0 + 96);

    v10 = type metadata accessor for HintsUI();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(v0 + 8);

    return v11();
  }
}

{

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider()
{
  result = lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider;
  if (!lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider)
  {
    type metadata accessor for SiriSuggestionsBrokerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider);
  }

  return result;
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:), 0, 0);
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)(uint64_t a1)
{
  static AceService.currentAsync.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  dispatch thunk of AceServiceInvokerAsync.currentStartRequestId()();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[10];
  UUID.init(uuidString:)();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of Any?(v1[10], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.information);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "SiriSuggestionProvider getSiriSuggestion snippet: unable to get requestId from runtime", v10, 2u);
    }

    v11 = v1[7];

    v12 = type metadata accessor for HintsUI();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = v1[1];

    return v13();
  }

  (*(v1[12] + 32))(v1[13], v1[10], v1[11]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v1[14] = __swift_project_value_buffer(v15, static Logger.information);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "SiriSuggestionProvider getSiriSuggestion snippet: calling provided SiriSuggestionsBroker", v18, 2u);
  }

  v19 = v1[8];

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v1[15] = v20;
  v1[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v21 = swift_task_alloc();
  v1[17] = v21;
  *v21 = v1;
  v21[1] = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  v22 = v1[13];
  v23 = v1[9];
  v24 = v1[7];

  return dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(v24, v22, 0, 0, v23, 0, 0, v20);
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  }

  else
  {

    v2 = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "SiriSuggestionProvider getSiriSuggestion snippet: error getting suggestions: %@", v3, 0xCu);
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v6 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v7 = type metadata accessor for HintsUI();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t static GenAIPartner.fromProviderID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && (a1 == 0xD000000000000018 && 0x80000000000BDB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v4 = enum case for GenAIPartner.chatGPT(_:);
    v5 = type metadata accessor for GenAIPartner();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a3, v4, v5);
    v6 = *(v12 + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v10 = type metadata accessor for GenAIPartner();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a3;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t KnowledgeFallbackConfirmationStrategy.__allocating_init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, unsigned int a2, void *a3, __int128 *a4, uint64_t a5, void *a6)
{
  v26 = a4;
  v27 = a5;
  v25 = a2;
  v9 = swift_allocObject();
  v11 = a3[3];
  v10 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  __chkstk_darwin(v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14);
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  __chkstk_darwin(v18);
  v20 = &v24[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20);
  v22 = specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(a1, v25, v14, v26, v27, v20, v9, v17, v11, v16, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v22;
}

uint64_t KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5, void *a6)
{
  v26 = a5;
  v25 = a4;
  v8 = a2;
  v11 = a3[3];
  v10 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(a1, v8, v14, v25, v26, v20, v27, v17, v11, v16, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v22;
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationString(_:)(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = type metadata accessor for TemplatingResult();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationString(_:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationString(_:)()
{
  v1 = KnowledgeFallbackConfirmationStrategy.knowledgeFallbackHelper.modify(v0 + 16);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 104))(v3, v4);
  *(v0 + 96) = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(v0 + 48);
    (v1)(v0 + 16, 0);
    v10 = **(v9 + 112) + class metadata base offset for CommonCATs;
    if (*(v9 + 24) == 1)
    {
      v18 = (*(v10 + 8) + **(v10 + 8));
      v11 = swift_task_alloc();
      *(v0 + 104) = v11;
      *v11 = v0;
      v11[1] = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
      v12 = *(v0 + 80);
      v13 = *(v0 + 136);

      return v18(v12, v7, v8, v13);
    }

    else
    {
      v19 = (*(v10 + 16) + **(v10 + 16));
      v16 = swift_task_alloc();
      *(v0 + 120) = v16;
      *v16 = v0;
      v16[1] = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
      v17 = *(v0 + 72);

      return v19(v17, v7, v8);
    }
  }

  else
  {
    v1(v0 + 16);
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  else
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  (*(v2 + 32))(v1, v0[10], v4);
  v5 = (*(*v3 + 192))(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v5, v7);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  else
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  (*(v2 + 32))(v1, v0[9], v4);
  v5 = (*(*v3 + 192))(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v5, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationYesLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationYesLabel(), 0, 0);
}

{
  v1 = KnowledgeFallbackConfirmationStrategy.knowledgeFallbackHelper.modify((v0 + 2));
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 104))(v3, v4);
  v0[12] = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v0[6];
    (v1)(v0 + 2, 0);
    v10 = **(v9 + 112) + class metadata base offset for CommonCATs;
    if (*(v9 + 24) == 1)
    {
      v19 = (*(v10 + 32) + **(v10 + 32));
      v11 = swift_task_alloc();
      v0[13] = v11;
      *v11 = v0;
      v11[1] = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
      v12 = v0[10];
      v13 = v7;
      v14 = v8;
      v15 = v19;
    }

    else
    {
      v20 = (*(v10 + 24) + **(v10 + 24));
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
      v12 = v0[9];
      v13 = v7;
      v14 = v8;
      v15 = v20;
    }

    return v15(v12, v13, v14);
  }

  else
  {
    v1((v0 + 2));
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationNoLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationNoLabel(), 0, 0);
}

{
  v4 = (**(v0[6] + 112) + class metadata base offset for CommonCATs + 40);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  v2 = v0[9];

  return v5(v2);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  }

  else
  {
    v2 = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  (*(v3 + 32))(v1, v0[9], v2);
  v5 = (*(*v4 + 192))(v1);
  v7 = v6;
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8(v5, v7);
}

{
  v12 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Unable to generate dialog due to error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0 + 8);

  return v9(0, 0xE000000000000000);
}

Swift::String __swiftcall KnowledgeFallbackConfirmationStrategy.responseViewId()()
{
  if (*(v0 + 24))
  {
    v1 = 0xD000000000000024;
  }

  else
  {
    v1 = 0xD000000000000026;
  }

  if (*(v0 + 24))
  {
    v2 = "ck_confirmation_prompt";
  }

  else
  {
    v2 = "nFlowPlugin10CommonCATs";
  }

  v3 = (v2 | 0x8000000000000000);
  result._object = v3;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KnowledgeFallbackConfirmationStrategy.stringFromTemplatingResult(_:)()
{
  v26 = type metadata accessor for TemplatingText();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TemplatingSection();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0xE000000000000000;
  v6 = TemplatingResult.sections.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = *(v8 + 64);
    v23[1] = v6;
    v11 = v6 + ((v10 + 32) & ~v10);
    v24 = *(v8 + 56);
    v25 = v9;
    v12 = (v0 + 8);
    v13 = (v8 - 8);
    v14 = v27;
    do
    {
      v19 = v8;
      v25(v5, v11, v14);
      v20 = v28 & 0xFFFFFFFFFFFFLL;
      if ((v29 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v29) & 0xF;
      }

      if (v20)
      {
        v21._countAndFlagsBits = 32;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
      }

      TemplatingSection.content.getter();
      v15 = TemplatingText.text.getter();
      v17 = v16;
      (*v12)(v2, v26);
      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      v14 = v27;
      (*v13)(v5, v27);
      v11 += v24;
      --v7;
      v8 = v19;
    }

    while (v7);

    return v28;
  }

  else
  {

    return 0;
  }
}

uint64_t KnowledgeFallbackConfirmationStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for KnowledgeConfirmationResponse(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMR);
  __chkstk_darwin(v5);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v29[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v29[-v16];
  __chkstk_darwin(v15);
  v19 = &v29[-v18];
  if (Input.userCancelled.getter())
  {
    return static ActionForInput.cancel()();
  }

  v31 = v11;
  v32 = a1;
  Input.knowledgeConfirmationResponse.getter(v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  (*(*(v21 - 8) + 56))(v17, 2, 2, v21);
  (*(v3 + 56))(v17, 0, 1, v2);
  v22 = *(v5 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v19, v7, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v17, &v7[v22], &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v23 = *(v3 + 48);
  if (v23(v7, 1, v2) == 1)
  {
    outlined destroy of Any?(v17, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of Any?(v19, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    if (v23(&v7[v22], 1, v2) == 1)
    {
      outlined destroy of Any?(v7, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
      return static ActionForInput.cancel()();
    }

    goto LABEL_9;
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v7, v14, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  if (v23(&v7[v22], 1, v2) == 1)
  {
    outlined destroy of Any?(v17, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of Any?(v19, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of KnowledgeConfirmationResponse(v14);
LABEL_9:
    outlined destroy of Any?(v7, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMR);
    v24 = v31;
    goto LABEL_10;
  }

  v28 = v33;
  outlined init with take of KnowledgeConfirmationResponse(&v7[v22], v33);
  v30 = specialized static KnowledgeConfirmationResponse.__derived_enum_equals(_:_:)(v14, v28);
  outlined destroy of KnowledgeConfirmationResponse(v28);
  outlined destroy of Any?(v17, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined destroy of Any?(v19, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined destroy of KnowledgeConfirmationResponse(v14);
  outlined destroy of Any?(v7, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v24 = v31;
  if (v30)
  {
    return static ActionForInput.cancel()();
  }

LABEL_10:
  Input.knowledgeConfirmationResponse.getter(v24);
  v25 = v23(v24, 1, v2);
  v26 = v24;
  v27 = v25;
  outlined destroy of Any?(v26, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  if (v27 == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t Input.knowledgeConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v81 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v80 - v8;
  v9 = type metadata accessor for USOParse();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for Parse.directInvocation(_:))
  {
    (*(v14 + 96))(v16, v13);
    v18 = v81;
    (*(v81 + 32))(v3, v16, v1);
    v19 = Parse.DirectInvocation.identifier.getter();
    v21 = v20;
    v22 = static SiriKitDirectInvocationPayloads.reject.getter();
    v23 = [v22 identifier];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == v19 && v26 == v21)
    {

LABEL_16:
      (*(v18 + 8))(v3, v1);

      goto LABEL_17;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_16;
    }

    v46 = static SiriKitDirectInvocationPayloads.confirm.getter();
    v47 = [v46 identifier];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (v48 == v19 && v50 == v21)
    {

      (*(v18 + 8))(v3, v1);
LABEL_26:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v59 = *(v58 + 48);
      v60 = type metadata accessor for GenAIPartner();
      v61 = v82;
      (*(*(v60 - 8) + 56))(v82, 1, 1, v60);
      *(v61 + v59) = 1;
      (*(*(v58 - 8) + 56))(v61, 0, 2, v58);
LABEL_27:
      v41 = type metadata accessor for KnowledgeConfirmationResponse(0);
      v42 = *(*(v41 - 8) + 56);
      v43 = v61;
      return v42(v43, 0, 1, v41);
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v18 + 8))(v3, v1);
    if (v57)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

  if (v17 != enum case for Parse.uso(_:))
  {
    v45 = type metadata accessor for KnowledgeConfirmationResponse(0);
    (*(*(v45 - 8) + 56))(v82, 1, 1, v45);
    return (*(v14 + 8))(v16, v13);
  }

  (*(v14 + 96))(v16, v13);
  v27 = v10;
  v28 = *(v10 + 32);
  v29 = v12;
  v30 = v9;
  v28(v12, v16, v9);
  v31 = v80;
  USOParse.userConfirmationResponse.getter(v80);
  v32 = type metadata accessor for ConfirmationResponse();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v31, v7, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v51 = (*(v33 + 88))(v7, v32);
    if (v51 == enum case for ConfirmationResponse.confirmed(_:))
    {
      (*(v27 + 8))(v12, v30);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v53 = *(v52 + 48);
      v54 = type metadata accessor for GenAIPartner();
      v55 = v82;
      (*(*(v54 - 8) + 56))(v82, 1, 1, v54);
      *(v55 + v53) = 0;
      (*(*(v52 - 8) + 56))(v55, 0, 2, v52);
      v56 = type metadata accessor for KnowledgeConfirmationResponse(0);
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    }

    else
    {
      if (v51 != enum case for ConfirmationResponse.rejected(_:))
      {
        (*(v33 + 8))(v7, v32);
        goto LABEL_7;
      }

      (*(v27 + 8))(v12, v30);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v63 = v82;
      (*(*(v62 - 8) + 56))(v82, 2, 2, v62);
      v64 = type metadata accessor for KnowledgeConfirmationResponse(0);
      (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    }

    return outlined destroy of Any?(v31, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

LABEL_7:
  outlined destroy of Any?(v31, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v34 = USOParse.authorisedAppName.getter();
  v36 = v34;
  v37 = v35;
  if (v35)
  {
    if (v34 == 6448503 && v35 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v36 == 0x656C676F6F67 && v37 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      (*(v27 + 8))(v29, v30);
LABEL_17:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v40 = v82;
      (*(*(v39 - 8) + 56))(v82, 1, 2, v39);
      v41 = type metadata accessor for KnowledgeConfirmationResponse(0);
      v42 = *(*(v41 - 8) + 56);
      v43 = v40;
      return v42(v43, 0, 1, v41);
    }

    if (v36 == 0x74706774616863 && v37 == 0xE700000000000000)
    {

      (*(v27 + 8))(v29, v30);
      goto LABEL_35;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v27 + 8))(v29, v30);
      if ((v69 & 1) == 0)
      {
        v70 = type metadata accessor for GenAIPartner();
        v61 = v82;
        (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
        goto LABEL_36;
      }

LABEL_35:
      v65 = enum case for GenAIPartner.chatGPT(_:);
      v66 = type metadata accessor for GenAIPartner();
      v67 = *(v66 - 8);
      v61 = v82;
      (*(v67 + 104))(v82, v65, v66);
      (*(v67 + 56))(v61, 0, 1, v66);
LABEL_36:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      *(v61 + *(v68 + 48)) = 0;
      (*(*(v68 - 8) + 56))(v61, 0, 2, v68);
      goto LABEL_27;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.information);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v29;
    v76 = swift_slowAlloc();
    v83 = v76;
    *v74 = 136315138;
    if (v37)
    {
      v77 = v36;
    }

    else
    {
      v77 = 0;
    }

    if (!v37)
    {
      v37 = 0xE000000000000000;
    }

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v37, &v83);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_0, v72, v73, "Received authorise::common_App response with unknown app name: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);

    (*(v27 + 8))(v75, v30);
  }

  else
  {

    (*(v27 + 8))(v29, v30);
  }

LABEL_50:
  v79 = type metadata accessor for KnowledgeConfirmationResponse(0);
  return (*(*(v79 - 8) + 56))(v82, 1, 1, v79);
}

uint64_t KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Input();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v31 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  Input.knowledgeConfirmationResponse.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v0[8], &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = v0[5];
    v4 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.information);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v9, v10, "Unexpectedly found nil userConfirmationResponse in %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = 1;
  }

  else
  {
    v21 = v0[11];
    v22 = v0[7];
    outlined init with take of KnowledgeConfirmationResponse(v0[8], v21);
    outlined init with take of KnowledgeConfirmationResponse(v21, v22);
    v23 = 0;
  }

  v24 = v0[9];
  v25 = v0[7];
  v26 = v0[2];
  v27 = *(v0[10] + 56);
  v27(v25, v23, 1, v24);
  v27(v26, 1, 1, v24);
  outlined assign with take of KnowledgeConfirmationResponse?(v25, v26);

  v28 = v0[1];

  return v28();
}

uint64_t KnowledgeConfirmationResponseProvider.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return outlined assign with take of KnowledgeConfirmationResponse?(a1, a2);
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  type metadata accessor for DialogPhase();
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(0x74706774616863, v0[33]);
  udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(6448503, v0[32]);
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v17 = v0[15];
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  static Message.with(_:)();

  *(swift_task_alloc() + 16) = v2;
  static Message.with(_:)();

  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v8 = *(v6 + 72);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_B95F0;
  v11 = v10 + v9;
  v12 = *(v6 + 16);
  v12(v11, v4, v5);
  v12(v11 + v8, v3, v5);
  NLContextUpdate.nluSystemDialogActs.setter();
  v13 = *(*v17 + 160);
  v16 = *v17 + 160;
  v0[34] = v13;
  v0[35] = v16 & 0xFFFFFFFFFFFFLL | 0xBC8C000000000000;
  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[36] = v14;
  *v14 = v0;
  v14[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return v18(0);
}

{
  v1 = v0[15];
  v46 = (*(*v1 + 184))();
  v48 = v2;
  v3 = [objc_allocWithZone(DialogExecutionResult) init];
  v0[51] = v3;
  v4 = [objc_allocWithZone(DialogElement) init];
  v0[52] = v4;

  v5 = String._bridgeToObjectiveC()();

  [v4 setFullPrint:v5];

  v6 = String._bridgeToObjectiveC()();

  [v4 setFullSpeak:v6];

  v7 = String._bridgeToObjectiveC()();

  [v4 setSupportingPrint:v7];

  v8 = String._bridgeToObjectiveC()();

  [v4 setSupportingSpeak:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B9BD0;
  *(v9 + 32) = v4;
  type metadata accessor for DialogElement();
  v10 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v49 = v3;
  [v3 setDialog:isa];

  v12 = v1[2];
  if (v12)
  {
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];
    v16 = v0[15];
    v17 = objc_allocWithZone(SAUIRevealRecognizedSpeech);
    v18 = v12;
    v19 = [v17 init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v14 + 8))(v13, v15);
    v20 = String._bridgeToObjectiveC()();

    [v19 setAceId:v20];

    v21 = v18;
    v22 = v19;
    v23 = [v21 refId];
    [v22 setRefId:v23];

    v24 = [v21 aceId];
    [v22 setSpeechRecognizedAceId:v24];

    [v22 setRecognition:v21];
    __swift_project_boxed_opaque_existential_1((v16 + 72), *(v16 + 96));
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v44 = v0[13];
  v45 = v0[12];
  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[46];
  v42 = v0[42];
  v43 = v0[45];
  v41 = v0[41];
  v28 = v0[37];
  v29 = v0[38];
  v30 = v0[25];
  v31 = v0[15];
  static DialogPhase.confirmation.getter();
  v32 = swift_task_alloc();
  v32[2] = v30;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v41;
  v32[6] = v42;
  v32[7] = v43;
  v32[8] = v27;
  v32[9] = v26;
  v32[10] = v25;
  v32[11] = v45;
  v32[12] = v44;
  v32[13] = v46;
  v32[14] = v48;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v33 = v31[7];
  v47 = v31[8];
  __swift_project_boxed_opaque_existential_1(v31 + 4, v33);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[5] = &type metadata for SiriInformationDataModels;
  v0[6] = lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels();
  v34 = swift_allocObject();
  v0[2] = v34;
  *(v34 + 16) = v26;
  *(v34 + 24) = v25;
  *(v34 + 32) = v45;
  *(v34 + 40) = v44;
  *(v34 + 48) = 0;
  v35 = swift_allocObject();
  v0[53] = v35;
  *(v35 + 16) = xmmword_B9BD0;
  *(v35 + 32) = v49;
  v36 = v49;
  v37 = swift_task_alloc();
  v0[54] = v37;
  *v37 = v0;
  v37[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v38 = v0[19];
  v39 = v0[14];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v39, v0 + 2, v35, v38, v33, v47);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

{
  v1 = *(v0 + 416);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 240);
  v14 = *(v0 + 232);
  v15 = *(v0 + 184);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v3, v4);
  v10(v14, v4);
  (*(v6 + 8))(v16, v15);
  v11 = *(v2 + 8);
  v11(v18, v17);
  v11(v19, v17);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[31];
  v12 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v12, v2);
  v9(v0[33], v0[30]);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[31];
  v12 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v12, v2);
  v9(v0[33], v0[30]);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[31];
  v12 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v12, v2);
  v9(v0[33], v0[30]);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[31];
  v12 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v12, v2);
  v9(v0[33], v0[30]);

  v10 = v0[1];

  return v10();
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v7 = (v4[34] + *v4[34]);
    v5 = swift_task_alloc();
    v4[40] = v5;
    *v5 = v4;
    v5[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v7(0);
  }
}

{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;

  if (v2)
  {

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v7 = (v4[34] + *v4[34]);
    v5 = swift_task_alloc();
    v4[44] = v5;
    *v5 = v4;
    v5[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v7(1);
  }
}

{
  v4 = *v3;
  *(v4 + 360) = a1;
  *(v4 + 368) = a2;
  *(v4 + 376) = v2;

  if (v2)
  {

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v7 = (*(**(v4 + 120) + 168) + **(**(v4 + 120) + 168));
    v5 = swift_task_alloc();
    *(v4 + 384) = v5;
    *v5 = v4;
    v5[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v7();
  }
}

{
  v4 = *v3;
  *(v4 + 56) = v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = v2;
  v5 = *v3;
  *(v4 + 392) = v2;

  if (v2)
  {

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v8 = (*(**(v4 + 120) + 176) + **(**(v4 + 120) + 176));
    v6 = swift_task_alloc();
    *(v4 + 400) = v6;
    *v6 = v5;
    v6[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v8();
  }
}

{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = a2;

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

uint64_t udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v26 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v26 - 8);
  v7 = __chkstk_darwin(v26);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v29 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v11 = *(v29 - 8);
  v12 = __chkstk_darwin(v29);
  v23 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  Siri_Nlu_External_UserWantedToProceed.init()();
  type metadata accessor for UsoTaskBuilder_authorise_common_App();
  swift_allocObject();
  v16 = UsoTaskBuilder_authorise_common_App.init()();
  type metadata accessor for UsoEntityBuilder_common_App();
  swift_allocObject();
  UsoEntityBuilder_common_App.init()();
  dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceControl.setReference(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_B9BD0;
  *(v17 + 32) = v16;
  v18 = type metadata accessor for UsoBuilderOptions();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Any?(v5, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v19 = v28;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v19)
  {
    (*(v11 + 8))(v15, v29);
  }

  else
  {

    (*(v6 + 16))(v24, v10, v26);
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v21 = *(v11 + 16);
    v28 = v10;
    v22 = v29;
    v21(v23, v15, v29);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();

    (*(v6 + 8))(v28, v26);
    return (*(v11 + 8))(v15, v22);
  }
}

uint64_t closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  __chkstk_darwin(v3);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemGaveOptions and conformance Siri_Nlu_External_SystemGaveOptions, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
}

uint64_t closure #1 in closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B95F0;
  v10 = v9 + v8;
  v11 = *(v6 + 16);
  v11(v10, a2, v5);
  v11(v10 + v7, a3, v5);
  return Siri_Nlu_External_SystemGaveOptions.choices.setter();
}

uint64_t closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  __chkstk_darwin(v2);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemOffered and conformance Siri_Nlu_External_SystemOffered, &type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemDialogAct.offered.setter();
}

uint64_t closure #1 in closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  __chkstk_darwin(v2);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemOffered.offeredAct.setter();
}

uint64_t closure #1 in closure #1 in closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  __chkstk_darwin(v0 - 8);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.getter();
  return Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
}

uint64_t closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  v7 = type metadata accessor for NLContextUpdate();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t KnowledgeFallbackConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  return v0;
}

uint64_t KnowledgeFallbackConfirmationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 208) + **(*v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for KnowledgeFallbackConfirmationStrategy();
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for KnowledgeFallbackConfirmationStrategy();
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t KnowledgeConfirmationResponseProvider.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v2, &v16 - v5, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v7 = type metadata accessor for KnowledgeConfirmationResponse(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    v8 = type metadata accessor for ConfirmationResponse();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
    v11 = (*(*(v10 - 8) + 48))(v6, 2, v10);
    v12 = type metadata accessor for ConfirmationResponse();
    v13 = *(v12 - 8);
    v14 = *(v13 + 104);
    v15 = (v13 + 56);
    if (v11)
    {
      v14(a1, enum case for ConfirmationResponse.rejected(_:), v12);
      return (*v15)(a1, 0, 1, v12);
    }

    else
    {
      v14(a1, enum case for ConfirmationResponse.confirmed(_:), v12);
      (*v15)(a1, 0, 1, v12);
      return outlined destroy of Any?(v6, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    }
  }
}

uint64_t USOParse.authorisedAppName.getter()
{
  v1 = type metadata accessor for USOParse();
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = __chkstk_darwin(v1);
  v84 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v83 = &v81 - v4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v0;
  USOParse.userParse.getter();
  v19 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v12 + 8))(v14, v11);
  if (!*(v19 + 16))
  {
    v22 = v83;
    v21 = v84;
    v24 = v85;
    v23 = v86;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.information);
    v26 = *(v24 + 16);
    v26(v22, v87, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v92[0] = v30;
      *v29 = 136315138;
      v26(v21, v22, v23);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      (*(v24 + 8))(v22, v23);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v92);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v27, v28, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    else
    {

      (*(v24 + 8))(v22, v23);
    }

    return 0;
  }

  (*(v16 + 16))(v18, v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v8 + 8))(v10, v88);
  v20 = v16;
  static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v82 = v18;
  (*(v89 + 8))(v7, v90);
  v35 = static UsoConversionUtils.convertGraphToTasks(graph:)();
  if (v35 >> 62)
  {
    v37 = v35;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v35 = v37;
    v36 = v82;
    if (!v38)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v36 = v82;
    if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }
  }

  if ((v35 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_59:
      swift_once();
LABEL_17:
      v39 = type metadata accessor for Logger();
      v40 = __swift_project_value_buffer(v39, static Logger.information);

      v90 = v40;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v41, v42);
      v81 = v15;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v92[0] = v45;
        *v44 = 136315138;
        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        if (v91 && (v89 = dispatch thunk of UsoEntity_common_App.name.getter(), v47 = v46, , v47))
        {
          v48 = v89;
        }

        else
        {

          v48 = 0;
          v47 = 0xE000000000000000;
        }

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v92);

        *(v44 + 4) = v60;
        _os_log_impl(&dword_0, v41, v42, "Parsed confirmation response as authorise_common_App: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);

        v36 = v82;
      }

      else
      {
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      v61 = USOParse.appNameIdentifier(app:)(v92[0]);
      v63 = v62;

      if (v63)
      {
        v64 = v63;
        v65 = v20;
      }

      else
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        if (v92[0] && (v61 = dispatch thunk of UsoEntity_common_App.name.getter(), v67 = v66, , v67))
        {
          v64 = v67;
          v65 = v20;
        }

        else
        {
          v65 = v20;

          v61 = 0;
          v64 = 0xE000000000000000;
        }
      }

      v74 = v64;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      v77 = v74;

      if (!os_log_type_enabled(v75, v76))
      {
        goto LABEL_56;
      }

LABEL_55:
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v92[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v77, v92);
      _os_log_impl(&dword_0, v75, v76, "Identified the authorized app name as: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);

      (*(v65 + 8))(v82, v81);
      return v61;
    }
  }

LABEL_14:

  static UsoTask_CodegenConverter.convert(task:)();
  if (v93)
  {
    type metadata accessor for UsoTask_authorise_common_App();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for information == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_59;
    }
  }

  else
  {
    outlined destroy of Any?(v92, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v93)
  {
    (*(v20 + 8))(v36, v15);

    outlined destroy of Any?(v92, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_open_common_App();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v20 + 8))(v36, v15);

    return 0;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  v50 = __swift_project_value_buffer(v49, static Logger.information);

  v90 = v50;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  v53 = os_log_type_enabled(v51, v52);
  v81 = v15;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v92[0] = v55;
    *v54 = 136315138;
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    if (v91 && (v89 = dispatch thunk of UsoEntity_common_App.name.getter(), v57 = v56, , v57))
    {
      v58 = v89;
    }

    else
    {

      v58 = 0;
      v57 = 0xE000000000000000;
    }

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, v92);

    *(v54 + 4) = v68;
    _os_log_impl(&dword_0, v51, v52, "Parsed confirmation response as open_common_App: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);

    v36 = v82;
  }

  else
  {
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v61 = USOParse.appNameIdentifier(app:)(v92[0]);
  v70 = v69;

  if (v70)
  {
    v71 = v70;
    v65 = v20;
    goto LABEL_54;
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v92[0])
  {
    v65 = v20;
    v61 = dispatch thunk of UsoEntity_common_App.name.getter();
    v73 = v72;

    if (v73)
    {
      v71 = v73;
      goto LABEL_54;
    }
  }

  else
  {
    v65 = v20;
  }

  v61 = 0;
  v71 = 0xE000000000000000;
LABEL_54:
  v78 = v71;

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v77 = v78;

  if (os_log_type_enabled(v75, v76))
  {
    goto LABEL_55;
  }

LABEL_56:

  (*(v65 + 8))(v36, v81);
  return v61;
}

uint64_t static GenAIPartner.fromAuthorisedAppName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x74706774616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = enum case for GenAIPartner.chatGPT(_:);
    v6 = type metadata accessor for GenAIPartner();
    v13 = *(v6 - 8);
    (*(v13 + 104))(a3, v5, v6);
    v7 = *(v13 + 56);
    v8 = a3;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for GenAIPartner();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a3;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t USOParse.appNameIdentifier(app:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return result;
  }

  v10 = result;
  v21 = *(result + 16);
  if (!v21)
  {
LABEL_12:

    return 0;
  }

  v19 = v8;
  v11 = 0;
  v12 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v20 = 0x80000000000BFCF0;
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v6, v12 + *(v3 + 72) * v11, v2);
    v14 = UsoIdentifier.namespace.getter();
    if (v15)
    {
      if (v14 == 0xD000000000000010 && v15 == v20)
      {

LABEL_15:

        v16 = v19;
        (*(v3 + 32))(v19, v6, v2);
        UsoIdentifier.value.getter();
        (*(v3 + 8))(v16, v2);
        countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_15;
      }
    }

    ++v11;
    result = (*(v3 + 8))(v6, v2);
    if (v21 == v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a7 + 56) = a9;
  *(a7 + 64) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 32));
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a3, a9);
  v23 = a8;
  v24 = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a8 - 8) + 32))(v20, a6, a8);
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  outlined init with take of SiriSuggestionsBroker(a4, a7 + 72);
  *(a7 + 112) = a5;
  outlined init with take of SiriSuggestionsBroker(&v22, a7 + 120);
  return a7;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError);
  }

  return result;
}

uint64_t outlined destroy of KnowledgeConfirmationResponse(uint64_t a1)
{
  v2 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of KnowledgeConfirmationResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static KnowledgeConfirmationResponse.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenAIPartner();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg_ADtMd, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMR);
  __chkstk_darwin(v10);
  v12 = &v41[-v11];
  v13 = type metadata accessor for KnowledgeConfirmationResponse(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMR);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v41[-v18];
  v20 = &v41[*(v17 + 56) - v18];
  outlined init with copy of KnowledgeConfirmationResponse(a1, &v41[-v18]);
  outlined init with copy of KnowledgeConfirmationResponse(a2, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 2, v21);
  if (v23)
  {
    if (v23 == 1)
    {
      if (v22(v20, 2, v21) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      outlined destroy of KnowledgeConfirmationResponse(v19);
      return 1;
    }

    if (v22(v20, 2, v21) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    outlined destroy of Any?(v19, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMR);
    return 0;
  }

  v43 = v6;
  v44 = v12;
  outlined init with copy of KnowledgeConfirmationResponse(v19, v15);
  v24 = *(v21 + 48);
  v25 = v15[v24];
  if (v22(v20, 2, v21))
  {
    outlined destroy of Any?(v15, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    goto LABEL_9;
  }

  v42 = v25;
  v27 = v20[v24];
  v28 = *(v10 + 48);
  v29 = v44;
  outlined init with take of GenAIPartner?(v15, v44);
  v30 = v20;
  v31 = v29;
  outlined init with take of GenAIPartner?(v30, v29 + v28);
  v32 = v45;
  v33 = *(v45 + 48);
  v34 = v29;
  v35 = v46;
  if (v33(v34, 1, v46) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v31, v9, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    if (v33(v31 + v28, 1, v35) != 1)
    {
      v38 = v43;
      (*(v32 + 32))(v43, v31 + v28, v35);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type GenAIPartner and conformance GenAIPartner, &type metadata accessor for GenAIPartner, &protocol conformance descriptor for GenAIPartner);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v32 + 8);
      v40(v38, v35);
      v40(v9, v35);
      outlined destroy of Any?(v31, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      v37 = v42;
      if (v39)
      {
        goto LABEL_19;
      }

LABEL_17:
      outlined destroy of KnowledgeConfirmationResponse(v19);
      return 0;
    }

    (*(v32 + 8))(v9, v35);
LABEL_16:
    outlined destroy of Any?(v31, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMd, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMR);
    goto LABEL_17;
  }

  v36 = v33(v31 + v28, 1, v35);
  v37 = v42;
  if (v36 != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of Any?(v31, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
LABEL_19:
  outlined destroy of KnowledgeConfirmationResponse(v19);
  return v37 ^ v27 ^ 1u;
}

uint64_t outlined assign with take of KnowledgeConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  v10[0] = *(v1 + 24);
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v11 = v7;
  v12 = v8;
  return closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v2, v10);
}

uint64_t sub_678C8()
{
  outlined consume of SiriInformationDataModels(v0[2], v0[3], v0[4], v0[5]);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_67A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_67A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for KnowledgeConfirmationResponseProvider(uint64_t a1)
{
  type metadata accessor for KnowledgeConfirmationResponse?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for KnowledgeConfirmationResponse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KnowledgeConfirmationResponse?)
  {
    type metadata accessor for KnowledgeConfirmationResponse(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KnowledgeConfirmationResponse?);
    }
  }
}

uint64_t sub_67BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_67C7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata completion function for KnowledgeConfirmationResponse(uint64_t a1)
{
  type metadata accessor for (genAIPartner: GenAIPartner?, didTap: Bool)(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (genAIPartner: GenAIPartner?, didTap: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (genAIPartner: GenAIPartner?, didTap: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (genAIPartner: GenAIPartner?, didTap: Bool));
    }
  }
}

uint64_t outlined init with copy of KnowledgeConfirmationResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GenAIPartner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.title.getter()
{
  v0 = Apple_Parsec_Siri_V2alpha_MovieObject.titles.getter();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *Apple_Parsec_Siri_V2alpha_MovieObject.sixteenByNineImages.getter()
{
  v0 = type metadata accessor for Moviespb_CoverArt.AspectRatio();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v23 = type metadata accessor for Moviespb_CoverArt();
  v7 = *(v23 - 8);
  v8 = __chkstk_darwin(v23);
  v35 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v22 = &v22 - v10;
  result = Apple_Parsec_Siri_V2alpha_MovieObject.coverArt.getter();
  v34 = result[2];
  if (v34)
  {
    v12 = 0;
    v31 = v7 + 16;
    v30 = enum case for Moviespb_CoverArt.AspectRatio.sixteenByNine(_:);
    v28 = (v1 + 8);
    v29 = (v1 + 104);
    v24 = (v7 + 8);
    v27 = (v7 + 32);
    v13 = _swiftEmptyArrayStorage;
    v25 = v6;
    v26 = v4;
    v14 = v22;
    v15 = v23;
    v32 = result;
    v33 = v7;
    while (v12 < result[2])
    {
      v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v16 = *(v7 + 72);
      (*(v7 + 16))(v14, result + v36 + v16 * v12, v15);
      Moviespb_CoverArt.type.getter();
      (*v29)(v4, v30, v0);
      lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio, &type metadata accessor for Moviespb_CoverArt.AspectRatio, &protocol conformance descriptor for Moviespb_CoverArt.AspectRatio);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = *v28;
      (*v28)(v4, v0);
      v17(v6, v0);
      if (v38 == v37)
      {
        v18 = *v27;
        (*v27)(v35, v14, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1);
          v14 = v22;
          v15 = v23;
          v13 = v39;
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v14 = v22;
          v15 = v23;
          v13 = v39;
        }

        v13[2] = v21 + 1;
        v18(v13 + v36 + v21 * v16, v35, v15);
        v6 = v25;
        v4 = v26;
      }

      else
      {
        (*v24)(v14, v15);
      }

      ++v12;
      v7 = v33;
      result = v32;
      if (v34 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    return v13;
  }

  return result;
}

void *Apple_Parsec_Siri_V2alpha_TvObject.sixteenByNineImages.getter()
{
  v0 = type metadata accessor for Tvpb_CoverArt.AspectRatio();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v23 = type metadata accessor for Tvpb_CoverArt();
  v7 = *(v23 - 8);
  v8 = __chkstk_darwin(v23);
  v35 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v22 = &v22 - v10;
  result = Apple_Parsec_Siri_V2alpha_TvObject.coverArt.getter();
  v34 = result[2];
  if (v34)
  {
    v12 = 0;
    v31 = v7 + 16;
    v30 = enum case for Tvpb_CoverArt.AspectRatio.sixteenByNine(_:);
    v28 = (v1 + 8);
    v29 = (v1 + 104);
    v24 = (v7 + 8);
    v27 = (v7 + 32);
    v13 = _swiftEmptyArrayStorage;
    v25 = v6;
    v26 = v4;
    v14 = v22;
    v15 = v23;
    v32 = result;
    v33 = v7;
    while (v12 < result[2])
    {
      v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v16 = *(v7 + 72);
      (*(v7 + 16))(v14, result + v36 + v16 * v12, v15);
      Tvpb_CoverArt.type.getter();
      (*v29)(v4, v30, v0);
      lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Tvpb_CoverArt.AspectRatio and conformance Tvpb_CoverArt.AspectRatio, &type metadata accessor for Tvpb_CoverArt.AspectRatio, &protocol conformance descriptor for Tvpb_CoverArt.AspectRatio);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = *v28;
      (*v28)(v4, v0);
      v17(v6, v0);
      if (v38 == v37)
      {
        v18 = *v27;
        (*v27)(v35, v14, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1);
          v14 = v22;
          v15 = v23;
          v13 = v39;
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v14 = v22;
          v15 = v23;
          v13 = v39;
        }

        v13[2] = v21 + 1;
        v18(v13 + v36 + v21 * v16, v35, v15);
        v6 = v25;
        v4 = v26;
      }

      else
      {
        (*v24)(v14, v15);
      }

      ++v12;
      v7 = v33;
      result = v32;
      if (v34 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    return v13;
  }

  return result;
}

void closure #1 in static VideoSnippetUtils.makeDisambiguationList(for:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v112 = *(v4 - 8);
  *&v113 = v4;
  __chkstk_darwin(v4);
  v111 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v109 = *(v6 - 8);
  v110 = v6;
  __chkstk_darwin(v6);
  v108 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v115 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v116 = &v99 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMd, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v99 - v17;
  v19 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  static VideoSnippetUtils.makeDynamicURLImageResource(for:)(v18, a1);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of Any?(v18, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMd, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.videoSnippet);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Could not generate dynamic URL image resource for object", v26, 2u);
    }

    v27 = 0;
    goto LABEL_31;
  }

  v102 = a2;
  v114 = v20;
  (*(v20 + 32))(v22, v18, v19);
  v28 = [objc_allocWithZone(SAUIListItemProtobufMessage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v29 = *(v13 + 8);
  v107 = v13 + 8;
  v117 = v29;
  v29(v15, v12);
  v30 = String._bridgeToObjectiveC()();

  [v28 setAceId:v30];
  v118 = v28;

  lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_DynamicURLImageResource and conformance Searchfoundation_DynamicURLImageResource, &type metadata accessor for Searchfoundation_DynamicURLImageResource, &protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);
  v101 = v19;
  v31 = v120;
  v32 = Message.serializedData(partial:)();
  if (v31)
  {
    v34 = v12;

    isa = 0;
    v120 = 0;
  }

  else
  {
    v36 = v32;
    v37 = v33;
    v34 = v12;
    v120 = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v36, v37);
  }

  v39 = v115;
  v38 = v116;
  [v118 setDynamicURLImageResourceData:isa];

  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v38, 1, v40);
  v100 = v22;
  if (v42 == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v38, v39, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v43 = (*(v41 + 88))(v39, v40);
  if (v43 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v41 + 96))(v39, v40);
    v44 = v108;
    v45 = v109;
    v46 = v110;
    (*(v109 + 32))(v108, v39, v110);
    v103 = Apple_Parsec_Siri_V2alpha_TvObject.title.getter();
    v104 = v47;
    v115 = Apple_Parsec_Siri_V2alpha_TvObject.contentRatingSystem.getter();
    v116 = v48;
    v105 = Apple_Parsec_Siri_V2alpha_TvObject.contentRatingValue.getter();
    v106 = v49;
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    if (v43 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v41 + 8))(v39, v40);
LABEL_11:
      v105 = 0;
      v106 = 0;
      v115 = 0;
      v116 = 0;
      v103 = 0;
      v104 = 0xE000000000000000;
      goto LABEL_20;
    }

    (*(v41 + 96))(v39, v40);
    v112[4](v111, v39, v113);
    v50 = Apple_Parsec_Siri_V2alpha_MovieObject.titles.getter();
    if (v50[2])
    {
      v51 = v50[4];
      v52 = v50[5];
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }

    v103 = v51;
    v104 = v52;

    v53 = v111;
    v115 = Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingSystem.getter();
    v116 = v54;
    v105 = Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingValue.getter();
    v106 = v55;
    (v112[1])(v53, v113);
  }

LABEL_20:
  outlined destroy of Any?(v38, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v56 = [objc_allocWithZone(SAStartRequest) init];
  UUID.init()();
  UUID.uuidString.getter();
  v57 = v117;
  v117(v15, v34);
  v58 = String._bridgeToObjectiveC()();

  [v56 setAceId:v58];

  [v56 setInputOrigin:SAInputOriginDialogButtonTapValue];
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.getter();
  v59 = String._bridgeToObjectiveC()();

  [v56 setUtterance:v59];

  v60 = [objc_allocWithZone(SASendCommands) init];
  UUID.init()();
  UUID.uuidString.getter();
  v57(v15, v34);
  v61 = String._bridgeToObjectiveC()();

  [v60 setAceId:v61];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v62 = swift_allocObject();
  v113 = xmmword_B9BD0;
  *(v62 + 16) = xmmword_B9BD0;
  *(v62 + 32) = v56;
  v112 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v60 setCommands:v63];

  v64 = [objc_allocWithZone(SAUIListItem) init];
  UUID.init()();
  UUID.uuidString.getter();
  v117(v15, v34);
  v65 = String._bridgeToObjectiveC()();

  [v64 setAceId:v65];

  v66 = swift_allocObject();
  *(v66 + 16) = v113;
  *(v66 + 32) = v60;
  v67 = v60;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v64 setCommands:v69];

  v70 = v118;
  [v64 setObject:v118];
  v71 = String._bridgeToObjectiveC()();

  [v64 setTitle:v71];

  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.getter();
  v72 = String._bridgeToObjectiveC()();

  [v64 setPrimaryDescriptiveText:v72];

  v73 = specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(v115, v116, v105, v106);

  [v64 setContentRating:v73];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static Logger.videoSnippet);
  v27 = v64;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v77 = os_log_type_enabled(v75, v76);
  v78 = v114;
  if (!v77)
  {

LABEL_30:
    (*(v78 + 8))(v100, v101);
    a2 = v102;
LABEL_31:
    *a2 = v27;
    return;
  }

  v117 = v68;
  v119 = v67;
  v79 = swift_slowAlloc();
  v122 = swift_slowAlloc();
  *v79 = 136315906;
  v80 = [v27 title];
  if (!v80)
  {

    __break(1u);
    goto LABEL_34;
  }

  v81 = v80;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v122);

  *(v79 + 4) = v85;
  *(v79 + 12) = 2080;
  v86 = [v27 primaryDescriptiveText];

  if (!v86)
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v122);

  *(v79 + 14) = v90;
  *(v79 + 22) = 2080;
  v121[0] = [v27 contentRating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SASTTemplateContentRatingCSgMd, &_sSo25SASTTemplateContentRatingCSgMR);
  v91 = String.init<A>(describing:)();
  v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v122);

  *(v79 + 24) = v93;
  *(v79 + 32) = 2048;
  v94 = [v27 commands];
  if (v94)
  {
    v95 = v94;
    v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = v114;
    v97 = v118;
    if (v96 >> 62)
    {
      v98 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v98 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
    }

    *(v79 + 34) = v98;

    _os_log_impl(&dword_0, v75, v76, "Generated list item for TV or movie object\n    title: %s\n    descriptive text: %s\n    content rating: %s\n    commands: %ld", v79, 0x2Au);
    swift_arrayDestroy();

    goto LABEL_30;
  }

LABEL_35:

  __break(1u);
}

uint64_t static VideoSnippetUtils.makeDynamicURLImageResource(for:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(a2);
  if (v3)
  {
    v11 = v3;
    v12 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
    __chkstk_darwin(v12);
    lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_DynamicURLImageResource and conformance Searchfoundation_DynamicURLImageResource, &type metadata accessor for Searchfoundation_DynamicURLImageResource, &protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);
    static Message.with(_:)();

    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  else
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.videoSnippet);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Could not create image resource for TV or movie object; canceling dynamic URL image resource", v7, 2u);
    }

    v8 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v46 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v52 = static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(v15, v13, v14);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 32))(v16, v17);
  v48 = v19;
  v49 = v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22._countAndFlagsBits = (*(v21 + 24))(v20, v21);
  v56 = 0x3A636D753A6E7275;
  v57 = 0xE800000000000000;
  String.append(_:)(v22);

  v50 = v56;
  v51 = v57;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 40))(v23, v24);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 64))(v25, v26);
  v27 = [objc_allocWithZone(SAVCSContentDetailPage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v28 = v9;
  v29 = v47;
  (*(v10 + 8))(v12, v28);
  v30 = String._bridgeToObjectiveC()();

  [v27 setAceId:v30];

  v31 = String._bridgeToObjectiveC()();

  [v27 setLoadingText:v31];

  v32 = String._bridgeToObjectiveC()();

  [v27 setContentType:v32];

  URL.init(string:)();

  v33 = type metadata accessor for URL();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v37 = 0;
  if (v35(v29, 1, v33) != 1)
  {
    URL._bridgeToObjectiveC()(v36);
    v37 = v38;
    (*(v34 + 8))(v29, v33);
  }

  [v27 setUrl:v37];

  v39 = String._bridgeToObjectiveC()();

  [v27 setUtsId:v39];

  [v27 setResultIndex:-1];
  v40 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v40 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = v46;
    URL.init(string:)();
    if (v35(v41, 1, v33) == 1)
    {
      v43 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v42);
      v43 = v44;
      (*(v34 + 8))(v41, v33);
    }

    [v27 setUtsSearchUrl:v43];
  }

  v45 = v52;
  if (v52)
  {
    [v27 setImage:v52];
  }

  *v55 = v27;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI031Apple_Parsec_Siri_V2alpha_MovieY0V_Tt0g5()
{
  v0 = type metadata accessor for Moviespb_CoverArt();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = Apple_Parsec_Siri_V2alpha_MovieObject.sixteenByNineImages.getter();
  if (v10[2])
  {
    (*(v1 + 16))(v9, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);
    (*(v1 + 56))(v9, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v9, 1, 1, v0);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v9, v7, &_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    v11 = 0;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    v11 = _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(v3, &Moviespb_CoverArt.url.getter);
    (*(v1 + 8))(v3, v0);
  }

  outlined destroy of Any?(v9, &_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  return v11;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI028Apple_Parsec_Siri_V2alpha_TvY0V_Tt0g5()
{
  v0 = type metadata accessor for Tvpb_CoverArt();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = Apple_Parsec_Siri_V2alpha_TvObject.sixteenByNineImages.getter();
  if (v10[2])
  {
    (*(v1 + 16))(v9, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);
    (*(v1 + 56))(v9, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v9, 1, 1, v0);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v9, v7, &_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    v11 = 0;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    v11 = _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(v3, &Tvpb_CoverArt.url.getter);
    (*(v1 + 8))(v3, v0);
  }

  outlined destroy of Any?(v9, &_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  return v11;
}

uint64_t static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  v15 = (*(a3 + 72))(a2, a3);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v13 = a2;
  v14 = a3;
  v9 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:), v12, &type metadata for Never, v9, v10, &v16);
  (*(v6 + 8))(v8, v5);
  return v16;
}

NSObject *specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v60 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v16 = __chkstk_darwin(v53);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v56 = a1;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v51 = v22;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v22, v20, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
    v30 = (*(v24 + 88))(v20, v23);
    if (v30 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
    {
      (*(v24 + 96))(v20, v23);
      v31 = v60;
      (*(v60 + 32))(v9, v20, v4);
      (*(v31 + 16))(v7, v9, v4);
      v26 = _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI028Apple_Parsec_Siri_V2alpha_TvY0V_Tt0g5();
      v32 = *(v31 + 8);
      v32(v9, v4);
      v32(v7, v4);
    }

    else
    {
      if (v30 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
      {
        (*(v24 + 8))(v20, v23);
        if (one-time initialization token for videoSnippet != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        v26 = __swift_project_value_buffer(v37, static Logger.videoSnippet);
        v38 = v57;
        v39 = v58;
        v40 = v59;
        (*(v58 + 16))(v57, v56, v59);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        v43 = os_log_type_enabled(v41, v42);
        v28 = v51;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = v61;
          *v44 = 136315138;
          Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
          v45 = String.init<A>(describing:)();
          v46 = v38;
          v48 = v47;
          (*(v39 + 8))(v46, v40);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v62);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_0, v41, v42, "Unknown or future payload in a TV or movie object: %s", v44, 0xCu);
          v26 = v61;
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
        }

        else
        {

          (*(v39 + 8))(v38, v40);
        }

        goto LABEL_7;
      }

      (*(v24 + 96))(v20, v23);
      v34 = v54;
      v33 = v55;
      (*(v54 + 32))(v15, v20, v55);
      (*(v34 + 16))(v13, v15, v33);
      v26 = _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI031Apple_Parsec_Siri_V2alpha_MovieY0V_Tt0g5();
      v35 = *(v34 + 8);
      v35(v15, v33);
      v35(v13, v33);
    }

    outlined destroy of Any?(v51, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
    return v26;
  }

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.videoSnippet);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  v28 = v22;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v26, v27, "No TV or movie payload in a TV or movie object", v29, 2u);
  }

LABEL_7:
  lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
  swift_allocError();
  swift_willThrow();
  outlined destroy of Any?(v28, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v26;
}

uint64_t specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v50 = a1;
  v49 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v48 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v11 = __chkstk_darwin(v43);
  v42[1] = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - v14;
  __chkstk_darwin(v13);
  v17 = v42 - v16;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.videoSnippet);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No TV or movie payload in a TV or movie object", v23, 2u);
    }

LABEL_7:
    lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
    swift_allocError();
    swift_willThrow();
    return outlined destroy of Any?(v17, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v17, v15, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v25 = (*(v19 + 88))(v15, v18);
  if (v25 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v19 + 96))(v15, v18);
    v26 = v48;
    (*(v48 + 32))(v7, v15, v5);
    v53 = v5;
    v54 = &protocol witness table for Apple_Parsec_Siri_V2alpha_TvObject;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(v26 + 16))(boxed_opaque_existential_1, v7, v5);
    v50(&v55, v52);
    (*(v26 + 8))(v7, v5);
  }

  else
  {
    if (v25 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v19 + 8))(v15, v18);
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.videoSnippet);
      v31 = v45;
      v32 = v46;
      v33 = v47;
      (*(v46 + 16))(v45, v2, v47);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52[0] = v51;
        *v36 = 136315138;
        Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
        v37 = String.init<A>(describing:)();
        v38 = v31;
        v40 = v39;
        (*(v32 + 8))(v38, v33);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v52);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_0, v34, v35, "Unknown or future payload in a TV or movie object: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
      }

      else
      {

        (*(v32 + 8))(v31, v33);
      }

      goto LABEL_7;
    }

    (*(v19 + 96))(v15, v18);
    v28 = v44;
    (*(v44 + 32))(v10, v15, v8);
    v53 = v8;
    v54 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MovieObject;
    v29 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(v28 + 16))(v29, v10, v8);
    v50(&v55, v52);
    (*(v28 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  outlined destroy of Any?(v17, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v55;
}

uint64_t closure #1 in closure #1 in static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)@<X0>(void *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.getter();
  v16 = static VideoSnippetUtils.makeContentButton<A>(for:utsURL:contentRowDescription:index:switchProfileBuilderParams:)(v13, a2, a3, v14, v15, a4, a5, v11, v12);

  *a6 = v16;
  return result;
}

id static VideoSnippetUtils.makeContentButton<A>(for:utsURL:contentRowDescription:index:switchProfileBuilderParams:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t, uint64_t))
{
  v98 = a7;
  v89 = a6;
  v94 = a4;
  v95 = a5;
  v91 = a2;
  v92 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v96 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v84 = (&v83 - v16);
  __chkstk_darwin(v15);
  *&v85 = &v83 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(a1, a8, a9);
  v106 = a9[4](a8, a9);
  v107 = v22;
  v23._countAndFlagsBits = a9[3](a8, a9);
  v110 = 0x3A636D753A6E7275;
  v111 = 0xE800000000000000;
  String.append(_:)(v23);

  v104 = v110;
  v105 = v111;
  v24 = a9[5];
  v97 = a9 + 5;
  v87 = v24;
  v24(a8, a9);
  v25 = a9[8];
  v90 = a1;
  v100 = a8;
  v88 = (a9 + 8);
  v86 = v25;
  v93 = v25(a8, a9);
  v26 = [objc_allocWithZone(SAVCSContentDetailPage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v27 = *(v19 + 8);
  v101 = v21;
  v102 = v19 + 8;
  v103 = v18;
  v99 = v27;
  v27(v21, v18);
  v28 = String._bridgeToObjectiveC()();

  [v26 setAceId:v28];

  v29 = String._bridgeToObjectiveC()();
  v30 = v85;

  [v26 setLoadingText:v29];

  v31 = String._bridgeToObjectiveC()();

  [v26 setContentType:v31];

  URL.init(string:)();
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v34 = *(v33 + 6);
  v36 = 0;
  if (v34(v30, 1, v32) != 1)
  {
    URL._bridgeToObjectiveC()(v35);
    v36 = v37;
    (*(v33 + 1))(v30, v32);
  }

  [v26 setUrl:v36];

  v38 = String._bridgeToObjectiveC()();
  [v26 setUtsId:v38];

  [v26 setResultIndex:v89];
  v39 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v39 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = v84;
    URL.init(string:)();
    if (v34(v40, 1, v32) == 1)
    {
      v42 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v41);
      v42 = v43;
      (*(v33 + 1))(v40, v32);
    }

    [v26 setUtsSearchUrl:v42];
  }

  v91 = (v33 + 48);
  v84 = v33;
  if (v108)
  {
    [v26 setImage:?];
  }

  v44 = [objc_allocWithZone(SAUIAddViews) init];
  v45 = v101;
  UUID.init()();
  UUID.uuidString.getter();
  v99(v45, v103);
  v46 = String._bridgeToObjectiveC()();

  [v44 setAceId:v46];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v47 = swift_allocObject();
  v85 = xmmword_B9BD0;
  *(v47 + 16) = xmmword_B9BD0;
  *(v47 + 32) = v26;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  v89 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 setViews:isa];

  v49 = specialized static VideoSnippetUtils.makeProfileSwitch(switchProfileBuilderParams:)(v98);
  v50 = v100;
  v98 = v87(v100, a9);
  v52 = v51;
  v97 = v86(v50, a9);
  v54 = v53;
  v87 = a9[7](v50, a9);
  v88 = v55;
  v90 = a9[6](v50, a9);
  v100 = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = v85;
  *(v57 + 32) = v44;
  v110 = v57;
  v92 = v49;
  v93 = v34;
  if (v49)
  {
    v58 = v44;
    v59 = v49;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v60 = v44;
  }

  v61 = [objc_allocWithZone(SAVCSContentButton) init];
  v62 = v101;
  UUID.init()();
  UUID.uuidString.getter();
  v99(v62, v103);
  v63 = String._bridgeToObjectiveC()();

  [v61 setAceId:v63];

  v64 = v61;
  v65 = String._bridgeToObjectiveC()();
  [v64 setText:v65];

  v66 = String._bridgeToObjectiveC()();
  [v64 setSecondaryText:v66];

  [v64 setImage:v108];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v64 setCommands:v67];

  v68 = String._bridgeToObjectiveC()();
  [v64 setContentType:v68];

  v69 = String._bridgeToObjectiveC()();

  [v64 setCanonicalId:v69];

  v70 = v96;
  URL.init(string:)();

  if (v93(v70, 1, v32) == 1)
  {
    v72 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v71);
    v72 = v73;
    v84[1](v70, v32);
  }

  v74 = v88;
  [v64 setUrl:v72];

  v75 = specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(v90, v100, v87, v74);
  [v64 setContentRating:v75];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Logger.videoSnippet);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v79 = 136315394;
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v54, &v109);

    *(v79 + 4) = v80;
    *(v79 + 12) = 2080;
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v52, &v109);

    *(v79 + 14) = v81;
    _os_log_impl(&dword_0, v77, v78, "Built content button for %s “%s”", v79, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v64;
}

id closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = static VideoSnippetUtils.makeImage<A>(for:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  *a4 = result;
  return result;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for UUID();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for URL();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v16 = a2;
  v61 = a2(v13);
  v62 = v17;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.trimmingCharacters(in:)();
  v20 = v19;
  (*(v12 + 8))(v15, v11);

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.videoSnippet);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Cover art image URL is empty";
    goto LABEL_13;
  }

  v61 = a2(v21);
  v62 = v23;
  v59 = 8222587;
  v60 = 0xE300000000000000;
  v57 = 3223863;
  v58 = 0xE300000000000000;
  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v26 = v25;

  v61 = v24;
  v62 = v26;
  v59 = 8218747;
  v60 = 0xE300000000000000;
  v57 = 3158068;
  v58 = 0xE300000000000000;
  v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v29 = v28;

  v61 = v27;
  v62 = v29;
  v59 = 8218235;
  v60 = 0xE300000000000000;
  v57 = 7496556;
  v58 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  v31 = v54;
  v30 = v55;
  if ((*(v54 + 48))(v8, 1, v55) == 1)
  {
    outlined destroy of Any?(v8, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.videoSnippet);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Cover art image URL string was not a valid URL";
LABEL_13:
    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);

LABEL_14:

    return 0;
  }

  v39 = (*(v31 + 32))(v53, v8, v30);
  v61 = v16(v39);
  v62 = v40;
  v59 = 8218235;
  v60 = 0xE300000000000000;
  v57 = 7496556;
  v58 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v41 = [objc_allocWithZone(SAUIImageResource) init];
  v42 = v50;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v51 + 8))(v42, v52);
  v43 = String._bridgeToObjectiveC()();

  [v41 setAceId:v43];

  [v41 setScaleFactor:1.0];
  v44 = v53;
  URL._bridgeToObjectiveC()(v45);
  v47 = v46;
  [v41 setResourceUrl:v46];

  [v41 setPointWidth:711.11];
  [v41 setPointHeight:400.0];
  [v41 setPixelWidth:711.11];
  [v41 setPixelHeight:400.0];
  v48 = String._bridgeToObjectiveC()();

  [v41 setUrlFormatString:v48];

  (*(v31 + 8))(v44, v30);
  return v41;
}

id static VideoSnippetUtils.makeImage<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for URL();
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 8);
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v54 = v17;
  v62 = v17(a2, a3);
  v63 = v18;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.trimmingCharacters(in:)();
  v21 = v20;
  (*(v14 + 8))(v16, v13);

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.videoSnippet);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Cover art image URL is empty";
    goto LABEL_13;
  }

  v62 = v54(v56, v57);
  v63 = v23;
  v60 = 8222587;
  v61 = 0xE300000000000000;
  v58 = 3223863;
  v59 = 0xE300000000000000;
  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v26 = v25;

  v62 = v24;
  v63 = v26;
  v60 = 8218747;
  v61 = 0xE300000000000000;
  v58 = 3158068;
  v59 = 0xE300000000000000;
  v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v29 = v28;

  v62 = v27;
  v63 = v29;
  v60 = 8218235;
  v61 = 0xE300000000000000;
  v58 = 7496556;
  v59 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  v31 = v52;
  v30 = v53;
  if ((*(v52 + 48))(v10, 1, v53) == 1)
  {
    outlined destroy of Any?(v10, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.videoSnippet);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Cover art image URL string was not a valid URL";
LABEL_13:
    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);

LABEL_14:

    return 0;
  }

  (*(v31 + 32))(v51, v10, v30);
  v62 = v54(v56, v57);
  v63 = v39;
  v60 = 8218235;
  v61 = 0xE300000000000000;
  v58 = 7496556;
  v59 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v40 = [objc_allocWithZone(SAUIImageResource) init];
  v41 = v48;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v49 + 8))(v41, v50);
  v42 = String._bridgeToObjectiveC()();

  [v40 setAceId:v42];

  [v40 setScaleFactor:1.0];
  v43 = v51;
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  [v40 setResourceUrl:v45];

  [v40 setPointWidth:711.11];
  [v40 setPointHeight:400.0];
  [v40 setPixelWidth:711.11];
  [v40 setPixelHeight:400.0];
  v47 = String._bridgeToObjectiveC()();

  [v40 setUrlFormatString:v47];

  (*(v31 + 8))(v43, v30);
  return v40;
}

id closure #2 in static VideoSnippetUtils.makeDynamicURLImageResource(for:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Searchfoundation_GraphicalFloat();
  __chkstk_darwin(v3);
  lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_GraphicalFloat and conformance Searchfoundation_GraphicalFloat, &type metadata accessor for Searchfoundation_GraphicalFloat, &protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  static Message.with(_:)();
  Searchfoundation_DynamicURLImageResource.pixelWidth.setter();
  static Message.with(_:)();
  Searchfoundation_DynamicURLImageResource.pixelHeight.setter();
  result = [a2 urlFormatString];
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Searchfoundation_DynamicURLImageResource.formatURL.setter();
    return Searchfoundation_DynamicURLImageResource.supportsResizing.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2)
  {
    if (a4)
    {
      v11 = [objc_allocWithZone(SASTTemplateContentRating) init];
      UUID.init()();
      UUID.uuidString.getter();
      (*(v7 + 8))(v9, v6);
      v12 = String._bridgeToObjectiveC()();

      [v11 setAceId:v12];

      v13 = String._bridgeToObjectiveC()();
      [v11 setValue:v13];

      v14 = String._bridgeToObjectiveC()();
      [v11 setSystem:v14];

      return v11;
    }
  }

  return result;
}

void specialized static VideoSnippetUtils.makeDisambiguationList(for:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6)
  {
    v7 = 0;
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject() - 8);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_26;
        }

        closure #1 in static VideoSnippetUtils.makeDisambiguationList(for:)(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, &v26);
        if (v26)
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_12;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v7 != v6);
LABEL_12:
    a1 = [objc_allocWithZone(SAUIDisambiguationList) init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v5, v2);
    v10 = String._bridgeToObjectiveC()();

    [a1 setAceId:v10];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIListItem, SAUIListItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setItems:isa];

    if (one-time initialization token for videoSnippet == -1)
    {
      goto LABEL_13;
    }

LABEL_27:
    swift_once();
LABEL_13:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.videoSnippet);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v14, v15))
    {

      v14 = v13;
LABEL_24:

      return;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = [v13 items];
    if (v17)
    {
      v18 = v17;
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      *(v16 + 4) = v20;

      _os_log_impl(&dword_0, v14, v15, "Generated disambiguation list for TV or movie objects with %ld items", v16, 0xCu);

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.videoSnippet);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "No TV or movie objects for disambiguation list", v24, 2u);
    }
  }
}

uint64_t specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v51 = a3;
  v50 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v13 = __chkstk_darwin(v44);
  v43[1] = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v43 - v16;
  __chkstk_darwin(v15);
  v19 = v43 - v18;
  v46 = a1;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.videoSnippet);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "No TV or movie payload in a TV or movie object", v25, 2u);
    }

LABEL_7:
    lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
    swift_allocError();
    swift_willThrow();
    return outlined destroy of Any?(v19, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v19, v17, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v27 = (*(v21 + 88))(v17, v20);
  if (v27 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v21 + 96))(v17, v20);
    (*(v7 + 32))(v9, v17, v6);
    v54 = v6;
    v55 = &protocol witness table for Apple_Parsec_Siri_V2alpha_TvObject;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
    closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(v53, v50, v51, &v56);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (v27 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v21 + 8))(v17, v20);
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.videoSnippet);
      v32 = v47;
      v33 = v48;
      v34 = v49;
      (*(v48 + 16))(v47, v46, v49);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53[0] = v52;
        *v37 = 136315138;
        Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
        v38 = String.init<A>(describing:)();
        v39 = v32;
        v41 = v40;
        (*(v33 + 8))(v39, v34);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, v53);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_0, v35, v36, "Unknown or future payload in a TV or movie object: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
      }

      else
      {

        (*(v33 + 8))(v32, v34);
      }

      goto LABEL_7;
    }

    (*(v21 + 96))(v17, v20);
    v29 = v45;
    (*(v45 + 32))(v12, v17, v10);
    v54 = v10;
    v55 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MovieObject;
    v30 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(v29 + 16))(v30, v12, v10);
    closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(v53, v50, v51, &v56);
    (*(v29 + 8))(v12, v10);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  outlined destroy of Any?(v19, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v56;
}

void *specialized static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMd, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMR);
  __chkstk_darwin(v5);
  v7 = (&v18 - v6);
  result = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v18 = result;
      v11 = v10;
      if (v10 >= v9)
      {
        break;
      }

      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
      v12 = *(result - 1);
      v10 = (v10 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

      v13 = *(v12 + 16);
      v14 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
      v15 = (v7 + *(v5 + 48));
      *v7 = v11;
      v16 = v13(v15, v14, result);
      __chkstk_darwin(v16);
      v17 = v20;
      *(&v18 - 6) = v19;
      *(&v18 - 5) = v17;
      *(&v18 - 4) = v15;
      *(&v18 - 3) = v11;
      *(&v18 - 2) = v21;
      specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(partial apply for closure #1 in closure #1 in static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:), (&v18 - 8));
      outlined destroy of Any?(v7, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMd, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMR);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v22;
      if (v10 == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

id specialized static VideoSnippetUtils.makeContentCabinet(for:utsURL:switchProfileBuilderParams:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = a2;
  v44 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = specialized static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)(a1, a2, a3, a4);
  v15 = [objc_allocWithZone(SAVCSContentCabinet) init];
  UUID.init()();
  UUID.uuidString.getter();
  v16 = *(v12 + 8);
  v16(v14, v11);
  v17 = String._bridgeToObjectiveC()();

  [v15 setAceId:v17];

  v18 = [objc_allocWithZone(SAVCSContentShelf) init];
  UUID.init()();
  UUID.uuidString.getter();
  v16(v14, v11);
  v19 = v42;
  v20 = String._bridgeToObjectiveC()();

  [v18 setAceId:v20];

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAVCSContentButton, SAVCSContentButton_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v18 setContentHead:isa];

  URL.init(string:)();
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v25 = 0;
  if ((*(v23 + 48))(v10, 1, v22) != 1)
  {
    URL._bridgeToObjectiveC()(v24);
    v25 = v26;
    (*(v23 + 8))(v10, v22);
  }

  [v18 setUrl:v25];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_B9BD0;
  *(v27 + 32) = v18;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAVCSContentShelf, SAVCSContentShelf_ptr);
  v28 = v18;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setShelves:v29];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.videoSnippet);
  v31 = v15;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v32, v33))
  {

    swift_bridgeObjectRelease_n();
    return v31;
  }

  v34 = swift_slowAlloc();
  *v34 = 134218240;
  v35 = [v31 shelves];
  if (v35)
  {
    v36 = v35;
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    }

    *(v34 + 4) = v38;

    *(v34 + 12) = 2048;
    if (v19 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    }

    *(v34 + 14) = v39;

    _os_log_impl(&dword_0, v32, v33, "Built content cabinet (%ld shelves, %ld buttons) for TV or movie objects", v34, 0x16u);

    return v31;
  }

  __break(1u);
  return result;
}

void *specialized static VideoSnippetUtils.makeResultSnippets(for:switchProfileBuilderParams:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
  v8 = v7;
  if (*(v7 + 16))
  {
    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v10 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.relativeUtsSearchURL.getter();
    v11 = v9;
    if (*(v8 + 16) == 1)
    {

      v22 = specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(v6, v10, v11);
      swift_bridgeObjectRelease_n();
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.videoSnippet);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "Built detail page for single TV or movie object", v26, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_B9BD0;
      *(v21 + 32) = v22;
LABEL_20:
      (*(v4 + 8))(v6, v3);
      return v21;
    }

    v16 = specialized static VideoSnippetUtils.makeContentCabinet(for:utsURL:switchProfileBuilderParams:)(v8, v10, v9, a2);

    if (v16)
    {
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.videoSnippet);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Built content cabinet for multiple TV or movie objects", v20, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_B9BD0;
      *(v21 + 32) = v16;
      goto LABEL_20;
    }

    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.videoSnippet);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Could not construct content cabinet for TV or movie objects", v31, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {

    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.videoSnippet);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "No TV or movie objects in component; cannot build result snippets", v15, 2u);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *specialized static VideoSnippetUtils.makeVideoSnippets(for:switchProfileBuilderParams:)(uint64_t a1, void *a2)
{
  v69 = a2;
  v73 = a1;
  v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase();
  v72 = *(v74 - 8);
  v2 = __chkstk_darwin(v74);
  v71 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v68 = &v63[-v4];
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v70 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v63[-v9];
  v11 = type metadata accessor for DeviceClass();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v63[-v17];
  __chkstk_darwin(v16);
  v20 = &v63[-v19];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.videoSnippet);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Not generating video snippets for video object component; cannot determine device class", v24, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  (*(v12 + 32))(v20, v10, v11);
  (*(v12 + 104))(v18, enum case for DeviceClass.appleTV(_:), v11);
  v25 = static DeviceClass.== infix(_:_:)();
  v66 = *(v12 + 8);
  v67 = v12 + 8;
  v66(v18, v11);
  v26 = v20;
  if ((v25 & 1) == 0)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.videoSnippet);
    v38 = *(v12 + 16);
    v38(v15, v26, v11);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v39, v40))
    {

      v59 = v15;
      v48 = v66;
      v66(v59, v11);
      goto LABEL_23;
    }

    v41 = v26;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75 = v43;
    *v42 = 136315138;
    v38(v18, v15, v11);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = v15;
    v48 = v66;
    v66(v47, v11);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v75);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_0, v39, v40, "Not generating video snippets for video object component on device class: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);

    v26 = v41;
    goto LABEL_16;
  }

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.videoSnippet);
  v28 = v70;
  v29 = v73;
  (*(v70 + 16))(v7, v73, v5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v75 = v65;
    *v32 = 136315138;
    v64 = v31;
    Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter();
    v33 = String.init<A>(describing:)();
    v35 = v34;
    (*(v28 + 8))(v7, v5);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v75);
    v26 = v20;

    *(v32 + 4) = v36;
    _os_log_impl(&dword_0, v30, v64, "Building video snippets for use case: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);

    v29 = v73;
  }

  else
  {

    (*(v28 + 8))(v7, v5);
  }

  v50 = v71;
  Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter();
  v51 = v72;
  v52 = v74;
  v53 = (*(v72 + 88))(v50, v74);
  v48 = v66;
  if (v53 == enum case for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.disambiguate(_:))
  {
    v54 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
    specialized static VideoSnippetUtils.makeDisambiguationList(for:)(v54);
    v56 = v55;

    if (v56)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_B9BD0;
      *(v57 + 32) = v56;
      v48(v26, v11);
      return v57;
    }

    v39 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v61))
    {
      goto LABEL_17;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_0, v39, v61, "Could not build disambiguation list for TV or movie objects", v62, 2u);
LABEL_16:

LABEL_17:

LABEL_23:
    v48(v26, v11);
    return _swiftEmptyArrayStorage;
  }

  v60 = specialized static VideoSnippetUtils.makeResultSnippets(for:switchProfileBuilderParams:)(v29, v69);
  v48(v26, v11);
  (*(v51 + 8))(v50, v52);
  return v60;
}

unint64_t lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError()
{
  result = lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError;
  if (!lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError;
  if (!lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id specialized static VideoSnippetUtils.makeProfileSwitch(switchProfileBuilderParams:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v8, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = [objc_allocWithZone(SAProfileSwitch) init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v5, v2);
    v15 = String._bridgeToObjectiveC()();

    [v14 setAceId:v15];

    Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
    v16 = String._bridgeToObjectiveC()();

    [v14 setSharedUserId:v16];

    (*(v10 + 8))(v12, v9);
    return v14;
  }
}

uint64_t PommesFallbackFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PommesFallbackFlow();
  lazy protocol witness table accessor for type PommesFallbackFlow and conformance PommesFallbackFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PommesFallbackFlow.execute()(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FlowUnhandledReason();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(PommesFallbackFlow.execute(), 0, 0);
}

uint64_t PommesFallbackFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Returning .unhandled(reason: .needsInfoDomainFallback) for PommesFallbackFlow", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v7);
  static ExecuteResponse.unhandled(reason:)();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

unint64_t lazy protocol witness table accessor for type PommesFallbackFlow and conformance PommesFallbackFlow()
{
  result = lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow;
  if (!lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow)
  {
    type metadata accessor for PommesFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow);
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance PommesFallbackFlow(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t static SuggestionsIntentDonators.union(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for UnionSuggestionsIntentDonator;
  a2[4] = &protocol witness table for UnionSuggestionsIntentDonator;
  *a2 = a1;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

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
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        outlined copy of Data._Representation(v23, *(&v23 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
        swift_dynamicCast();
        outlined init with take of Decodable & Encodable & Sendable(v24, v26);
        outlined init with take of Decodable & Encodable & Sendable(v26, v27);
        outlined init with take of Decodable & Encodable & Sendable(v27, &v25);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 48 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = outlined init with take of Decodable & Encodable & Sendable(&v25, v11);
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
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = outlined init with take of Decodable & Encodable & Sendable(&v25, (v2[7] + 48 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
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

uint64_t UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v8 = type metadata accessor for SiriSuggestions.Intent();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:), 0, 0);
}

uint64_t UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  v0[27] = v2;
  if (v2)
  {
    v0[28] = 0;
    outlined init with copy of OutputPublisherAsync(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v14 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v6 = v0[21];
    v7 = v0[22];
    v8 = v0[19];
    v9 = v0[20];
    v10 = v0[18];
    v11 = v0[17];

    return v14(v11, v10, v8, v9, v6, v7, v3, v4);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  else
  {
    v2 = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v2 == v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[28];
    v0[28] = v5 + 1;
    outlined init with copy of OutputPublisherAsync(v0[23] + 40 * v5 + 72, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v15 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    v0[29] = v8;
    *v8 = v0;
    v8[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[18];
    v14 = v0[17];

    return v15(v14, v13, v11, v12, v9, v10, v6, v7);
  }
}

{
  v39 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  (*(v2 + 16))(v1, v4, v3);
  outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v12 = 136315650;
    lazy protocol witness table accessor for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v38);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin24SuggestionsIntentDonator_pMd, &_s21InformationFlowPlugin24SuggestionsIntentDonator_pMR);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v38);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v36 = v21;
    _os_log_impl(&dword_0, v6, v7, "UnionSuggestionsIntentDonator: Unable donate intent %s to donator: %s due to unhandled error: %@", v12, 0x20u);
    outlined destroy of Any?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[27];
  v23 = v0[28] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v23 == v22)
  {

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[28];
    v0[28] = v26 + 1;
    outlined init with copy of OutputPublisherAsync(v0[23] + 40 * v26 + 72, (v0 + 2));
    v27 = v0[5];
    v28 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
    v37 = (*(v28 + 8) + **(v28 + 8));
    v29 = swift_task_alloc();
    v0[29] = v29;
    *v29 = v0;
    v29[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v30 = v0[21];
    v31 = v0[22];
    v32 = v0[19];
    v33 = v0[20];
    v34 = v0[18];
    v35 = v0[17];

    return v37(v35, v34, v32, v33, v30, v31, v27, v28);
  }
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance UnionSuggestionsIntentDonator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a2;
  v7[9] = a5;
  v7[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  type metadata accessor for Date();
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for PerformanceUtil.Ticket();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:), 0, 0);
}

uint64_t CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1)
{
  v29 = v1;
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[12];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  UUID.init(uuidString:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of Any?(v1[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.information);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v1[18];
    v9 = v1[19];
    v11 = v1[17];
    if (v8)
    {
      v13 = v1[7];
      v12 = v1[8];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v28);
      _os_log_impl(&dword_0, v6, v7, "CoreSuggestionsIntentDonator: Unable to parse %s to UUID", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    (*(v10 + 8))(v9, v11);

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = v1[11];
    v19 = v1[9];
    v20 = (*(v1[14] + 32))(v1[15], v1[12], v1[13]);
    (*(v18 + 16))(v20);
    v21 = v1[5];
    v22 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v21);
    v23 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);
    v1[20] = v23;
    v24 = swift_task_alloc();
    v1[21] = v24;
    v25 = *(v22 + 8);
    *v24 = v1;
    v24[1] = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v26 = v1[15];
    v27 = v1[10];

    return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v26, v27, v23, 1, v21, v25);
  }
}

uint64_t CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  else
  {

    v2 = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[14];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance CoreSuggestionsIntentDonator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 96) + **(**v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v16(a1, a2, a3, a4, a5, a6);
}

unint64_t lazy protocol witness table accessor for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent()
{
  result = lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent;
  if (!lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent)
  {
    type metadata accessor for SiriSuggestions.Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent);
  }

  return result;
}

uint64_t ContinuationResultSetFlowProvider.init(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:informationViewFactory:patternFlowProvider:patternExecutor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12)
{
  a9[28] = a1;
  a9[29] = a2;
  *a9 = specialized GenericResultSetParamBuilder.init(parameters:)(a3);
  a9[1] = v18;
  a9[2] = v19;
  a9[3] = v20;
  a9[27] = a4;
  a9[14] = a5;
  a9[15] = a6;
  outlined init with copy of OutputPublisherAsync(a7, (a9 + 4));
  outlined init with copy of OutputPublisherAsync(a8, (a9 + 9));
  static PatternFlowProvidingHelper.unwrap(_:with:)(a11, a7, a9 + 16);
  outlined destroy of Any?(a11, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(a8);
  __swift_destroy_boxed_opaque_existential_0Tm(a7);
  a9[21] = a10;

  return outlined init with take of SiriSuggestionsBroker(a12, (a9 + 22));
}

uint64_t ContinuationResultSetFlowProvider.patternId.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.outputManifest.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  NLContextUpdate.init()();
  outlined copy of Data?(*(a2 + 112), *(a2 + 120));
  NLContextUpdate.pegasusConversationContext.setter();
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ContinuationResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  *(v0 + 16) = swift_task_alloc();
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.information);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  outlined init with copy of Logger?(v1, v2);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of Any?(*(v0 + 16), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = StaticString.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 70;
      *(v8 + 22) = 2080;
      *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000093, 0x80000000000BFE70, &v13);
      _os_log_impl(&dword_0, v6, v7, "FatalError at %s:%lu - %s", v8, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(*(v0 + 16), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t ContinuationResultSetFlowProvider.makeSingleItemFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  *(v0 + 16) = swift_task_alloc();
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeSingleItemFlow(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.information);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  outlined init with copy of Logger?(v1, v2);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of Any?(*(v0 + 16), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = StaticString.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 74;
      *(v8 + 22) = 2080;
      *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008FLL, 0x80000000000BFFB0, &v13);
      _os_log_impl(&dword_0, v6, v7, "FatalError at %s:%lu - %s", v8, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(*(v0 + 16), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t ContinuationResultSetFlowProvider.makeAllResultsFlow()()
{
  v1[2] = v0;
  type metadata accessor for DialogPhase();
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for OutputGenerationManifest();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for WindowedPaginationParameters();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  type metadata accessor for Date();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for PerformanceUtil.Ticket();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeAllResultsFlow", v4, 2u);
  }

  v5 = v0[2];

  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v6 = *(v5 + 24);
  WindowedPaginationParameters.init(windowSize:_:)();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  v8 = v0[9];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v6, v8);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v11 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v9 = v0[16];
  v10 = v0[4];
  v5 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  __swift_project_boxed_opaque_existential_1((v5 + 128), *(v5 + 152));
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v5;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v6 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v4 + 8))(v3, v10);
  (*(v2 + 8))(v1, v11);

  v7 = v0[1];

  return v7(v6);
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t ContinuationResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v4[16] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Date();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
}

void ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v33 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.executePatternForWindow", v4, 2u);
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v6 = WindowedPaginationParameters.asCATParameters()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v31);

  v8 = v31[0];
  v9 = *(v0 + 72);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v13;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v12, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v14, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v30 = v31[0];
  v15 = specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(*(v0 + 56));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  v31[0] = v15;
  specialized Dictionary._Variant.updateValue(_:forKey:)(v31, v10, v11, (v0 + 16));
  outlined destroy of Any?(v0 + 16, &_sypSgMd, &_sypSgMR);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v8;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v30, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v16, v31);

  v17 = v31[0];
  *(v0 + 104) = v31[0];

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136315138;
    v22 = Dictionary.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "ContinuationResultSetFlowProvider.executePatternForWindow parameters: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  v25 = *(v0 + 72);
  type metadata accessor for PerformanceUtil();
  *(v0 + 112) = static PerformanceUtil.shared.getter();
  v26 = swift_task_alloc();
  *(v0 + 120) = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v17;
  Date.init()();
  v29 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v27 = swift_task_alloc();
  *(v0 + 128) = v27;
  v28 = type metadata accessor for PatternExecutionResult();
  *v27 = v0;
  v27[1] = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v40 = v26;
  v41 = v28;
  v39 = &async function pointer to partial apply for closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v38 = 2;
  v37 = 58;
  v35 = 146;
  v36 = "executePatternForWindow(windowItems:paginationParameters:)";

  __asm { BR              X8 }
}

uint64_t ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v3 = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  }

  else
  {

    v3 = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay011InformationC6Plugin20GenericResultSetItemVGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay011InformationC6Plugin20GenericResultSetItemVGGMR);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for PromptType();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  v27 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeWindowingConfiguration", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];

  static PromptType.continuation.getter();
  lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type PromptType and conformance PromptType, &type metadata accessor for PromptType, &protocol conformance descriptor for PromptType);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v7 + 8);
  v9(v5, v6);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21InformationFlowPlugin20GenericResultSetItemVGMd, &_sSay21InformationFlowPlugin20GenericResultSetItemVGMR);
    lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
    static PromptFlowProviderType.continuation<A>(_:)();
    WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
    v10 = 0;
  }

  else
  {
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[8];
    v15 = v0[6];
    if (v13)
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136315138;
      lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type PromptType and conformance PromptType, &type metadata accessor for PromptType, &protocol conformance descriptor for PromptType);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v9(v14, v15);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v11, v12, "Unsupported promptType '%s'. Will not support windowing.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else
    {

      v9(v14, v15);
    }

    v10 = 1;
  }

  v21 = v0[2];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay011InformationC6Plugin20GenericResultSetItemVGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay011InformationC6Plugin20GenericResultSetItemVGGMR);
  (*(*(v22 - 8) + 56))(v21, v10, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for DialogPhase();
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeFinalWindowFlow", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
  v6 = v0[3];
  v7 = v0[2];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v6, v7);
}

{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v8 = v0[6];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1((v4 + 128), *(v4 + 152));
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v5 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v8);

  v6 = v0[1];

  return v6(v5);
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
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
    *(v4 + 80) = a1;

    return _swift_task_switch(ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
  }
}