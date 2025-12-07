uint64_t WholeHomeAudioPreflightClient.isMultiLocationPlayTask(pommesTask:)(void *a1, unint64_t a2, char *a3)
{
  v6 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v67);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = v49 - v16;
  MEMORY[0x28223BE20](v15);
  v68 = v49 - v17;
  if (one-time initialization token for pommes != -1)
  {
LABEL_38:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v18, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v57 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002234DC050, v71);
    _os_log_impl(&dword_2232BB000, v19, v20, "Checking %s...", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v71[3])
  {
LABEL_27:
    outlined destroy of MediaUserStateCenter?(v71, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v7;

  v7 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836989B0, a1);

  v52 = a3;
  v51 = a2;
  v50 = a1;
  v49[1] = 0;
  if (v7 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v68;
  a3 = v58;
  if (!v24)
  {
LABEL_28:

    return 0;
  }

  v26 = v10;
  a2 = 0;
  v65 = v7 & 0xFFFFFFFFFFFFFF8;
  v66 = v7 & 0xC000000000000001;
  v60 = (v14 + 56);
  v63 = *MEMORY[0x277D5EE50];
  v61 = (v14 + 48);
  v62 = (v14 + 104);
  v54 = (v14 + 32);
  v56 = (v14 + 8);
  a1 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR;
  v64 = v7;
  v59 = v24;
  while (1)
  {
    if (v66)
    {
      v28 = MEMORY[0x223DDFF80](a2, v7);
      v29 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      if (a2 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v29 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_26;
      }
    }

    v69 = v29;
    v70 = v28;
    if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
    {
      dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

      v30 = v60;
    }

    else
    {
      v30 = v60;
      (*v60)(v25, 1, 1, v6);
    }

    v14 = a3;
    (*v62)(a3, v63, v6);
    (*v30)(a3, 0, 1, v6);
    v31 = *(v67 + 48);
    outlined init with copy of MediaUserStateCenter?(v25, v26, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(a3, v26 + v31, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v32 = v25;
    v10 = v61;
    v33 = *v61;
    if ((*v61)(v26, 1, v6) == 1)
    {
      break;
    }

    v34 = v57;
    outlined init with copy of MediaUserStateCenter?(v26, v57, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if (v33(v26 + v31, 1, v6) == 1)
    {

      v35 = v58;
      outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v68, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v36 = v34;
      v14 = v35;
      (*v56)(v36, v6);
      v7 = v64;
      goto LABEL_11;
    }

    v37 = v55;
    (*v54)(v55, v26 + v31, v6);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x277D5EE58], MEMORY[0x277D5EE60]);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();

    v38 = *v56;
    (*v56)(v37, v6);
    v39 = v34;
    v14 = v58;
    outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v68, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v38(v39, v6);
    outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v7 = v64;
    if (v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    a3 = v14;
    ++a2;
    v25 = v68;
    if (v69 == v59)
    {
      goto LABEL_28;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v27 = v33(v26 + v31, 1, v6);
  v7 = v64;
  if (v27 != 1)
  {
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_12;
  }

  outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
LABEL_31:

  v41 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836989D8, v50);

  v42 = v41 >> 62 ? __CocoaSet.count.getter() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v52;
  v44 = v51;

  if (v42 < 2)
  {
    return 0;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v71[0] = v48;
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002234DC050, v71);
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v71);
    _os_log_impl(&dword_2232BB000, v45, v46, "Task passed test %s:\n%s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v48, -1, -1);
    MEMORY[0x223DE0F80](v47, -1, -1);
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v117 = *v1;
  v116 = type metadata accessor for PommesSearchReason();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = (&v111 - v6);
  *&v141 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v145 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v9 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Siri_Nlu_External_UserParse();
  v15 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb21SiriInformationSearch13PommesUsoTaskVcGMd, &_ss23_ContiguousArrayStorageCySb21SiriInformationSearch13PommesUsoTaskVcGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D1AE0;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v18 + 24) = v1;
  *(inited + 32) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool);
  v118 = inited + 32;
  *(inited + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #4 in implicit closure #3 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v19 + 24) = v1;
  *(inited + 48) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 56) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #6 in implicit closure #5 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v20 + 24) = v1;
  *(inited + 64) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 72) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #8 in implicit closure #7 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v21 + 24) = v1;
  *(inited + 80) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 88) = v21;
  v111 = type metadata accessor for PommesSearchRequest(0);
  v22 = *(v111 + 76);
  v115 = a1;
  v23 = *(a1 + v22);
  *&v148 = MEMORY[0x277D84F90];
  v24 = *(v23 + 16);
  v129 = inited;
  v120 = v24;
  if (!v24)
  {
    swift_retain_n();
    v69 = MEMORY[0x277D84F90];
LABEL_42:
    v145 = v69;
    v70 = *(v69 + 16);
    if (!v70)
    {
LABEL_69:

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
      swift_arrayDestroy();
      return 1;
    }

    v71 = 0;
    v72 = (v145 + 48);
    *&v68 = 136315138;
    v141 = v68;
    v142 = v70;
    while (1)
    {
      if (v71 >= *(v145 + 2))
      {
        goto LABEL_81;
      }

      v3 = *(v72 - 2);
      v73 = *(v72 - 1);
      v74 = *v72;
      static UsoTask_CodegenConverter.convert(task:)();
      outlined init with copy of MediaUserStateCenter?(&v148, &v146, &_sypSgMd, &_sypSgMR);
      if (*(&v147 + 1))
      {
        type metadata accessor for UsoTask_play_common_MediaItem();
        if (swift_dynamicCast())
        {

          outlined destroy of MediaUserStateCenter?(&v148, &_sypSgMd, &_sypSgMR);
          goto LABEL_54;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&v146, &_sypSgMd, &_sypSgMR);
      }

      v146 = v148;
      v147 = v149;
      if (!*(&v149 + 1))
      {
        outlined destroy of MediaUserStateCenter?(&v146, &_sypSgMd, &_sypSgMR);
        goto LABEL_45;
      }

      type metadata accessor for UsoTask_update_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_54:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      v76 = __swift_project_value_buffer(v75, static Logger.pommes);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();

      v144 = v3;

      v79 = os_log_type_enabled(v77, v78);
      v143 = v76;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v148 = v81;
        *v80 = v141;

        v82 = v73;
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v148);

        *(v80 + 4) = v83;
        _os_log_impl(&dword_2232BB000, v77, v78, "Checking task:\n%s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x223DE0F80](v81, -1, -1);
        v84 = v80;
        v70 = v142;
        MEMORY[0x223DE0F80](v84, -1, -1);
      }

      else
      {

        v82 = v73;
      }

      v85 = v129;
      v86 = v129[4];
      v87 = v144;
      *&v148 = v144;
      *(&v148 + 1) = v82;
      *&v149 = v74;

      v86(&v146, &v148);

      if (v146 & 1) != 0 || (v88 = v85[6], *&v148 = v87, *(&v148 + 1) = v82, *&v149 = v74, , v88(&v146, &v148), , (v146) || (v89 = v85[8], *&v148 = v87, *(&v148 + 1) = v82, *&v149 = v74, , v89(&v146, &v148), , (v146) || (v3 = v85[10], *&v148 = v87, *(&v148 + 1) = v82, *&v149 = v74, , (v3)(&v146, &v148), , (v146))
      {

        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
        swift_arrayDestroy();
        v101 = v115;
        v102 = (v115 + *(v111 + 32));
        v103 = *v102;
        v104 = v102[1];
        v105 = v112;
        PommesSearchRequest.pommesCandidateId.getter(v112);
        v106 = type metadata accessor for PommesCandidateId();
        (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
        v107 = v113;
        default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v113);
        v108 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v101, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v103, v104, v105, v107, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001DLL, 0x80000002234D2AE0);
        (*(v114 + 8))(v107, v116);
        outlined destroy of MediaUserStateCenter?(v105, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
        result = v108;
        if (v108)
        {
          return result;
        }

        v92 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v92, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_2232BB000, v92, v109, "WholeHomeAudioPreflightClient#ignore could not build PommesResponse with given parameters", v110, 2u);
          MEMORY[0x223DE0F80](v110, -1, -1);
        }

        goto LABEL_67;
      }

LABEL_45:
      ++v71;
      v72 += 3;
      if (v70 == v71)
      {
        goto LABEL_69;
      }
    }
  }

  v123 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v122 = v15 + 16;
  v136 = v12 + 16;
  v135 = (v9 + 8);
  v137 = v145 + 8;
  v134 = (v12 + 8);
  v121 = (v15 + 8);
  v25 = v23;
  swift_retain_n();
  v26 = 0;
  v27 = v15;
  v128 = v8;
  v127 = v11;
  v132 = v14;
  v131 = v12;
  v130 = v15;
  v119 = v25;
  while (1)
  {
    v126 = v26;
    if (v26 >= *(v25 + 16))
    {
      break;
    }

    (*(v27 + 16))(v124, v123 + *(v27 + 72) * v26, v125);
    v28 = Siri_Nlu_External_Span.matcherNames.getter();
    v29 = v28;
    v138 = *(v28 + 16);
    if (v138)
    {
      v30 = 0;
      v31 = MEMORY[0x277D84F90];
      v133 = v28;
      while (1)
      {
        if (v30 >= *(v29 + 16))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v145 = v31;
        v34 = v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v35 = *(v12 + 72);
        v144 = v30;
        (*(v12 + 16))(v14, v34 + v35 * v30, v11);
        v36 = v139;
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*v135)(v36, v140);
        v37 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
        if (v3)
        {

          (*v137)(v8, v141);
          (*v134)(v14, v11);

          (*v121)(v124, v125);

          if (one-time initialization token for pommes != -1)
          {
            goto LABEL_83;
          }

          goto LABEL_65;
        }

        v38 = v37;
        (*v137)(v8, v141);
        v39 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v41 = v40;
        v42 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
        if (v42 >> 62)
        {
          v55 = v42;
          v43 = __CocoaSet.count.getter();
          v42 = v55;
          if (!v43)
          {
LABEL_25:

            v14 = v132;
            (*v134)(v132, v11);
            v44 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v43)
          {
            goto LABEL_25;
          }
        }

        v143 = 0;
        v3 = v42;
        *&v146 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 & ~(v43 >> 63), 0);
        if (v43 < 0)
        {
          goto LABEL_78;
        }

        v142 = v38;
        v44 = v146;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v45 = 0;
          do
          {
            v46 = MEMORY[0x223DDFF80](v45, v3);
            *&v146 = v44;
            v48 = *(v44 + 16);
            v47 = *(v44 + 24);

            if (v48 >= v47 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
              v44 = v146;
            }

            ++v45;
            *(v44 + 16) = v48 + 1;
            v49 = (v44 + 24 * v48);
            v49[4] = v46;
            v49[5] = v39;
            v49[6] = v41;
          }

          while (v43 != v45);
        }

        else
        {
          v50 = (v3 + 32);
          do
          {
            v51 = *v50;
            *&v146 = v44;
            v53 = *(v44 + 16);
            v52 = *(v44 + 24);

            if (v53 >= v52 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
              v44 = v146;
            }

            *(v44 + 16) = v53 + 1;
            v54 = (v44 + 24 * v53);
            v54[4] = v51;
            v54[5] = v39;
            v54[6] = v41;
            ++v50;
            --v43;
          }

          while (v43);
        }

        v14 = v132;
        v11 = v127;
        (*v134)(v132, v127);
        v8 = v128;
        v3 = v143;
LABEL_26:
        v56 = *(v44 + 16);
        v57 = *(v145 + 2);
        v58 = v57 + v56;
        v12 = v131;
        if (__OFADD__(v57, v56))
        {
          goto LABEL_76;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v145;
        if (!isUniquelyReferenced_nonNull_native || v58 > *(v145 + 3) >> 1)
        {
          if (v57 <= v58)
          {
            v61 = v57 + v56;
          }

          else
          {
            v61 = v57;
          }

          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v61, 1, v145);
        }

        v27 = v130;
        if (*(v44 + 16))
        {
          if ((*(v60 + 3) >> 1) - *(v60 + 2) < v56)
          {
            goto LABEL_79;
          }

          v62 = v60;
          swift_arrayInitWithCopy();

          v31 = v62;
          v33 = v144;
          if (v56)
          {
            v63 = *(v62 + 2);
            v64 = __OFADD__(v63, v56);
            v65 = v63 + v56;
            if (v64)
            {
              goto LABEL_80;
            }

            *(v62 + 2) = v65;
          }
        }

        else
        {
          v32 = v60;

          v31 = v32;
          v33 = v144;
          if (v56)
          {
            goto LABEL_77;
          }
        }

        v30 = v33 + 1;
        v29 = v133;
        if (v30 == v138)
        {
          goto LABEL_39;
        }
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_39:
    v66 = v126 + 1;
    v67 = v31;

    (*v121)(v124, v125);
    specialized Array.append<A>(contentsOf:)(v67);
    v26 = v66;
    v25 = v119;
    if (v66 == v120)
    {
      v69 = v148;
      goto LABEL_42;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  swift_once();
LABEL_65:
  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Logger.pommes);
  v91 = v3;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v148 = v95;
    *v94 = 136315138;
    *&v146 = v3;
    v96 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v97 = String.init<A>(describing:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v148);

    *(v94 + 4) = v99;
    _os_log_impl(&dword_2232BB000, v92, v93, "ConversionUtils.convertUserDialogActToTasks error: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x223DE0F80](v95, -1, -1);
    MEMORY[0x223DE0F80](v94, -1, -1);

LABEL_67:
  }

  else
  {
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result & 1;
  return result;
}

