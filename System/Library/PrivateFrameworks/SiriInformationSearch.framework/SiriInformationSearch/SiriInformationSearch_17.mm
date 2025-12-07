uint64_t RRCandidate.equivalentClientEntity()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438], MEMORY[0x277D39430]);
  return static Message.with(_:)();
}

uint64_t PegasusProxy.addResolvedEntities(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v90 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v91 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v70 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v87 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v70 - v14;
  MEMORY[0x28223BE20](v13);
  v79 = v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v18 = *(v17 - 8);
  v88 = v17;
  v89 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v70 - v19;
  v21 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v21);
  v71 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.pommes);

  v83 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v76 = v5;
  v81 = v20;
  v70[1] = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v92 = v15;
    v30 = v29;
    v94[0] = v29;
    *v28 = 134218242;
    *(v28 + 4) = *(a1 + 16);

    *(v28 + 12) = 2080;
    v31 = MEMORY[0x223DDF850](a1, v88);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v94);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_2232BB000, v25, v26, "Adding %ld resolvedSpanEntities to request: %s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v34 = v30;
    v20 = v81;
    v15 = v92;
    MEMORY[0x223DE0F80](v34, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {
  }

  v35 = v71;
  Date.init()();
  v36 = &v35[v21[5]];
  *v36 = "SiriInformationSearch/PegasusProxy.swift";
  *(v36 + 1) = 40;
  v36[16] = 2;
  *&v35[v21[6]] = 1128;
  v37 = &v35[v21[7]];
  *v37 = "addResolvedEntities(_:to:)";
  *(v37 + 1) = 26;
  v37[16] = 2;
  v38 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000029, 0x80000002234E0F80);
  v40 = &v35[v21[8]];
  *v40 = v38;
  v40[1] = v41;
  v42 = *(a1 + 16);
  if (v42)
  {
    v92 = 0;
    v43 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v72 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore;
    v44 = a1 + v43;
    v75 = (v90 + 1);
    v45 = *(v89 + 72);
    v85 = (v80 + 56);
    v86 = v45;
    v89 = v80 + 32;
    v84 = (v80 + 48);
    v90 = MEMORY[0x277D84F90];
    *&v39 = 136315138;
    v77 = v39;
    v78 = v9;
    do
    {
      outlined init with copy of MediaUserStateCenter?(v44, v20, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      RREntity.usoEntity.getter();
      static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

      v46 = v92;
      static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
      if (v46)
      {

        v92 = 0;
        v49 = v46;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v82 = v42;
          v53 = v52;
          v54 = swift_slowAlloc();
          v93 = v46;
          v94[0] = v54;
          *v53 = v77;
          v55 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v56 = String.init<A>(describing:)();
          v58 = v10;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v94);

          *(v53 + 4) = v59;
          v10 = v58;
          _os_log_impl(&dword_2232BB000, v50, v51, "Error converting entity: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          v60 = v54;
          v9 = v78;
          MEMORY[0x223DE0F80](v60, -1, -1);
          v61 = v53;
          v20 = v81;
          v42 = v82;
          MEMORY[0x223DE0F80](v61, -1, -1);
        }

        else
        {
        }

        v67 = 1;
      }

      else
      {
        v47 = v42;

        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
        v48 = v76;
        Message.serializedData(partial:)();
        (*v75)(v91, v48);
        Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)((v74 + v72), v73, v15);
        v92 = 0;
        Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
        (*v89)(v9, v15, v10);
        v67 = 0;
        v20 = v81;
        v42 = v47;
      }

      (*v85)(v9, v67, 1, v10);
      outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      if ((*v84)(v9, 1, v10) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
      }

      else
      {
        v62 = *v89;
        v63 = v79;
        (*v89)(v79, v9, v10);
        v62(v87, v63, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
        }

        v65 = v90[2];
        v64 = v90[3];
        if (v65 >= v64 >> 1)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v90);
        }

        v66 = v90;
        v90[2] = v65 + 1;
        v62(&v66[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v65], v87, v10);
      }

      v44 += v86;
      --v42;
    }

    while (v42);
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v68 = v71;
  (*(*static PerformanceUtil.shared + 184))(v71, 0);
  (*(*v74 + 88))(v90, v73);

  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v68, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a2;
  v59 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v60 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v47 - v11;
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ClientEntity.init()();
  Siri_Nlu_External_Span.score.getter();
  v21 = a3;
  Apple_Parsec_Siri_Context_ClientEntity.score.setter();
  if (Siri_Nlu_External_Span.hasLabel.getter())
  {
    Siri_Nlu_External_Span.label.getter();
    Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.setter();
  }

  Date.init()();
  v22 = &v20[v18[5]];
  *v22 = "SiriInformationSearch/PegasusProxy.swift";
  *(v22 + 1) = 40;
  v22[16] = 2;
  *&v20[v18[6]] = 1297;
  v23 = &v20[v18[7]];
  *v23 = "equivalentClientEntity(contactStore:request:)";
  *(v23 + 1) = 45;
  v23[16] = 2;
  v24 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000012, 0x80000002234E0D40);
  v25 = &v20[v18[8]];
  *v25 = v24;
  v25[1] = v26;
  Siri_Nlu_External_Span.usoGraph.getter();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
  v27 = v12;
  v28 = v65;
  Message.serializedData(partial:)();
  if (v28)
  {
    (*(v13 + 8))(v17, v12);
    v29 = v21;
LABEL_5:
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v20, type metadata accessor for PerformanceUtil.Ticket);
    v30 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    return (*(*(v30 - 8) + 8))(v29, v30);
  }

  v65 = v3;
  v32 = *(v13 + 8);
  v49 = v13 + 8;
  v50 = 0;
  v48 = v32;
  v32(v17, v12);
  Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v20, 0);
  v33 = Siri_Nlu_External_Span.matcherNames.getter();
  v34 = v64;
  if (!*(v33 + 16))
  {

    goto LABEL_12;
  }

  v35 = v60;
  v36 = *(v60 + 16);
  v37 = v53;
  v36(v53, v33 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v64);

  v38 = v62;
  (*(v35 + 32))(v62, v37, v34);
  v39 = v61;
  v36(v61, v38, v34);
  v29 = v21;
  v40 = (*(v35 + 88))(v39, v34);
  if (v40 == *MEMORY[0x277D5DA28])
  {
    goto LABEL_10;
  }

  if (v40 != *MEMORY[0x277D5DA08])
  {
    if (v40 == *MEMORY[0x277D5DA20] || v40 == *MEMORY[0x277D5DA10])
    {
      (*(v54 + 104))(v55, *MEMORY[0x277D39420], v56);
      Apple_Parsec_Siri_Context_ClientEntity.source.setter();
      (*(v57 + 104))(v58, *MEMORY[0x277D39408], v59);
      Apple_Parsec_Siri_Context_ClientEntity.type.setter();
      (*(v35 + 8))(v38, v34);
      goto LABEL_12;
    }

    if (v40 != *MEMORY[0x277D5DA18])
    {
      (*(v54 + 104))(v55, *MEMORY[0x277D39428], v56);
      Apple_Parsec_Siri_Context_ClientEntity.source.setter();
      (*(v57 + 104))(v58, *MEMORY[0x277D39400], v59);
      Apple_Parsec_Siri_Context_ClientEntity.type.setter();
      v46 = *(v35 + 8);
      v46(v38, v34);
      v46(v61, v34);
      goto LABEL_12;
    }

LABEL_10:
    (*(v54 + 104))(v55, *MEMORY[0x277D39428], v56);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v57 + 104))(v58, *MEMORY[0x277D39400], v59);
    Apple_Parsec_Siri_Context_ClientEntity.type.setter();
    (*(v35 + 8))(v38, v34);
    goto LABEL_12;
  }

  (*(v54 + 104))(v55, *MEMORY[0x277D39410], v56);
  Apple_Parsec_Siri_Context_ClientEntity.source.setter();
  (*(v57 + 104))(v58, *MEMORY[0x277D393F8], v59);
  Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  v45 = v50;
  Siri_Nlu_External_Span.contactFlags(contactStore:request:)(v51);
  if (v45)
  {
    (*(v35 + 8))(v62, v34);
    goto LABEL_5;
  }

  Apple_Parsec_Siri_Context_ClientEntity.hasAddress_p.setter();
  Apple_Parsec_Siri_Context_ClientEntity.hasPhoneNumber_p.setter();
  (*(v35 + 8))(v62, v34);
LABEL_12:
  v41 = v63;
  v42 = v65;
  Siri_Nlu_External_Span.usoGraph.getter();
  v43 = Siri_Nlu_External_UsoGraph.alignments.getter();
  v44 = v48(v41, v27);
  MEMORY[0x28223BE20](v44);
  *(&v47 - 2) = v42;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(partial apply for closure #1 in Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:), (&v47 - 4), v43, MEMORY[0x277D399F8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5DD20]);

  Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v20, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v46 = a4;
  v6 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_Span();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v61 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v66 = (&v46 - v17);
  v18 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v49 = a2;
    v21 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v21, static Signposter.pommes);
    v47 = v20;
    OSSignposter.begin(name:context:)("proxy.userVocabSpans", 20, 2u, 0, v20);
    a2 = a1;
    v22 = Siri_Nlu_External_Span.matcherNames.getter();
    v62 = *(v22 + 16);
    if (v62)
    {
      v23 = 0;
      v58 = v67 + 16;
      v57 = *MEMORY[0x277D5DA08];
      v55 = (v7 + 8);
      v56 = (v7 + 104);
      v54 = (v67 + 32);
      v51 = (v67 + 8);
      v65 = MEMORY[0x277D84F90];
      a1 = &lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName;
      v59 = v22;
      while (v23 < *(v22 + 16))
      {
        a2 = v66;
        v64 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v63 = *(v67 + 72);
        (*(v67 + 16))(v66, v22 + v64 + v63 * v23++, v68);
        v20 = Siri_Nlu_External_Span.matcherNames.getter();
        (*v56)(v9, v57, v6);
        v24 = 0;
        v25 = *(v20 + 16);
        do
        {
          if (v25 == v24)
          {

            (*v55)(v9, v6);
            (*v51)(v66, v68);
            goto LABEL_5;
          }

          v26 = v24 + 1;
          _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA40]);
          a2 = v6;
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = v26;
        }

        while ((v27 & 1) == 0);

        (*v55)(v9, v6);
        v28 = *v54;
        (*v54)(v60, v66, v68);
        a2 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1);
          a2 = v69;
        }

        v31 = a2[2];
        v30 = a2[3];
        v20 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          a2 = v69;
        }

        a2[2] = v20;
        v65 = a2;
        v28(a2 + v64 + v31 * v63, v60, v68);
LABEL_5:
        v22 = v59;
        if (v23 == v62)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v65 = MEMORY[0x277D84F90];
LABEL_16:

    v7 = v65;
    v66 = v65[2];
    if (!v66)
    {
      break;
    }

    v20 = 0;
    v9 = v68;
    v63 = (v67 + 8);
    v64 = v67 + 16;
    v33 = (v67 + 32);
    a1 = MEMORY[0x277D84F90];
    v6 = v52;
    a2 = v53;
    while (v20 < *(v7 + 16))
    {
      v34 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v35 = *(v67 + 72);
      (*(v67 + 16))(v6, v7 + v34 + v35 * v20, v9);
      if (PegasusProxy.shouldAddUserVocabSpan(_:)(v6))
      {
        v36 = *v33;
        (*v33)(v61, v6, v9);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v69 = a1;
        if ((v37 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1);
          a1 = v69;
        }

        v39 = a1[2];
        v38 = a1[3];
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          a1 = v69;
        }

        a1[2] = v39 + 1;
        v9 = v68;
        v32 = (v36)(a1 + v34 + v39 * v35, v61, v68);
        v6 = v52;
        a2 = v53;
        v7 = v65;
      }

      else
      {
        v32 = (*v63)(v6, v9);
      }

      if (v66 == ++v20)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
  a2 = v53;
LABEL_28:
  MEMORY[0x28223BE20](v32);
  v40 = v48;
  v41 = v49;
  *(&v46 - 2) = a2;
  *(&v46 - 1) = v41;
  v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriNLUTypes0D18_Nlu_External_SpanVG_10PegasusAPI013Apple_Parsec_D21_Context_ClientEntityVsAE_pTg5(partial apply for closure #3 in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:), (&v46 - 4), a1);
  if (v40)
  {
  }

  else
  {
    v43 = v42;

    (*(*a2 + 88))(v43, v41);
  }

  v44 = v47;
  $defer #1 () in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)(v50, v7, v47);

  return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v44, type metadata accessor for SignpostToken);
}

uint64_t $defer #1 () in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = type metadata accessor for Siri_Nlu_External_Span();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24[1] = a1;
    v25 = a3;
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v30;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = *(v11 + 56);
    v28 = v12;
    v26 = (v11 - 8);
    do
    {
      v14 = v29;
      v15 = v11;
      v28(v8, v13, v29);
      v16 = Siri_Nlu_External_Span.label.getter();
      v18 = v17;
      (*v26)(v8, v14);
      v30 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v27;
      --v9;
      v11 = v15;
    }

    while (v9);
    a3 = v25;
  }

  specialized Array.append<A>(contentsOf:)(v10);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v22, static Signposter.pommes);
  return OSSignposter.end(token:message:)(a3, 0, 0xE000000000000000);
}

uint64_t PegasusProxy.shouldAddUserVocabSpan(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v59 = a1;
  v21 = Siri_Nlu_External_Span.matcherNames.getter();
  if (*(v21 + 16))
  {
    (*(v7 + 16))(v20, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v22 = *(v7 + 56);
    v22(v20, 0, 1, v6);
  }

  else
  {

    v22 = *(v7 + 56);
    v22(v20, 1, 1, v6);
  }

  (*(v7 + 104))(v18, *MEMORY[0x277D5DA08], v6);
  v22(v18, 0, 1, v6);
  v23 = *(v9 + 48);
  outlined init with copy of MediaUserStateCenter?(v20, v11, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined init with copy of MediaUserStateCenter?(v18, &v11[v23], &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v24 = *(v7 + 48);
  if (v24(v11, 1, v6) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    if (v24(&v11[v23], 1, v6) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
      goto LABEL_12;
    }

LABEL_9:
    v25 = &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd;
    v26 = &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR;
    v27 = v11;
LABEL_10:
    outlined destroy of MediaUserStateCenter?(v27, v25, v26);
LABEL_25:
    v35 = 1;
    return v35 & 1;
  }

  outlined init with copy of MediaUserStateCenter?(v11, v15, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if (v24(&v11[v23], 1, v6) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    (*(v7 + 8))(v15, v6);
    goto LABEL_9;
  }

  v28 = v58;
  (*(v7 + 32))(v58, &v11[v23], v6);
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA40]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v7 + 8);
  v30(v28, v6);
  outlined destroy of MediaUserStateCenter?(v18, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v30(v15, v6);
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((Siri_Nlu_External_Span.hasLabel.getter() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (one-time initialization token for allowedClientEntityLabels != -1)
  {
    swift_once();
  }

  v31 = static PegasusProxy.allowedClientEntityLabels;
  v32 = Siri_Nlu_External_Span.label.getter();
  LOBYTE(v31) = specialized Set.contains(_:)(v32, v33, v31);

  if (v31)
  {
    if (Siri_Nlu_External_Span.label.getter() == 0x656D614E707061 && v34 == 0xE700000000000000)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v37 = v55;
    Siri_Nlu_External_Span.usoGraph.getter();
    v38 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v56 + 8))(v37, v57);
    if (!*(v38 + 16))
    {

      goto LABEL_25;
    }

    v39 = v51;
    v40 = v52;
    v41 = v53;
    (*(v52 + 16))(v51, v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v53);

    v42 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v44 = v43;
    v45 = (*(v40 + 8))(v39, v41);
    (*(**(v54 + 184) + 264))(v62, v45);
    v46 = v63;
    if (v63)
    {
      v47 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v47 + 8))(&v60, v42, v44, v46, v47);

      v48 = v61;
      __swift_destroy_boxed_opaque_existential_1(v62);

      v35 = v48 ^ 1;
      return v35 & 1;
    }

    v25 = &_s21SiriInformationSearch17PommesAppChecking_pSgMd;
    v26 = &_s21SiriInformationSearch17PommesAppChecking_pSgMR;
    v27 = v62;
    goto LABEL_10;
  }

  v35 = 0;
  return v35 & 1;
}

uint64_t PegasusProxy.appendMusicRankingInfluence(to:)(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider + 24);
  v12 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider), v11);
  (*(v12 + 8))(v11, v12);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v25 = *(v3 + 16);
  v25(v8, v10, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v2;
    v17 = v16;
    *v16 = 134217984;
    v18 = MEMORY[0x223DDB7C0]();
    v19 = *(v3 + 8);
    v19(v8, v24);
    *(v17 + 1) = v18;
    _os_log_impl(&dword_2232BB000, v14, v15, "Adding MusicRankingInfluence to request: %ld", v17, 0xCu);
    v20 = v17;
    v2 = v24;
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  else
  {
    v19 = *(v3 + 8);
    v19(v8, v2);
  }

  v25(v26, v10, v2);
  v21 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
  v22 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.modify();
  Apple_Parsec_Siri_Context_OnDeviceContext.musicRankingInfluence.setter();
  v22(v28, 0);
  v21(v29, 0);
  return (v19)(v10, v2);
}