unint64_t CommonAudio.Verb.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x6269726373627573;
      break;
    case 2:
      result = 0x776F6C6C6F66;
      break;
    case 3:
      result = 1701538156;
      break;
    case 4:
      result = 0x656C6666756873;
      break;
    case 5:
      result = 0x746165706572;
      break;
    case 6:
      result = 0x656D75736572;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x736972616D6D7573;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 10:
      result = 0x656B696C6E75;
      break;
    case 11:
      result = 0x74736575716572;
      break;
    case 12:
      result = 0x6E696D7265746564;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 6579297;
      break;
    case 15:
      result = 0x656C62616E65;
      break;
    case 16:
      result = 0x656C6261736964;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Verb@<X0>(Swift::String *a1@<X0>, SiriInformationSearch::CommonAudio::Verb_optional *a2@<X8>)
{
  result = specialized CommonAudio.Verb.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Verb@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Verb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.UsoEntity.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E456F4E5F6F7375;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.UsoEntity(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6E456F4E5F6F7375;
  }

  if (v2)
  {
    v4 = 0xEC00000079746974;
  }

  else
  {
    v4 = 0x80000002234D92F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E456F4E5F6F7375;
  }

  if (*a2)
  {
    v6 = 0x80000002234D92F0;
  }

  else
  {
    v6 = 0xEC00000079746974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.UsoEntity()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.UsoEntity(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.UsoEntity(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.UsoEntity(unint64_t *a1@<X8>)
{
  v2 = 0x80000002234D92F0;
  v3 = 0x6E456F4E5F6F7375;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC00000079746974;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t CommonAudio.Attribute.rawValue.getter(char a1)
{
  result = 0x697472416D6F7266;
  switch(a1)
  {
    case 1:
      result = 0x676E6F536D6F7266;
      break;
    case 2:
      result = 0x75626C416D6F7266;
      break;
    case 3:
      result = 0x7478654E79616C70;
      break;
    case 4:
      result = 0x776F4E79616C70;
      break;
    case 5:
      result = 0x7473614C79616C70;
      break;
    case 6:
      result = 0x7974696E69666661;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x7265766F63736964;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 1954047342;
      break;
    case 11:
      result = 0x64656D616ELL;
      break;
    case 12:
      result = 0x73756F6976657270;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Attribute@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Attribute.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Attribute@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Attribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.Modifier.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65726566666964;
  }

  else
  {
    return 0x664F65726F6DLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Modifier(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65726566666964;
  }

  else
  {
    v3 = 0x664F65726F6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006E61685474;
  }

  if (*a2)
  {
    v5 = 0x6E65726566666964;
  }

  else
  {
    v5 = 0x664F65726F6DLL;
  }

  if (*a2)
  {
    v6 = 0xED00006E61685474;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Modifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Modifier(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Modifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Modifier(uint64_t *a1@<X8>)
{
  v2 = 0x664F65726F6DLL;
  if (*v1)
  {
    v2 = 0x6E65726566666964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006E61685474;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.Noun.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7972617262696CLL;
  }

  if (a1 == 1)
  {
    return 0x317374616562;
  }

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Noun(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x317374616562;
  v5 = 0x80000002234D9B30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9B30;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x317374616562;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Noun()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Noun(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Noun(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Noun@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Noun.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Noun(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x317374616562;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000002234D9B30;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972617262696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CommonAudio.RadioType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 28001;
  }

  else
  {
    return 28006;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.RadioType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28001;
  }

  else
  {
    v2 = 28006;
  }

  if (*a2)
  {
    v3 = 28001;
  }

  else
  {
    v3 = 28006;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.RadioType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.RadioType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.RadioType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.RadioType(uint64_t *a1@<X8>)
{
  v2 = 28006;
  if (*v1)
  {
    v2 = 28001;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t CommonAudio.Confirmation.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x6C65636E6163;
  if (a1 != 2)
  {
    v2 = 0x6F666E4965726F6DLL;
  }

  if (a1)
  {
    v1 = 28526;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Confirmation(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x6C65636E6163;
  if (v3 != 2)
  {
    v6 = 0x6F666E4965726F6DLL;
    v5 = 0xE800000000000000;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x6C65636E6163;
  if (*a2 != 2)
  {
    v12 = 0x6F666E4965726F6DLL;
    v11 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Confirmation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Confirmation(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Confirmation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Confirmation@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Confirmation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Confirmation(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t one-time initialization function for mappingDecade()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch11CommonAudioV6DecadeOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingDecade);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch11CommonAudioV6DecadeOtMd, &_sSS_21SiriInformationSearch11CommonAudioV6DecadeOtMR);
  result = swift_arrayDestroy();
  static CommonAudio.Decade.mappingDecade = v0;
  return result;
}

uint64_t *CommonAudio.Decade.mappingDecade.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingDecade != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Decade.mappingDecade;
}

unint64_t one-time initialization function for mappingToStartYear()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV6DecadeO_SiTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingToStartYear);
  static CommonAudio.Decade.mappingToStartYear = result;
  return result;
}

uint64_t *CommonAudio.Decade.mappingToStartYear.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingToStartYear != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Decade.mappingToStartYear;
}

id CommonAudio.Decade.releaseDate.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Calendar.Identifier();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for DateComponents();
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v20;
  if (one-time initialization token for mappingToStartYear != -1)
  {
    v55 = v21;
    v56 = &v43 - v20;
    v42 = v22;
    swift_once();
    v21 = v55;
    v23 = v56;
    v22 = v42;
  }

  v24 = static CommonAudio.Decade.mappingToStartYear;
  if (!*(static CommonAudio.Decade.mappingToStartYear + 16))
  {
    return 0;
  }

  v55 = v21;
  v56 = v23;
  v54 = v22;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v44 = v18;
  v45 = v7;
  v46 = v5;
  v27 = *(*(v24 + 56) + 8 * v25);
  v53 = *MEMORY[0x277CC9830];
  v52 = *(v12 + 104);
  v52(v14);
  Calendar.init(identifier:)();
  v28 = *(v12 + 8);
  v50 = v12 + 8;
  v51 = v28;
  v28(v14, v11);
  v47 = type metadata accessor for Calendar();
  v29 = *(v47 - 8);
  v48 = *(v29 + 56);
  v49 = v29 + 56;
  v48(v17, 0, 1, v47);
  v30 = type metadata accessor for TimeZone();
  v31 = *(*(v30 - 8) + 56);
  v31(v10, 1, 1, v30);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  (v52)(v14, v53, v11);
  Calendar.init(identifier:)();
  v51(v14, v11);
  v48(v17, 0, 1, v47);
  result = (v31)(v10, 1, 1, v30);
  if (__OFADD__(v27, 9))
  {
    __break(1u);
  }

  else
  {
    v33 = v54;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    type metadata accessor for INDateComponentsRange();
    v34 = v55;
    v35 = *(v55 + 16);
    v36 = v44;
    v37 = v45;
    v35(v45, v56, v44);
    v38 = *(v34 + 56);
    v38(v37, 0, 1, v36);
    v39 = v46;
    v35(v46, v33, v36);
    v38(v39, 0, 1, v36);
    v40 = INDateComponentsRange.__allocating_init(start:end:)(v37, v39);
    v41 = *(v34 + 8);
    v41(v33, v36);
    v41(v56, v36);
    return v40;
  }

  return result;
}

id INDateComponentsRange.__allocating_init(start:end:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  isa = 0;
  if (v6(a1, 1, v4) != 1)
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDateComponents:isa endDateComponents:v8];

  return v9;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Decade(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CommonAudio.Decade.rawValue.getter(*a1);
  if (v3 == CommonAudio.Decade.rawValue.getter(v2))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Decade()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CommonAudio.Decade.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Decade(uint64_t a1)
{
  CommonAudio.Decade.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Decade(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CommonAudio.Decade.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Decade@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Decade.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Decade@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Decade.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for mappingMediaSortOrder()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV4SortO_So07INMediaH5OrderVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingMediaSortOrder);
  static CommonAudio.Sort.mappingMediaSortOrder = result;
  return result;
}

uint64_t *CommonAudio.Sort.mappingMediaSortOrder.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaSortOrder != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Sort.mappingMediaSortOrder;
}

uint64_t CommonAudio.Sort.sortOrder.getter(uint64_t a1)
{
  if (one-time initialization token for mappingMediaSortOrder != -1)
  {
    swift_once();
  }

  v2 = static CommonAudio.Sort.mappingMediaSortOrder;
  if (*(static CommonAudio.Sort.mappingMediaSortOrder + 16))
  {
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return *(*(v2 + 56) + 8 * v3);
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "CommonAudio#Sort#sortOrder recieved unregistered decade: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  return 0;
}

uint64_t CommonAudio.Sort.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x72616C75706F70;
    v6 = 1953719650;
    if (a1 != 2)
    {
      v6 = 0x7473726F77;
    }

    if (a1)
    {
      v5 = 0x616C75706F706E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74736574746F68;
    v2 = 0x6572636F6964656DLL;
    if (a1 != 7)
    {
      v2 = 0x7473657461657267;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x74736577656ELL;
    if (a1 != 4)
    {
      v3 = 0x747365646C6FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Sort@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Sort.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Sort@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Sort.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.UsoEntity.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t CommonAudio.Reference.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x696E696665646E69;
  }

  else
  {
    return 0x6574696E69666564;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Reference(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696E696665646E69;
  }

  else
  {
    v3 = 0x6574696E69666564;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x696E696665646E69;
  }

  else
  {
    v5 = 0x6574696E69666564;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Reference()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Reference(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Reference(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.UsoEntity@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Reference(uint64_t *a1@<X8>)
{
  v2 = 0x6574696E69666564;
  if (*v1)
  {
    v2 = 0x696E696665646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for mappingMediaType()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0D17InformationSearch11CommonAudioV0iK0OSgtGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0D17InformationSearch11CommonAudioV0iK0OSgtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D2BB0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = *MEMORY[0x277D5EDA0];
  v7 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, *MEMORY[0x277D5EDC0], v7);
  *(v4 + v1 + v9) = 1;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, *MEMORY[0x277D5EDB8], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, *MEMORY[0x277D5EE18], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, *MEMORY[0x277D5EE10], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, *MEMORY[0x277D5ED68], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, *MEMORY[0x277D5ED30], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, *MEMORY[0x277D5ED90], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, *MEMORY[0x277D5EDF8], v7);
  *(v4 + 8 * v1 + v16) = 8;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, *MEMORY[0x277D5EE08], v7);
  *(v4 + 9 * v1 + v17) = 9;
  v18 = *(v0 + 48);
  v8(v4 + 10 * v1, *MEMORY[0x277D5ED38], v7);
  *(v4 + 10 * v1 + v18) = 10;
  v19 = *(v0 + 48);
  v8(v4 + 11 * v1, *MEMORY[0x277D5EDB0], v7);
  *(v4 + 11 * v1 + v19) = 11;
  v20 = *(v0 + 48);
  v8(v4 + 12 * v1, *MEMORY[0x277D5ED80], v7);
  *(v4 + 12 * v1 + v20) = 12;
  v21 = *(v0 + 48);
  v8(v4 + 13 * v1, *MEMORY[0x277D5EDD8], v7);
  *(v4 + 13 * v1 + v21) = 13;
  v22 = *(v0 + 48);
  v8(v4 + 14 * v1, *MEMORY[0x277D5ED98], v7);
  *(v4 + 14 * v1 + v22) = 14;
  v23 = *(v0 + 48);
  v8(v4 + 15 * v1, *MEMORY[0x277D5EE20], v7);
  *(v4 + 15 * v1 + v23) = 15;
  v24 = *(v0 + 48);
  v8(v4 + 16 * v1, *MEMORY[0x277D5ED78], v7);
  *(v4 + 16 * v1 + v24) = 16;
  v25 = *(v0 + 48);
  v8(v4 + 17 * v1, *MEMORY[0x277D5ED88], v7);
  *(v4 + 17 * v1 + v25) = 17;
  v26 = *(v0 + 48);
  v8(v4 + 18 * v1, *MEMORY[0x277D5ED48], v7);
  *(v4 + 18 * v1 + v26) = 18;
  v27 = *(v0 + 48);
  v8(v4 + 19 * v1, *MEMORY[0x277D5ED70], v7);
  *(v4 + 19 * v1 + v27) = 19;
  v28 = *(v0 + 48);
  v8(v4 + 20 * v1, *MEMORY[0x277D5EDC8], v7);
  *(v4 + 20 * v1 + v28) = 20;
  v29 = *(v0 + 48);
  v8(v4 + 21 * v1, *MEMORY[0x277D5EDF0], v7);
  *(v4 + 21 * v1 + v29) = 21;
  v30 = *(v0 + 48);
  v8(v4 + 22 * v1, *MEMORY[0x277D5ED58], v7);
  *(v4 + 22 * v1 + v30) = 22;
  v31 = *(v0 + 48);
  v8(v4 + 23 * v1, *MEMORY[0x277D5EDD0], v7);
  *(v4 + 23 * v1 + v31) = 23;
  v32 = *(v0 + 48);
  v8(v4 + 24 * v1, *MEMORY[0x277D5ED40], v7);
  *(v4 + 24 * v1 + v32) = 24;
  v33 = *(v0 + 48);
  v8(v4 + 25 * v1, *MEMORY[0x277D5EDA8], v7);
  *(v4 + 25 * v1 + v33) = 25;
  v34 = *(v0 + 48);
  v8(v4 + 26 * v1, *MEMORY[0x277D5ED28], v7);
  *(v4 + 26 * v1 + v34) = 26;
  v35 = *(v0 + 48);
  v8(v4 + 27 * v1, *MEMORY[0x277D5ED50], v7);
  *(v4 + 27 * v1 + v35) = 27;
  v36 = *(v0 + 48);
  v8(v4 + 28 * v1, *MEMORY[0x277D5EDE0], v7);
  *(v4 + 28 * v1 + v36) = 28;
  v37 = *(v0 + 48);
  v8(v4 + 29 * v1, *MEMORY[0x277D5EE00], v7);
  *(v4 + 29 * v1 + v37) = 28;
  v38 = *(v0 + 48);
  v8(v4 + 30 * v1, *MEMORY[0x277D5ED60], v7);
  *(v4 + 30 * v1 + v38) = 28;
  v39 = v4 + 31 * v1;
  v40 = *(v0 + 48);
  v8(v39, *MEMORY[0x277D5EE28], v7);
  *(v39 + v40) = 28;
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0C17InformationSearch11CommonAudioV0hJ0OSgTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static CommonAudio.MediaType.mappingMediaType = v41;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingMediaType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingMediaType;
}

unint64_t one-time initialization function for mappingMediaItemType()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV9MediaTypeO_So011INMediaItemI0VTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingMediaItemType);
  static CommonAudio.MediaType.mappingMediaItemType = result;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingMediaItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaItemType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingMediaItemType;
}

unint64_t one-time initialization function for mappingStationMediaItemType()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV9MediaTypeO_So011INMediaItemI0VTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingStationMediaItemType);
  static CommonAudio.MediaType.mappingStationMediaItemType = result;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingStationMediaItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingStationMediaItemType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingStationMediaItemType;
}

uint64_t static CommonAudio.Decade.mappingDecade.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CommonAudio.MediaType.stationMediaItemType.getter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    v8 = a1;
    v9 = a3;
    swift_once();
    a3 = v9;
    a1 = v8;
  }

  v4 = *a3;
  if (*(*a3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

unint64_t CommonAudio.MediaType.rawValue.getter(char a1)
{
  result = 0x65726E6567;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x6E6F6974617473;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6F68536F69646172;
      break;
    case 7:
      result = 1735290739;
      break;
    case 8:
      result = 0x5573656E755469;
      break;
    case 9:
      result = 0x74736163646F70;
      break;
    case 10:
      result = 0x646956636973756DLL;
      break;
    case 11:
      result = 0x636973756DLL;
      break;
    case 12:
      result = 1937204590;
      break;
    case 13:
      result = 0x776F68537674;
      break;
    case 14:
      result = 0x6D75626C61;
      break;
    case 15:
      result = 0x656E6F74676E6972;
      break;
    case 16:
      result = 28780;
      break;
    case 17:
      result = 2003789939;
      break;
    case 18:
      result = 0x6174536F69646172;
      break;
    case 19:
      result = 28773;
      break;
    case 20:
      result = 0x656C676E6973;
      break;
    case 21:
      result = 0x65646F73697065;
      break;
    case 22:
      result = 0x5374736163646F70;
      break;
    case 23:
      result = 0x73646E756F73;
      break;
    case 24:
      result = 0x74616C69706D6F63;
      break;
    case 25:
      result = 0x6569766F6DLL;
      break;
    case 26:
      result = 0x6F6F426F69647561;
      break;
    case 27:
      result = 0x616C50636973756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Verb(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.MediaType@<X0>(Swift::String *a1@<X0>, SiriInformationSearch::CommonAudio::MediaType_optional *a2@<X8>)
{
  result = specialized CommonAudio.MediaType.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.MediaType@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.MediaType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized CommonAudio.Verb.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized static CommonAudio.Decade.from(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (one-time initialization token for mappingDecade != -1)
    {
      swift_once();
    }

    v4 = static CommonAudio.Decade.mappingDecade;
    if (*(static CommonAudio.Decade.mappingDecade + 16))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v6)
      {
        return *(*(v4 + 56) + v5);
      }
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v9, v10, "CommonAudio#Decade#from received unregistered decade: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return 11;
}

unint64_t specialized CommonAudio.Attribute.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Attribute.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Noun.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Noun.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Confirmation.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Confirmation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t type metadata accessor for INDateComponentsRange()
{
  result = lazy cache variable for type metadata for INDateComponentsRange;
  if (!lazy cache variable for type metadata for INDateComponentsRange)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INDateComponentsRange);
  }

  return result;
}

unint64_t specialized CommonAudio.Decade.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Decade.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Sort.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Sort.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static CommonAudio.MediaType.from(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (one-time initialization token for mappingMediaType != -1)
    {
      swift_once();
    }

    v15 = static CommonAudio.MediaType.mappingMediaType;
    if (*(static CommonAudio.MediaType.mappingMediaType + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if (v17)
      {
        v18 = *(*(v15 + 56) + v16);
        (*(v12 + 8))(v14, v11);
        return v18;
      }
    }

    (*(v12 + 8))(v14, v11);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(a1, v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(v8, v5);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v8);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v30);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2232BB000, v21, v22, "CommonAudio#MediaType#from recieved unregistered type: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x223DE0F80](v24, -1, -1);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  else
  {

    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v8);
  }

  return 28;
}

unint64_t specialized CommonAudio.MediaType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Verb and conformance CommonAudio.Verb()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb;
  if (!lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity()
{
  result = lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity;
  if (!lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Attribute and conformance CommonAudio.Attribute()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute;
  if (!lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Modifier and conformance CommonAudio.Modifier()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier;
  if (!lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Noun and conformance CommonAudio.Noun()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun;
  if (!lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.RadioType and conformance CommonAudio.RadioType()
{
  result = lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType;
  if (!lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation;
  if (!lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Decade and conformance CommonAudio.Decade()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade;
  if (!lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Sort and conformance CommonAudio.Sort()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort;
  if (!lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Reference and conformance CommonAudio.Reference()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference;
  if (!lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.MediaType and conformance CommonAudio.MediaType()
{
  result = lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType;
  if (!lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.Verb(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommonAudio.Verb(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CommonAudio.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.Decade(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.Decade(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int DisableSearchPreflightClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisableSearchPreflightClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisableSearchPreflightClientError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

id DisableSearchPreflightClient.shouldDisableSearchViaPreflight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000019, 0x80000002234DC0E0);
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t DisableSearchPreflightClient.handle(pommesSearchRequest:)()
{
  if ((*(*v0 + 80))())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "DisableSearchPreflightClient#handle POMMES SEARCH DISABLED VIA PREFLIGHT CLIENT", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    lazy protocol witness table accessor for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError();
    swift_allocError();
    return 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "DisableSearchPreflightClient#handle no conclusive result, ignoring", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError()
{
  result = lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError;
  if (!lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError;
  if (!lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError);
  }

  return result;
}

uint64_t MediaItemRankingSignals.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MediaItemRankingSignals.__allocating_init(artist:isInLibrary:isExplicitContent:isDownloaded:isPlayable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 34) = a5;
  *(result + 35) = a6;
  return result;
}

uint64_t MediaItemRankingSignals.init(artist:isInLibrary:isExplicitContent:isDownloaded:isPlayable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 33) = a4;
  *(v6 + 34) = a5;
  *(v6 + 35) = a6;
  return v6;
}

uint64_t MediaItemRankingSignals.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MPMediaLibrary.mediaItemRankingSignals(for:iTunesAltDSID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x223DDF550](a3, a4);
    v11 = [v9 specificAccountWithAltDSID_];

    v12 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x223DDF550](a1, a2);
      v15 = [v13 entityWithSiriSyncIdentifier_];

      if (v15)
      {

LABEL_6:
        v17 = MPMediaLibrary.mediaItemRankingSignals(for:)(v15);

        return v17;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.pommes);

      v25 = v13;
      v20 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38 = v28;
        *v27 = 136315650;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v38);
        *(v27 + 12) = 2080;
        *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
        *(v27 + 22) = 2080;
        v29 = [v25 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

        *(v27 + 24) = v33;
        _os_log_impl(&dword_2232BB000, v20, v26, "unable to find user's mediaEntity for iTunesAltDSID %s siriSyncId %s userMediaLibrary : %s ", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v28, -1, -1);
        MEMORY[0x223DE0F80](v27, -1, -1);

        goto LABEL_21;
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v38);
        _os_log_impl(&dword_2232BB000, v20, v21, "unable to find user's library for iTunesAltDSID %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x223DE0F80](v23, -1, -1);
        MEMORY[0x223DE0F80](v22, -1, -1);
      }
    }

    goto LABEL_21;
  }

  v16 = MEMORY[0x223DDF550](a1, a2, a3);
  v15 = [v4 entityWithSiriSyncIdentifier_];

  if (v15)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
    _os_log_impl(&dword_2232BB000, v11, v35, "unable to find mediaEntity for siriSyncId %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

LABEL_21:

  return 0;
}

uint64_t MPMediaLibrary.mediaItemRankingSignals(for:)(void *a1)
{
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v7 = v1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *&v98 = v9;
  *(&v98 + 1) = v11;
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC140);
  v12 = v98;
  Date.init()();
  v13 = &v6[v4[7]];
  *v13 = "SiriInformationSearch/MediaLibrary.swift";
  *(v13 + 1) = 40;
  v13[16] = 2;
  *&v6[v4[8]] = 75;
  v14 = &v6[v4[9]];
  *v14 = "mediaItemRankingSignals(for:)";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v15 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v12, *(&v12 + 1));
  v17 = v16;

  v18 = &v6[v4[10]];
  *v18 = v15;
  v18[1] = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = *MEMORY[0x277CD5788];
    v22 = a1;
    if ([v20 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v27 = v94;
        v28 = [v94 BOOLValue];

        goto LABEL_13;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v28 = 1;
LABEL_13:
    if ([v20 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v29 = v94;
        v30 = [v94 BOOLValue];

        goto LABEL_21;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v30 = 0;
LABEL_21:
    if ([v20 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v31 = v94;
        v32 = [v94 BOOLValue];

        goto LABEL_29;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v32 = 0;
LABEL_29:
    if ([v20 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v33 = v94;
        v34 = [v94 BOOLValue];

LABEL_37:
        v35 = [v20 artist];
        if (v35)
        {
          v36 = v35;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

LABEL_86:
          type metadata accessor for MediaItemRankingSignals();
          v60 = swift_allocObject();
          *(v60 + 16) = v37;
          *(v60 + 24) = v39;
          *(v60 + 32) = v28;
          *(v60 + 33) = v30;
          *(v60 + 34) = v32;
          *(v60 + 35) = v34;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, static Logger.pommes);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v96 = v92;
            *v70 = 136316162;
            v71 = *(v60 + 24);
            *&v98 = *(v60 + 16);
            *(&v98 + 1) = v71;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v72 = String.init<A>(describing:)();
            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v96);

            *(v70 + 4) = v74;
            *(v70 + 12) = 2080;
            v75 = *(v60 + 32);
            v93 = v6;
            v91 = v69;
            if (v75)
            {
              v76 = 1702195828;
            }

            else
            {
              v76 = 0x65736C6166;
            }

            if (v75)
            {
              v77 = 0xE400000000000000;
            }

            else
            {
              v77 = 0xE500000000000000;
            }

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v96);

            *(v70 + 14) = v78;
            *(v70 + 22) = 2080;
            if (*(v60 + 33))
            {
              v79 = 1702195828;
            }

            else
            {
              v79 = 0x65736C6166;
            }

            if (*(v60 + 33))
            {
              v80 = 0xE400000000000000;
            }

            else
            {
              v80 = 0xE500000000000000;
            }

            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v96);

            *(v70 + 24) = v81;
            *(v70 + 32) = 2080;
            if (*(v60 + 34))
            {
              v82 = 1702195828;
            }

            else
            {
              v82 = 0x65736C6166;
            }

            if (*(v60 + 34))
            {
              v83 = 0xE400000000000000;
            }

            else
            {
              v83 = 0xE500000000000000;
            }

            v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v96);

            *(v70 + 34) = v84;
            *(v70 + 42) = 2080;
            if (*(v60 + 35))
            {
              v85 = 1702195828;
            }

            else
            {
              v85 = 0x65736C6166;
            }

            v6 = v93;
            if (*(v60 + 35))
            {
              v86 = 0xE400000000000000;
            }

            else
            {
              v86 = 0xE500000000000000;
            }

            v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v96);

            *(v70 + 44) = v87;
            _os_log_impl(&dword_2232BB000, v68, v91, "MPMediaLibrary#mediaItemRankingSignals with siriSyncId mediaItemRankingSignals\n{\n    artist: %s\n    isInLibrary: %s\n    isExplicitContent: %s\n    isDownloaded: %s\n    isPlayable: %s\n}", v70, 0x34u);
            v88 = v92;
            swift_arrayDestroy();
            MEMORY[0x223DE0F80](v88, -1, -1);
            MEMORY[0x223DE0F80](v70, -1, -1);
          }

          v62 = one-time initialization token for shared;
          v61 = v60;
          goto LABEL_115;
        }

LABEL_40:
        v37 = 0;
        v39 = 0;
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v34 = 1;
    goto LABEL_37;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = *MEMORY[0x277CD5920];
    v26 = a1;
    if ([v24 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v44 = v94;
        v45 = [v94 BOOLValue];

        v28 = v45 ^ 1;
LABEL_50:
        v46 = [v24 items];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
        v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v47 >> 62)
        {
          v48 = __CocoaSet.count.getter();
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = 0;
        v30 = 0;
        v37 = 0;
        v39 = 0;
        v34 = v48 != 0;
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v28 = 1;
    goto LABEL_50;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = a1;

    v28 = [v41 count] > 0;
    if ([v41 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v98 = v96;
    v99 = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v63 = v94;
        v34 = [v94 BOOLValue];

        goto LABEL_64;
      }
    }

    else
    {
      outlined destroy of Any?(&v98);
    }

    v34 = 1;
LABEL_64:
    v64 = [v41 groupingType];
    if (v64 > 2)
    {
      if (v64 == 3)
      {
        v65 = [v41 valueForProperty_];
        goto LABEL_74;
      }

      if (v64 == 4)
      {
        v65 = [v41 valueForProperty_];
        goto LABEL_74;
      }
    }

    else
    {
      if (v64 == 1)
      {
        v65 = [v41 valueForProperty_];
        goto LABEL_74;
      }

      if (v64 == 2)
      {
        v65 = [v41 valueForProperty_];
LABEL_74:
        if (v65)
        {
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v96 = 0u;
          v97 = 0u;
        }

        v98 = v96;
        v99 = v97;
        if (*(&v97 + 1))
        {
          v66 = swift_dynamicCast();
          if (v66)
          {
            v37 = v94;
          }

          else
          {
            v37 = 0;
          }

          if (v66)
          {
            v39 = v95;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v98);
          v37 = 0;
          v39 = 0;
        }

        v32 = 0;
        v30 = 0;
        goto LABEL_86;
      }
    }

    v32 = 0;
    v30 = 0;
    goto LABEL_40;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.pommes);
  v50 = a1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v98 = v54;
    *v53 = 136315138;
    v55 = [v50 debugDescription];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v98);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_2232BB000, v51, v52, "MPMediaItem not of any supported types %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x223DE0F80](v54, -1, -1);
    MEMORY[0x223DE0F80](v53, -1, -1);
  }

  v60 = 0;
  v61 = 0;
  v62 = one-time initialization token for shared;
LABEL_115:
  if (v62 != -1)
  {
    swift_once();
    v61 = v60;
  }

  (*(*static PerformanceUtil.shared + 184))(v6, 1);
  outlined destroy of PerformanceUtil.Ticket(v6);
  return v61;
}

uint64_t specialized MPMediaLibrary.mediaItemRankingSignals(for:entityType:)(uint64_t a1)
{
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v7 = v1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *&v165 = v9;
  *(&v165 + 1) = v11;
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC140);
  v12 = v165;
  Date.init()();
  v13 = &v6[v4[7]];
  *v13 = "SiriInformationSearch/MediaLibrary.swift";
  *(v13 + 1) = 40;
  v13[16] = 2;
  *&v6[v4[8]] = 166;
  v14 = &v6[v4[9]];
  *v14 = "mediaItemRankingSignals(for:entityType:)";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v15 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v12, *(&v12 + 1));
  v17 = v16;

  v18 = &v6[v4[10]];
  *v18 = v15;
  v18[1] = v17;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v21, v22, "MPMediaLibrary#mediaItemRankingSignals with persistentID reached beginning", v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  v24 = [v7 itemWithPersistentID_];
  v160 = v20;
  if (v24)
  {
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v165 = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v25;
      v34 = v6;
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v36, &v165);
      v6 = v34;
      v25 = v33;

      *(v28 + 4) = v37;
      _os_log_impl(&dword_2232BB000, v26, v27, "MPMediaLibrary#mediaItemRankingSignals with PersistentID mpMediaItem: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    if ([v25 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v40 = v161;
        v41 = [v161 BOOLValue];

        goto LABEL_19;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v41 = 1;
LABEL_19:
    if ([v25 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v42 = v161;
        v43 = [v161 BOOLValue];

        goto LABEL_27;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v43 = 0;
LABEL_27:
    if ([v25 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v44 = v161;
        v45 = [v161 BOOLValue];

        goto LABEL_35;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v45 = 0;
LABEL_35:
    if ([v25 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v46 = v161;
        v47 = [v161 BOOLValue];

        goto LABEL_43;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v47 = 1;
LABEL_43:
    v48 = [v25 artist];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {

      v50 = 0;
      v52 = 0;
    }

LABEL_130:
    type metadata accessor for MediaItemRankingSignals();
    v129 = swift_allocObject();
    *(v129 + 16) = v50;
    *(v129 + 24) = v52;
    *(v129 + 32) = v41;
    *(v129 + 33) = v43;
    *(v129 + 34) = v45;
    *(v129 + 35) = v47;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v160 = v6;
      v137 = v136;
      v159 = swift_slowAlloc();
      *&v163 = v159;
      *v137 = 136316162;
      *&v165 = v50;
      *(&v165 + 1) = v52;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v138 = String.init<A>(describing:)();
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v163);

      *(v137 + 4) = v140;
      *(v137 + 12) = 2080;
      v157 = v47;
      v158 = v135;
      if (v41)
      {
        v141 = 1702195828;
      }

      else
      {
        v141 = 0x65736C6166;
      }

      if (v41)
      {
        v142 = 0xE400000000000000;
      }

      else
      {
        v142 = 0xE500000000000000;
      }

      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v163);

      *(v137 + 14) = v143;
      *(v137 + 22) = 2080;
      if (v43)
      {
        v144 = 1702195828;
      }

      else
      {
        v144 = 0x65736C6166;
      }

      v156 = v134;
      if (v43)
      {
        v145 = 0xE400000000000000;
      }

      else
      {
        v145 = 0xE500000000000000;
      }

      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v163);

      *(v137 + 24) = v146;
      *(v137 + 32) = 2080;
      if (v45)
      {
        v147 = 1702195828;
      }

      else
      {
        v147 = 0x65736C6166;
      }

      if (v45)
      {
        v148 = 0xE400000000000000;
      }

      else
      {
        v148 = 0xE500000000000000;
      }

      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, &v163);

      *(v137 + 34) = v149;
      *(v137 + 42) = 2080;
      if (v157)
      {
        v150 = 1702195828;
      }

      else
      {
        v150 = 0x65736C6166;
      }

      if (v157)
      {
        v151 = 0xE400000000000000;
      }

      else
      {
        v151 = 0xE500000000000000;
      }

      v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, &v163);

      *(v137 + 44) = v152;
      v134 = v156;
      _os_log_impl(&dword_2232BB000, v156, v158, "MPMediaLibrary#mediaItemRankingSignals with PersistentID mediaItemRankingSignals\n{\n    artist: %s\n    isInLibrary: %s\n    isExplicitContent: %s\n    isDownloaded: %s\n    isPlayable: %s\n}", v137, 0x34u);
      v153 = v159;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v153, -1, -1);
      v154 = v137;
      v6 = v160;
      MEMORY[0x223DE0F80](v154, -1, -1);
    }

    v131 = one-time initialization token for shared;
    v130 = v129;
    goto LABEL_157;
  }

  v38 = [v7 playlistWithPersistentID_];
  if (v38)
  {
    v39 = v38;
    if ([v38 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v71 = v161;
        v72 = [v161 BOOLValue];

        v41 = v72 ^ 1;
LABEL_57:
        v73 = [v39 items];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
        v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v74 >> 62)
        {
          v75 = __CocoaSet.count.getter();
        }

        else
        {
          v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v45 = 0;
        v43 = 0;
        v50 = 0;
        v52 = 0;
        v47 = v75 != 0;
        goto LABEL_130;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v41 = 1;
    goto LABEL_57;
  }

  v53 = [v7 collectionWithPersistentID:a1 groupingType:1];
  if (v53)
  {
    v54 = v53;
    v55 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    *&v165 = [v54 persistentID];
    v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v60 = MEMORY[0x223DDF550](v56, v58);

    v61 = [objc_opt_self() predicateWithValue:v59 forProperty:v60];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2234D0FE0;
    *(v62 + 32) = v61;
    v63 = v61;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v62);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v64 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v66 = [v64 initWithFilterPredicates_];

    [v66 setGroupingType_];
    v67 = [v66 items];
    if (v67)
    {
      v68 = v67;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v69 >> 62)
      {
        v70 = __CocoaSet.count.getter();
      }

      else
      {
        v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v70 > 0;
    }

    else
    {
      v41 = 0;
    }

    if ([v54 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v91 = v161;
        v92 = [v161 BOOLValue];

LABEL_74:
        v93 = [v54 valueForProperty_];
LABEL_118:
        if (v93)
        {
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v163 = 0u;
          v164 = 0u;
        }

        v47 = v92;
        v165 = v163;
        v166 = v164;
        if (*(&v164 + 1))
        {
          v133 = swift_dynamicCast();
          if (v133)
          {
            v50 = v161;
          }

          else
          {
            v50 = 0;
          }

          if (v133)
          {
            v52 = v162;
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v165);
          v50 = 0;
          v52 = 0;
        }

        v45 = 0;
        v43 = 0;
        goto LABEL_130;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v92 = 1;
    goto LABEL_74;
  }

  v76 = [v7 collectionWithPersistentID:a1 groupingType:3];
  if (v76)
  {
    v54 = v76;
    v77 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    *&v165 = [v54 persistentID];
    v81 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v82 = MEMORY[0x223DDF550](v78, v80);

    v83 = [objc_opt_self() predicateWithValue:v81 forProperty:v82];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_2234D0FE0;
    *(v84 + 32) = v83;
    v63 = v83;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v84);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v85 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v86 = Set._bridgeToObjectiveC()().super.isa;

    v66 = [v85 initWithFilterPredicates_];

    [v66 setGroupingType_];
    v87 = [v66 items];
    if (v87)
    {
      v88 = v87;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v89 >> 62)
      {
        v90 = __CocoaSet.count.getter();
      }

      else
      {
        v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v90 > 0;
    }

    else
    {
      v41 = 0;
    }

    if ([v54 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v109 = v161;
        v92 = [v161 BOOLValue];

LABEL_89:
        v93 = [v54 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v92 = 1;
    goto LABEL_89;
  }

  v94 = [v7 collectionWithPersistentID:a1 groupingType:2];
  if (v94)
  {
    v54 = v94;
    v95 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    *&v165 = [v54 persistentID];
    v99 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v100 = MEMORY[0x223DDF550](v96, v98);

    v101 = [objc_opt_self() predicateWithValue:v99 forProperty:v100];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_2234D0FE0;
    *(v102 + 32) = v101;
    v63 = v101;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v102);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v103 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v104 = Set._bridgeToObjectiveC()().super.isa;

    v66 = [v103 initWithFilterPredicates_];

    [v66 setGroupingType_];
    v105 = [v66 items];
    if (v105)
    {
      v106 = v105;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v107 >> 62)
      {
        v108 = __CocoaSet.count.getter();
      }

      else
      {
        v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v108 > 0;
    }

    else
    {
      v41 = 0;
    }

    if ([v54 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v125 = v161;
        v92 = [v161 BOOLValue];

LABEL_104:
        v93 = [v54 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v92 = 1;
    goto LABEL_104;
  }

  v110 = [v7 collectionWithPersistentID:a1 groupingType:4];
  if (v110)
  {
    v54 = v110;
    v111 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    *&v165 = [v54 persistentID];
    v115 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v116 = MEMORY[0x223DDF550](v112, v114);

    v117 = [objc_opt_self() predicateWithValue:v115 forProperty:v116];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_2234D0FE0;
    *(v118 + 32) = v117;
    v63 = v117;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v118);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v119 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v120 = Set._bridgeToObjectiveC()().super.isa;

    v66 = [v119 initWithFilterPredicates_];

    [v66 setGroupingType_];
    v121 = [v66 items];
    if (v121)
    {
      v122 = v121;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v123 >> 62)
      {
        v124 = __CocoaSet.count.getter();
      }

      else
      {
        v124 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v124 > 0;
    }

    else
    {
      v41 = 0;
    }

    if ([v54 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
    }

    v165 = v163;
    v166 = v164;
    if (*(&v164 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v132 = v161;
        v92 = [v161 BOOLValue];

LABEL_117:
        v93 = [v54 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v165);
    }

    v92 = 1;
    goto LABEL_117;
  }

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    *(v128 + 4) = a1;
    _os_log_impl(&dword_2232BB000, v126, v127, "MPMediaItem not found for persistentID %llu", v128, 0xCu);
    MEMORY[0x223DE0F80](v128, -1, -1);
  }

  v129 = 0;
  v130 = 0;
  v131 = one-time initialization token for shared;
LABEL_157:
  if (v131 != -1)
  {
    swift_once();
    v130 = v129;
  }

  (*(*static PerformanceUtil.shared + 184))(v6, 1);
  outlined destroy of PerformanceUtil.Ticket(v6);
  return v130;
}

unint64_t lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject);
  }

  return result;
}

uint64_t PommesAppStatus.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

SiriInformationSearch::PommesAppStatus __swiftcall PommesAppStatus.init(bundleID:isLocked:isHidden:)(SiriInformationSearch::PommesAppStatus bundleID, Swift::Bool isLocked, Swift::Bool isHidden)
{
  *v3 = bundleID.bundleID;
  *(v3 + 16) = isLocked;
  *(v3 + 17) = isHidden;
  bundleID.isLocked = isLocked;
  return bundleID;
}

void PommesAppStatus.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  LOBYTE(v4) = [a1 isLocked];
  v8 = [a1 isHidden];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 17) = v8;
}

uint64_t static PommesAppStatus.available(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

SiriInformationSearch::PommesAppStatus __swiftcall PommesSystemAppChecking.appStatus(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  v35 = v1;
  v4 = type metadata accessor for AppProtectionFeatures();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v36);
    _os_log_impl(&dword_2232BB000, v9, v10, "AVAILABILITY: Checking bundle ID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CEBE20], v4);
  v13 = AppProtectionFeatures.enabled.getter();
  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    v14 = objc_opt_self();
    v15 = MEMORY[0x223DDF550](countAndFlagsBits, object);
    v16 = [v14 applicationWithBundleIdentifier_];

    v17 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315650;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v36);
      *(v20 + 12) = 1024;
      *(v20 + 14) = [v17 isLocked];
      *(v20 + 18) = 1024;
      *(v20 + 20) = [v17 isHidden];

      _os_log_impl(&dword_2232BB000, v18, v19, "AVAILABILITY: app %s is…\n    locked: %{BOOL}d\n    hidden: %{BOOL}d", v20, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    else
    {
    }

    v29 = [v17 bundleIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    LOBYTE(v29) = [v17 isLocked];
    v33 = [v17 isHidden];

    v34 = v35;
    *v35 = v30;
    v34[1] = v32;
    *(v34 + 16) = v29;
    *(v34 + 17) = v33;
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v22, v23, "AVAILABILITY: core functionality not enabled", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    v25 = v35;
    *v35 = countAndFlagsBits;
    v25[1] = object;
    *(v25 + 8) = 0;
  }

  result.bundleID._object = v27;
  result.bundleID._countAndFlagsBits = v26;
  result.isLocked = v28;
  result.isHidden = HIBYTE(v28);
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesAppStatus(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for PommesAppStatus(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallContactPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v78 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v75 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = (&v72 - v6);
  v7 = type metadata accessor for UsoIdentifier();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v93 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PommesSearchRequest(0);
  v12 = *(v73 + 76);
  v77 = a1;
  v13 = *(a1 + v12);
  v80 = *(v13 + 16);
  if (!v80)
  {
LABEL_62:
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  v14 = 0;
  v15 = 0;
  v84 = v85 + 16;
  v88 = v94 + 16;
  v89 = (v94 + 8);
  v83 = (v85 + 8);
  v90 = v7;
  v82 = v9;
  v81 = v11;
  v72 = v3;
  v79 = v13;
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_88;
    }

    v16 = v13 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v17 = *(v85 + 72);
    v86 = v14;
    (*(v85 + 16))(v11, v16 + v17 * v14, v9);
    v18 = Siri_Nlu_External_Span.matcherNames.getter();
    v19 = specialized Sequence.flatMap<A>(_:)(v18);
    v87 = v15;
    if (v15)
    {
      (*v83)(v11, v9);

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.pommes);
      v63 = v87;
      v64 = v87;
      v48 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v96 = v67;
        *v66 = 136315138;
        *&v95[0] = v63;
        v68 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v69 = String.init<A>(describing:)();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v96);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_2232BB000, v48, v65, "ConversionUtils.convertUserDialogActToTasks error: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x223DE0F80](v67, -1, -1);
        MEMORY[0x223DE0F80](v66, -1, -1);

        goto LABEL_71;
      }

      return 1;
    }

    v20 = v19;

    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        break;
      }

      goto LABEL_49;
    }

    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      break;
    }

LABEL_49:

    v11 = v81;
    v9 = v82;
    (*v83)(v81, v82);
LABEL_50:
    v15 = v87;
    v14 = v86 + 1;
    v13 = v79;
    if (v86 + 1 == v80)
    {
      goto LABEL_62;
    }
  }

  v22 = 0;
  while ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x223DDFF80](v22, v20);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_79;
    }

LABEL_13:
    static UsoTask_CodegenConverter.convert(task:)();
    v95[0] = v96;
    v95[1] = v97;
    if (*(&v97 + 1))
    {
      type metadata accessor for UsoTask_call_common_PhoneCall();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_9;
      }

      v25 = v87;
      v26 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_PhoneCallC_Tt3g5(MEMORY[0x277D84F90], byte_283695610, v23);

      v27 = specialized Sequence.flatMap<A>(_:)(v26);
      v87 = v25;

      if (v27 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
LABEL_21:
          v29 = 0;
          v91 = v27 & 0xFFFFFFFFFFFFFF8;
          v92 = v27 & 0xC000000000000001;
          v30 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v92)
            {
              MEMORY[0x223DDFF80](v29, v27);
              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_81;
              }
            }

            else
            {
              if (v29 >= *(v91 + 16))
              {
                goto LABEL_82;
              }

              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_81;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v96)
            {
              v32 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

              if (v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = MEMORY[0x277D84F90];
              }
            }

            else
            {

              v33 = MEMORY[0x277D84F90];
            }

            v34 = *(v33 + 16);
            v35 = v30[2];
            v36 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_83;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v36 <= v30[3] >> 1)
            {
              if (!*(v33 + 16))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v35 <= v36)
              {
                v38 = v35 + v34;
              }

              else
              {
                v38 = v35;
              }

              v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v38, 1, v30);
              if (!*(v33 + 16))
              {
LABEL_22:

                if (v34)
                {
                  goto LABEL_84;
                }

                goto LABEL_23;
              }
            }

            if ((v30[3] >> 1) - v30[2] < v34)
            {
              goto LABEL_85;
            }

            swift_arrayInitWithCopy();

            if (v34)
            {
              v39 = v30[2];
              v40 = __OFADD__(v39, v34);
              v41 = v39 + v34;
              if (v40)
              {
                goto LABEL_87;
              }

              v30[2] = v41;
            }

LABEL_23:
            ++v29;
            if (v31 == v28)
            {
              goto LABEL_54;
            }
          }
        }
      }

      v30 = MEMORY[0x277D84F90];
LABEL_54:

      v42 = 0;
      v43 = v30[2];
      v44 = v90;
      while (1)
      {
        if (v43 == v42)
        {
          v11 = v81;
          v9 = v82;
          (*v83)(v81, v82);

          goto LABEL_50;
        }

        if (v42 >= v30[2])
        {
          goto LABEL_86;
        }

        (*(v94 + 16))(v93, v30 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v42, v44);
        if (UsoIdentifier.appBundleId.getter() == 0x73746361746E6F43 && v46 == 0xE800000000000000)
        {
          break;
        }

        ++v42;
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v89)(v93, v44);
        if (v45)
        {
          goto LABEL_65;
        }
      }

      (*v89)(v93, v44);
LABEL_65:
      (*v83)(v81, v82);

      v52 = v77;
      v53 = (v77 + *(v73 + 32));
      v54 = *v53;
      v55 = v53[1];
      v56 = v74;
      PommesSearchRequest.pommesCandidateId.getter(v74);
      v57 = type metadata accessor for PommesCandidateId();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      v58 = v75;
      default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v75);
      v59 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v52, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v54, v55, v56, v58, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ALL, 0x80000002234D3670);
      (*(v76 + 8))(v58, v72);
      outlined destroy of MediaUserStateCenter?(v56, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      result = v59;
      if (!v59)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.pommes);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = "CallContactPreflightClient#ignore could not build PommesResponse with given parameters";
LABEL_70:
          _os_log_impl(&dword_2232BB000, v48, v49, v51, v50, 2u);
          MEMORY[0x223DE0F80](v50, -1, -1);
        }

        goto LABEL_71;
      }

      return result;
    }

    outlined destroy of MediaUserStateCenter?(v95, &_sypSgMd, &_sypSgMR);
LABEL_9:
    ++v22;
    if (v24 == v21)
    {
      goto LABEL_49;
    }
  }

  if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_80;
  }

  v23 = *(v20 + 8 * v22 + 32);

  v24 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_13;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  swift_once();
LABEL_63:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.pommes);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "PhoneCallPreflightClient#handle no conclusive result, ignoring";
    goto LABEL_70;
  }

LABEL_71:

  return 1;
}

uint64_t lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OfflineMusicPlaybackPreflightClient.__allocating_init(networkAvailabilityProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OfflineMusicPlaybackPreflightClient.makeAudioUnderstanding(pommesSearchRequest:)@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v74 = &v74 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v74 - v4;
  v78 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v77 = *(v78 - 8);
  v5 = MEMORY[0x28223BE20](v78);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v74 - v7;
  v94 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x28223BE20](v94);
  v99 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v74 - v11;
  v97 = type metadata accessor for Siri_Nlu_External_Parser();
  v12 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v74 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  MEMORY[0x28223BE20](v20);
  v80 = &v74 - v23;
  v24 = PommesSearchRequest.userParses.getter();
  v93 = *(v24 + 16);
  if (v93)
  {
    v25 = 0;
    v89 = (v12 + 8);
    v90 = v15 + 16;
    v88 = *MEMORY[0x277D5DA68];
    v86 = (v8 + 8);
    v87 = (v8 + 104);
    v85 = (v15 + 32);
    v83 = (v15 + 8);
    v26 = MEMORY[0x277D84F90];
    v84 = v14;
    v27 = v15;
    v91 = v24;
    v92 = v15;
    while (v25 < *(v24 + 16))
    {
      v101 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v100 = *(v27 + 72);
      (*(v27 + 16))(v22, v24 + v101 + v100 * v25, v14);
      v28 = v96;
      Siri_Nlu_External_UserParse.parser.getter();
      v29 = v98;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v89)(v28, v97);
      v30 = v14;
      v31 = v99;
      v32 = v94;
      (*v87)(v99, v88, v94);
      lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DA98]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *v86;
      (*v86)(v31, v32);
      v34(v29, v32);
      if (v33)
      {
        (*v83)(v22, v30);
        v14 = v30;
      }

      else
      {
        v35 = *v85;
        (*v85)(v95, v22, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
          v26 = v102;
        }

        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          v26 = v102;
        }

        *(v26 + 16) = v38 + 1;
        v39 = v26 + v101 + v38 * v100;
        v14 = v84;
        v35(v39, v95, v84);
      }

      v27 = v92;
      ++v25;
      v24 = v91;
      if (v93 == v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v26 = MEMORY[0x277D84F90];
  v27 = v15;
LABEL_13:

  if (!*(v26 + 16))
  {

    if (one-time initialization token for pommes == -1)
    {
LABEL_23:
      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.pommes);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2232BB000, v60, v61, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : userParse not present", v62, 2u);
        MEMORY[0x223DE0F80](v62, -1, -1);
      }

      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_23;
  }

  v40 = v79;
  (*(v27 + 16))(v79, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v14);

  v41 = v80;
  (*(v27 + 32))(v80, v40, v14);
  v42 = Siri_Nlu_External_Span.matcherNames.getter();
  if (!*(v42 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.pommes);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2232BB000, v64, v65, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : userParse.userDialogAct not present", v66, 2u);
      MEMORY[0x223DE0F80](v66, -1, -1);
    }

    goto LABEL_36;
  }

  v43 = v77;
  v44 = *(v77 + 16);
  v45 = v75;
  v46 = v78;
  v44(v75, v42 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v78);

  v47 = v81;
  (*(v43 + 32))(v81, v45, v46);
  type metadata accessor for AudioUsoIntent();
  v48 = v76;
  v44(v76, v47, v46);
  (*(v43 + 56))(v48, 0, 1, v46);
  if (!AudioUsoIntent.__allocating_init(userDialogAct:)(v48))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2232BB000, v68, v69, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : could not create AudioUsoIntent from userDialogAct", v70, 2u);
      MEMORY[0x223DE0F80](v70, -1, -1);
    }

    (*(v43 + 8))(v81, v46);
LABEL_36:
    (*(v27 + 8))(v41, v14);
LABEL_37:
    v71 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
    return (*(*(v71 - 8) + 56))(v82, 1, 1, v71);
  }

  v50 = v74;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init(from:)(v49, v74);
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.pommes);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2232BB000, v54, v55, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : could not create AudioUnderstanding from AudioUsoIntent", v56, 2u);
      v57 = v56;
      v41 = v80;
      MEMORY[0x223DE0F80](v57, -1, -1);
    }

    (*(v43 + 8))(v81, v46);
    (*(v27 + 8))(v41, v14);
    return (*(v52 + 56))(v82, 1, 1, v51);
  }

  else
  {

    (*(v43 + 8))(v81, v46);
    (*(v27 + 8))(v41, v14);
    v72 = v50;
    v73 = v82;
    (*(v52 + 32))(v82, v72, v51);
    return (*(v52 + 56))(v73, 0, 1, v51);
  }
}

void closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    (*(*a3 + 144))(a4, a5, a6, 1);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.pommes);
    v9 = a1;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 136315138;
      v19[3] = a1;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2232BB000, oslog, v10, "Local client search failed : %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x223DE0F80](v12, -1, -1);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*a3 + 136))(a4, a5, a6);
    swift_beginAccess();
    *(a7 + 16) = a1;
  }
}

uint64_t OfflineMusicPlaybackPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v198 = a1;
  v183 = *v1;
  v2 = type metadata accessor for PommesSearchReason();
  v184 = *(v2 - 8);
  v185 = v2;
  MEMORY[0x28223BE20](v2);
  v182 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v180 = &v156 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v178 = &v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v176 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v177 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v12;
  MEMORY[0x28223BE20](v11);
  v191 = (&v156 - v13);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v188 = *(v14 - 8);
  v189 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v179 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v195 = &v156 - v17;
  v197 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v187 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v196 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v194 = &v156 - v20;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v192 = *(v21 - 8);
  v193 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v186 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v190 = &v156 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v156 - v26;
  v28 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  Description = v28[-1].Description;
  v30 = MEMORY[0x28223BE20](v28);
  v175 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v156 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v156 - v35;
  v37 = type metadata accessor for Siri_Nlu_External_UserParse();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = &type metadata for FeatureFlag;
  v202 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v41 = swift_allocObject();
  v200 = v41;
  *(v41 + 16) = 1;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 3;
  v42 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v200);
  if ((v42 & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_28;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "OfflineMusicPlaybackPreflightClient : IGNORED feature flag not enabled";
    goto LABEL_27;
  }

  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    if ((specialized OfflineMusicPlaybackPreflightClient.userDefaultOverride.getter() & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, static Logger.pommes);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v73, v74))
      {
        goto LABEL_28;
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "OfflineMusicPlaybackPreflightClient : IGNORED network is available";
      goto LABEL_27;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v172 = Description;
      v47 = v36;
      v48 = v28;
      v49 = v46;
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v44, v45, "OfflineMusicPlaybackPreflightClient : User default override network availability check", v46, 2u);
      v50 = v49;
      v28 = v48;
      v36 = v47;
      Description = v172;
      MEMORY[0x223DE0F80](v50, -1, -1);
    }
  }

  v51 = type metadata accessor for PommesSearchRequest(0);
  v52 = *(v198 + *(v51 + 76));
  if (!*(v52 + 16))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.pommes);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_28;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "OfflineMusicPlaybackPreflightClient : IGNORED No salient parses";