uint64_t PegasusProxy.addPromptContext(to:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v80 = a3;
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints();
  v72 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_PromptContext();
  v71 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - v15;
  v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v22 = v21;
  v24 = v23;
  outlined init with copy of MediaUserStateCenter?(v20, v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  if ((*(v24 + 48))(v16, 1, v22) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    return (*(v11 + 16))(v80, v79, v10);
  }

  else
  {
    (*(v24 + 32))(v19, v16, v22);
    v26 = v10;
    v69 = *(v11 + 16);
    v70 = v11 + 16;
    v27 = v69(v13, v79, v10);
    v28 = v24;
    MEMORY[0x28223BE20](v27);
    *(&v60 - 2) = v19;
    v65 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext, MEMORY[0x277D38DB0], MEMORY[0x277D38DA8]);
    v68 = v7;
    v79 = v22;
    static Message.with(_:)();
    v29 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
    v67 = v9;
    Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.setter();
    v30 = v29(v82, 0);
    MEMORY[0x28223BE20](v30);
    *(&v60 - 2) = v19;
    v66 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientDisplayHints and conformance Apple_Parsec_Siri_Context_ClientDisplayHints, MEMORY[0x277D397B8], MEMORY[0x277D397B0]);
    static Message.with(_:)();
    v31 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
    Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.setter();
    v32 = v31(v82, 0);
    if ((*(*v76 + 272))(v32))
    {
      v62 = v28;
      v76 = v13;
      v64 = v11;
      v63 = v10;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.pommes);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      v36 = os_log_type_enabled(v34, v35);
      v61 = v19;
      v38 = v67;
      v37 = v68;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v81 = v40;
        *v39 = 136315138;
        swift_beginAccess();
        v41 = v73;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.getter();
        (*(v74 + 8))(v41, v75);
        swift_endAccess();
        v42 = Message.debugDescription.getter();
        v44 = v43;
        (*(v71 + 8))(v38, v37);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v81);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_2232BB000, v34, v35, "request.clientConversationContextInfo.promptContext = %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x223DE0F80](v40, -1, -1);
        MEMORY[0x223DE0F80](v39, -1, -1);
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v81 = v49;
        *v48 = 136315138;
        v50 = v76;
        swift_beginAccess();
        v51 = v73;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
        v52 = v77;
        Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.getter();
        (*(v74 + 8))(v51, v75);
        swift_endAccess();
        v53 = v78;
        v54 = Message.debugDescription.getter();
        v56 = v55;
        (*(v72 + 8))(v52, v53);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v81);

        *(v48 + 4) = v57;
        _os_log_impl(&dword_2232BB000, v46, v47, "request.clientConversationContextInfo.clientDisplayHints = %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x223DE0F80](v49, -1, -1);
        v58 = v48;
        v13 = v50;
        MEMORY[0x223DE0F80](v58, -1, -1);

        (*(v62 + 8))(v61, v79);
        v59 = v80;
        v26 = v63;
        v11 = v64;
      }

      else
      {

        (*(v62 + 8))(v61, v79);
        v59 = v80;
        v26 = v63;
        v11 = v64;
        v13 = v76;
      }
    }

    else
    {
      (*(v28 + 8))(v19, v79);
      v59 = v80;
    }

    swift_beginAccess();
    v69(v59, v13, v26);
    return (*(v11 + 8))(v13, v26);
  }
}

uint64_t PegasusProxy.clientExperienceSignals(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ClientExperienceSignals();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:)();
  (*(*v2[23] + 496))(a2, a1);
  (*(v9 + 8))(a2, v8);
  v12 = (*(v9 + 32))(a2, v11, v8);
  v13 = ((*v2)[46])(v12);
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for PommesSearchRequest(0);
    (*(*v14 + 144))(*(a1 + *(v15 + 32)), *(a1 + *(v15 + 32) + 8), 1);
  }

  ClientExperienceSignals.isPhoneCallActive.setter();
  v16 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v16 + 44), v7, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v17 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {
    Siri_Nlu_External_Span.matcherNames.getter();
    (*(v18 + 8))(v7, v17);
  }

  return ClientExperienceSignals.matchingSpans.setter();
}

void PegasusProxy.addCurareFlags(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = MEMORY[0x223DDF550](0xD000000000000020, 0x80000002234E0FD0);
    v9 = [v7 BOOLForKey_];

    if (v9)
    {
      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.overrides);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2232BB000, v11, v12, "POMMES override enabled for treatRandomAsFirst! Setting value to true", v13, 2u);
        MEMORY[0x223DE0F80](v13, -1, -1);
      }

      v14 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
      Apple_Parsec_Siri_V2alpha_SiriPegasusContext.treatRandomAsFirst.setter();
      v14(&v15, 0);
    }
  }
}

void PegasusProxy.addGroundingInfo(to:for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = PegasusProxy.isGroundingNeeded(for:)(a2);
  v8 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.userGroundingNeeded.setter();
  v8(v23, 0);
  if (v7)
  {
    v9 = (a2 + *(v4 + 84));
    v10 = v9[1];
    *(v2 + 64) = *v9;
    *(v2 + 72) = v10;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(a2, v6, type metadata accessor for PommesSearchRequest);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315394;
    v16 = &v6[*(v4 + 32)];
    if (v16[1])
    {
      v17 = *v16;
      v18 = v16[1];
    }

    else
    {
      v18 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
    }

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v6, type metadata accessor for PommesSearchRequest);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v23);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    if (v7)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v7)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v23);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2232BB000, v12, v13, "POMMES add grounding need for request: %s, Grounded: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v15, -1, -1);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  else
  {

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v6, type metadata accessor for PommesSearchRequest);
  }
}

uint64_t PegasusProxy.isGroundingNeeded(for:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesSearchRequest(0);
  v4 = (a1 + v3[21]);
  v5 = v4[1];
  if (v5)
  {
    v6 = *(v1 + 72);
    if (v6)
    {
      if (*(v1 + 64) == *v4 && v6 == v5)
      {
        if ((*(a1 + v3[16]) & 1) == 0)
        {
          if (*(a1 + v3[15]))
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v8 = v3;
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (*(a1 + v8[16]) != 1)
        {
          if (*(a1 + v8[15]))
          {
            if (v9)
            {
LABEL_24:
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v18 = type metadata accessor for Logger();
              __swift_project_value_buffer(v18, static Logger.pommes);
              v12 = Logger.logObject.getter();
              v16 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v12, v16))
              {
                v14 = swift_slowAlloc();
                *v14 = 0;
                v17 = "Grounding: false, Same user grounded recently";
                goto LABEL_32;
              }

              goto LABEL_34;
            }

LABEL_14:
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v11 = type metadata accessor for Logger();
            __swift_project_value_buffer(v11, static Logger.pommes);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v12, v13))
            {
              v10 = 1;
              goto LABEL_35;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_2232BB000, v12, v13, "Grounding: true, Not grounded recently", v14, 2u);
            v10 = 1;
            goto LABEL_33;
          }

LABEL_28:
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.pommes);
          v12 = Logger.logObject.getter();
          v16 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v12, v16))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            v17 = "Grounding: false, not a multiUser env";
            goto LABEL_32;
          }

          goto LABEL_34;
        }
      }
    }

    else if ((*(a1 + v3[16]) & 1) == 0)
    {
      if (*(a1 + v3[15]))
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v16))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v17 = "Grounding: false, singleton user";
LABEL_32:
      _os_log_impl(&dword_2232BB000, v12, v16, v17, v14, 2u);
      v10 = 0;
LABEL_33:
      MEMORY[0x223DE0F80](v14, -1, -1);
LABEL_35:

      return v10;
    }

LABEL_34:
    v10 = 0;
    goto LABEL_35;
  }

  return 0;
}

uint64_t PegasusProxy.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v2 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext), *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8));
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore));

  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider));
}

uint64_t PegasusProxy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
  v2 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext), *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8));
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider));
  return v0;
}

uint64_t PegasusProxy.__deallocating_deinit()
{
  PegasusProxy.deinit();

  return swift_deallocClassInstance();
}

uint64_t Siri_Nlu_External_Span.itemId(for:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32 = a1;
  v35 = type metadata accessor for Google_Protobuf_StringValue();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v30 = &v29 - v13;
  Siri_Nlu_External_Span.usoGraph.getter();
  v14 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v9 + 8))(v11, v8);
  v38 = *(v14 + 16);
  if (v38)
  {
    v16 = 0;
    v37 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v36 = v5 + 16;
    v17 = (v2 + 8);
    v33 = *MEMORY[0x277D5F538];
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v5 + 16))(v7, v37 + *(v5 + 72) * v16, v4);
      if (Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter())
      {
        v19 = v34;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v20 = Google_Protobuf_StringValue.value.getter();
        v22 = v21;
        (*v17)(v19, v35);
        if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (Siri_Nlu_External_UsoEntityIdentifier.hasBackingAppBundleID.getter())
        {
          if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == v32 && v25 == v31)
          {

LABEL_20:

            v27 = v30;
            (*(v5 + 32))(v30, v7, v4);
            v26 = 0;
            goto LABEL_16;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_4:
      ++v16;
      result = (*(v5 + 8))(v7, v4);
    }

    while (v38 != v16);
  }

  v26 = 1;
  v27 = v30;
LABEL_16:
  (*(v5 + 56))(v27, v26, 1, v4);
  if ((*(v5 + 48))(v27, 1, v4) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v27, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v28 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v5 + 8))(v27, v4);
    return v28;
  }
}

uint64_t Siri_Nlu_External_Span.contactFlags(contactStore:request:)(void *a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((AFIsATVOnly() & 1) == 0)
  {
    v41 = v1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = Siri_Nlu_External_Span.itemId(for:)(v12, v13);
    v15 = v14;

    v40 = v15;
    if (!v15)
    {
      v10 = 0;
      LOBYTE(v11) = 0;
      return v10 | v11 & 1u;
    }

    Date.init()();
    v16 = &v9[v7[5]];
    *v16 = "SiriInformationSearch/PegasusProxy.swift";
    *(v16 + 1) = 40;
    v16[16] = 2;
    *&v9[v7[6]] = 1359;
    v17 = &v9[v7[7]];
    *v17 = "contactFlags(contactStore:request:)";
    *(v17 + 1) = 35;
    v17[16] = 2;
    v18 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000023, 0x80000002234E0DC0);
    v19 = &v9[v7[8]];
    *v19 = v18;
    v19[1] = v20;
    if (!AFIsHorseman())
    {
      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      v28 = v41;
      v29 = (*(v27 + 8))(v39, v40, v26, v27);
      if (v28)
      {
        _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PerformanceUtil.Ticket);
      }

      v11 = v29;
LABEL_21:

      v10 = v11 & 0x100;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static PerformanceUtil.shared + 184))(v9, 0);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PerformanceUtil.Ticket);
      return v10 | v11 & 1u;
    }

    v42 = MEMORY[0x277D84F90];
    v21 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
    v22 = MEMORY[0x223DDB6B0](v21);
    v24 = v23;
    (*(v4 + 8))(v6, v3);
    if (v22 == 0x656E6F6870 && v24 == 0xE500000000000000)
    {

      v25 = v40;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = v40;
      if ((v30 & 1) == 0)
      {
        v32 = MEMORY[0x277D84F90];
LABEL_17:
        v33 = a1[3];
        v34 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v33);
        v35 = v41;
        v36 = (*(v34 + 16))(v39, v25, v32, v33, v34);
        if (v35)
        {
          _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v9, type metadata accessor for PerformanceUtil.Ticket);
        }

        v11 = v36;

        goto LABEL_21;
      }
    }

    v31 = *MEMORY[0x277CBD098];
    MEMORY[0x223DDF820]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v32 = v42;
    goto LABEL_17;
  }

  v10 = 0;
  LOBYTE(v11) = 0;
  return v10 | v11 & 1u;
}

uint64_t closure #1 in Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UtteranceSpan();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  Apple_Parsec_Siri_Context_ClientEntityAlignment.init()();
  Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.getter();
  Apple_Parsec_Siri_Context_ClientEntityAlignment.asrHypothesisIndex.setter();
  Siri_Nlu_External_Span.input.getter();
  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v7 = Siri_Nlu_External_UtteranceAlignment.spans.getter();
  if (*(v7 + 16))
  {
    (*(v1 + 16))(v6, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UtteranceSpan.startIndex.getter();
    (*(v1 + 8))(v6, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.startTokenIndex.setter();
  v8 = Siri_Nlu_External_UtteranceAlignment.spans.getter();
  if (*(v8 + 16))
  {
    (*(v1 + 16))(v4, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UtteranceSpan.endIndex.getter();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.endTokenIndex.setter();
  Siri_Nlu_External_Span.score.getter();
  return Apple_Parsec_Siri_Context_ClientEntityAlignment.score.setter();
}

uint64_t closure #1 in RRCandidate.equivalentClientEntity()(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RREntity();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  RRCandidate.score.getter();
  Apple_Parsec_Siri_Context_ClientEntity.score.setter();
  v16 = v31;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (!v16)
  {
    v21 = v14;
    v22 = v10;
    v31 = v15;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
    v17 = v30;
    Message.serializedData(partial:)();
    (*(v29 + 8))(v9, v17);
    Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
    (*(v24 + 104))(v23, *MEMORY[0x277D39428], v25);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v27 + 104))(v26, *MEMORY[0x277D39408], v28);
    Apple_Parsec_Siri_Context_ClientEntity.type.setter();
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v21(v13, v22);
    v19 = dispatch thunk of UsoEntity.utteranceAlignments.getter();

    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = a2;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(partial apply for closure #1 in closure #1 in RRCandidate.equivalentClientEntity(), (&v21 - 4), v19, MEMORY[0x277D399F8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D5E688]);

    Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  }
}

uint64_t closure #1 in closure #1 in RRCandidate.equivalentClientEntity()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment();
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntityAlignment and conformance Apple_Parsec_Siri_Context_ClientEntityAlignment, MEMORY[0x277D399F8], MEMORY[0x277D399F0]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in RRCandidate.equivalentClientEntity()()
{
  v0 = type metadata accessor for UtteranceSpan();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  UtteranceAlignment.asrHypothesisIndex.getter();
  Apple_Parsec_Siri_Context_ClientEntityAlignment.asrHypothesisIndex.setter();
  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v7 = UtteranceAlignment.spans.getter();
  if (*(v7 + 16))
  {
    (*(v1 + 16))(v6, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    UtteranceSpan.startIndex.getter();
    (*(v1 + 8))(v6, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.startTokenIndex.setter();
  v8 = UtteranceAlignment.spans.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    (*(v1 + 16))(v4, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v9 - 1), v0);

    UtteranceSpan.endIndex.getter();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
  }

  Apple_Parsec_Siri_Context_ClientEntityAlignment.endTokenIndex.setter();
  RRCandidate.score.getter();
  return Apple_Parsec_Siri_Context_ClientEntityAlignment.score.setter();
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v43 = a6;
  v44 = a8;
  v42 = a4;
  v40[1] = a2;
  v41 = a1;
  v45 = a10;
  v40[0] = a9;
  v20 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v47 = *(v20 - 8);
  v48 = v20;
  MEMORY[0x28223BE20](v20);
  v46 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a13;
  v51[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a3, a13);
  v50[3] = a14;
  v50[4] = a17;
  v23 = __swift_allocate_boxed_opaque_existential_1(v50);
  v24 = a5;
  v25 = a7;
  (*(*(a14 - 8) + 32))(v23, v24, a14);
  v49[3] = a12;
  v49[4] = a15;
  v26 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a12 - 8) + 32))(v26, v40[0], a12);
  *(a11 + 16) = 1;
  *(a11 + 144) = 0;
  *(a11 + 64) = 0;
  *(a11 + 72) = 0;
  v27 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v28 = MEMORY[0x277D84FA0];
  *(a11 + 152) = v27;
  *(a11 + 160) = v28;
  *(a11 + 168) = v28;
  *(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v29 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v30 = type metadata accessor for InteractionType();
  v31 = (*(*(v30 - 8) + 56))(a11 + v29, 1, 1, v30);
  *(a11 + 80) = v41(v31);
  *(a11 + 88) = v32;
  outlined init with copy of AppDataProviding(v51, a11 + 96);
  *(a11 + 136) = v42;
  outlined init with copy of AppDataProviding(v50, a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  v33 = v44;
  *(a11 + 176) = v43;
  *(a11 + 184) = v33;
  outlined init with copy of AppDataProviding(a7, a11 + 24);
  outlined init with copy of AppDataProviding(v49, a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v45;
  v34 = byte_2836954D0;

  if (!v34)
  {
    v36 = 0xD000000000000013;
    v35 = 0x6E65657263536E6FLL;
    goto LABEL_5;
  }

  v35 = 0x6E65657263536E6FLL;
  v36 = 0x6E65657263536E6FLL;
  if (v34 == 1)
  {
LABEL_5:
    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v36);
  }

  if (byte_2836954D1 != 2)
  {
    v37 = 0x6E65657263536E6FLL;
    if (byte_2836954D1 != 1)
    {
      v37 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v37);
  }

  if (byte_2836954D2 != 2)
  {
    if (byte_2836954D2 != 1)
    {
      v35 = 0xD000000000000013;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v35);
  }

  v38 = v46;
  Apple_Parsec_Search_SearchConversationContext.init()();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  (*(v47 + 32))(a11 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext, v38, v48);
  return a11;
}

uint64_t _s21SiriInformationSearch14CurareDonationO06donateD4Info3for4intoy10PegasusAPI013Apple_Parsec_a9_V2alpha_aJ7RequestV_AA0D17InteractionStream_pSgtFZyyYacfU_TA_0(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static CurareDonation.donateCurareInfo(for:into:)(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for PommesCandidateId() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(a1, v11, v1 + v4, v1 + v7, v1 + v10, v12);
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t partial apply for closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for PommesCandidateId() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for SignpostToken(0) - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), v1 + v14, v1 + v17, *(v1 + v18), *(v1 + v18 + 8));
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #2 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 592))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for closure #4 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = type metadata accessor for PommesSearchRequest(0);
  return specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:)(24, *(v3 + *(v4 + 32)), *(v3 + *(v4 + 32) + 8), a1);
}

uint64_t partial apply for closure #12 in PegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:onDeviceLabels:)@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v5 = (*(*v4 + 600))();

  *a2 = v5;
  return result;
}

uint64_t partial apply for closure #3 in PegasusProxy.addUserVocabSpans(from:to:onDeviceLabels:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = Siri_Nlu_External_Span.equivalentClientEntity(contactStore:request:)((*(v2 + 16) + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore), *(v2 + 24), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t type metadata completion function for PegasusSearchResponse(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PegasusError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceLabels(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for OnDeviceLabels(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for PegasusProxy(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionType?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for InteractionType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InteractionType?)
  {
    type metadata accessor for InteractionType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InteractionType?);
    }
  }
}

uint64_t outlined init with take of PommesSearchRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *specialized PegasusProxy.createASRInterpretationTokens(with:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken();
  v26 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v6 = &v25 - v5;
  if (v4 >> 62)
  {
    v23 = v4;
    v24 = __CocoaSet.count.getter();
    v4 = v23;
    v7 = v24;
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v4;
  v27 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v27;
    v11 = v9;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      v25 = v26 + 32;
      do
      {
        v13 = v11;
        v14 = MEMORY[0x223DDFF80](v12);
        *(&v25 - 2) = MEMORY[0x28223BE20](v14);
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_InterpretationToken and conformance Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x277D39918], MEMORY[0x277D39910]);
        static Message.with(_:)();
        swift_unknownObjectRelease();
        v27 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v8 = v27;
        }

        ++v12;
        *(v8 + 16) = v16 + 1;
        (*(v26 + 32))(v8 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v16, v6, v0);
        v11 = v13;
      }

      while (v7 != v12);
    }

    else
    {
      v17 = v9 + 32;
      v18 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_InterpretationToken and conformance Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x277D39918], MEMORY[0x277D39910]);
      v25 = v18;
      do
      {
        MEMORY[0x28223BE20](v18);
        *(&v25 - 2) = v19;
        v20 = v19;
        static Message.with(_:)();

        v27 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v8 = v27;
        }

        *(v8 + 16) = v22 + 1;
        v18 = (*(v26 + 32))(v8 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v3, v0);
        v17 += 8;
        --v7;
      }

      while (v7);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for PommesCandidateId() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v9 = *(v0 + 16);

  return closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(v9, v0 + v2, v0 + v5, v0 + v8);
}

uint64_t partial apply for closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for PommesCandidateId() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v0 + 16);
  v13 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(v12, v0 + v2, v0 + v5, v0 + v8, v0 + v11, v13);
}

uint64_t _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static GMAvailabilityPolicyDataProvider.make(gmAvailability:)(uint64_t a1)
{
  outlined init with copy of MediaUserStateCenter?(a1, v3, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  type metadata accessor for GMAvailabilityPolicyDataProvider(0);
  v1 = swift_allocObject();
  GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v1);
}

void (*protocol witness for GMAvailabilityProtocol.availability.modify in conformance GenerativeModelsAvailability(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = GenerativeModelsAvailability.availability.modify();
  return protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant;
}

uint64_t key path setter for GMAvailabilityPolicyDataProvider.availabilityState : GMAvailabilityPolicyDataProvider(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of MediaUserStateCenter?(a1, &v10 - v5, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v6, v7 + v8, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  return swift_endAccess();
}

uint64_t GMAvailabilityPolicyDataProvider.availabilityState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
}

uint64_t GMAvailabilityPolicyDataProvider.hasChinaPolicy.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GMAvailabilityPolicyDataProvider.__allocating_init(gmAvailability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GMAvailabilityPolicyDataProvider.init(gmAvailability:)(a1);
  return v2;
}

uint64_t type metadata accessor for GMAvailabilityPolicyDataProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for GMAvailabilityPolicyDataProvider;
  if (!type metadata singleton initialization cache for GMAvailabilityPolicyDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GMAvailabilityPolicyDataProvider.init(gmAvailability:)(uint64_t a1)
{
  v15 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  v8 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification) = 0;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy) = 2;
  v12 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue;
  v9 = type metadata accessor for OS_dispatch_queue();
  v11[1] = "Search.requestCancellables";
  v11[2] = v9;
  static DispatchQoS.userInitiated.getter();
  v16 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v4, *MEMORY[0x277D85260], v14);
  *(v1 + v12) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v15, v1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  swift_endAccess();
  return v1;
}

uint64_t GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_18;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for GenerativeModelsAvailability();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(a1 + 16, v39, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v15 = v40;
  outlined destroy of MediaUserStateCenter?(v39, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  if (!v15)
  {
    GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
    v40 = v6;
    v41 = &protocol witness table for GenerativeModelsAvailability;
    __swift_allocate_boxed_opaque_existential_1(v39);
    static GenerativeModelsAvailability.current(parameters:)();
    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v39, a1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    swift_endAccess();
  }

  outlined init with copy of MediaUserStateCenter?(a1 + 16, &v37, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  if (v38)
  {
    outlined init with take of DomainWarmupHandling(&v37, v39);
    v16 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (v17[1])(v16, v17);
    v18 = type metadata accessor for GenerativeModelsAvailability.Availability();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    v19 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v10, a1 + v19, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    swift_endAccess();
    v20 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
    swift_beginAccess();
    *(a1 + v20) = 0;
    v21 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification;
    if (!*(a1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification))
    {
      outlined init with copy of AppDataProviding(v39, &v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch22GMAvailabilityProtocol_pMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pMR);
      v22 = swift_dynamicCast();
      v23 = v36;
      v24 = *(v36 + 56);
      if (v22)
      {
        v24(v5, 0, 1, v6);
        v25 = v34;
        (*(v23 + 32))(v34, v5, v6);
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        v28 = v35;
        *(v27 + 16) = v26;
        *(v27 + 24) = v28;

        v29 = GenerativeModelsAvailability.didChange(_:)();

        (*(v23 + 8))(v25, v6);

        *(a1 + v21) = v29;
      }

      else
      {
        v24(v5, 1, 1, v6);
        outlined destroy of MediaUserStateCenter?(v5, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(&v37, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v31, v32, "Unable to prepare GMAvailabilityPolicyDataProvider: gmAvailability is nil.", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenerativeModelsAvailability();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v35);
  v14 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = v31 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v33 = v3;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = v4;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v19, v20, "GenerativeModelsAvailability: didChange", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

    GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
    v22 = v40;
    static GenerativeModelsAvailability.current(parameters:)();
    (*(v8 + 8))(v10, v7);
    v31[1] = *(v17 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
    v23 = v35;
    (*(v11 + 16))(v14, v22, v35);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v11 + 32))(v26 + v24, v14, v23);
    *(v26 + v25) = v17;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_36;
    v27 = _Block_copy(aBlock);

    v28 = v36;
    static DispatchQoS.unspecified.getter();
    v41 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v29 = v38;
    v30 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v28, v29, v27);
    _Block_release(v27);
    (*(v32 + 8))(v29, v30);
    (*(v37 + 8))(v28, v39);
    (*(v11 + 8))(v40, v23);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for GenerativeModelsAvailability();
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMR);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v65[-v10];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v12 = MEMORY[0x28223BE20](v69);
  v75 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v65[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v65[-v19];
  v74 = a1;
  GenerativeModelsAvailability.availability.getter();
  v71 = *(v6 + 56);
  v72 = v6 + 56;
  v21 = v71(v20, 0, 1, v5);
  v22 = *(*a2 + 144);
  v23 = *a2 + 144;
  v80 = a2;
  v67 = v23;
  v68 = v22;
  (v22)(v21);
  v24 = *(v9 + 56);
  outlined init with copy of MediaUserStateCenter?(v20, v11, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  outlined init with copy of MediaUserStateCenter?(v18, &v11[v24], &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v76 = v6;
  v25 = *(v6 + 48);
  v26 = v5;
  if (v25(v11, 1, v5) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      v27 = outlined destroy of MediaUserStateCenter?(v11, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v28 = v80;
      goto LABEL_13;
    }
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v11, v79, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    if (v25(&v11[v24], 1, v5) != 1)
    {
      v61 = v76;
      v62 = v70;
      (*(v76 + 32))(v70, &v11[v24], v5);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability and conformance GenerativeModelsAvailability.Availability, MEMORY[0x277D0E280], MEMORY[0x277D0E288]);
      v63 = v79;
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v61 + 8);
      v64(v62, v26);
      outlined destroy of MediaUserStateCenter?(v18, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      outlined destroy of MediaUserStateCenter?(v20, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v64(v63, v26);
      v27 = outlined destroy of MediaUserStateCenter?(v11, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
      v29 = v75;
      v28 = v80;
      if (v66)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v18, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    outlined destroy of MediaUserStateCenter?(v20, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
    (*(v76 + 8))(v79, v5);
  }

  outlined destroy of MediaUserStateCenter?(v11, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSg_AFtMR);
  v29 = v75;
  v28 = v80;
LABEL_7:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.pommes);
  v31 = v73;
  v33 = v77;
  v32 = v78;
  (*(v73 + 16))(v77, v74, v78);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v31;
    v37 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82[0] = v80;
    *v37 = 136315394;
    v79 = v34;
    v68();
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v82);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    LODWORD(v75) = v35;
    v41 = v70;
    GenerativeModelsAvailability.availability.getter();
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability and conformance GenerativeModelsAvailability.Availability, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
    v42 = v26;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v76 + 8))(v41, v26);
    (*(v36 + 8))(v77, v78);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v82);

    *(v37 + 14) = v46;
    v47 = v79;
    _os_log_impl(&dword_2232BB000, v79, v75, "GenerativeModelsAvailability changed from: %s, to: %s", v37, 0x16u);
    v48 = v80;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v48, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v33, v32);
    v42 = v26;
  }

  GenerativeModelsAvailability.availability.getter();
  v71(v29, 0, 1, v42);
  v49 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v29, v28 + v49, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v27 = swift_endAccess();
LABEL_13:
  v50 = *(*v28 + 192);
  v51 = (v50)(v27);
  if (v51 == 2 || (v51 & 1) != 0)
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
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v82[0] = v56;
      *v55 = 136315394;
      v81 = v50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      v57 = String.init<A>(describing:)();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v82);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736C6166, 0xE500000000000000, v82);
      _os_log_impl(&dword_2232BB000, v53, v54, "GenerativeModelsAvailability device policy changed from: %s, to: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v56, -1, -1);
      MEMORY[0x223DE0F80](v55, -1, -1);
    }

    v60 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
    swift_beginAccess();
    *(v28 + v60) = 0;
  }
}

uint64_t GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t partial apply for closure #1 in GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 192))();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall GMAvailabilityPolicyDataProvider.cancelNotifications()()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification))
  {
    v1 = one-time initialization token for pommes;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "GenerativeModelsAvailability: canceling notifications!", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    GenerativeModelsAvailability.Notifications.cancel()();
  }
}

Swift::Void __swiftcall GMAvailabilityPolicyDataProvider.reset()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in GMAvailabilityPolicyDataProvider.reset();
  *(v2 + 24) = v0;
  v4[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_10_1;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in GMAvailabilityPolicyDataProvider.reset()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4 + 16;
  (*(*a1 + 248))(v3);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v10, a1 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  swift_endAccess();
  v6 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v5, a1 + v7, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityNotification) = 0;

  v8 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  swift_beginAccess();
  *(a1 + v8) = 2;
}

uint64_t GMAvailabilityPolicyDataProvider.deinit()
{
  (*(*v0 + 248))();
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);

  return v0;
}

uint64_t GMAvailabilityPolicyDataProvider.__deallocating_deinit()
{
  (*(*v0 + 248))();
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_availabilityState, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMd, &_s16GenerativeModels0aB12AvailabilityV0C0OSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance GMAvailabilityPolicyDataProvider@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 240))();
  *a1 = result;
  return result;
}

void type metadata completion function for GMAvailabilityPolicyDataProvider(uint64_t a1)
{
  type metadata accessor for GenerativeModelsAvailability.Availability?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of GMAvailabilityPolicyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 240);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void type metadata accessor for GenerativeModelsAvailability.Availability?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GenerativeModelsAvailability.Availability?)
  {
    type metadata accessor for GenerativeModelsAvailability.Availability();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GenerativeModelsAvailability.Availability?);
    }
  }
}

void partial apply for closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(type metadata accessor for GenerativeModelsAvailability() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in closure #1 in GMAvailabilityPolicyDataProvider.prepare(dispatchQueue:)(v0 + v2, v3);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t QTreeFeaturiser.__allocating_init(query:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  QTreeFeaturiser.init(query:locale:)(a1, a2);
  return v4;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 64;
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
  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v8 = MEMORY[0x277D84F90];
  v26 = v7;
LABEL_5:
  v30 = v8;
  while (v5)
  {
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v6 << 10) | (16 * v10)));
    v12 = v11[1];
    v13 = *a2;
    v28 = *v11;
    v14 = String.lowercased()();
    if (!*(v13 + 16))
    {

      goto LABEL_22;
    }

    v15 = v2;
    Hasher.init(_seed:)();
    v31 = v12;

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(v13 + 32);
    v18 = v16 & ~v17;
    if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_21:

      v2 = v15;
      v7 = v26;
      v8 = v30;
      v12 = v31;