LABEL_27:
    _os_log_impl(&dword_2232BB000, v73, v74, v76, v75, 2u);
    MEMORY[0x223DE0F80](v75, -1, -1);
LABEL_28:

    return 1;
  }

  v53 = v38;
  v166 = v51;
  (*(v38 + 16))(v40, v52 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);
  v54 = Siri_Nlu_External_Span.matcherNames.getter();
  if (!*(v54 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pommes);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2232BB000, v81, v82, "OfflineMusicPlaybackPreflightClient : IGNORED No UDA found for the top salient parse", v83, 2u);
      MEMORY[0x223DE0F80](v83, -1, -1);
    }

    (*(v38 + 8))(v40, v37);
    return 1;
  }

  v168 = v37;
  v171 = v40;
  v172 = Description;
  v55 = Description + 2;
  v56 = Description[2];
  v56(v36, v54 + ((*(Description + 80) + 32) & ~*(Description + 80)), v28);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v57, static Logger.pommes);
  v173 = v36;
  v56(v34, v36, v28);
  v169 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v165 = v55;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v164 = v62;
    v170 = swift_slowAlloc();
    v199 = v170;
    *v62 = 136315138;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v201 = v28;
    v202 = lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
    v63 = __swift_allocate_boxed_opaque_existential_1(&v200);
    v56(v63, v34, v28);
    v64 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v66 = v65;
    v67 = v172;
    v167 = v172[1];
    (v167)(v34, v28);
    __swift_destroy_boxed_opaque_existential_1(&v200);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v199);

    v69 = v164;
    *(v164 + 4) = v68;
    v70 = v69;
    _os_log_impl(&dword_2232BB000, v59, v60, "OfflineMusicPlaybackPreflightClient : found userDialogAct: %s", v69, 0xCu);
    v71 = v170;
    __swift_destroy_boxed_opaque_existential_1(v170);
    MEMORY[0x223DE0F80](v71, -1, -1);
    MEMORY[0x223DE0F80](v70, -1, -1);
  }

  else
  {

    v67 = v172;
    v167 = v172[1];
    (v167)(v34, v28);
  }

  v84 = v197;
  type metadata accessor for AudioUsoIntent();
  v164 = v56;
  v56(v27, v173, v28);
  v85 = v67[7];
  v170 = v28;
  v85(v27, 0, 1, v28);
  v86 = AudioUsoIntent.__allocating_init(userDialogAct:)(v27);
  v87 = v171;
  v88 = v196;
  if (!v86)
  {
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v94 = v53;
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2232BB000, v97, v98, "OfflineMusicPlaybackPreflightClient : IGNORED unable to convert UserDialogAct to AudioUsoIntent", v99, 2u);
      MEMORY[0x223DE0F80](v99, -1, -1);

LABEL_62:
      (v167)(v173, v170);
      (*(v94 + 8))(v87, v168);
      return 1;
    }