LABEL_22:
      v22 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
      }

      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v28;
      *(v25 + 40) = v22;
      goto LABEL_5;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(v13 + 48) + 16 * v18;
      v21 = *v20 == v14._countAndFlagsBits && *(v20 + 8) == v14._object;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v2 = v15;
    v7 = v26;
    v8 = v30;
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v6;
    if (v5)
    {
      v6 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemType.name.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D39490])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    strcpy(v12, "UNRECOGNIZED_");
    HIWORD(v12[1]) = -4864;
    v11[1] = v7;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223DDF6D0](v8);

    return v12[0];
  }

  else if (v6 == *MEMORY[0x277D39518])
  {
    return 0x4E574F4E4B4E55;
  }

  else if (v6 == *MEMORY[0x277D394D8])
  {
    return 1196314451;
  }

  else if (v6 == *MEMORY[0x277D394E0])
  {
    return 0x4D55424C41;
  }

  else if (v6 == *MEMORY[0x277D39500])
  {
    return 0x545349545241;
  }

  else if (v6 == *MEMORY[0x277D394E8])
  {
    return 0x45524E4547;
  }

  else if (v6 == *MEMORY[0x277D39520])
  {
    return 0x5453494C59414C50;
  }

  else
  {
    v10 = v6;
    result = 0x5F54534143444F50;
    if (v10 != *MEMORY[0x277D39488] && v10 != *MEMORY[0x277D394B0])
    {
      if (v10 == *MEMORY[0x277D394C0])
      {
        return 0xD000000000000010;
      }

      else if (v10 == *MEMORY[0x277D39498])
      {
        return 0x54535F434953554DLL;
      }

      else if (v10 == *MEMORY[0x277D39528])
      {
        return 0x4F425F4F49445541;
      }

      else if (v10 == *MEMORY[0x277D394F0])
      {
        return 0x4549564F4DLL;
      }

      else if (v10 == *MEMORY[0x277D39508])
      {
        return 0x574F48535F5654;
      }

      else if (v10 == *MEMORY[0x277D394A8])
      {
        return 0x5F574F48535F5654;
      }

      else if (v10 == *MEMORY[0x277D39480])
      {
        return 0x49565F434953554DLL;
      }

      else if (v10 != *MEMORY[0x277D394B8])
      {
        if (v10 == *MEMORY[0x277D394A0])
        {
          return 0x54535F4F49444152;
        }

        else if (v10 == *MEMORY[0x277D39510])
        {
          return 0x4E4F4954415453;
        }

        else if (v10 == *MEMORY[0x277D394F8])
        {
          return 0x434953554DLL;
        }

        else if (v10 == *MEMORY[0x277D394C8])
        {
          return 0xD000000000000019;
        }

        else if (v10 == *MEMORY[0x277D394D0])
        {
          return 1398228302;
        }

        else
        {
          (*(v3 + 8))(v5, v2);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestedMediaType.name.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D397F0])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    strcpy(v11, "UNRECOGNIZED_");
    HIWORD(v11[1]) = -4864;
    v10[1] = v7;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223DDF6D0](v8);

    return v11[0];
  }

  else if (v6 == *MEMORY[0x277D39890])
  {
    return 0x4E574F4E4B4E55;
  }

  else if (v6 == *MEMORY[0x277D39898])
  {
    return 0x5453494C59414C50;
  }

  else if (v6 == *MEMORY[0x277D39880])
  {
    return 0x54534143444F50;
  }

  else if (v6 == *MEMORY[0x277D39848])
  {
    return 0x434953554DLL;
  }

  else if (v6 == *MEMORY[0x277D397E0])
  {
    return 0x49565F434953554DLL;
  }

  else if (v6 == *MEMORY[0x277D398A0])
  {
    return 0x4F425F4F49445541;
  }

  else if (v6 == *MEMORY[0x277D39850])
  {
    return 0x4F45444956;
  }

  else if (v6 == *MEMORY[0x277D39878])
  {
    return 0x555F53454E555449;
  }

  else if (v6 == *MEMORY[0x277D397E8])
  {
    return 0x54414C49504D4F43;
  }

  else if (v6 == *MEMORY[0x277D39838])
  {
    return 0x4D55424C41;
  }

  else if (v6 == *MEMORY[0x277D39858])
  {
    return 0x545349545241;
  }

  else if (v6 == *MEMORY[0x277D39868])
  {
    return 0x574F48535F5654;
  }

  else if (v6 == *MEMORY[0x277D398A8])
  {
    return 0x48535F4F49444152;
  }

  else if (v6 == *MEMORY[0x277D39828])
  {
    return 1464813651;
  }

  else if (v6 == *MEMORY[0x277D397F8])
  {
    return 0x54535F4F49444152;
  }

  else if (v6 == *MEMORY[0x277D39808])
  {
    return 0x5F54534143444F50;
  }

  else if (v6 == *MEMORY[0x277D39888])
  {
    return 0x4E4F4954415453;
  }

  else if (v6 == *MEMORY[0x277D39800])
  {
    return 0x4C505F434953554DLL;
  }

  else if (v6 == *MEMORY[0x277D39870])
  {
    return 0x45444F53495045;
  }

  else if (v6 == *MEMORY[0x277D39860])
  {
    return 0x454C474E4953;
  }

  else if (v6 == *MEMORY[0x277D39810])
  {
    return 20549;
  }

  else if (v6 == *MEMORY[0x277D39818])
  {
    return 20556;
  }

  else if (v6 == *MEMORY[0x277D39830])
  {
    return 1196314451;
  }

  else if (v6 == *MEMORY[0x277D39840])
  {
    return 0x45524E4547;
  }

  else if (v6 == *MEMORY[0x277D39820])
  {
    return 1398228302;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

void __swiftcall QTreeFeaturiser.ScoringConfig.init()(SiriInformationSearch::QTreeFeaturiser::ScoringConfig *__return_ptr retstr)
{
  *&retstr->titleWeight = xmmword_2234D7670;
  *&retstr->typeWeight = vdupq_n_s64(0x3FC999999999999AuLL);
  *&retstr->minScoreThreshold = xmmword_2234D7680;
  *&retstr->tokenOnlyMatchScore = xmmword_2234D7690;
  *&retstr->documentExcessTokenPenalty = xmmword_2234D76A0;
  retstr->optionalTokenAbsensePenalty = 0.0;
}

uint64_t QTreeFeaturiser.init(query:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v100 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  outlined init with copy of Locale?(a2, v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);
  v12 = v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  *v12 = xmmword_2234D7670;
  *(v12 + 16) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v12 + 32) = xmmword_2234D7680;
  *(v12 + 48) = xmmword_2234D7690;
  *(v12 + 64) = xmmword_2234D76A0;
  *(v12 + 80) = 0;
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v8);
  outlined init with copy of Locale?(a2, v7);

  v14 = specialized TokenContainer.init(queryFields:requestedType:locale:)(v13, v11, v7);
  v104 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens;
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens) = v14;
  v15 = v8;
  v16 = v2;
  (*(v9 + 104))(v11, *MEMORY[0x277D39890], v15);
  v101 = a2;
  outlined init with copy of Locale?(a2, v7);
  v17 = specialized TokenContainer.init(queryFields:requestedType:locale:)(MEMORY[0x277D84F90], v11, v7);
  v105 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens;
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokens) = v17;
  v100[1] = a1;
  v18 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance + 8);
  v103 = v16;
  if (!v18)
  {
LABEL_29:
    v49 = *&v104[v16];
    v50 = v49 + 64;
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v49 + 64);
    v54 = (v51 + 63) >> 6;
    v102 = v49;

    v55 = 0;
    v56 = MEMORY[0x277D84F98];
    if (v53)
    {
      goto LABEL_34;
    }

LABEL_35:
    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        v73 = v103;
        *(v103 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms) = v56;
        v74 = v105;
        swift_beginAccess();
        v75 = *&v74[v73];
        v76 = v75 + 64;
        v77 = 1 << *(v75 + 32);
        v78 = -1;
        if (v77 < 64)
        {
          v78 = ~(-1 << v77);
        }

        v79 = v78 & *(v75 + 64);
        v80 = (v77 + 63) >> 6;
        v104 = v75;

        v81 = 0;
        v82 = MEMORY[0x277D84F98];
        if (v79)
        {
          goto LABEL_53;
        }

LABEL_54:
        while (1)
        {
          v83 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_69;
          }

          if (v83 >= v80)
          {

            outlined destroy of Locale?(v101);
            result = v103;
            *(v103 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms) = v82;
            return result;
          }

          v79 = *(v76 + 8 * v83);
          ++v81;
          if (v79)
          {
            while (1)
            {
              v84 = *(v104 + 6) + ((v83 << 10) | (16 * __clz(__rbit64(v79))));
              v85 = *v84;
              v86 = *(v84 + 8);
              v87 = String.lowercased()();

              v105 = specialized static SynonymGenerator.generateSynonyms(for:)(v85, v86);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v107 = v82;
              v89 = specialized __RawDictionaryStorage.find<A>(_:)(v87._countAndFlagsBits, v87._object);
              v91 = v82[2];
              v92 = (v90 & 1) == 0;
              v47 = __OFADD__(v91, v92);
              v93 = v91 + v92;
              if (v47)
              {
                goto LABEL_72;
              }

              v94 = v90;
              if (v82[3] >= v93)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v98 = v89;
                  specialized _NativeDictionary.copy()();
                  v89 = v98;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v93, isUniquelyReferenced_nonNull_native);
                v89 = specialized __RawDictionaryStorage.find<A>(_:)(v87._countAndFlagsBits, v87._object);
                if ((v94 & 1) != (v95 & 1))
                {
                  goto LABEL_76;
                }
              }

              v79 &= v79 - 1;
              v82 = v107;
              if (v94)
              {
                *(v107[7] + 8 * v89) = v105;

                v81 = v83;
                if (!v79)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v107[(v89 >> 6) + 8] |= 1 << v89;
                *(v82[6] + 16 * v89) = v87;
                *(v82[7] + 8 * v89) = v105;
                v96 = v82[2];
                v47 = __OFADD__(v96, 1);
                v97 = v96 + 1;
                if (v47)
                {
                  goto LABEL_75;
                }

                v82[2] = v97;
                v81 = v83;
                if (!v79)
                {
                  goto LABEL_54;
                }
              }

LABEL_53:
              v83 = v81;
            }
          }
        }
      }

      v53 = *(v50 + 8 * v57);
      ++v55;
      if (v53)
      {
        while (1)
        {
          v58 = *(v102 + 48) + ((v57 << 10) | (16 * __clz(__rbit64(v53))));
          v59 = *v58;
          v60 = *(v58 + 8);
          v61 = String.lowercased()();

          v104 = specialized static SynonymGenerator.generateSynonyms(for:)(v59, v60);

          v62 = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v56;
          v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61._countAndFlagsBits, v61._object);
          v65 = v56[2];
          v66 = (v64 & 1) == 0;
          v47 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v47)
          {
            goto LABEL_71;
          }

          v68 = v64;
          if (v56[3] >= v67)
          {
            if ((v62 & 1) == 0)
            {
              v72 = v63;
              specialized _NativeDictionary.copy()();
              v63 = v72;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v62);
            v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61._countAndFlagsBits, v61._object);
            if ((v68 & 1) != (v69 & 1))
            {
              goto LABEL_76;
            }
          }

          v53 &= v53 - 1;
          v56 = v106[0];
          if (v68)
          {
            *(v106[0][7] + 8 * v63) = v104;

            v55 = v57;
            if (!v53)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v106[0][(v63 >> 6) + 8] |= 1 << v63;
            *(v56[6] + 16 * v63) = v61;
            *(v56[7] + 8 * v63) = v104;
            v70 = v56[2];
            v47 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v47)
            {
              goto LABEL_74;
            }

            v56[2] = v71;
            v55 = v57;
            if (!v53)
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          v57 = v55;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v19 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);

  v20 = tokenizeString(_:unit:locale:)(v19, v18, 0, v101);

  v102 = v20;
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_28:

    goto LABEL_29;
  }

  v22 = v102 + 40;
  while (1)
  {
    v23 = *&v104[v16];
    v24 = String.lowercased()();
    if (!*(v23 + 16))
    {
      break;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v24._countAndFlagsBits, v24._object);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_5:

    v22 += 16;
    if (!--v21)
    {
      goto LABEL_28;
    }
  }

LABEL_10:

  v27 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of QTreeFeaturiser.init(query:locale:));
  outlined destroy of String(&unk_2836997C8);
  v28 = v105;
  swift_beginAccess();
  v29 = String.lowercased()();
  if (*(*&v28[v16] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v29._countAndFlagsBits, v29._object);
    if (v30)
    {
      v31 = specialized Dictionary.subscript.modify(v106, v29._countAndFlagsBits, v29._object);
      if (*v32)
      {

        specialized Set.formUnion<A>(_:)(v33);
      }

      (v31)(v106, 0);

      goto LABEL_27;
    }
  }

  v34 = v105;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = *&v34[v16];
  v36 = v106[0];
  *&v34[v16] = 0x8000000000000000;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v29._countAndFlagsBits, v29._object);
  v39 = v36[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (!__OFADD__(v39, v40))
  {
    v42 = v37;
    if (v36[3] < v41)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, v35);
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v29._countAndFlagsBits, v29._object);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_76;
      }

      v38 = v43;
      v45 = v106[0];
      if ((v42 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      *(v45[7] + 8 * v38) = v27;

LABEL_26:
      v16 = v103;
      *&v105[v103] = v45;
LABEL_27:
      swift_endAccess();

      goto LABEL_5;
    }

    if (v35)
    {
      v45 = v106[0];
      if (v37)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v45 = v106[0];
      if (v42)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v45[(v38 >> 6) + 8] |= 1 << v38;
    *(v45[6] + 16 * v38) = v29;
    *(v45[7] + 8 * v38) = v27;
    v46 = v45[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_73;
    }

    v45[2] = v48;
    goto LABEL_26;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t tokenizeString(_:unit:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v16 = MEMORY[0x223DDF550](a1, a2);
  [v15 setString_];

  outlined init with copy of Locale?(a4, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = outlined destroy of Locale?(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = Locale.languageCode.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 28261;
      v20 = 0xE200000000000000;
    }

    v21 = MEMORY[0x223DDF550](v18, v20);

    [v15 setLanguage_];

    v17 = (*(v12 + 8))(v14, v11);
  }

  v24 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v17);
  *(&v23 - 4) = a1;
  *(&v23 - 3) = a2;
  *(&v23 - 2) = &v24;
  NLTokenizer.enumerateTokens(in:using:)();

  return v24;
}

Swift::Bool __swiftcall TokenContainer.hasToken(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = String.lowercased()();
  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v3._countAndFlagsBits, v3._object);
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TokenContainer.addToken(_:fields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String.lowercased()();
  if (*(*v3 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v5._countAndFlagsBits, v5._object), (v6 & 1) != 0))
  {
    v7 = specialized Dictionary.subscript.modify(v12, v5._countAndFlagsBits, v5._object);
    if (*v8)
    {

      specialized Set.formUnion<A>(_:)(v9);
    }

    (v7)(v12, 0);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v5._countAndFlagsBits, v5._object, isUniquelyReferenced_nonNull_native);

    *v3 = v12[0];
  }

  return result;
}

void QTreeFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v91 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *a1;
  v11 = *(v101 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);
  v10 = *(v101 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8);

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v98 = v10;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v12 + 48) + v20);
      v22 = *v21;
      v1 = v21[1];
      v23 = (*(v12 + 56) + v20);
      v24 = *v23;
      v25 = v23[1];
      v106 = v11;
      v107 = v10;
      v104 = v22;
      v105 = v1;
      v102 = v24;
      v103 = v25;
      v2 = v10;
      lazy protocol witness table accessor for type String and conformance String();

      v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v10 = v26;

      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  v27 = *(v101 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  v100 = v10;
  v92 = v11;
  if (v27)
  {
    v28 = *(v101 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  swift_arrayDestroy();
  v30 = 1 << *(v15 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v1 = v31 & *(v15 + 64);
  v32 = (v30 + 63) >> 6;

  v33 = 0;
  v99 = v29;
  v34 = v29;
  while (v1)
  {
    v35 = v33;
LABEL_22:
    v36 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v37 = (v35 << 10) | (16 * v36);
    v38 = (*(v15 + 48) + v37);
    v39 = *v38;
    v40 = v38[1];
    v41 = (*(v15 + 56) + v37);
    v42 = *v41;
    v43 = v41[1];
    v106 = v28;
    v107 = v34;
    v104 = v39;
    v105 = v40;
    v102 = v42;
    v103 = v43;
    v2 = v34;
    lazy protocol witness table accessor for type String and conformance String();

    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v34 = v44;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      (*(v94 + 16))(v93, v101 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v95);
      v45 = String.init<A>(describing:)();
      v106 = v92;
      v107 = v100;
      v108 = v28;
      v109 = v34;
      v110 = v45;
      v111 = v46;
      v47 = v96;
      v1 = v97;
      outlined init with copy of Locale?(v97 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale, v96);

      v15 = specialized TokenContainer.init(document:locale:)(&v106, v47);
      v48 = (*(*v1 + 200))();
      v49 = 0;
      v50 = 1 << *(v48 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v48 + 64);
      v53 = (v50 + 63) >> 6;
      for (i = 0.0; v52; i = i + *(*(v48 + 56) + ((v54 << 9) | (8 * v55))))
      {
        v54 = v49;
LABEL_32:
        v55 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
      }

      while (1)
      {
        v54 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_47;
        }

        if (v54 >= v53)
        {
          v56 = (*(*v1 + 184))(&v106);
          v58 = *(*(v1 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens) + 16);
          if (!v58)
          {

            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            __swift_project_value_buffer(v87, static Logger.pommes);
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              *v90 = 0;
              _os_log_impl(&dword_2232BB000, v88, v89, "Cannot calculate score ratio as query token count is zero", v90, 2u);
              MEMORY[0x223DE0F80](v90, -1, -1);
            }

            return;
          }

          i = i + v57;
          v4 = i / v58;
          v59 = v101;
          v60 = MEMORY[0x277D85000];
          v61 = (*((*MEMORY[0x277D85000] & *v101) + 0xB8))(v56);
          v62.n128_f32[0] = v4;
          (*((*v60 & *v61) + 0x100))(v62);

          v63 = [v59 description];
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v2 = v64;

          if (one-time initialization token for pommes != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_36;
        }

        v52 = *(v48 + 64 + 8 * v54);
        ++v49;
        if (v52)
        {
          v49 = v54;
          goto LABEL_32;
        }
      }
    }

    v1 = *(v15 + 64 + 8 * v35);
    ++v33;
    if (v1)
    {
      v33 = v35;
      goto LABEL_22;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_36:
  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.pommes);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v104 = v99;
    *v68 = 136316674;
    v69 = *(*v1 + 192);
    LODWORD(v98) = v67;
    v70 = v69();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v104);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v2, &v104);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2080;
    v74 = Document.debugDescription.getter();
    v76 = v75;

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v104);

    *(v68 + 24) = v77;
    *(v68 + 32) = 2048;
    *(v68 + 34) = v4;
    *(v68 + 42) = 2048;
    *(v68 + 44) = i;
    *(v68 + 52) = 2080;
    v78 = TokenContainer.debugDescription.getter(v15);
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v104);

    *(v68 + 54) = v81;
    *(v68 + 62) = 2080;
    v82 = Dictionary.description.getter();
    v84 = v83;

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v104);

    *(v68 + 64) = v85;
    _os_log_impl(&dword_2232BB000, v66, v98, "%s AudioItemCandidate %s document %s, final QTree score: %f before-normalization score:%f documentTokens %s tokenScores %s", v68, 0x48u);
    v86 = v99;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v86, -1, -1);
    MEMORY[0x223DE0F80](v68, -1, -1);
  }

  else
  {
  }
}

void __swiftcall Document.init(title:artist:type:)(SiriInformationSearch::Document *__return_ptr retstr, Swift::String title, Swift::String artist, Swift::String type)
{
  retstr->title = title;
  retstr->artist = artist;
  retstr->type = type;
}

unint64_t Document.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(47);

  MEMORY[0x223DDF6D0](*v1, v1[1]);
  MEMORY[0x223DDF6D0](0x7369747261202C27, 0xEC00000027203A74);
  MEMORY[0x223DDF6D0](v1[2], v1[3]);
  MEMORY[0x223DDF6D0](0x3A65707974202C27, 0xEA00000000002720);
  MEMORY[0x223DDF6D0](v1[4], v1[5]);
  MEMORY[0x223DDF6D0](10535, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t TokenContainer.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  v32 = 0xD000000000000010;
  v33 = 0x80000002234E11E0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v2);

  MEMORY[0x223DDF6D0](0x29736E656B6F7420, 0xEA00000000000A3ALL);
  v3 = 0xD000000000000010;
  v34 = 0xD000000000000010;
  v35 = 0x80000002234E11E0;
  v4 = *(a1 + 16);
  v26 = a1;
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v4, 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v32, (v5 + 4), v4, a1);
    v7 = v32;

    outlined consume of Set<String>.Iterator._Variant(v7);
    if (v6 != v4)
    {
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v32 = v5;
  v5 = 0;
  specialized MutableCollection<>.sort(by:)(&v32);
  v8 = v32;
  v27 = *(v32 + 16);
  if (v27)
  {
    v9 = 0;
    v10 = (v32 + 40);
    while (v9 < *(v8 + 16))
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v31 = v10;
      v13 = *(a1 + 16);

      v30 = v11;
      if (v13 && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11), (v15 & 1) != 0))
      {
        v16 = *(*(a1 + 56) + 8 * v14);
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
      }

      v29 = v12;
      v17 = *(v16 + 16);
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 17;
        }

        v18[2] = v17;
        v18[3] = 2 * (v20 >> 4);
        v28 = specialized Sequence._copySequenceContents(initializing:)(&v32, v18 + 4, v17, v16);
        v21 = v32;

        outlined consume of Set<String>.Iterator._Variant(v21);
        if (v28 != v17)
        {
          goto LABEL_23;
        }

        a1 = v26;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v32 = v18;
      specialized MutableCollection<>.sort(by:)(&v32);
      ++v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v22 = BidirectionalCollection<>.joined(separator:)();
      v24 = v23;

      v32 = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v32 = 2564128;
      v33 = 0xE300000000000000;
      MEMORY[0x223DDF6D0](v29, v30);

      MEMORY[0x223DDF6D0](0x656966206E692027, 0xEE005B203A73646CLL);
      MEMORY[0x223DDF6D0](v22, v24);

      MEMORY[0x223DDF6D0](2653, 0xE200000000000000);
      MEMORY[0x223DDF6D0](v32, v33);

      v10 = v31 + 2;
      if (v27 == v9)
      {

        return v34;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return v3;
}

Swift::Double __swiftcall QTreeFeaturiser.exactMatchBoost(document:)(SiriInformationSearch::Document *document)
{
  v53 = document;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *(v1 + 16);
  v17 = *(v16 + 16);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D39500];
  v55 = v10;
  v51 = v18;
  if (v18)
  {
    v44 = v16;
    v45 = v3;
    v54 = v13;
    v49 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v48 = v10 + 16;
    LODWORD(v47) = *MEMORY[0x277D39500];
    v46 = (v3 + 104);
    v20 = (v3 + 8);
    v50 = (v10 + 8);

    v22 = 0;
    v23 = 0.1;
    v24 = v54;
    while (v22 < *(v17 + 16))
    {
      v25 = (*(v10 + 16))(v15, v49 + *(v10 + 72) * v22, v24);
      MEMORY[0x223DDAEA0](v25);
      (*v46)(v6, v47, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39540]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *v20;
      (*v20)(v6, v2);
      v28 = (v27)(v8, v2);
      if (v26)
      {
        (*v50)(v15, v24);
      }

      else
      {
        v29 = MEMORY[0x223DDAEC0](v28);
        if (v29 == v53->title._countAndFlagsBits && v30 == v53->title._object)
        {

          v33 = v15;
          v32 = v54;
          (*v50)(v33, v54);
LABEL_14:
          v10 = v55;
LABEL_15:

          v16 = v44;
          v3 = v45;
          v19 = MEMORY[0x277D39500];
          goto LABEL_16;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v50)(v15, v54);
        if (v31)
        {
          v32 = v54;
          goto LABEL_14;
        }
      }

      ++v22;
      v10 = v55;
      if (v51 == v22)
      {
        v23 = 0.0;
        v32 = v54;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0.0;
    v32 = v13;
LABEL_16:
    v34 = *(v16 + 16);
    v54 = *(v34 + 16);
    if (!v54)
    {
      return v23;
    }

    v50 = (v34 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
    v49 = v10 + 16;
    LODWORD(v48) = *v19;
    v47 = (v3 + 104);
    v35 = (v3 + 8);
    v51 = (v10 + 8);

    v36 = 0;
    while (v36 < *(v34 + 16))
    {
      v37 = v52;
      v38 = (*(v10 + 16))(v52, v50 + *(v10 + 72) * v36, v32);
      MEMORY[0x223DDAEA0](v38);
      (*v47)(v6, v48, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v39 = *v35;
      (*v35)(v6, v2);
      v40 = (v39)(v8, v2);
      if (v57 == v56)
      {
        v41 = MEMORY[0x223DDAEC0](v40);
        if (v41 == v53->artist._countAndFlagsBits && v42 == v53->artist._object)
        {

          (*v51)(v37, v32);
LABEL_28:

          return v23 + 0.1;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v51)(v37, v32);
        if (v43)
        {
          goto LABEL_28;
        }
      }

      else
      {
        (*v51)(v37, v32);
      }

      ++v36;
      v10 = v55;
      if (v54 == v36)
      {

        return v23;
      }
    }
  }

  __break(1u);
  return result;
}

void QTreeFeaturiser.debugDescription.getter()
{
  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v66 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v59 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v57 - v8;
  v70 = 0xD00000000000001FLL;
  v71 = 0x80000002234E1200;
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v68 = 0xD000000000000013;
  v69 = 0x80000002234E1220;
  v62 = v0;
  v10 = *(v0 + 16);
  v11 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v12 = *(v4 + 16);
  v12(v9, v10 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v3);
  v13 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.name.getter();
  v15 = v14;
  (*(v4 + 8))(v9, v3);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v12(v7, v10 + v11, v3);
    v16 = String.init<A>(describing:)();
    v15 = v17;
  }

  MEMORY[0x223DDF6D0](v16, v15);

  MEMORY[0x223DDF6D0](10, 0xE100000000000000);
  MEMORY[0x223DDF6D0](v68, v69);

  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E1240);
  v18 = *(v10 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v21 = *(v66 + 16);
    v20 = v66 + 16;
    v22 = v18 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v65 = *(v66 + 72);
    v66 = v21;
    v63 = (v20 - 8);
    ++v64;
    v57[1] = v18;

    v24 = v60;
    v23 = v61;
    v25 = v58;
    v26 = v59;
    do
    {
      (v66)(v26, v22, v25);
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v27 = MEMORY[0x223DDF6D0](0x6946202020202020, 0xED0000203A646C65);
      MEMORY[0x223DDAEA0](v27);
      _print_unlocked<A, B>(_:_:)();
      (*v64)(v24, v23);
      v28 = MEMORY[0x223DDF6D0](0x3A65756C6156202CLL, 0xEA00000000002720);
      v29 = MEMORY[0x223DDAEC0](v28);
      v31 = v30;
      (*v63)(v26, v25);
      MEMORY[0x223DDF6D0](v29, v31);

      MEMORY[0x223DDF6D0](2599, 0xE200000000000000);
      MEMORY[0x223DDF6D0](v68, v69);

      v22 += v65;
      --v19;
    }

    while (v19);
  }

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1260);
  v32 = *(v62 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v64 = 0x80000002234E1280;
  v65 = OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms;
  v66 = v32;

  v38 = 0;
  while (v36)
  {
LABEL_19:
    v44 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v45 = v44 | (v38 << 6);
    v46 = (*(v66 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    v68 = *(*(v66 + 56) + 8 * v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR, MEMORY[0x277D83B68]);
    lazy protocol witness table accessor for type String and conformance String();
    v49 = Sequence<>.joined(separator:)();
    v51 = v50;

    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v68 = 0x2720202020;
    v69 = 0xE500000000000000;
    MEMORY[0x223DDF6D0](v48, v47);
    MEMORY[0x223DDF6D0](0x656966206E692027, 0xEE005B203A73646CLL);
    MEMORY[0x223DDF6D0](v49, v51);

    MEMORY[0x223DDF6D0](2653, 0xE200000000000000);
    MEMORY[0x223DDF6D0](v68, v69);

    v52 = *(v62 + v65);
    v53 = String.lowercased()();

    if (*(v52 + 16))
    {
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v53._countAndFlagsBits, v53._object);
      v56 = v55;

      if (v56)
      {
        v39 = *(*(v52 + 56) + 8 * v54);
        if (*(v39 + 16))
        {
          v68 = 0;
          v69 = 0xE000000000000000;

          _StringGuts.grow(_:)(19);

          v67 = v39;
          v68 = 0xD000000000000010;
          v69 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
          v40 = BidirectionalCollection<>.joined(separator:)();
          v42 = v41;

          MEMORY[0x223DDF6D0](v40, v42);

          MEMORY[0x223DDF6D0](10, 0xE100000000000000);
          MEMORY[0x223DDF6D0](v68, v69);
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
    }
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v37)
    {

      return;
    }

    v36 = *(v33 + 8 * v43);
    ++v38;
    if (v36)
    {
      v38 = v43;
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t *a1)
{
  v2 = v1;
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokens);
  v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_queryTokensSynonyms);
  v6 = v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v7 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config + 72);

  specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v4, v5, v2, &v33, a1, v2, v7);
  swift_beginAccess();
  v8 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_optionalQueryTokensSynonyms);
  v9 = *(v6 + 80);

  specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v10, v8, v2, &v33, a1, v2, v9);

  v32 = MEMORY[0x277D84FA0];
  specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v4, v5, a1, &v32);

  specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(v11, v8, a1, &v32);

  specialized Sequence.filter(_:)(v12, &v32);
  v14 = v13;
  v15 = *(v13 + 16);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315394;
    v21 = MEMORY[0x223DDF850](v14, MEMORY[0x277D837D0]);
    v29 = v15;
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v31);
    v15 = v29;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v29;
    _os_log_impl(&dword_2232BB000, v17, v18, "penaltyTokens: %s, excessTokenCount: %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223DE0F80](v20, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);

    if (!v29)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v15)
  {
LABEL_7:
    v25 = -(v15 * *(v6 + 64));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v33;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xD000000000000014, 0x80000002234E12A0, isUniquelyReferenced_nonNull_native, v25);
    v33 = v30;
    swift_endAccess();
  }

LABEL_8:

  swift_beginAccess();
  v27 = v33;

  return v27;
}

void TokenContainer.sourceFieldsForToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.lowercased()();
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v4._countAndFlagsBits, v4._object);
    v6 = v5;

    if (v6)
    {
    }
  }

  else
  {
  }
}

void specialized closure #3 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = a2;
  v27 = v10;
  v28 = v6;
  while (v9)
  {
LABEL_10:
    String.lowercased()();
    v13 = String.lowercased()();
    if (*(a3 + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v13._countAndFlagsBits, v13._object);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

      v16 = String.lowercased()();
      swift_beginAccess();
      a2 = v29;
      specialized Set._Variant.insert(_:)(&v30, v16._countAndFlagsBits, v16._object);
      swift_endAccess();
    }

    else
    {
    }

LABEL_15:
    v17 = String.lowercased()();

    if (*(a2 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v17._countAndFlagsBits, v17._object);
      v19 = v18;

      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 40;
      do
      {
        String.lowercased()();
        v23 = String.lowercased()();

        if (*(a3 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v23._countAndFlagsBits, v23._object);
          v25 = v24;

          if (v25)
          {
            v26 = String.lowercased()();

            swift_beginAccess();
            specialized Set._Variant.insert(_:)(&v30, v26._countAndFlagsBits, v26._object);
            swift_endAccess();
          }
        }

        else
        {
        }

        v22 += 16;
        --v21;
      }

      while (v21);
    }

    v9 &= v9 - 1;

    a2 = v29;
    v10 = v27;
    v6 = v28;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t QTreeFeaturiser.deinit()
{

  outlined destroy of Locale?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);

  return v0;
}

uint64_t QTreeFeaturiser.__deallocating_deinit()
{

  outlined destroy of Locale?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_locale);

  return swift_deallocClassInstance();
}

uint64_t Document.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Document.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Document.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t closure #1 in tokenizeString(_:unit:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = String.subscript.getter();
  v8 = MEMORY[0x223DDF600](v7);
  v10 = v9;

  v11 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *a6 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    *a6 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v8;
  *(v15 + 5) = v10;
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PommesDialogStateManager.DialogValue(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCandidateId();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628], MEMORY[0x277D56638]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for PommesBridgeResultCandidateState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  result = outlined init with take of PommesBridgeResultCandidateState(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for PommesDialogStateManager.DialogValue);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4 & 1;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PommesCandidateId();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
  result = outlined init with take of PommesBridgeResultCandidateState(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for PommesBridgeResultCandidateState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

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

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      outlined destroy of String(*(v13 + 48) + 16 * v12);
      specialized _NativeDictionary._delete(at:)(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return v9;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return specialized _NativeSet.extractSubset(using:count:)(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized TokenContainer.init(document:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v4);
  v55 = a2;
  v5 = tokenizeString(_:unit:locale:)(*a1, *(a1 + 8), 0, a2);
  v6 = v5;
  v56 = *(v5 + 16);
  if (!v56)
  {

LABEL_25:
    v29 = tokenizeString(_:unit:locale:)(*(a1 + 16), *(a1 + 24), 0, v55);

    v60 = *(a1 + 32);
    outlined destroy of String(&v60);
    v30 = *(v29 + 16);
    if (!v30)
    {
LABEL_46:

      outlined destroy of Locale?(v55);
      return v59;
    }

    v31 = 0;
    v32 = v29 + 40;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_48;
      }

      v35 = String.lowercased()();
      v36 = v59;
      if (*(v59 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v35._countAndFlagsBits, v35._object);
        if (v37)
        {
          v38 = specialized Dictionary.subscript.modify(v57, v35._countAndFlagsBits, v35._object);
          if (*v39)
          {
            specialized Set._Variant.insert(_:)(&v58, 0x747369747261, 0xE600000000000000);
          }

          (v38)(v57, 0);

          goto LABEL_28;
        }

        v36 = v59;
      }

      v40 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of TokenContainer.init(document:locale:));
      outlined destroy of String(&unk_283695450);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v36;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v35._countAndFlagsBits, v35._object);
      v44 = v36[2];
      v45 = (v43 & 1) == 0;
      v27 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v27)
      {
        goto LABEL_50;
      }

      v47 = v43;
      if (v36[3] < v46)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }

      v52 = v42;
      specialized _NativeDictionary.copy()();
      v42 = v52;
      if (v47)
      {
LABEL_27:
        v33 = v42;

        v34 = v57[0];
        *(v57[0][7] + 8 * v33) = v40;

        v59 = v34;
        goto LABEL_28;
      }