LABEL_64:
    (v167)(v173, v170);
    (*(v53 + 8))(v87, v168);
    return 1;
  }

  v89 = v86;
  v90 = (*(*v86 + 904))();
  v91 = v194;
  if (v90 == 17)
  {
    goto LABEL_38;
  }

  if (CommonAudio.Verb.rawValue.getter(v90) == 2036427888 && v100 == 0xE400000000000000)
  {
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v102 & 1) == 0)
    {
LABEL_38:
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = v53;
        v95 = swift_slowAlloc();
        *v95 = 0;
        v96 = "OfflineMusicPlaybackPreflightClient : IGNORED non-play verb";
LABEL_61:
        _os_log_impl(&dword_2232BB000, v92, v93, v96, v95, 2u);
        MEMORY[0x223DE0F80](v95, -1, -1);

        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  v103 = (*(*v89 + 928))(v101);
  if (v103 == 2)
  {
LABEL_49:
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v53;
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "OfflineMusicPlaybackPreflightClient : IGNORED baseEntity is not a commonMediaItem";
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  if (v103)
  {
    v104 = 0x80000002234D92F0;
  }

  else
  {
    v104 = 0xEC00000079746974;
  }

  if (0x80000002234D92F0 == v104 && (v103 & 1) != 0)
  {
  }

  else
  {
    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v105 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  OfflineMusicPlaybackPreflightClient.makeAudioUnderstanding(pommesSearchRequest:)(v91);
  v107 = v192;
  v106 = v193;
  if ((*(v192 + 48))(v91, 1, v193) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v91, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v53;
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "OfflineMusicPlaybackPreflightClient : IGNORED couldn't handle since AudioUnderstanding could not be built";
      goto LABEL_61;
    }

LABEL_63:

    goto LABEL_64;
  }

  v163 = v89;
  v167 = v53;
  v108 = v190;
  (*(v107 + 32))(v190, v91, v106);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_2232BB000, v109, v110, "OfflineMusicPlaybackPreflightClient : HANDLING request", v111, 2u);
    MEMORY[0x223DE0F80](v111, -1, -1);
  }

  Apple_Parsec_Siri_V2alpha_ClientSignals.init()();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.setter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.init()();
  v112 = *(v192 + 16);
  v159 = v192 + 16;
  v160 = v112;
  v112(v186, v108, v193);
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.setter();
  v113 = (v198 + *(v166 + 32));
  v114 = *v113;
  v194 = v113[1];
  v115 = v194;
  v116 = v191;
  PommesSearchRequest.pommesCandidateId.getter(v191);
  v162 = type metadata accessor for PommesCandidateId();
  v117 = *(v162 - 8);
  v161 = *(v117 + 56);
  v166 = v117 + 56;
  v118 = v116;
  v161(v116, 0, 1, v162);
  v119 = swift_allocObject();
  v156 = v119;
  *(v119 + 16) = MEMORY[0x277D84F90];
  v157 = (v119 + 16);
  type metadata accessor for AnalyticsComponentIdGenerator();
  v120 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v121 = v88;
  v122 = swift_allocObject();
  *(v122 + 16) = 0;
  *(v122 + 24) = v120;
  v123 = [objc_opt_self() indexMatcher];
  type metadata accessor for MusicDomain();
  v124 = swift_allocObject();
  v125 = specialized MusicDomain.init(spanMatcher:)(v123, v124);
  v158 = v114;
  v126 = v118;
  OnDeviceSearchInstrumentationUtil.logStartOnDeviceSearch(requestId:pommesCandidateId:indexType:)(v114, v115, v118, 1);
  v127 = v187;
  v128 = v178;
  (*(v187 + 16))(v178, v121, v84);
  (*(v127 + 56))(v128, 0, 1, v84);
  v129 = v177;
  outlined init with copy of PommesCandidateId?(v126, v177);
  v130 = (*(v176 + 80) + 40) & ~*(v176 + 80);
  v131 = (v174 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
  v132 = v108;
  v133 = swift_allocObject();
  v133[2] = v122;
  v133[3] = v114;
  v133[4] = v194;
  outlined init with take of PommesCandidateId?(v129, v133 + v130);
  *(v133 + v131) = v156;
  v134 = *(*v125 + 136);

  v135 = v132;
  v134(v132, v128, partial apply for closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:), v133);

  outlined destroy of MediaUserStateCenter?(v128, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  outlined destroy of MediaUserStateCenter?(v191, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v136 = v157;
  swift_beginAccess();
  v137 = *v136;

  v160(v186, v135, v193);
  Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()();
  (*(v188 + 16))(v179, v195, v189);
  v164(v175, v173, v170);
  v138 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v138 - 8) + 56))(v180, 1, 1, v138);
  v139 = objc_allocWithZone(type metadata accessor for AudioExperience());
  v140 = AudioExperience.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_2234D0FE0;
  *(v141 + 32) = v140;
  v142 = v140;
  v143 = v191;
  v144 = v198;
  PommesSearchRequest.pommesCandidateId.getter(v191);
  v161(v143, 0, 1, v162);
  v145 = v190;
  v146 = v182;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v182);
  v147 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v144, v141, v137, v158, v194, v143, v146, 0x616964656DLL, 0xE500000000000000, 0xD000000000000023, 0x80000002234D36F0);

  (*(v184 + 8))(v146, v185);
  outlined destroy of MediaUserStateCenter?(v143, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (!v147)
  {
    v148 = v142;
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = v167;
    v153 = v168;
    v154 = v172;
    if (v151)
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_2232BB000, v149, v150, "OfflineMusicPlaybackPreflightClient#ignore could not build PommesResponse with given parameters", v155, 2u);
      MEMORY[0x223DE0F80](v155, -1, -1);
    }

    (*(v188 + 8))(v195, v189);
    (*(v187 + 8))(v196, v197);
    (*(v192 + 8))(v190, v193);
    (v154[1])(v173, v170);
    (*(v152 + 8))(v171, v153);
    return 1;
  }

  (*(v188 + 8))(v195, v189);
  (*(v187 + 8))(v196, v197);
  (*(v192 + 8))(v145, v193);
  (v172[1])(v173, v170);
  (*(v167 + 8))(v171, v168);
  return v147;
}

uint64_t OfflineMusicPlaybackPreflightClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of PommesCandidateId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

id specialized OfflineMusicPlaybackPreflightClient.userDefaultOverride.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234DC2C0);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for timeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout);
  *__swift_project_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t PreferredNavigationAppDataProvider.timeout.unsafeMutableAddressor()
{
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout);
}

uint64_t static PreferredNavigationAppDataProvider.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static PreferredNavigationAppDataProvider.timeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PreferredNavigationAppDataProvider.__allocating_init(appDataProvider:preferences:carPlayAppHistoryController:carPlaySessionStatus:foregroundAppProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0;
  *(v10 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(a1, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  *(v10 + 72) = a4;
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(a5, v10 + 80);
  swift_endAccess();
  return v10;
}

uint64_t PreferredNavigationAppDataProvider.init(appDataProvider:preferences:carPlayAppHistoryController:carPlaySessionStatus:foregroundAppProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(a5, v5 + 80);
  swift_endAccess();
  return v5;
}

uint64_t static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return specialized static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(v6, a2, v2, v4, v5);
}

uint64_t PreferredNavigationAppDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
    v2 = *(v0 + 72);
  }

  *(v0 + 72) = v3;
  v4 = v1;

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + 80, &v6, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  if (v7)
  {
    outlined init with take of DomainWarmupHandling(&v6, v8);
  }

  else
  {
    v9 = &type metadata for RunningBoardForegroundAppProvider;
    v10 = &protocol witness table for RunningBoardForegroundAppProvider;
  }

  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(v8, v0 + 80);
  return swift_endAccess();
}

uint64_t PreferredNavigationAppDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v54 = *(v0 - 8);
  *&v55 = v0;
  MEMORY[0x28223BE20](v0);
  v53 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Google_Protobuf_Any();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v59 = *(v21 - 8);
  v60 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()();
  if (!v25)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "PreferredNavigationAppDataProvider#fetch No user preferred navigation app found, returning nil";
    goto LABEL_13;
  }

  if (v24 == 0x6C7070612E6D6F63 && v25 == 0xEE007370614D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "PreferredNavigationAppDataProvider#fetch No user preferred third-party navigation app found, returning nil";
LABEL_13:
    _os_log_impl(&dword_2232BB000, v27, v28, v30, v29, 2u);
    MEMORY[0x223DE0F80](v29, -1, -1);
LABEL_14:

    return 0;
  }

  Apple_Parsec_Siri_V2alpha_AppInfo.init()();
  Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter();
  v33 = v60;
  v61[3] = v60;
  v61[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(v59 + 16))(boxed_opaque_existential_1, v23, v33);
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  v35 = v47;
  (*(v47 + 56))(v20, 0, 1, v6);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
  (*(v46 + 104))(v11, *MEMORY[0x277D39AE8], v9);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  outlined init with copy of MediaUserStateCenter?(v20, v18, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v36 = *(v35 + 48);
  if (v36(v18, 1, v6) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v36(v18, 1, v6) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v18, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v35 + 32))(v8, v18, v6);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v49 + 104))(v48, *MEMORY[0x277D39D58], v50);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  v37 = v56;
  Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
  (*(v54 + 104))(v53, *MEMORY[0x277D39708], v55);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v38 = v51;
  v39 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v40 = swift_allocObject();
  v55 = xmmword_2234CF920;
  *(v40 + 16) = xmmword_2234CF920;
  v41 = v52;
  (*(v38 + 16))(v40 + v39, v14, v52);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
  v42 = v57;
  v43 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v55;
  (*(v42 + 32))(v44 + v43, v37, v58);
  (*(v38 + 8))(v14, v41);
  outlined destroy of MediaUserStateCenter?(v20, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(v59 + 8))(v23, v60);
  return v44;
}

uint64_t PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6 + 16;
  v8 = *(v0 + 72);
  if (v8)
  {
    v9 = [v8 currentSession];
    if (v9)
    {

      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v11 = dispatch_semaphore_create(0);
      v12 = *(v0 + 64);
      if (v12)
      {
        v13 = *(v0 + 64);
        v14 = v13;
      }

      else
      {
        v14 = [objc_allocWithZone(MEMORY[0x277CF8FE8]) init];
        v13 = 0;
        v12 = *(v0 + 64);
      }

      v45 = v0;
      *(v0 + 64) = v14;
      v15 = v13;
      v16 = v14;

      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      *(v17 + 24) = v11;
      v48 = partial apply for closure #1 in PreferredNavigationAppDataProvider.getUserPreferredNavigationApp();
      v49 = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v47 = &block_descriptor_7;
      v18 = _Block_copy(aBlock);

      v19 = v11;

      [v16 fetchDockAppForCategory:8 completion:v18];
      _Block_release(v18);

      static DispatchTime.now()();
      if (one-time initialization token for timeout != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for DispatchTimeInterval();
      v21 = __swift_project_value_buffer(v20, static PreferredNavigationAppDataProvider.timeout);
      MEMORY[0x223DDF450](v5, v21);
      v22 = *(v2 + 8);
      v22(v5, v1);
      MEMORY[0x223DDFC40](v7);
      v22(v7, v1);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.pommes);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_2232BB000, v24, v25, "PreferredNavigationAppDataProvider#fetch timed out waiting for CarPlay dock app", v26, 2u);
          MEMORY[0x223DE0F80](v26, -1, -1);
        }
      }

      swift_beginAccess();
      v27 = *(v10 + 24);
      if (v27)
      {
        v28 = *(v10 + 16);
        v29 = one-time initialization token for pommes;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.pommes);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, aBlock);
          _os_log_impl(&dword_2232BB000, v31, v32, "PreferredNavigationAppDataProvider#fetch from CarPlay dock app bundle id: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x223DE0F80](v34, -1, -1);
          MEMORY[0x223DE0F80](v33, -1, -1);
        }

        return v28;
      }

      v0 = v45;
    }
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + 80, aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  if (v47)
  {
    outlined init with copy of AppDataProviding(aBlock, v50);
    outlined destroy of MediaUserStateCenter?(aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
    v35 = v51;
    v36 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v28 = (*(v36 + 8))(v35, v36);
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v38)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.pommes);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v38, aBlock);
        _os_log_impl(&dword_2232BB000, v40, v41, "PreferredNavigationAppDataProvider#fetch from foreground app bundle id: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x223DE0F80](v43, -1, -1);
        MEMORY[0x223DE0F80](v42, -1, -1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
    return 0;
  }

  return v28;
}

Swift::Int closure #1 in PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.pommes);
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a3)
      {
        v14 = a3;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v12 + 4) = v15;
      *v13 = v16;
      _os_log_impl(&dword_2232BB000, v10, v11, "PreferredNavigationAppDataProvider#fetch failed from CarPlay dock with error: %@", v12, 0xCu);
      outlined destroy of MediaUserStateCenter?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t PreferredNavigationAppDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  outlined destroy of MediaUserStateCenter?(v0 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  return v0;
}

uint64_t PreferredNavigationAppDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  outlined destroy of MediaUserStateCenter?(v0 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance PreferredNavigationAppDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 224))();
  *a1 = result;
  return result;
}

uint64_t specialized static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  outlined init with copy of AppDataProviding(v16, v15);
  type metadata accessor for PreferredNavigationAppDataProvider();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v9 = swift_allocObject();
  *(v9 + 64) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(v15, v9 + 16);
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 56) = a2;
  swift_beginAccess();
  v10 = a2;
  outlined assign with take of ForegroundAppProvider?(v13, v9 + 80);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v11 = specialized AnyDataProvider.init<A>(provider:)(v9);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo);
  }

  return result;
}

uint64_t dispatch thunk of PreferredNavigationAppDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 224);
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