LABEL_42:
      v49 = v57[0];
      v57[0][(v42 >> 6) + 8] |= 1 << v42;
      *(v49[6] + 16 * v42) = v35;
      *(v49[7] + 8 * v42) = v40;
      v50 = v49[2];
      v27 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v27)
      {
        goto LABEL_52;
      }

      v49[2] = v51;
      v59 = v49;
LABEL_28:
      ++v31;
      v32 += 16;
      if (v30 == v31)
      {
        goto LABEL_46;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v35._countAndFlagsBits, v35._object);
    if ((v47 & 1) != (v48 & 1))
    {
      goto LABEL_53;
    }

LABEL_41:
    if (v47)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  v54 = a1;
  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v6 + 16))
  {
    v10 = String.lowercased()();
    v11 = v59;
    if (*(v59 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v10._countAndFlagsBits, v10._object);
      if (v12)
      {
        v13 = specialized Dictionary.subscript.modify(v57, v10._countAndFlagsBits, v10._object);
        if (*v14)
        {
          specialized Set._Variant.insert(_:)(&v60, 0x656C746974, 0xE500000000000000);
        }

        (v13)(v57, 0);

        goto LABEL_4;
      }

      v11 = v59;
    }

    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of TokenContainer.init(document:locale:));
    outlined destroy of String(&unk_283695420);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v11;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10._countAndFlagsBits, v10._object);
    v19 = v11[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_49;
    }

    v22 = v17;
    if (v11[3] >= v21)
    {
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v22 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, v16);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v10._countAndFlagsBits, v10._object);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_53;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
LABEL_19:
        v25 = v57[0];
        v57[0][(v18 >> 6) + 8] |= 1 << v18;
        *(v25[6] + 16 * v18) = v10;
        *(v25[7] + 8 * v18) = v15;
        v26 = v25[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_51;
        }

        v25[2] = v28;
        v59 = v25;
        goto LABEL_4;
      }
    }

    v9 = v57[0];
    *(v57[0][7] + 8 * v18) = v15;

    v59 = v9;
LABEL_4:
    ++v7;
    v8 += 16;
    if (v56 == v7)
    {

      a1 = v54;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, double a7)
{
  v7 = a5;
  v86 = a4;
  v85 = a2;
  v9 = a1;
  v100 = *MEMORY[0x277D85DE8];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v90 = a3 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v84 = a6;
  v96 = a6 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v14 = (v11 + 63) >> 6;
  v15 = 0;
  v97 = 0;
  v88 = a1 + 64;
  v89 = v14;
  v95 = a5;

  if (!v13)
  {
LABEL_20:
    while (1)
    {
      v34 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v34 >= v14)
      {
      }

      v13 = *(v10 + 8 * v34);
      ++v15;
      if (v13)
      {
        v15 = v34;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  while (1)
  {
LABEL_24:
    v92 = v13;
    v35 = __clz(__rbit64(v13)) | (v15 << 6);
    v36 = (*(v9 + 48) + 16 * v35);
    v37 = v36[1];
    v38 = *(*(v9 + 56) + 8 * v35);
    v93 = *v36;
    String.lowercased()();
    v39 = String.lowercased()();
    v40 = v7[2];
    v94 = v37;
    v98 = v38;
    if (v40)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v39._countAndFlagsBits, v39._object);
      v42 = v41;

      v43 = 0.0;
      if (v42)
      {
        v44 = String.lowercased()();
        if (v7[2])
        {
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v44._countAndFlagsBits, v44._object);
          v47 = v46;

          v48 = MEMORY[0x277D84FA0];
          if (v47)
          {
            v48 = *(v7[7] + 8 * v45);
          }
        }

        else
        {

          v48 = MEMORY[0x277D84FA0];
        }

        v49 = v98;

        v50 = specialized _NativeSet.intersection(_:)(v48, v49);

        v51 = *(v50 + 16);

        v10 = v88;
        if (v51)
        {
          v43 = *(v96 + 40);
        }

        else
        {
          v43 = *(v96 + 48);
        }

        v14 = v89;
      }
    }

    else
    {

      v43 = 0.0;
    }

    if (v43 <= 0.0)
    {
      v43 = a7;
    }

    v9 = v91;
    if (v43 >= *(v90 + 40))
    {
      goto LABEL_6;
    }

    v52 = String.lowercased()();
    if (*(v85 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v52._countAndFlagsBits, v52._object);
      v54 = v53;

      v55 = MEMORY[0x277D84F90];
      if (v54)
      {
      }
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v56 = *(v55 + 16);
    v87 = v55;
    if (v56)
    {
      break;
    }

LABEL_5:

    v9 = v91;
    v10 = v88;
    v14 = v89;
LABEL_6:
    v13 = (v92 - 1) & v92;

    if (v43 == 0.0)
    {

      if (!v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = v86;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *v16;
      v18 = v99;
      *v16 = 0x8000000000000000;
      v19 = v94;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v94);
      v22 = v18[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_69;
      }

      v26 = v21;
      if (v18[3] < v25)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v19);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_73;
        }

LABEL_14:
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v30 = v20;
      specialized _NativeDictionary.copy()();
      v20 = v30;
      v19 = v94;
      if ((v26 & 1) == 0)
      {
LABEL_17:
        v29 = v99;
        v99[(v20 >> 6) + 8] |= 1 << v20;
        v31 = (v29[6] + 16 * v20);
        *v31 = v93;
        v31[1] = v19;
        *(v29[7] + 8 * v20) = v43;
        v32 = v29[2];
        v24 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v24)
        {
          goto LABEL_70;
        }

        v29[2] = v33;
        goto LABEL_19;
      }

LABEL_15:
      v28 = v20;

      v29 = v99;
      *(v99[7] + 8 * v28) = v43;
LABEL_19:
      *v86 = v29;

      swift_endAccess();
      v14 = v89;
      if (!v13)
      {
        goto LABEL_20;
      }
    }
  }

  v57 = *(v90 + 56);
  v58 = v55 + 40;
  while (1)
  {
    String.lowercased()();
    v60 = String.lowercased()();
    if (v7[2])
    {
      break;
    }

LABEL_46:

    v59 = 0.0;
LABEL_47:
    if (v43 < v59)
    {
      v43 = v59;
    }

    v58 += 16;
    if (!--v56)
    {
      goto LABEL_5;
    }
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v60._countAndFlagsBits, v60._object);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
    goto LABEL_46;
  }

  v63 = String.lowercased()();
  if (v7[2])
  {
    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v63._countAndFlagsBits, v63._object);
    v66 = v65;

    v67 = MEMORY[0x277D84FA0];
    if (v66)
    {
      v67 = *(v7[7] + 8 * v64);
    }
  }

  else
  {

    v67 = MEMORY[0x277D84FA0];
  }

  v68 = v98;
  v69 = v98[32];
  v70 = v69 & 0x3F;
  v71 = ((1 << v69) + 63) >> 6;
  v72 = 8 * v71;
  swift_bridgeObjectRetain_n();

  if (v70 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v76 = swift_slowAlloc();

      v81 = v97;
      v78 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v76, v71, v68, v67);

      v97 = v81;
      if (v81)
      {
        goto LABEL_72;
      }

      MEMORY[0x223DE0F80](v76, -1, -1);
      goto LABEL_60;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v84 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0), v72);
  v74 = &v84 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
  v75 = v97;
  v76 = v98;
  v77 = specialized closure #1 in _NativeSet.intersection(_:)(v74, v71, v98, v67);
  v97 = v75;
  if (!v75)
  {
    v78 = v77;

    swift_bridgeObjectRelease_n();
LABEL_60:

    v7 = v95;
    v79 = v78[2];

    if (v79)
    {
      v80 = *(v96 + 40);
    }

    else
    {
      v80 = *(v96 + 48);
    }

    v59 = v57 * v80;
    goto LABEL_47;
  }

  v83 = v97;
  swift_willThrow();

  __break(1u);
LABEL_72:

  MEMORY[0x223DE0F80](v76, -1, -1);
  __break(1u);
LABEL_73:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized TokenContainer.init(queryFields:requestedType:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v48 = a2;
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v9);
  v56 = *(a1 + 16);
  if (!v56)
  {
LABEL_32:

    outlined destroy of Locale?(v59);
    v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
    (*(*(v46 - 8) + 8))(v48, v46);
    return v68;
  }

  v10 = 0;
  v55 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v54 = v7 + 16;
  v53 = (v4 + 8);
  v49 = (v7 + 8);
  v62 = xmmword_2234CF920;
  v52 = a1;
  v51 = v6;
  v50 = v7;
  while (1)
  {
    if (v10 >= *(a1 + 16))
    {
      goto LABEL_36;
    }

    v11 = *(v7 + 72);
    v60 = v10;
    v12 = (*(v7 + 16))(v61, v55 + v11 * v10, v6);
    v13 = v57;
    MEMORY[0x223DDAEA0](v12);
    v14 = Apple_Parsec_Siri_V2alpha_AudioItemType.name.getter();
    v16 = v15;
    v17 = (*v53)(v13, v58);
    v18 = 0x6E776F6E6B6E75;
    if (v16)
    {
      v18 = v14;
    }

    v63 = v18;
    v19 = v16 ? v16 : 0xE700000000000000;
    v20 = MEMORY[0x223DDAEC0](v17);
    v22 = tokenizeString(_:unit:locale:)(v20, v21, 0, v59);

    v64 = *(v22 + 16);
    v65 = v22;
    if (v64)
    {
      break;
    }

LABEL_3:
    v10 = v60 + 1;

    v6 = v51;
    (*v49)(v61, v51);
    a1 = v52;
    v7 = v50;
    if (v10 == v56)
    {
      goto LABEL_32;
    }
  }

  v23 = 0;
  v24 = v65 + 40;
  while (v23 < *(v65 + 16))
  {
    v26 = String.lowercased()();
    v27 = v68;
    if (*(v68 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v26._countAndFlagsBits, v26._object);
      if (v28)
      {
        v29 = specialized Dictionary.subscript.modify(v66, v26._countAndFlagsBits, v26._object);
        if (*v30)
        {

          specialized Set._Variant.insert(_:)(&v67, v63, v19);
        }

        (v29)(v66, 0);

        goto LABEL_13;
      }

      v27 = v68;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v62;
    *(inited + 32) = v63;
    *(inited + 40) = v19;

    v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = v27;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26._countAndFlagsBits, v26._object);
    v36 = v27[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_34;
    }

    v39 = v34;
    if (v27[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v34)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v39)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v26._countAndFlagsBits, v26._object);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_37;
      }

      v35 = v40;
      if (v39)
      {
LABEL_12:

        v25 = v66[0];
        *(v66[0][7] + 8 * v35) = v32;

        v68 = v25;
        goto LABEL_13;
      }
    }

    v42 = v66[0];
    v66[0][(v35 >> 6) + 8] |= 1 << v35;
    *(v42[6] + 16 * v35) = v26;
    *(v42[7] + 8 * v35) = v32;
    v43 = v42[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_35;
    }

    v42[2] = v45;
    v68 = v42;