id AudioCacheHandler.makeCacheable(pommesResponse:)(void *a1)
{
  v40 = a1;
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v47 = *(v58 - 8);
  v1 = MEMORY[0x28223BE20](v58);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v46 = &v39 - v3;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of PommesResponse.experiences.getter();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v9 = MEMORY[0x277D84F90];
      v61 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v8 < 0)
      {
        break;
      }

      v11 = 0;
      v12 = v7 & 0xC000000000000001;
      v42 = v7 & 0xFFFFFFFFFFFFFF8;
      v41 = v7 + 32;
      v55 = (v47 + 8);
      v56 = v47 + 16;
      v54 = (v47 + 32);
      v44 = v8;
      v45 = v7;
      v43 = v7 & 0xC000000000000001;
      while (1)
      {
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12)
        {
          v17 = MEMORY[0x223DDFF80]();
        }

        else
        {
          if (v11 >= *(v42 + 16))
          {
            goto LABEL_22;
          }

          v17 = *(v41 + 8 * v11);
        }

        v18 = v17;
        dispatch thunk of Experience.associatedEntities.setter();
        v19 = type metadata accessor for AudioExperience();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = v20;
          v51 = v19;
          v53 = v16;
          v60 = v20;
          v52 = v18;
          v22 = dispatch thunk of AudioExperience.serverAudioResults.getter();
          v23 = *(v22 + 16);
          if (v23)
          {
            v50 = v21;
            v59 = v9;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
            v24 = v58;
            v25 = v59;
            v26 = (*(v47 + 80) + 32) & ~*(v47 + 80);
            v49 = v22;
            v27 = v22 + v26;
            v28 = *(v47 + 72);
            v29 = *(v47 + 16);
            v30 = v46;
            do
            {
              v31 = v57;
              v29(v57, v27, v24);
              v29(v30, v31, v24);
              Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter();
              v24 = v58;
              (*v55)(v31, v58);
              v59 = v25;
              v33 = *(v25 + 16);
              v32 = *(v25 + 24);
              if (v33 >= v32 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
                v24 = v58;
                v25 = v59;
              }

              *(v25 + 16) = v33 + 1;
              (*v54)(v25 + v26 + v33 * v28, v30, v24);
              v27 += v28;
              --v23;
            }

            while (v23);

            v8 = v44;
            v7 = v45;
            v9 = MEMORY[0x277D84F90];
            v12 = v43;
          }

          else
          {

            v25 = v9;
          }

          dispatch thunk of Experience.pluginIdentifier.getter();
          dispatch thunk of Experience.queryConfidence.getter();
          v13 = Experience.userDialogAct.getter();
          MEMORY[0x28223BE20](v13);
          *(&v39 - 2) = v25;
          *(&v39 - 1) = &v60;
          v14 = objc_allocWithZone(v51);
          AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)();

          v15 = v60;

          v16 = v53;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v16;
        if (v16 == v8)
        {

          v34 = v61;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    v34 = MEMORY[0x277D84F90];
LABEL_25:
    v35 = type metadata accessor for PommesResponse();
    MEMORY[0x28223BE20](v35);
    v36 = v40;
    *(&v39 - 2) = v34;
    *(&v39 - 1) = v36;
    v37 = PommesResponse.__allocating_init(_:)();

    if (v37)
    {
      return v37;
    }

    else
    {
      v38 = v40;

      return v38;
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in AudioCacheHandler.makeCacheable(pommesResponse:)(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;

  AudioExperience.Builder.serverAudioResults.setter();
  v13 = *a3;
  AudioExperience.audioUnderstanding.getter();

  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  AudioExperience.Builder.audioUnderstanding.setter();
  v15 = *a3;
  AudioExperience.playbackSignals.getter();

  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  AudioExperience.Builder.playbackSignals.setter();
  v17 = *a3;
  dispatch thunk of AudioExperience.internalSignals.getter();

  AudioExperience.Builder.internalSignals.setter();
  v18 = *a3;
  AudioExperience.pegasusAudioType.getter();

  AudioExperience.Builder.pegasusAudioType.setter();
  v19 = *a3;
  AudioExperience.launchID.getter();

  AudioExperience.Builder.launchID.setter();
  v20 = *a3;
  AudioExperience.systemExtensionBundleID.getter();

  AudioExperience.Builder.systemExtensionBundleID.setter();
  v21 = *a3;
  AudioExperience.boltProxiedBundleID.getter();

  AudioExperience.Builder.boltProxiedBundleID.setter();
  v22 = *a3;
  AudioExperience.shouldPerformAppSelection.getter();

  AudioExperience.Builder.shouldPerformAppSelection.setter();
  v23 = *a3;
  AudioExperience.audioClientComponent.getter();

  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  AudioExperience.Builder.audioClientComponent.setter();
  v25 = *a3;
  dispatch thunk of AudioExperience.isGlideEligible.getter();

  AudioExperience.Builder.isGlideEligible.setter();
  v26 = *a3;
  dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();

  return AudioExperience.Builder.networkAvailableAtRequest.setter();
}

uint64_t closure #2 in AudioCacheHandler.makeCacheable(pommesResponse:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PommesSearchReason();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v3 - 8);

  PommesResponse.Builder.experiences.setter();
  dispatch thunk of PommesResponse.clientResults.getter();
  PommesResponse.Builder.clientResults.setter();
  PommesResponse.conversationContext.getter();
  PommesResponse.Builder.conversationContext.setter();
  PommesResponse.metadataDomainName.getter();
  PommesResponse.Builder.metadataDomainName.setter();
  dispatch thunk of PommesResponse.renderedTexts.getter();
  PommesResponse.Builder.renderedTexts.setter();
  dispatch thunk of PommesResponse.redactedRenderedTexts.getter();
  PommesResponse.Builder.redactedRenderedTexts.setter();
  dispatch thunk of PommesResponse.pegasusDomainFlowStepLog.getter();
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  dispatch thunk of PommesResponse.pegasusDomainUserSensitiveTier1Log.getter();
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  dispatch thunk of PommesResponse.listenAfterSpeaking.getter();
  PommesResponse.Builder.listenAfterSpeaking.setter();
  PommesResponse.requestId.getter();
  PommesResponse.Builder.requestId.setter();
  PommesResponse.pommesCandidateId.getter();
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.isHandledByPreflight.getter();
  PommesResponse.Builder.isHandledByPreflight.setter();
  PommesResponse.preflightClientHandlerIdentifier.getter();
  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
  dispatch thunk of PommesResponse.taskStepLogs.getter();
  PommesResponse.Builder.taskStepLogs.setter();
  dispatch thunk of PommesResponse.userSensitiveTier1Logs.getter();
  PommesResponse.Builder.userSensitiveTier1Logs.setter();
  dispatch thunk of PommesResponse.searchReason.getter();
  PommesResponse.Builder.searchReason.setter();
  PommesResponse.searchRequestUtterance.getter();
  PommesResponse.Builder.searchRequestUtterance.setter();
  PommesResponse.sharedUserId.getter();
  return PommesResponse.Builder.sharedUserId.setter();
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = MEMORY[0x277D84F90];
  v18 = *(v15 + 72);
  v26 = v9;
  v27 = a1;
  v24 = v18;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    }

    else
    {
      v19 = v28;
      v20 = *v29;
      (*v29)(v28);
      (v20)(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
      }

      v22 = v17[2];
      v21 = v17[3];
      if (v22 >= v21 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
      }

      v17[2] = v22 + 1;
      v9 = v26;
      (v20)(v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v31, v26);
      a1 = v27;
      v18 = v24;
    }

    v16 += v18;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = MEMORY[0x277D84F90];
  v18 = *(v15 + 72);
  v26 = v9;
  v27 = a1;
  v24 = v18;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    }

    else
    {
      v19 = v28;
      v20 = *v29;
      (*v29)(v28);
      (v20)(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
      }

      v22 = v17[2];
      v21 = v17[3];
      if (v22 >= v21 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
      }

      v17[2] = v22 + 1;
      v9 = v26;
      (v20)(v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v31, v26);
      a1 = v27;
      v18 = v24;
    }

    v16 += v18;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

void *specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  return specialized Sequence.compactMap<A>(_:)(a1, a2, a3, MEMORY[0x277D396B0]);
}

{
  return specialized Sequence.compactMap<A>(_:)(a1, a2, a3, MEMORY[0x277D38D48]);
}

void *specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x223DDF820](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t static ICMediaUserStateCenter.sharedStateCenter.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() shared];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserStateCenter, 0x277D7FB20);
  a1[3] = result;
  a1[4] = &protocol witness table for ICMediaUserStateCenter;
  *a1 = v2;
  return result;
}

uint64_t createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONEncodingOptions();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v77 - v16;
  v87 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v18 = *(v89 - 8);
  v19 = MEMORY[0x28223BE20](v89);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v22 = *(a1 + 16)) != 0)
  {
    v84 = v11;
    MEMORY[0x28223BE20](v19);
    *(&v77 - 32) = a4 & 1;
    *(&v77 - 3) = a2;
    *(&v77 - 16) = a3 & 1;
    v23 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:), (&v77 - 6), a1);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v82 = v26;
    if (os_log_type_enabled(v25, v26))
    {
      v78 = v25;
      v83 = v23;
      v79 = v10;
      v80 = a5;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81 = v27;
      *v27 = 136315394;
      v30 = *(v18 + 16);
      v29 = v18 + 16;
      v93 = v30;
      v77 = v28;
      v98[0] = v28;
      v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v92 = *(v29 + 56);
      ++v96;
      v94 = v29;
      v32 = (v29 - 8);
      v33 = MEMORY[0x277D84F90];
      v35 = v89;
      v34 = v90;
      (v30)(v21, v31, v89);
      while (1)
      {
        JSONEncodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450], MEMORY[0x277D39448]);
        v36 = Message.jsonString(options:)();
        v38 = v37;
        v95 = *v96;
        v95(v34, v97);
        (*v32)(v21, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v40 = *(v33 + 2);
        v39 = *(v33 + 3);
        if (v40 >= v39 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v33);
        }

        *(v33 + 2) = v40 + 1;
        v41 = &v33[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        v35 = v89;
        v34 = v90;
        v31 += v92;
        if (!--v22)
        {
          break;
        }

        (v93)(v21, v31, v89);
      }

      v50 = MEMORY[0x223DDF850](v33, MEMORY[0x277D837D0]);
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v98);

      v54 = v81;
      *(v81 + 1) = v53;
      *(v54 + 6) = 2080;
      v55 = v83[2];
      if (v55)
      {
        v94 = *(v91 + 16);
        v56 = v83 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
        v93 = *(v91 + 72);
        v91 += 16;
        v57 = (v91 - 8);
        v92 = MEMORY[0x277D84F90];
        v59 = v87;
        v58 = v88;
        v60 = v86;
        v61 = v95;
        v94(v86, v56, v87);
        while (1)
        {
          JSONEncodingOptions.init()();
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
          v62 = Message.jsonString(options:)();
          v64 = v63;
          v61(v58, v97);
          (*v57)(v60, v59);
          v65 = v92;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          }

          v67 = *(v65 + 2);
          v66 = *(v65 + 3);
          if (v67 >= v66 >> 1)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
          }

          *(v65 + 2) = v67 + 1;
          v92 = v65;
          v68 = &v65[16 * v67];
          *(v68 + 4) = v62;
          *(v68 + 5) = v64;
          v59 = v87;
          v58 = v88;
          v60 = v86;
          v61 = v95;
          v56 = &v93[v56];
          if (!--v55)
          {
            break;
          }

          v94(v86, v56, v87);
        }
      }

      else
      {
        v92 = MEMORY[0x277D84F90];
      }

      v69 = MEMORY[0x223DDF850](v92, MEMORY[0x277D837D0]);
      v71 = v70;

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v98);

      v73 = v81;
      *(v81 + 14) = v72;
      v74 = v78;
      _os_log_impl(&dword_2232BB000, v78, v82, "createAmpUserStateSlice successfully created the AMP user state ampUserStates:%s sliceValues:%s", v73, 0x16u);
      v75 = v77;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v75, -1, -1);
      MEMORY[0x223DE0F80](v73, -1, -1);

      v10 = v79;
      a5 = v80;
      v49 = v84;
    }

    else
    {

      v49 = v84;
    }

    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    (*(v49 + 104))(v85, *MEMORY[0x277D396E8], v10);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v76 - 8) + 56))(a5, 0, 1, v76);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pommes);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v43, v44, "createAmpUserStateSlice failed to create the AMP user state", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v47 = *(*(v46 - 8) + 56);

    return v47(a5, 1, 1, v46);
  }
}

uint64_t createAmpUsersStateSlice(mediaUserStates:resolution:isPostResolution:muxUserInfo:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v26 = a3;
  v27 = a5;
  v28 = a2;
  v25 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    v17 = (v13 + 48);
    v30 = v13;
    v31 = (v13 + 32);
    v18 = MEMORY[0x277D84F90];
    v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      outlined init with copy of AppDataProviding(v16, v32);
      createAMPUserState(mediaUserState:muxUserInfo:)(v32, a4, v10);
      __swift_destroy_boxed_opaque_existential_1(v32);
      if ((*v17)(v10, 1, v11) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
      }

      else
      {
        v19 = *v31;
        (*v31)(v14, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
        }

        v18[2] = v21 + 1;
        v22 = v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21;
        v14 = v29;
        v19(v22, v29, v11);
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v18, v28, v26 & 1, v27 & 1, v25);
}

id ICMusicUserState.userToken.getter()
{
  result = [v0 libraryAuthTokenStatus];
  if (result)
  {
    v2 = result;
    v3 = [result token];

    if (v3)
    {
      v4 = [v3 token];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id ICMusicUserState.lastError.getter()
{
  v1 = [v0 libraryAuthTokenStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 lastError];

  return v3;
}

uint64_t ICMusicUserState.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = [v2 libraryAuthTokenStatus];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 lastUpdatedDate];

    if (v9)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return outlined init with take of PommesSearchReason?(v6, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t ICMusicUserState.ampSubscriptionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 subscriptionStatus];
  if ((v3 || (v3 = [v1 lightweightSubscriptionStatus]) != 0) && (v4 = v3, v5 = ~objc_msgSend(v3, sel_capabilities), v4, (v5 & 0x101) == 0))
  {
    v6 = MEMORY[0x277D39A18];
  }

  else
  {
    v6 = MEMORY[0x277D39A20];
  }

  v7 = *v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

void ICMusicUserState.eligibleOffers.getter()
{
  v1 = [v0 subscriptionStatus];
  if (v1 && (v2 = v1, v3 = [v1 eligibleOffers], v2, v3) || (v4 = objc_msgSend(v0, sel_lightweightSubscriptionStatus)) != 0 && (v5 = v4, v3 = objc_msgSend(v4, sel_eligibleOffers), v5, v3))
  {
    type metadata accessor for ICSubscriptionStatusOfferType(0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = MEMORY[0x277D84F90];
      while (v8 < *(v6 + 16))
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v9);
        }

        ++v8;
        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }
}

id ICMusicUserState.isSubscribedToGlide.getter()
{
  result = [v0 subscriptionStatus];
  if (result || (result = [v0 lightweightSubscriptionStatus]) != 0)
  {
    v2 = result;
    v3 = [result statusType];

    return (v3 == 3);
  }

  return result;
}

uint64_t ICMusicUserState.itunesSubscriptionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 subscriptionStatus];
  if (v3 && (v4 = v3, v5 = [v3 isMatchEnabled], v4, (v5 & 1) != 0))
  {
    v6 = MEMORY[0x277D39D08];
  }

  else
  {
    v6 = MEMORY[0x277D39D10];
  }

  v7 = *v6;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v9 = *(*(matched - 8) + 104);

  return v9(a1, v7, matched);
}

uint64_t ICMusicUserState.xpabCookie.getter(const char **a1)
{
  v3 = [v1 cookies];
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = v3;
  v6 = [v3 v4];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

uint64_t ICMusicUserState.isGlideEligible.getter()
{
  ICMusicUserState.eligibleOffers.getter();
  v4[0] = 0x57454956455250;
  v4[1] = 0xE700000000000000;
  v3[2] = v4;
  v1 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v3, v0);

  return v1 & 1;
}

id protocol witness for MusicUserState.userToken.getter in conformance ICMusicUserState()
{
  result = [*v0 libraryAuthTokenStatus];
  if (result)
  {
    v2 = result;
    v3 = [result token];

    if (v3)
    {
      v4 = [v3 token];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id protocol witness for MusicUserState.lastError.getter in conformance ICMusicUserState()
{
  v1 = [*v0 libraryAuthTokenStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 lastError];

  return v3;
}

id protocol witness for MusicUserState.isSubscribedToGlide.getter in conformance ICMusicUserState()
{
  v1 = *v0;
  result = [*v0 subscriptionStatus];
  if (result || (result = [v1 lightweightSubscriptionStatus]) != 0)
  {
    v3 = result;
    v4 = [result statusType];

    return (v4 == 3);
  }

  return result;
}

uint64_t protocol witness for MusicUserState.itunesSubscriptionStatus.getter in conformance ICMusicUserState@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 subscriptionStatus];
  v4 = MEMORY[0x277D39D10];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 isMatchEnabled];

    if (v6)
    {
      v4 = MEMORY[0x277D39D08];
    }
  }

  v7 = *v4;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v9 = *(*(matched - 8) + 104);

  return v9(a1, v7, matched);
}