LABEL_13:
    ++v23;
    v24 += 16;
    if (v64 == v23)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for QTreeFeaturiser(uint64_t a1)
{
  result = type metadata singleton initialization cache for QTreeFeaturiser;
  if (!type metadata singleton initialization cache for QTreeFeaturiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for QTreeFeaturiser(uint64_t a1)
{
  type metadata accessor for Locale?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of QTreeFeaturiser.exactMatchBoost(document:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*v1 + 184);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = v3;
  v9 = v4;
  return v5(v7);
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

uint64_t getEnumTagSinglePayload for QTreeFeaturiser.ScoringConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QTreeFeaturiser.ScoringConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 88) = v3;
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

uint64_t getEnumTagSinglePayload for Document(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Document(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t SearchToolSearchRequestProcessorError.debugMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static SearchToolSearchRequestProcessorError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

SiriInformationSearch::SearchToolSearchRequestProcessorError __swiftcall SearchToolSearchRequestProcessorError.init(error:debugMessage:)(SiriInformationSearch::SearchToolSearchRequestProcessorError::SearchToolSearchRequestProcessorErrorType error, Swift::String_optional debugMessage)
{
  *v2 = *error;
  *(v2 + 8) = debugMessage;
  result.debugMessage = debugMessage;
  result.error = error;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType()
{
  result = lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType;
  if (!lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchToolSearchRequestProcessorError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

uint64_t static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_project_boxed_opaque_existential_1(a4, v13);
  return specialized static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(v12, a2, a3, v15, a5, v5, v10, v13, v11, v14);
}

id closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider()
{
  type metadata accessor for LaunchServicesSatisfyingAppsDataProvider();
  swift_allocObject();
  v0 = LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider, 0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider, type metadata accessor for LaunchServicesSatisfyingAppsDataProvider, &protocol conformance descriptor for LaunchServicesSatisfyingAppsDataProvider);
  return v0;
}

uint64_t closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider(void *a1, void *a2, unint64_t a3)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v100 = *(v112 - 8);
  v6 = MEMORY[0x28223BE20](v112);
  v97 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v89 - v9;
  MEMORY[0x28223BE20](v8);
  v101 = &v89 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v103 = *(v114 - 8);
  v12 = MEMORY[0x28223BE20](v114);
  v99 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v89 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v89 - v16;
  v17 = [a1 developerType];
  result = 0;
  if (v17 != 1 && a2)
  {
    v19 = a2;
    v20 = [v19 supportedMediaCategories];
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v20) = specialized Set.contains(_:)(0xD000000000000014, 0x80000002234E1550, v21);

    if (v20)
    {
      v22 = [v19 supportedIntents];
      v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = specialized Set.isSuperset<A>(of:)(&outlined read-only object #0 of closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider, v23);
      swift_arrayDestroy();

      if (v24)
      {

        return 1;
      }
    }

    v89 = v19;
    if (a3 >> 62)
    {
      goto LABEL_62;
    }

    v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    v26 = v89;
    if (v25)
    {
      v27 = 0;
      v116 = a3 & 0xC000000000000001;
      v111 = a3 & 0xFFFFFFFFFFFFFF8;
      v110 = a3 + 32;
      v115 = *MEMORY[0x277D23718];
      v95 = *MEMORY[0x277CB9FE0];
      v94 = *MEMORY[0x277CB9FF0];
      v93 = *MEMORY[0x277CB9FE8];
      v113 = *MEMORY[0x277D23710];
      v92 = *MEMORY[0x277CB9E18];
      v91 = *MEMORY[0x277CB9E10];
      v90 = *MEMORY[0x277CB9E08];
      v106 = xmmword_2234CF910;
      v108 = v10;
      v109 = a3;
      v107 = v25;
      while (1)
      {
        if (v116)
        {
          v28 = MEMORY[0x223DDFF80](v27, a3);
          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v27 >= *(v111 + 16))
          {
            goto LABEL_61;
          }

          v28 = *(v110 + 8 * v27);
          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            v25 = __CocoaSet.count.getter();
            goto LABEL_8;
          }
        }

        v117 = v28;
        v30 = [v28 systemProtocolMetadata];
        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
        v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v115), (v33 & 1) != 0))
        {
          v34 = *(*(v31 + 56) + 8 * v32);
          swift_unknownObjectRetain();

          objc_opt_self();
          v35 = swift_dynamicCastObjCClass();
          if (v35)
          {
            v105 = v34;
            v36 = [v35 searchScopes];
            v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v38 = *(v37 + 16);
            if (v38)
            {
              v118 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
              v39 = v118;
              v104 = v37;
              v40 = v37 + 40;
              v41 = v103;
              v42 = v98;
              do
              {

                StringSearchScope.init(rawValue:)();
                v118 = v39;
                v44 = *(v39 + 16);
                v43 = *(v39 + 24);
                if (v44 >= v43 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
                  v39 = v118;
                }

                *(v39 + 16) = v44 + 1;
                outlined init with take of PommesSearchReason?(v42, v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v44, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                v40 += 16;
                --v38;
              }

              while (v38);
            }

            else
            {

              v39 = MEMORY[0x277D84F90];
              v41 = v103;
            }

            v61 = *(v39 + 16);
            v62 = lazy protocol witness table accessor for type StringSearchScope? and conformance <A> A?();
            v118 = MEMORY[0x223DDFA80](v61, v114, v62);
            v63 = *(v39 + 16);
            v64 = v102;
            if (v63)
            {
              v96 = *(v41 + 80);
              v104 = (v96 + 32) & ~v96;
              v65 = v39 + v104;
              v66 = *(v41 + 72);
              v67 = v99;
              do
              {
                outlined init with copy of MediaUserStateCenter?(v65, v64, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                specialized Set._Variant.insert(_:)(v67, v64);
                outlined destroy of MediaUserStateCenter?(v67, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                v65 += v66;
                --v63;
              }

              while (v63);

              v68 = v104;
            }

            else
            {

              v66 = *(v41 + 72);
              v68 = (*(v41 + 80) + 32) & ~*(v41 + 80);
            }

            v104 = v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMR);
            v69 = swift_allocObject();
            *(v69 + 16) = v106;
            v70 = type metadata accessor for StringSearchScope();
            v71 = *(v70 - 8);
            v72 = *(v71 + 104);
            v72(v69 + v68, v95, v70);
            v73 = *(v71 + 56);
            v73(v69 + v68, 0, 1, v70);
            v72(v69 + v68 + v66, v94, v70);
            v73(v69 + v68 + v66, 0, 1, v70);
            v72(v69 + v68 + 2 * v66, v93, v70);
            v73(v69 + v68 + 2 * v66, 0, 1, v70);
            v74 = specialized Set._isDisjoint<A>(with:)(v69, v104);

            swift_unknownObjectRelease();
            swift_setDeallocating();
            goto LABEL_55;
          }

          v45 = a3;
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = a3;
        }

        v46 = v117;
        v47 = [v117 systemProtocolMetadata];
        v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v48 + 16))
        {
          break;
        }

        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
        if ((v50 & 1) == 0)
        {

          goto LABEL_11;
        }

        v51 = *(*(v48 + 56) + 8 * v49);
        swift_unknownObjectRetain();

        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v105 = v51;
          v53 = [v52 supportedCategories];
          v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = *(v54 + 16);
          if (v55)
          {
            v118 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
            v56 = v118;
            v104 = v54;
            v57 = v54 + 40;
            v58 = v100;
            do
            {

              VideoCategory.init(rawValue:)();
              v118 = v56;
              v60 = *(v56 + 16);
              v59 = *(v56 + 24);
              if (v60 >= v59 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
                v56 = v118;
              }

              *(v56 + 16) = v60 + 1;
              outlined init with take of PommesSearchReason?(v10, v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v60, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              v57 += 16;
              --v55;
            }

            while (v55);
          }

          else
          {

            v56 = MEMORY[0x277D84F90];
            v58 = v100;
          }

          v75 = *(v56 + 16);
          v76 = lazy protocol witness table accessor for type VideoCategory? and conformance <A> A?();
          v118 = MEMORY[0x223DDFA80](v75, v112, v76);
          v77 = *(v56 + 16);
          v78 = v101;
          if (v77)
          {
            v96 = *(v58 + 80);
            v104 = (v96 + 32) & ~v96;
            v79 = v56 + v104;
            v80 = *(v58 + 72);
            v81 = v97;
            do
            {
              outlined init with copy of MediaUserStateCenter?(v79, v78, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              specialized Set._Variant.insert(_:)(v81, v78);
              outlined destroy of MediaUserStateCenter?(v81, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              v79 += v80;
              --v77;
            }

            while (v77);

            v82 = v104;
          }

          else
          {

            v80 = *(v58 + 72);
            v82 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          }

          v104 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMR);
          v83 = swift_allocObject();
          *(v83 + 16) = v106;
          v84 = v83 + v82;
          v85 = type metadata accessor for VideoCategory();
          v86 = *(v85 - 8);
          v87 = *(v86 + 104);
          v87(v84, v92, v85);
          v88 = *(v86 + 56);
          v88(v84, 0, 1, v85);
          v87(v84 + v80, v91, v85);
          v88(v84 + v80, 0, 1, v85);
          v87(v84 + 2 * v80, v90, v85);
          v88(v84 + 2 * v80, 0, 1, v85);
          v74 = specialized Set._isDisjoint<A>(with:)(v83, v104);

          swift_unknownObjectRelease();

          swift_setDeallocating();
LABEL_55:
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v10 = v108;
          a3 = v109;
          v25 = v107;
          if ((v74 & 1) == 0)
          {

            return 1;
          }

          goto LABEL_12;
        }

        a3 = v45;

        swift_unknownObjectRelease();
LABEL_12:
        if (v27 == v25)
        {
          v26 = v89;
          goto LABEL_58;
        }
      }

LABEL_11:
      a3 = v45;
      goto LABEL_12;
    }

LABEL_58:

    return 0;
  }

  return result;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider;
  *(result + 24) = 0;
  return result;
}

uint64_t *SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared;
}

uint64_t static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared.getter()
{
  type metadata accessor for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator();

  return swift_initStaticObject();
}

uint64_t key path setter for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create : SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 96);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out SatisfyingAppsDataProvider), v5);
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.init()()
{
  result = v0;
  *(v0 + 16) = closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider;
  *(v0 + 24) = 0;
  return result;
}

uint64_t one-time initialization function for intentValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV10IntentTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV10IntentTypeOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234CF940;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x80000002234D9F00;
  v6 = *MEMORY[0x277D38CC8];
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
  v8 = *(*(v7 - 8) + 104);
  v8(&v4[v5], v6, v7);
  v9 = &v4[v1];
  v10 = *(v0 + 48);
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x80000002234D9F20;
  v8(&v4[v1 + v10], *MEMORY[0x277D38CC0], v7);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static SiriKitAppInfoDataProvider.intentValues = v11;
  return result;
}

uint64_t one-time initialization function for mediaCategoryValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV19IntentMediaCategoryOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV19IntentMediaCategoryOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D4CC0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0xD000000000000014;
  *(v4 + 1) = 0x80000002234E14B0;
  v6 = *MEMORY[0x277D38CE0];
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
  v8 = *(*(v7 - 8) + 104);
  v8(&v4[v5], v6, v7);
  v9 = &v4[v1];
  v10 = *(v0 + 48);
  *v9 = 0xD000000000000017;
  *(v9 + 1) = 0x80000002234E14D0;
  v8(&v4[v1 + v10], *MEMORY[0x277D38D00], v7);
  v11 = &v4[2 * v1];
  v12 = *(v0 + 48);
  *v11 = 0xD000000000000019;
  *(v11 + 1) = 0x80000002234E14F0;
  v8(&v11[v12], *MEMORY[0x277D38CD0], v7);
  v13 = &v4[3 * v1];
  v14 = *(v0 + 48);
  *v13 = 0xD000000000000014;
  *(v13 + 1) = 0x80000002234E1510;
  v8(&v13[v14], *MEMORY[0x277D38CE8], v7);
  v15 = &v4[4 * v1];
  v16 = *(v0 + 48);
  *v15 = 0xD000000000000016;
  *(v15 + 1) = 0x80000002234E1530;
  v8(&v15[v16], *MEMORY[0x277D38CF8], v7);
  v17 = &v4[5 * v1];
  v18 = *(v0 + 48);
  *v17 = 0xD000000000000014;
  *(v17 + 1) = 0x80000002234E1550;
  v8(&v17[v18], *MEMORY[0x277D38CF0], v7);
  v19 = &v4[6 * v1];
  v20 = *(v0 + 48);
  *v19 = 0xD000000000000019;
  *(v19 + 1) = 0x80000002234E1570;
  v8(&v19[v20], *MEMORY[0x277D38CD8], v7);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static SiriKitAppInfoDataProvider.mediaCategoryValues = v21;
  return result;
}

uint64_t SiriKitAppInfoDataProvider.__allocating_init(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v13 = v10 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v13 = 0;
  *(v13 + 8) = 1;
  outlined init with take of DomainWarmupHandling(a1, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  outlined init with take of DomainWarmupHandling(a4, v10 + 72);
  v14 = *(a5 + 16);
  *(v10 + 112) = *a5;
  *(v10 + 128) = v14;
  *(v10 + 144) = *(a5 + 32);
  return v10;
}

uint64_t SiriKitAppInfoDataProvider.init(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v13 = v5 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v13 = 0;
  *(v13 + 8) = 1;
  outlined init with take of DomainWarmupHandling(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  outlined init with take of DomainWarmupHandling(a4, v5 + 72);
  v14 = *(a5 + 16);
  *(v5 + 112) = *a5;
  *(v5 + 128) = v14;
  *(v5 + 144) = *(a5 + 32);
  return v5;
}

uint64_t SiriKitAppInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  SiriKitAppInfoDataProvider.getForegroundSiriKitAppInfo()(&v18 - v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(v7, v1 + v9);
  swift_endAccess();
  result = AFIsATV();
  if (!result)
  {
LABEL_4:
    v14 = *(v1 + 56);
    if (!v14)
    {
      return result;
    }

    goto LABEL_5;
  }

  outlined init with copy of MediaUserStateCenter?(v1 + 112, &v18, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  if (v19)
  {
    outlined init with take of DomainWarmupHandling(&v18, v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = *(v12 + 8);

    v13(partial apply for closure #1 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v1, v11, v12);

    result = __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_4;
  }

  result = outlined destroy of MediaUserStateCenter?(&v18, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v14 = *(v1 + 56);
  if (!v14)
  {
    return result;
  }

LABEL_5:
  v15 = *(v1 + 64);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = v1;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v17);
}

uint64_t closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0[3];
  v0[5] = swift_getObjectType();
  v0[6] = *(v1 + 16);
  v0[7] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xA3C4000000000000;
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v3, v2);
}

{
  (*(v0 + 48))(partial apply for closure #1 in closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), *(v0 + 32), *(v0 + 40), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void (*SiriKitAppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)())(uint64_t *, void)
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  *&v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v47 - v9;
  v67 = type metadata accessor for Google_Protobuf_Any();
  v57 = *(v67 - 8);
  v10 = MEMORY[0x28223BE20](v67);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v47 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + v23, v18, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps + 8) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2232BB000, v25, v26, "SiriKitAppInfoDataProvider numThirdPartyVideoApps is missing", v27, 2u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    goto LABEL_17;
  }

  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps))
  {
LABEL_17:
    (*(v20 + 8))(v22, v19);
    return 0;
  }

  Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.numSirikitVideoApps.setter();
  v28 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible);
  v29 = v68;
  if (v28 == 2 || (v28 & 1) == 0)
  {
LABEL_16:
    v69[3] = v19;
    v69[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo, MEMORY[0x277D38D10], MEMORY[0x277D38D08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
    (*(v20 + 16))(boxed_opaque_existential_1, v22, v19);
    defaultAnyTypeURLPrefix.getter();
    v35 = v49;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    v36 = v67;
    v47 = v22;
    v37 = v57;
    (*(v57 + 56))(v35, 0, 1, v67);
    (*(v37 + 32))(v29, v35, v36);
    v39 = v64;
    v38 = v65;
    v40 = v58;
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v52 + 104))(v51, *MEMORY[0x277D39AC0], v53);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    (*(v37 + 16))(v50, v29, v36);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v55 + 104))(v54, *MEMORY[0x277D39D58], v56);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    (*(v62 + 104))(v61, *MEMORY[0x277D39700], v63);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
    v41 = v59;
    v42 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v43 = swift_allocObject();
    v65 = xmmword_2234CF920;
    *(v43 + 16) = xmmword_2234CF920;
    v44 = v60;
    (*(v41 + 16))(v43 + v42, v40, v60);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
    v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v65;
    (*(v38 + 32))(v46 + v45, v39, v66);
    (*(v41 + 8))(v40, v44);
    (*(v37 + 8))(v68, v67);
    (*(v20 + 8))(v47, v19);
    return v46;
  }

  v30 = v48;
  (*(v48 + 104))(v15, *MEMORY[0x277D38CB8], v13);
  v31 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
  result = (*(v30 + 8))(v15, v13);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v31))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.appContext.modify();
  if (!__CFADD__(*v33, v31))
  {
    *v33 += v31;
    result(v69, 0);
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *SiriKitAppInfoDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  outlined destroy of MediaUserStateCenter?(v0 + 112, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  return v0;
}

uint64_t SiriKitAppInfoDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  outlined destroy of MediaUserStateCenter?(v0 + 112, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance SiriKitAppInfoDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 232))();
  *a1 = result;
  return result;
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  MEMORY[0x28223BE20](v48);
  v5 = &v36 - v4;
  v6 = type metadata accessor for VideoCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v17;
  v53 = a2;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v37 = *(a1 + 16);
  if (!v37)
  {
    return 1;
  }

  v36 = v18;
  v20 = 0;
  v38 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v21 = *(v16 + 72);
  v51 = (v7 + 48);
  v52 = v21;
  v41 = (v7 + 32);
  v44 = (v7 + 8);
  v45 = v6;
  v50 = v53 + 56;
  v42 = &v36 - v17;
  v40 = v14;
  while (1)
  {
    v39 = v20;
    outlined init with copy of MediaUserStateCenter?(v38 + v52 * v20, v19, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (*(v53 + 16))
    {
      Hasher.init(_seed:)();
      v22 = v36;
      outlined init with copy of MediaUserStateCenter?(v19, v36, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v49 = *v51;
      if (v49(v22, 1, v6) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v23 = v43;
        (*v41)(v43, v22, v6);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
        dispatch thunk of Hashable.hash(into:)();
        v24 = v23;
        v19 = v42;
        (*v44)(v24, v6);
      }

      v25 = Hasher._finalize()();
      v26 = -1 << *(v53 + 32);
      v27 = v25 & ~v26;
      if ((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        break;
      }
    }

LABEL_4:
    v20 = v39 + 1;
    outlined destroy of MediaUserStateCenter?(v19, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v20 == v37)
    {
      return 1;
    }
  }

  v46 = ~v26;
  while (1)
  {
    outlined init with copy of MediaUserStateCenter?(*(v53 + 48) + v27 * v52, v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v28 = *(v48 + 48);
    outlined init with copy of MediaUserStateCenter?(v14, v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    outlined init with copy of MediaUserStateCenter?(v19, &v5[v28], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v29 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v5, v47, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v29(&v5[v28], 1, v6) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      (*v44)(v47, v6);
      goto LABEL_12;
    }

    v30 = v47;
    v31 = v43;
    (*v41)(v43, &v5[v28], v6);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v44;
    v34 = v31;
    v14 = v40;
    (*v44)(v34, v6);
    outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v33(v30, v6);
    v19 = v42;
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_13:
    v6 = v45;
    v27 = (v27 + 1) & v46;
    if (((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  if (v29(&v5[v28], 1, v6) != 1)
  {
LABEL_12:
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
    goto LABEL_13;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v19, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  return 0;
}

{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  MEMORY[0x28223BE20](v48);
  v5 = &v36 - v4;
  v6 = type metadata accessor for StringSearchScope();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v17;
  v53 = a2;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v37 = *(a1 + 16);
  if (!v37)
  {
    return 1;
  }

  v36 = v18;
  v20 = 0;
  v38 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v21 = *(v16 + 72);
  v51 = (v7 + 48);
  v52 = v21;
  v41 = (v7 + 32);
  v44 = (v7 + 8);
  v45 = v6;
  v50 = v53 + 56;
  v42 = &v36 - v17;
  v40 = v14;
  while (1)
  {
    v39 = v20;
    outlined init with copy of MediaUserStateCenter?(v38 + v52 * v20, v19, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (*(v53 + 16))
    {
      Hasher.init(_seed:)();
      v22 = v36;
      outlined init with copy of MediaUserStateCenter?(v19, v36, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v49 = *v51;
      if (v49(v22, 1, v6) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v23 = v43;
        (*v41)(v43, v22, v6);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
        dispatch thunk of Hashable.hash(into:)();
        v24 = v23;
        v19 = v42;
        (*v44)(v24, v6);
      }

      v25 = Hasher._finalize()();
      v26 = -1 << *(v53 + 32);
      v27 = v25 & ~v26;
      if ((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        break;
      }
    }

LABEL_4:
    v20 = v39 + 1;
    outlined destroy of MediaUserStateCenter?(v19, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v20 == v37)
    {
      return 1;
    }
  }

  v46 = ~v26;
  while (1)
  {
    outlined init with copy of MediaUserStateCenter?(*(v53 + 48) + v27 * v52, v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v28 = *(v48 + 48);
    outlined init with copy of MediaUserStateCenter?(v14, v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    outlined init with copy of MediaUserStateCenter?(v19, &v5[v28], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v29 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v5, v47, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v29(&v5[v28], 1, v6) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      (*v44)(v47, v6);
      goto LABEL_12;
    }

    v30 = v47;
    v31 = v43;
    (*v41)(v43, &v5[v28], v6);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA010]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v44;
    v34 = v31;
    v14 = v40;
    (*v44)(v34, v6);
    outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v33(v30, v6);
    v19 = v42;
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_13:
    v6 = v45;
    v27 = (v27 + 1) & v46;
    if (((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  if (v29(&v5[v28], 1, v6) != 1)
  {
LABEL_12:
    outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
    goto LABEL_13;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v19, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  return 0;
}

uint64_t specialized static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38[3] = a7;
  v38[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v37[3] = a8;
  v37[4] = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a8 - 8) + 16))(v18, a4, a8);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109376;
    *(v22 + 4) = 1;
    *(v22 + 8) = 1024;
    *(v22 + 10) = a2 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_2232BB000, v20, v21, "SiriKitAppInfoDataProvider make, isEnabled=%{BOOL}d, satisfyingAppsDataProvider specified=%{BOOL}d", v22, 0xEu);
    MEMORY[0x223DE0F80](v22, -1, -1);

    v23 = a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v23 = a2;
    if (!a2)
    {
LABEL_7:
      swift_beginAccess();
      v24 = off_280FB8C58;

      v23 = v24();
      a3 = v25;

      swift_unknownObjectRetain();
    }
  }

  outlined init with copy of AppDataProviding(v38, v36);
  outlined init with copy of AppDataProviding(v37, v35);
  outlined init with copy of MediaUserStateCenter?(a5, v33, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  type metadata accessor for SiriKitAppInfoDataProvider(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v29 = v26 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v29 = 0;
  *(v29 + 8) = 1;
  outlined init with take of DomainWarmupHandling(v36, v26 + 16);
  *(v26 + 56) = v23;
  *(v26 + 64) = a3;
  outlined init with take of DomainWarmupHandling(v35, v26 + 72);
  v30 = v33[1];
  *(v26 + 112) = v33[0];
  *(v26 + 128) = v30;
  *(v26 + 144) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v31 = specialized AnyDataProvider.init<A>(provider:)(v26);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v31;
}

uint64_t partial apply for closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for SiriKitAppInfoDataProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriKitAppInfoDataProvider;
  if (!type metadata singleton initialization cache for SiriKitAppInfoDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SiriKitAppInfoDataProvider(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SiriKitAppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 232);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned SatisfyingAppsDataProvider)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v2 = *(result + 16);
  *(v2 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type VideoCategory? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StringSearchScope? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?);
  }

  return result;
}

BOOL specialized Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(a2 + 32);
    v14 = v12 & ~v13;
    if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v15 = ~v13;
    while (1)
    {
      v16 = (*(a2 + 48) + 16 * v14);
      v17 = *v16 == v11 && v16[1] == v10;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SourcePriorityFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SourcePriorityFeaturiser.init(query:)(a1);
  return v2;
}

float static SourcePriorityFeaturiser.score(_:_:)(float a1, float a2)
{
  v2 = ((a1 * a2) * 2.2) + 1.0;
  if (a1 < 0.001)
  {
    return 1.0;
  }

  else
  {
    return v2;
  }
}

uint64_t SourcePriorityFeaturiser.name.getter(uint64_t a1)
{
  type metadata accessor for SourcePriorityFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24SourcePriorityFeaturiserCmMd, &_s21SiriInformationSearch24SourcePriorityFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t SourcePriorityFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v83 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v82 = v4;
    v17 = v16;
    v85 = v16;
    *v15 = 136315394;
    v18 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v85);
    v81 = v9;
    v22 = v8;
    v23 = v5;
    v24 = a1;
    v25 = v21;

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    v26 = Apple_Parsec_Siri_V2alpha_AudioSort.toString.getter();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v85);

    *(v15 + 14) = v29;
    a1 = v24;
    v5 = v23;
    v8 = v22;
    v9 = v81;
    _os_log_impl(&dword_2232BB000, v12, v13, "SourcePriorityFeaturiser :  requestedMediaType=%s,  sort=%s", v15, 0x16u);
    swift_arrayDestroy();
    v30 = v17;
    v4 = v82;
    MEMORY[0x223DE0F80](v30, -1, -1);
    v31 = v15;
    v2 = v83;
    MEMORY[0x223DE0F80](v31, -1, -1);
  }

  v32 = v84;
  (*(v9 + 16))(v84, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v8);
  v33 = (*(v9 + 88))(v32, v8);
  if (v33 != *MEMORY[0x277D39130] && v33 != *MEMORY[0x277D39168])
  {
    if (v33 == *MEMORY[0x277D39160] || v33 == *MEMORY[0x277D39180] || v33 == *MEMORY[0x277D39138] || v33 == *MEMORY[0x277D39140] || v33 == *MEMORY[0x277D39148] || v33 == *MEMORY[0x277D39150] || v33 == *MEMORY[0x277D39158] || v33 == *MEMORY[0x277D39178] || v33 == *MEMORY[0x277D39170])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v54 = *(v53 - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_2234D7B70;
      v58 = v57 + v56;
      v59 = *(v54 + 104);
      v59(v58, *MEMORY[0x277D394D8], v53);
      v59(v58 + v55, *MEMORY[0x277D394E0], v53);
      v59(v58 + 2 * v55, *MEMORY[0x277D39500], v53);
      v59(v58 + 3 * v55, *MEMORY[0x277D394E8], v53);
      v59(v58 + 4 * v55, *MEMORY[0x277D39520], v53);
      v59(v58 + 5 * v55, *MEMORY[0x277D39488], v53);
      v59(v58 + 6 * v55, *MEMORY[0x277D394B0], v53);
      v59(v58 + 7 * v55, *MEMORY[0x277D394C0], v53);
      v59(v58 + 8 * v55, *MEMORY[0x277D39498], v53);
      v59(v58 + 9 * v55, *MEMORY[0x277D39528], v53);
      v59(v58 + 10 * v55, *MEMORY[0x277D394F0], v53);
      v59(v58 + 11 * v55, *MEMORY[0x277D39508], v53);
      v59(v58 + 12 * v55, *MEMORY[0x277D394A8], v53);
      v59(v58 + 13 * v55, *MEMORY[0x277D39480], v53);
      v59(v58 + 14 * v55, *MEMORY[0x277D394B8], v53);
      v59(v58 + 15 * v55, *MEMORY[0x277D394A0], v53);
      v59(v58 + 16 * v55, *MEMORY[0x277D39510], v53);
      v59(v58 + 17 * v55, *MEMORY[0x277D394F8], v53);
      v59(v58 + 18 * v55, *MEMORY[0x277D394C8], v53);
      v59(v58 + 19 * v55, *MEMORY[0x277D394D0], v53);
      v60 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      *(v2 + 24) = v60;
      v44 = 1067030938;
      goto LABEL_36;
    }

    (*(v9 + 8))(v32, v8);
  }

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v4);
  v35 = (*(v5 + 88))(v7, v4);
  if (v35 != *MEMORY[0x277D39890])
  {
    if (v35 == *MEMORY[0x277D39848])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v45 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v46 = *(v45 - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_2234D1950;
      v50 = v49 + v48;
      v51 = *(v46 + 104);
      v51(v50, *MEMORY[0x277D39500], v45);
      v51(v50 + v47, *MEMORY[0x277D394E8], v45);
      v51(v50 + 2 * v47, *MEMORY[0x277D394A0], v45);
      v51(v50 + 3 * v47, *MEMORY[0x277D394C8], v45);
      v51(v50 + 4 * v47, *MEMORY[0x277D39498], v45);
      v52 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v49);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      *(v2 + 24) = v52;
      v44 = 1061158912;
      goto LABEL_36;
    }

    if (v35 == *MEMORY[0x277D39838])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = swift_allocObject();
      v65 = v64;
      *(v64 + 16) = xmmword_2234CF920;
      v66 = MEMORY[0x277D394E0];
    }

    else
    {
      if (v35 != *MEMORY[0x277D39858])
      {
        if (v35 == *MEMORY[0x277D397F8])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
          v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
          v70 = *(v69 - 8);
          v71 = *(v70 + 72);
          v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_2234CF940;
          v74 = v73 + v72;
          v75 = *(v70 + 104);
          v75(v74, *MEMORY[0x277D394A0], v69);
          v76 = MEMORY[0x277D394C8];
        }

        else
        {
          if (v35 == *MEMORY[0x277D39808])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
            v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
            v62 = *(v61 - 8);
            v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
            v64 = swift_allocObject();
            v65 = v64;
            *(v64 + 16) = xmmword_2234CF920;
            v66 = MEMORY[0x277D394B8];
            goto LABEL_34;
          }

          if (v35 != *MEMORY[0x277D39888])
          {
            if (v35 == *MEMORY[0x277D39840])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
              v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
              v62 = *(v61 - 8);
              v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v64 = swift_allocObject();
              v65 = v64;
              *(v64 + 16) = xmmword_2234CF920;
              v66 = MEMORY[0x277D394E8];
            }

            else
            {
              if (v35 != *MEMORY[0x277D39820])
              {

                *(v2 + 24) = MEMORY[0x277D84FA0];
                *(v2 + 16) = 0;
                (*(v5 + 8))(v7, v4);
                return v2;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
              v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
              v62 = *(v61 - 8);
              v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v64 = swift_allocObject();
              v65 = v64;
              *(v64 + 16) = xmmword_2234CF920;
              v66 = MEMORY[0x277D394D0];
            }

            goto LABEL_34;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
          v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
          v78 = *(v69 - 8);
          v71 = *(v78 + 72);
          v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_2234CF940;
          v74 = v73 + v79;
          v75 = *(v78 + 104);
          v75(v74, *MEMORY[0x277D39510], v69);
          v76 = MEMORY[0x277D39498];
        }

        v75(v74 + v71, *v76, v69);
        v77 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v73);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();

        *(v2 + 24) = v77;
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = swift_allocObject();
      v65 = v64;
      *(v64 + 16) = xmmword_2234CF920;
      v66 = MEMORY[0x277D39500];
    }

LABEL_34:
    (*(v62 + 104))(v64 + v63, *v66, v61);
    v67 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v65);
    swift_setDeallocating();
    (*(v62 + 8))(v65 + v63, v61);
    swift_deallocClassInstance();

    *(v2 + 24) = v67;
LABEL_35:
    v44 = 1065353216;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2234D4CC0;
  v41 = v40 + v39;
  v42 = *(v37 + 104);
  v42(v41, *MEMORY[0x277D39500], v36);
  v42(v41 + v38, *MEMORY[0x277D394E0], v36);
  v42(v41 + 2 * v38, *MEMORY[0x277D394E8], v36);
  v42(v41 + 3 * v38, *MEMORY[0x277D394A0], v36);
  v42(v41 + 4 * v38, *MEMORY[0x277D394C8], v36);
  v42(v41 + 5 * v38, *MEMORY[0x277D39510], v36);
  v42(v41 + 6 * v38, *MEMORY[0x277D39498], v36);
  v43 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  *(v2 + 24) = v43;
  v44 = 1057384038;
LABEL_36:
  *(v2 + 16) = v44;
  return v2;
}

void SourcePriorityFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(v8 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v10 = *(v2 + 24);
  (*(v5 + 16))(v7, v8 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v4);
  LOBYTE(v10) = specialized Set.contains(_:)(v7, v10);
  v11 = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v12 = MEMORY[0x277D85000];
    v13 = (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(v11);
    (*((*v12 & *v13) + 0xB8))(*(v2 + 16));
  }
}

uint64_t SourcePriorityFeaturiser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *PommesSearchClient.init()()
{
  v1 = v0;
  v2 = specialized static PommesSearchClient.createXPCConnection()();
  if (v2)
  {
    *(v0 + 16) = v2;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2232BB000, v4, v5, "Cannot set up connection with PommesSearchService, client initialization fails...", v6, 2u);
      MEMORY[0x223DE0F80](v6, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t PommesSearchClient.searchInfiEntity(request:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](PommesSearchClient.searchInfiEntity(request:), 0, 0);
}

uint64_t PommesSearchClient.searchInfiEntity(request:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PommesSearchClient.searchInfiEntity(request:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse;
  v0[13] = &block_descriptor_19;
  v0[14] = v3;
  [v2 searchInfiEntityWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = PommesSearchClient.searchInfiEntity(request:);
  }

  else
  {
    v2 = PommesSearchClient.searchInfiEntity(request:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PommesSearchClient.searchToolGlobalSearch(request:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](PommesSearchClient.searchToolGlobalSearch(request:), 0, 0);
}

{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t PommesSearchClient.searchToolGlobalSearch(request:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PommesSearchClient.searchToolGlobalSearch(request:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v3;
  [v2 searchToolGlobalSearchWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = PommesSearchClient.searchToolGlobalSearch(request:);
  }

  else
  {
    v2 = PommesSearchClient.searchToolGlobalSearch(request:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

void closure #1 in static PommesSearchClient.createXPCConnection()(const char *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v3, a1, v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }
}

void closure #3 in static PommesSearchClient.createXPCConnection()(void *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2232BB000, oslog, v4, "Cannot set up connection with PommesSearchService, error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t PommesSearchClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PommesXPCSearching.searchInfiEntity(request:) in conformance PommesSearchClient(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = PommesSearchService.searchInfiEntity(request:);

  return PommesSearchClient.searchInfiEntity(request:)(a1);
}

uint64_t specialized static PommesSearchClient.createXPCConnection()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = MEMORY[0x223DDF550](0xD000000000000028, 0x80000002234DCD20);
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v22 = closure #1 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_13_2;
  v4 = _Block_copy(&aBlock);
  [v2 setInterruptionHandler_];
  _Block_release(v4);
  v22 = closure #2 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_16;
  v5 = _Block_copy(&aBlock);
  [v2 setInvalidationHandler_];
  _Block_release(v5);
  [v2 resume];
  v6 = [v2 endpoint];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_2232BB000, v9, v10, "PommesSearchService XPC connection established to endpoint: %@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  v22 = closure #3 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v21 = &block_descriptor_19_1;
  v14 = _Block_copy(&aBlock);
  v15 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC13Orchestrating_pMd, &_s21SiriInformationSearch06PommesC13Orchestrating_pMR);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v9(a1, a2, a3);
}

uint64_t block_copy_helper_11_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AudioPluginProcessor.__allocating_init()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedPreferences];
  v4 = [v3 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v30 = v6;
    *(&v30 + 1) = v8;
    v35 = 45;
    v36 = 0xE100000000000000;
    v33 = 95;
    v34 = 0xE100000000000000;
    v29 = lazy protocol witness table accessor for type String and conformance String();
    v28 = MEMORY[0x277D837D0];
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v10;

    type metadata accessor for PimsRuntimeLoggingHandler();
    v12 = swift_allocObject();
    getPimsRuntimeLogger()();
    outlined init with take of DomainWarmupHandling(&v30, (v12 + 2));
    v13 = type metadata accessor for MediaSuggestionManager();
    swift_allocObject();
    v14 = MediaSuggestionManager.init()();
    v12[10] = v13;
    v12[11] = &protocol witness table for MediaSuggestionManager;
    v12[7] = v14;
    v15 = one-time initialization token for pommes;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v30 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v30);
      _os_log_impl(&dword_2232BB000, v17, v18, "AudioPluginProcessor running with %s Locale", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    v21 = [objc_opt_self() defaultMediaLibrary];
    v31 = type metadata accessor for MPMediaLibrary();
    v32 = &protocol witness table for MPMediaLibrary;
    *&v30 = v21;
    v22 = (*(v1 + 144))(v9, v11, &v30, [v2 sharedPreferences], v12);

    return v22;
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2232BB000, v25, v26, "AudioPluginProcessor: Unable to obtain locale using en_US", v27, 2u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return AudioPluginProcessor.__allocating_init(locale:)(0x53555F6E65, 0xE500000000000000);
  }
}