uint64_t protocol witness for MusicUserState.xpabCookie.getter in conformance ICMusicUserState(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = [*v3 cookies];
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = v5;
  v8 = [v5 v6];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t protocol witness for MusicUserState.isGlideEligible.getter in conformance ICMusicUserState()
{
  ICMusicUserState.eligibleOffers.getter();
  v4[0] = 0x57454956455250;
  v4[1] = 0xE700000000000000;
  v3[2] = v4;
  v1 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v0);

  return v1 & 1;
}

id ICMediaUserState.musicUserState.getter@<X0>(void *a1@<X8>)
{
  result = [v1 music];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMusicUserState, 0x277D7FB90);
    v5 = &protocol witness table for ICMusicUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id protocol witness for MediaUserState.musicUserState.getter in conformance ICMediaUserState@<X0>(void *a1@<X8>)
{
  result = [*v1 music];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMusicUserState, 0x277D7FB90);
    v5 = &protocol witness table for ICMusicUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t protocol witness for MediaUserState.storefrontIdentifier.getter in conformance ICMediaUserState()
{
  v1 = [*v0 storefrontIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for MediaUserState.homeUserIDs.getter in conformance ICMediaUserState()
{
  v1 = [*v0 homeUserIDs];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for MediaUserState.alternateDSID.getter in conformance ICMediaUserState()
{
  v1 = [*v0 alternateDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t createAMPUserState(mediaUserState:muxUserInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v106 = a2;
  v108 = a1;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  MEMORY[0x28223BE20](matched - 8);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v100 - v11;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v107 = __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v14, v15, "Building server AMP user state from the media user state", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  v104 = *(v7 + 56);
  v104(v12, 1, 1, v6);
  v17 = v108[3];
  v18 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v17);
  (*(v18 + 8))(&v115, v17, v18);
  if (*(&v116 + 1))
  {
    outlined init with take of DomainWarmupHandling(&v115, v123);
    Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
    v19 = v124;
    v20 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v20 + 40))(v19, v20);
    Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter();
    v21 = v124;
    v22 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v23 = (*(v22 + 24))(v21, v22);
    v101 = v12;
    v102 = v7 + 56;
    if (v23)
    {
    }

    else
    {
      v46 = v124;
      v47 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      (*(v47 + 16))(v46, v47);
      if (v48)
      {
        Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter();
        v27 = v108;
        goto LABEL_21;
      }
    }

    v24 = v124;
    v25 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v26 = (*(v25 + 24))(v24, v25);
    v27 = v108;
    if (v26)
    {
      v100 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v115 = v31;
        *v30 = 136315138;
        swift_getErrorValue();
        v32 = Error.localizedDescription.getter();
        v34 = v9;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v115);

        *(v30 + 4) = v35;
        v9 = v34;
        v27 = v108;
        _os_log_impl(&dword_2232BB000, v28, v29, "Last error from music token refresh: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x223DE0F80](v31, -1, -1);
        v36 = v30;
        v12 = v101;
        MEMORY[0x223DE0F80](v36, -1, -1);
      }

      v37 = v124;
      v38 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v39 = (*(v38 + 24))(v37, v38);
      if (!v39)
      {

        goto LABEL_21;
      }

      v40 = v39;
      v41 = _convertErrorToNSError(_:)();

      result = [v41 code];
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        Apple_Parsec_Siri_V2alpha_AmpUserState.tokenErrorCode.setter();

        goto LABEL_21;
      }

      __break(1u);
      return result;
    }

LABEL_21:
    outlined init with copy of AppDataProviding(v27, v120);
    v49 = v106;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v115 = v100;
      *v52 = 136315394;
      v53 = v7;
      v54 = v9;
      v55 = v121;
      v56 = v122;
      __swift_project_boxed_opaque_existential_1(v120, v121);
      v57 = *(v56 + 48);
      v58 = v56;
      v9 = v54;
      v7 = v53;
      v59 = v57(v55, v58);
      if (v60)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0x696176615F746F6ELL;
      }

      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = 0xED0000656C62616CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v120);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v115);

      *(v52 + 4) = v63;
      *(v52 + 12) = 2080;
      v64 = MEMORY[0x223DDF870](v106, &type metadata for MUXUserInfo);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v115);

      *(v52 + 14) = v66;
      v49 = v106;
      _os_log_impl(&dword_2232BB000, v50, v51, "Built server AMP user state mediaUserState.alternateDSID : %s muxUserInfo: %s", v52, 0x16u);
      v67 = v100;
      swift_arrayDestroy();
      v12 = v101;
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

    else
    {

      v68 = __swift_destroy_boxed_opaque_existential_1(v120);
    }

    MEMORY[0x28223BE20](v68);
    v69 = v108;
    *(&v100 - 2) = v108;
    specialized Sequence.first(where:)(partial apply for closure #1 in createAMPUserState(mediaUserState:muxUserInfo:), v49, &v110);
    v115 = v110;
    v116 = v111;
    v117 = v112;
    v118 = v113;
    v119 = v114;
    if (*(&v110 + 1))
    {

      outlined destroy of MediaUserStateCenter?(&v115, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
      Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    }

    else
    {
      outlined init with copy of AppDataProviding(v69, &v110);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = v108;
        *v72 = 136315138;
        v73 = v9;
        v74 = v7;
        v75 = *(&v111 + 1);
        v76 = v112;
        __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
        v77 = *(v76 + 48);
        v78 = v76;
        v7 = v74;
        v9 = v73;
        v79 = v77(v75, v78);
        if (v80)
        {
          v81 = v79;
        }

        else
        {
          v81 = 0x696176615F746F6ELL;
        }

        if (v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = 0xED0000656C62616CLL;
        }

        __swift_destroy_boxed_opaque_existential_1(&v110);
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v109);

        *(v72 + 4) = v83;
        _os_log_impl(&dword_2232BB000, v70, v71, "Unable to get the sharedUserId from muxUserInfo whose iTunesAltDSID matches mediaUserState.alternateDSID %s", v72, 0xCu);
        v84 = v108;
        __swift_destroy_boxed_opaque_existential_1(v108);
        v12 = v101;
        MEMORY[0x223DE0F80](v84, -1, -1);
        MEMORY[0x223DE0F80](v72, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v110);
      }
    }

    v85 = v124;
    v86 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v86 + 64))(v85, v86);
    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter();
    v87 = v124;
    v88 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v88 + 8))(v87, v88);
    Apple_Parsec_Siri_V2alpha_AmpUserState.isUserHistoryModifiable.setter();
    v89 = v124;
    v90 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v90 + 72))(v89, v90);
    if (v91)
    {
      Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter();
    }

    v92 = v124;
    v93 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v93 + 80))(v92, v93);
    if (v94)
    {
      Apple_Parsec_Siri_V2alpha_AmpUserState.itfeCookie.setter();
    }

    Apple_Parsec_Siri_V2alpha_AmpUserState.isDefaultUser.setter();
    v95 = v124;
    v96 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v96 + 48))(v95, v96);
    Apple_Parsec_Siri_V2alpha_AmpUserState.eligibleOffers.setter();
    v97 = v124;
    v98 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v98 + 56))(v97, v98);
    Apple_Parsec_Siri_V2alpha_AmpUserState.isSubscribedToGlide.setter();
    outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
    v99 = v105;
    (*(v7 + 32))(v105, v9, v6);
    v104(v99, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v123);
  }

  outlined destroy of MediaUserStateCenter?(&v115, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2232BB000, v43, v44, "The active music user state is nil", v45, 2u);
    MEMORY[0x223DE0F80](v45, -1, -1);
  }

  return outlined init with take of PommesSearchReason?(v12, v105, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
}

uint64_t closure #1 in createAMPUserState(mediaUserState:muxUserInfo:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 48))(v4, v5);
  if (v7)
  {
    if (v6 == v2 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t closure #1 in createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(char *, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v79) = a4;
  v78 = a3;
  v84 = a1;
  v69 = type metadata accessor for JSONEncodingOptions();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v83 = *(v80 - 8);
  v8 = MEMORY[0x28223BE20](v80);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v67 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Google_Protobuf_Any();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v16 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v81 = *(v19 - 8);
  v82 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
  v70 = a5;
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  v32 = (v30 & 0x2000000000000000) == 0;
  a5 = v70;
  if (v32)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v42 = v84;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = v83;
    v45 = *(v83 + 16);
    v46 = v71;
    v47 = v80;
    v45(v71, v42, v80);
    v48 = v72;
    v45(v72, v42, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v84) = v50;
      v51 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85[0] = v79;
      *v51 = 67109634;
      *(v51 + 4) = 1;
      *(v51 + 8) = 2080;
      v52 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
      v54 = v53;
      v55 = *(v44 + 8);
      v83 = v44 + 8;
      v78 = v55;
      v55(v46, v47);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v85);

      *(v51 + 10) = v56;
      *(v51 + 18) = 2080;
      v57 = v68;
      JSONEncodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450], MEMORY[0x277D39448]);
      v58 = v86;
      v59 = Message.jsonString(options:)();
      v61 = (v67 + 8);
      if (v58)
      {

        (*v61)(v57, v69);
        v86 = 0;
        v62 = 0x80000002234DC4E0;
        v63 = 0xD000000000000017;
      }

      else
      {
        v63 = v59;
        v62 = v60;
        v86 = 0;
        (*v61)(v57, v69);
      }

      v78(v48, v47);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v85);

      *(v51 + 20) = v65;
      _os_log_impl(&dword_2232BB000, v49, v84, "ampUserState ignored , sharedUserID is empty in a multiUser request.\n    Request is multi-user: %{BOOL}d\n    Shared user ID: %s \n ampUserState %s\n", v51, 0x1Cu);
      v66 = v79;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v66, -1, -1);
      MEMORY[0x223DE0F80](v51, -1, -1);

      v40 = 1;
      a5 = v70;
    }

    else
    {

      v64 = *(v44 + 8);
      v64(v48, v47);
      v64(v46, v47);
      v40 = 1;
    }

    v39 = v81;
    v38 = v82;
  }

  else
  {
LABEL_5:
    v33 = v80;
    v85[3] = v80;
    v85[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450], MEMORY[0x277D39448]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(v83 + 16))(boxed_opaque_existential_1, v84, v33);
    defaultAnyTypeURLPrefix.getter();
    v35 = v86;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    if (v35)
    {

      v86 = 0;
      v36 = 1;
    }

    else
    {
      v86 = 0;
      v36 = 0;
    }

    (*(v14 + 56))(v27, v36, 1, v13);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v16 + 104))(v18, *MEMORY[0x277D39AE0], v73);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    outlined init with copy of Google_Protobuf_Any?(v27, v25);
    v37 = *(v14 + 48);
    if (v37(v25, 1, v13) == 1)
    {
      Google_Protobuf_Any.init()();
      if (v37(v25, 1, v13) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v25, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      }
    }

    else
    {
      (*(v14 + 32))(v74, v25, v13);
    }

    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v76 + 16))(v75, v78, v77);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
    outlined destroy of MediaUserStateCenter?(v27, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    v39 = v81;
    v38 = v82;
    (*(v81 + 32))(a5, v21, v82);
    v40 = 0;
  }

  return (*(v39 + 56))(a5, v40, 1, v38);
}

id ICMediaUserStateCenter.activeState.getter@<X0>(void *a1@<X8>)
{
  result = [v1 activeUserState];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
    v5 = &protocol witness table for ICMediaUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *ICMediaUserStateCenter.allStates.getter()
{
  v1 = [v0 allUserStates];
  v2 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v22;
    v18 = v3 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v8 = MEMORY[0x223DDFF80](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v20 = v2;
      v21 = &protocol witness table for ICMediaUserState;
      v19[0] = v8;
      v22 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = &protocol witness table for ICMediaUserState;
      v12 = v2;
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v12 = v20;
        v11 = v21;
      }

      ++v6;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v13);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v15, &v22, v12, v11);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v7 = v22;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void ICMediaUserStateCenter.refreshStates(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = partial apply for closure #1 in ICMediaUserStateCenter.refreshStates(completion:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_8;
  v6 = _Block_copy(v7);

  [v2 refreshUserStatesWithCompletion_];
  _Block_release(v6);
}

void *closure #1 in ICMediaUserStateCenter.refreshStates(completion:)(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v17 = a2;
    v18 = __CocoaSet.count.getter();
    a2 = v17;
    v5 = v18;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_16:
    a3(v6, a2);
  }

  v19 = a2;
  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x223DDFF80](v8, a1);
        v23 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v6 = v23;
        }

        ++v8;
        v21 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
        v22 = &protocol witness table for ICMediaUserState;
        *&v20 = v9;
        *(v6 + 16) = v11 + 1;
        outlined init with take of DomainWarmupHandling(&v20, v6 + 40 * v11 + 32);
      }

      while (v5 != v8);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v13 = *v12;
        v23 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        v16 = v13;
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v6 = v23;
        }

        v21 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
        v22 = &protocol witness table for ICMediaUserState;
        *&v20 = v16;
        *(v6 + 16) = v15 + 1;
        outlined init with take of DomainWarmupHandling(&v20, v6 + 40 * v15 + 32);
        ++v12;
        --v5;
      }

      while (v5);
    }

    a2 = v19;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

uint64_t protocol witness for static MediaUserStateCenter.sharedStateCenter.getter in conformance ICMediaUserStateCenter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = [objc_opt_self() shared];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserStateCenter, 0x277D7FB20);
  a2[3] = result;
  a2[4] = a1;
  *a2 = v4;
  return result;
}

void protocol witness for MediaUserStateCenter.refreshStates(completion:) in conformance ICMediaUserStateCenter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = closure #1 in ICMediaUserStateCenter.refreshStates(completion:)partial apply;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_7;
  v7 = _Block_copy(v8);

  [v5 refreshUserStatesWithCompletion_];
  _Block_release(v7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV_0D28ReferenceResolutionDataModel8RREntityVtGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV_0D28ReferenceResolutionDataModel8RREntityVtGMR, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_d9_V2alpha_dJ8ResponseV0D11InstructionV11instructiontGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_d9_V2alpha_dJ8ResponseV0D11InstructionV11instructiontGMR, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMd, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_SS10identifiertGMd, &_ss23_ContiguousArrayStorageCySS4name_SS10identifiertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS10identifiertMd, &_sSS4name_SS10identifiertMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch7AppDataVtGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch7AppDataVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch7AppDataVtMd, &_sSS_21SiriInformationSearch7AppDataVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}