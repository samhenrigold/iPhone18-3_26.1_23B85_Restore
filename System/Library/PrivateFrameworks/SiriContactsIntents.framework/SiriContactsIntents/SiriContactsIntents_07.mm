void specialized BaseIntentHandler.resolveContacts(intent:)(char *a1)
{
  v213 = type metadata accessor for PersonNameComponents();
  v193 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v187 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeSiriMatchesResolutionResult = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v191 = *(ContactAttributeSiriMatchesResolutionResult - 8);
  MEMORY[0x28223BE20](ContactAttributeSiriMatchesResolutionResult);
  v220 = &v187 - v3;
  v204 = type metadata accessor for ContactQuery();
  v203 = *(v204 - 8);
  v4 = MEMORY[0x28223BE20](v204);
  v218 = (&v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v210 = &v187 - v6;
  v197 = type metadata accessor for RecommenderType();
  v205 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v206 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SearchSuggestedContacts();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v202 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactResolverDomain();
  MEMORY[0x28223BE20](v9 - 8);
  v199 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8);
  v198 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v196 = &v187 - v14;
  v195 = type metadata accessor for ContactResolverConfig();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v208 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Contact();
  v16 = *(v222 - 8);
  v17 = MEMORY[0x28223BE20](v222);
  v211 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v190 = &v187 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v189 = &v187 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v188 = &v187 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v187 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = (&v187 - v28);
  GetContactAttributeIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.siriContacts);
    v32 = v16[2];
    v209 = v29;
    v214 = v32;
    v215 = v16 + 2;
    v32(v27, v29, v222);
    v216 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v223 = v36;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v223);
      *(v35 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178], MEMORY[0x277D56198]);
      v37 = v16;
      v38 = v222;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = v38;
      v16 = v37;
      v219 = v37[1];
      v219(v27, v42);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v223);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_26686A000, v33, v34, "[%s] Built skeleton contact for resolution: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v36, -1, -1);
      MEMORY[0x26D5E3300](v35, -1, -1);
    }

    else
    {

      v219 = v16[1];
      v44 = (v219)(v27, v222);
    }

    v45 = v209;
    v46 = Contact.isEmpty.getter(v44);
    v47 = v210;
    if (v46)
    {
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v223 = v51;
        *v50 = 136315138;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v223);
        _os_log_impl(&dword_26686A000, v48, v49, "[%s] No search terms provided to resolve contact with, returning needsValue.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x26D5E3300](v51, -1, -1);
        MEMORY[0x26D5E3300](v50, -1, -1);
      }

      type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
      v95 = v45;
LABEL_31:
      v219(v95, v222);
      return;
    }

    v52 = [a1 intentId];
    v217 = v16;
    if (v52)
    {
      v53 = v52;
      v54 = a1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v54 = a1;
      static String.EMPTY.getter();
    }

    v187 = v54;
    GetContactAttributeIntent.handleTypePreference.getter(v196);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v200 + 104))(v202, *MEMORY[0x277D56148], v201);
    (*(v205 + 104))(v206, *MEMORY[0x277D560D0], v197);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v47);
    v55 = v203;
    v56 = v218;
    v57 = v204;
    v206 = *(v203 + 16);
    (v206)(v218, v47, v204);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    v60 = os_log_type_enabled(v58, v59);
    v192 = "edsValueStrategy";
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v223 = v62;
      *v61 = 136315394;
      *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v223);
      *(v61 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8], MEMORY[0x277D56000]);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v56;
      v66 = v65;
      v202 = *(v55 + 8);
      (v202)(v64, v57);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v66, &v223);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_26686A000, v58, v59, "[%s] Converted skeleton contact to ContactQuery: %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v62, -1, -1);
      MEMORY[0x26D5E3300](v61, -1, -1);
    }

    else
    {

      v202 = *(v55 + 8);
      (v202)(v56, v57);
    }

    outlined init with copy of DeviceState(v207 + direct field offset for BaseIntentHandler.contactResolver, &v223);
    v68 = v224;
    v69 = v225;
    __swift_project_boxed_opaque_existential_1(&v223, v224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v70 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_266966D90;
    (v206)(v71 + v70, v210, v57);
    v72 = (*(v69 + 8))(v71, v208, v68, v69);

    __swift_destroy_boxed_opaque_existential_0Tm(&v223);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v223 = v76;
      *v75 = 136315394;
      *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v192 | 0x8000000000000000, &v223);
      *(v75 + 12) = 2080;
      v77 = MEMORY[0x26D5E2610](v72, ContactAttributeSiriMatchesResolutionResult);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v223);

      *(v75 + 14) = v79;
      _os_log_impl(&dword_26686A000, v73, v74, "[%s] ContactResolver recommendations: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v76, -1, -1);
      MEMORY[0x26D5E3300](v75, -1, -1);
    }

    v81 = v209;
    v80 = v210;
    v82 = v204;
    v83 = *(v72 + 16);
    if (!v83)
    {
      break;
    }

    v218 = *(v191 + 16);
    v84 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v206 = v72;
    v85 = v72 + v84;
    v16 = *(v191 + 72);
    a1 = (v191 + 16);
    v86 = (v191 + 8);
    v87 = MEMORY[0x277D84F90];
    while (1)
    {
      v89 = v220;
      v88 = ContactAttributeSiriMatchesResolutionResult;
      (v218)(v220, v85, ContactAttributeSiriMatchesResolutionResult);
      v27 = Recommendation<A>.assignConfidence()();
      (*v86)(v89, v88);
      v90 = *(v27 + 2);
      v29 = *(v87 + 16);
      if (__OFADD__(v29, v90))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v90 > *(v87 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v87 = v91;
      }

      if (*(v27 + 2))
      {
        if ((*(v87 + 24) >> 1) - *(v87 + 16) < v90)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        if (v90)
        {
          v92 = *(v87 + 16);
          v93 = __OFADD__(v92, v90);
          v94 = v92 + v90;
          if (v93)
          {
            goto LABEL_87;
          }

          *(v87 + 16) = v94;
        }
      }

      else
      {

        if (v90)
        {
          goto LABEL_84;
        }
      }

      v85 += v16;
      if (!--v83)
      {

        v81 = v209;
        v80 = v210;
        v82 = v204;
        goto LABEL_33;
      }
    }

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
    swift_once();
  }

  v87 = MEMORY[0x277D84F90];
LABEL_33:

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v192;
  if (v98)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v223 = v101;
    *v100 = 136315394;
    *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v99 | 0x8000000000000000, &v223);
    *(v100 + 12) = 2048;
    *(v100 + 14) = *(v87 + 16);

    _os_log_impl(&dword_26686A000, v96, v97, "[%s] ContactResolver weighted recommendations count: %ld", v100, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    MEMORY[0x26D5E3300](v101, -1, -1);
    MEMORY[0x26D5E3300](v100, -1, -1);
  }

  else
  {
  }

  a1 = *(v87 + 16);
  if (a1 == 1)
  {
    v108 = specialized BaseIntentHandler.meCard.getter();
    v109 = v217;
    if (!v108)
    {
LABEL_75:
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v223 = v168;
        *v167 = 136315138;
        *(v167 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v99 | 0x8000000000000000, &v223);
        _os_log_impl(&dword_26686A000, v165, v166, "[%s] 1 recommendation returned. Returning success.", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v168);
        MEMORY[0x26D5E3300](v168, -1, -1);
        MEMORY[0x26D5E3300](v167, -1, -1);
      }

      ContactAttributeSiriMatchesResolutionResult = type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      v220 = type metadata accessor for SiriMatch();
      if (*(v87 + 16))
      {
        v169 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v170 = v189;
        v171 = v222;
        v172 = v214;
        v214(v189, v87 + v169, v222);
        v218 = Contact.id.getter();
        v174 = v173;
        v175 = v219;
        v219(v170, v171);
        v176 = v190;
        v172(v190, v87 + v169, v171);

        v177 = v212;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v178 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v180 = [v178 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v183 = v182;

        (*(v193 + 8))(v177, v213);
        v175(v176, v171);
        v184 = SiriMatch.__allocating_init(identifier:fullName:)(v218, v174, v181, v183);
        static SiriMatchResolutionResult.success(with:)(v184);

        (v202)(v210, v204);
        (*(v194 + 8))(v208, v195);
        v175(v209, v171);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v110 = v108;
    v111 = [v108 identifier];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    if (!*(v87 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v115 = v188;
    v116 = v222;
    v214(v188, v87 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v222);
    v117 = Contact.id.getter();
    v119 = v118;
    v219(v115, v116);
    if (v112 == v117 && v114 == v119)
    {
    }

    else
    {
      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v121 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v163 = Int._bridgeToObjectiveC()().super.super.isa;
    v164 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v187 setValue:v163 forProperty:v164];

    v110 = v164;
LABEL_74:

    goto LABEL_75;
  }

  if (!a1)
  {

    v102 = *(Contact.contactRelations.getter() + 16);

    if (v102)
    {
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v223 = v106;
        *v105 = 136315138;
        *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v99 | 0x8000000000000000, &v223);
        _os_log_impl(&dword_26686A000, v103, v104, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v106);
        MEMORY[0x26D5E3300](v106, -1, -1);
        MEMORY[0x26D5E3300](v105, -1, -1);
      }

      type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
      v107 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v154 = Contact.organizationName.getter();
      v156 = v155;

      if ((v156 & 0x2000000000000000) != 0)
      {
        v157 = HIBYTE(v156) & 0xF;
      }

      else
      {
        v157 = v154 & 0xFFFFFFFFFFFFLL;
      }

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.debug.getter();
      v160 = os_log_type_enabled(v158, v159);
      if (v157)
      {
        if (v160)
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v223 = v162;
          *v161 = 136315138;
          *(v161 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v99 | 0x8000000000000000, &v223);
          _os_log_impl(&dword_26686A000, v158, v159, "[%s] No recommendations returned for requested company. Returning unsupported.", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v162);
          MEMORY[0x26D5E3300](v162, -1, -1);
          MEMORY[0x26D5E3300](v161, -1, -1);
        }

        type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
        v107 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v160)
        {
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v223 = v186;
          *v185 = 136315138;
          *(v185 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v99 | 0x8000000000000000, &v223);
          _os_log_impl(&dword_26686A000, v158, v159, "[%s] No recommendations returned. Returning unsupported.", v185, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v186);
          MEMORY[0x26D5E3300](v186, -1, -1);
          MEMORY[0x26D5E3300](v185, -1, -1);
        }

        type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
        v107 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v107;
    (v202)(v80, v82);
    (*(v194 + 8))(v208, v195);
    v95 = v81;
    goto LABEL_31;
  }

  v207 = objc_opt_self();
  v122 = v87 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
  v206 = v217[9];
  v205 = v193 + 8;
  v218 = (v217 + 1);
  v29 = MEMORY[0x277D84F90];
  v123 = v211;
  v124 = v222;
  do
  {
    v214(v123, v122, v124);
    v125 = Contact.id.getter();
    v220 = v126;
    ContactAttributeSiriMatchesResolutionResult = v125;
    v127 = v212;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v128 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v129 = [v207 localizedStringFromPersonNameComponents:v128 style:2 options:0];

    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    (*v205)(v127, v213);
    v219(v123, v124);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
      v29 = v137;
    }

    v134 = v29[2];
    v133 = v29[3];
    if (v134 >= v133 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v133 > 1, v134 + 1, 1, v29);
      v29 = v138;
    }

    v29[2] = v134 + 1;
    v135 = &v29[4 * v134];
    v136 = v220;
    v135[4] = ContactAttributeSiriMatchesResolutionResult;
    v135[5] = v136;
    v135[6] = v130;
    v135[7] = v132;
    v122 += v206;
    --a1;
  }

  while (a1);

  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v223 = v142;
    *v141 = 136315394;
    *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v192 | 0x8000000000000000, &v223);
    *(v141 + 12) = 2080;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v144 = MEMORY[0x26D5E2610](v29, v143);
    a1 = v145;
    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v223);

    *(v141 + 14) = v146;
    _os_log_impl(&dword_26686A000, v139, v140, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v141, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v142, -1, -1);
    MEMORY[0x26D5E3300](v141, -1, -1);
  }

  v147 = MEMORY[0x277D84F90];
  v148 = 0;
  v223 = MEMORY[0x277D84F90];
  v27 = v29[2];
  v16 = v29 + 7;
  v149 = v209;
  while (v27 != v148)
  {
    if (v148 >= v29[2])
    {
      goto LABEL_86;
    }

    v151 = *(v16 - 1);
    v150 = *v16;
    v153 = *(v16 - 3);
    v152 = *(v16 - 2);
    a1 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v153, v152, v151, v150);
    MEMORY[0x26D5E25E0]();
    if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v147 = v223;
    v16 += 4;
    ++v148;
  }

  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v147);

  (v202)(v210, v204);
  (*(v194 + 8))(v208, v195);
  v219(v149, v222);
}

uint64_t specialized BaseIntentHandler.resolveSiriMatches(for:)(void (**a1)(char *, uint64_t))
{
  v5 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA010GetContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5(v5 & 1);
  if (ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5)
  {
    v7 = ContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    *(v8 + 32) = v7;
    return v8;
  }

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v9 = specialized BaseIntentHandler.meCard.getter();
    if (v9)
    {
      v10 = v9;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v13))
      {
        OUTLINED_FUNCTION_24();
        v50[0] = OUTLINED_FUNCTION_1_33();
        *v3 = 136315138;
        OUTLINED_FUNCTION_7_20();
        *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v14, v15);
        OUTLINED_FUNCTION_10_23(&dword_26686A000, v16, v17, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.");
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_3_22();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_6_27();
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_64_2(v8, xmmword_266966A40);
      type metadata accessor for SiriMatch();
      v18 = [v10 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = CNContact.formattedFullName.getter();
      v21 = OUTLINED_FUNCTION_55_5(v19, v20);
      v22 = static SiriMatchResolutionResult.success(with:)(v21);

      *(v8 + 32) = v22;
      return v8;
    }
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(a1);
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_19:
    *(v8 + 32) = v36;
    return v8;
  }

  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v50);
  v24 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v25 = OUTLINED_FUNCTION_33_7();
  v27 = v26(v25);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
LABEL_13:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v30))
    {
      v31 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v31 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v32, v33);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v34, v35, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    v36 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_19;
  }

  v38 = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (!v38)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v39, static Logger.siriContacts);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_13_16(v41))
  {
    OUTLINED_FUNCTION_24();
    v50[0] = OUTLINED_FUNCTION_23_13();
    *v24 = 136315138;
    OUTLINED_FUNCTION_7_20();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v42, v43);
    OUTLINED_FUNCTION_72_1(&dword_26686A000, v44, v45, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.");
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_17_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966A40;
  v46 = [v38 fullName];
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for SiriMatch();
  v48 = OUTLINED_FUNCTION_49_5();
  v49 = static SiriMatchResolutionResult.success(with:)(v48);

  *(v8 + 32) = v49;
  return v8;
}

{
  v3 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  v4 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(v3 & 1, type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult);
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    *(v6 + 32) = v5;
    return v6;
  }

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {
      v8 = v7;
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriContacts);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v49[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
        _os_log_impl(&dword_26686A000, v10, v11, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x26D5E3300](v13, -1, -1);
        MEMORY[0x26D5E3300](v12, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_266966A40;
      type metadata accessor for SiriMatch();
      v14 = [v8 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = CNContact.formattedFullName.getter();
      v20 = SiriMatch.__allocating_init(identifier:fullName:)(v15, v17, v18, v19);
      v21 = static SiriMatchResolutionResult.success(with:)(v20);

      *(v6 + 32) = v21;
      return v6;
    }
  }

  v22 = ModifyContactAttributeIntent.contactIdentifier.getter();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_18:
    *(v6 + 32) = v33;
    return v6;
  }

  v24 = v22;
  v25 = v23;
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v49);
  v26 = v50;
  v27 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v35 = (*(v27 + 8))(v24, v25, v26, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  if (!v35)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
      _os_log_impl(&dword_26686A000, v29, v30, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x26D5E3300](v32, -1, -1);
      MEMORY[0x26D5E3300](v31, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266966A40;
    v33 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_18;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.siriContacts);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v49);
    _os_log_impl(&dword_26686A000, v37, v38, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D5E3300](v40, -1, -1);
    MEMORY[0x26D5E3300](v39, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  v41 = [v35 fullName];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = static String.EMPTY.getter();
    v45 = v46;
  }

  type metadata accessor for SiriMatch();
  v47 = SiriMatch.__allocating_init(identifier:fullName:)(v24, v25, v43, v45);
  v48 = static SiriMatchResolutionResult.success(with:)(v47);

  *(v6 + 32) = v48;
  return v6;
}

uint64_t specialized BaseIntentHandler.resolveSiriMatches(for:)(char *a1)
{
  v5 = specialized BaseIntentHandler.needsMeCard(_:)(a1);
  ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5 = _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA019GetContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5(v5 & 1);
  if (ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5)
  {
    v7 = ContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    *(v8 + 32) = v7;
    return v8;
  }

  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  if (specialized SiriKitContactIntent.me.getter())
  {
    v9 = specialized BaseIntentHandler.meCard.getter();
    if (v9)
    {
      v10 = v9;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v13))
      {
        OUTLINED_FUNCTION_24();
        v50[0] = OUTLINED_FUNCTION_1_33();
        *v3 = 136315138;
        OUTLINED_FUNCTION_7_20();
        *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v14, v15);
        OUTLINED_FUNCTION_10_23(&dword_26686A000, v16, v17, "[%s] Returning MeCard as siriMatch. Contact resolution not needed.");
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_3_22();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_6_27();
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_64_2(v8, xmmword_266966A40);
      type metadata accessor for SiriMatch();
      v18 = [v10 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = CNContact.formattedFullName.getter();
      v21 = OUTLINED_FUNCTION_55_5(v19, v20);
      v22 = static SiriMatchResolutionResult.success(with:)(v21);

      *(v8 + 32) = v22;
      return v8;
    }
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(a1);
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    specialized BaseIntentHandler.resolveContacts(intent:)(a1);
LABEL_19:
    *(v8 + 32) = v36;
    return v8;
  }

  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v50);
  v24 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v25 = OUTLINED_FUNCTION_33_7();
  v27 = v26(v25);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
LABEL_13:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v30))
    {
      v31 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v31 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v32, v33);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v34, v35, "[%s] Received raw contact identifier but could not map it to a contact on the device. Entering needsValue state to prompt for contact.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_266966A40;
    v36 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_19;
  }

  v38 = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (!v38)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v39, static Logger.siriContacts);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_13_16(v41))
  {
    OUTLINED_FUNCTION_24();
    v50[0] = OUTLINED_FUNCTION_23_13();
    *v24 = 136315138;
    OUTLINED_FUNCTION_7_20();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v42, v43);
    OUTLINED_FUNCTION_72_1(&dword_26686A000, v44, v45, "[%s] Received raw contact identifier, returning this as siriMatch. Contact resolution not needed.");
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_17_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966A40;
  v46 = [v38 fullName];
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for SiriMatch();
  v48 = OUTLINED_FUNCTION_49_5();
  v49 = static SiriMatchResolutionResult.success(with:)(v48);

  *(v8 + 32) = v49;
  return v8;
}

uint64_t specialized BaseIntentHandler.needsMeCard(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  dynamic_cast_existential_1_unconditional(a1, ObjectType, &protocol descriptor for SiriKitGetEntityIntent);
  v4 = v3;
  if (specialized SiriKitContactIntent.me.getter())
  {
    return 1;
  }

  v5 = swift_getObjectType();
  (*(v4 + 16))(v5, v4);
  if (v6)
  {

    return 1;
  }

  return 0;
}

uint64_t specialized BaseIntentHandler.needsMeCard(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for SiriKitGetEntityIntent))
  {
    return 1;
  }

  v4 = v3;
  v5 = a1;
  if (specialized SiriKitContactIntent.me.getter())
  {

    return 1;
  }

  v6 = swift_getObjectType();
  (*(v4 + 16))(v6, v4);
  v8 = v7;

  if (v8)
  {

    return 1;
  }

  return 0;
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &_sIeghH_IeAgH_TRTATu;
  v10[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v10);
}

uint64_t ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_4();
  if ([*(v0 + 16) contactAttributeToModify] == 10)
  {
    v1 = [*(v0 + 16) relatedContact];
    if (v1)
    {
      v2 = *(v0 + 16);

      specialized BaseIntentHandler.resolveSiriMatches(for:)(v2);
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v3 = swift_allocObject();
    OUTLINED_FUNCTION_64_2(v3, xmmword_266966A40);
    type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
    v4 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v3 = swift_allocObject();
    OUTLINED_FUNCTION_64_2(v3, xmmword_266966A40);
    type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
    v4 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v3[2].n128_u64[0] = v4;
LABEL_7:
  v5 = OUTLINED_FUNCTION_30_9();

  return v6(v5);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:);

  return ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(v6);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v245 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_118:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = *(v0 + 16);
  v2 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v3 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2(v3);
  OUTLINED_FUNCTION_61_3();
  if ([v1 contactAttributeToModify] != 10)
  {
    OUTLINED_FUNCTION_70_2();
    if (!v96)
    {
      goto LABEL_121;
    }

    goto LABEL_8;
  }

  if ((*(*(v0 + 24) + direct field offset for BaseIntentHandler.passedPrereqs) & 1) == 0 && _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(1, type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult))
  {
    goto LABEL_102;
  }

  v232 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(*(v0 + 16));
  v237 = v19;
  if (!v19)
  {
    OUTLINED_FUNCTION_70_2();
    if (!v96)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v73, static Logger.siriContacts);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v75))
    {
      v76 = OUTLINED_FUNCTION_24();
      v77 = OUTLINED_FUNCTION_23();
      v244 = v77;
      *v76 = 136315138;
      *(v76 + 4) = OUTLINED_FUNCTION_8_22(v77, v78, v79, v80, v81, v82, v83, v84, v216, v220, v224, v228, v232, 0, v239, v241, v242, v243);
      OUTLINED_FUNCTION_4_25(&dword_26686A000, v85, v86, "[%s] modifyRelationship slot is empty, return needsValue to get value from user.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_11_1();
    }

    OUTLINED_FUNCTION_60_4();
    v18 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_42;
  }

  v20 = specialized BaseIntentHandler.meCard.getter();
  object = &off_266966000;
  if (!v20)
  {
LABEL_96:
    OUTLINED_FUNCTION_70_2();
    if (!v96)
    {
LABEL_123:
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v126 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v126, static Logger.siriContacts);
    v127 = v237;

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = OUTLINED_FUNCTION_33_2();
      v131 = swift_slowAlloc();
      v244 = v131;
      *v130 = *(object + 279);
      *(v130 + 4) = OUTLINED_FUNCTION_8_22(v131, v132, v133, v134, v135, v136, v137, v138, v216, v220, v224, v228, v232, v237, v239, v241, v242, v243);
      *(v130 + 12) = 2080;
      v139 = v233;
      *(v130 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v127, &v244);
      _os_log_impl(&dword_26686A000, v128, v129, "[%s] Successfully resolved modifyRelationship: %s", v130, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v139 = v232;
    }

    OUTLINED_FUNCTION_60_4();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v141 = MEMORY[0x26D5E2470](v139, v127);

    [ObjCClassFromMetadata successWithResolvedString_];

    goto LABEL_102;
  }

  v22 = v20;
  v23 = *(v0 + 16);
  v24 = [v20 contactRelations];

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v23);
  if (!v27 || ((v28 = v27, v243 = v26, v29 = v27 & 0xC000000000000001, specialized Array._checkSubscript(_:wasNativeTypeChecked:)(), v29) ? (v30 = MEMORY[0x26D5E29D0](0, v28)) : (v30 = *(v28 + 32)), v31 = v30, , v32 = outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v31), (v228 = v33) == 0))
  {
LABEL_94:

    goto LABEL_96;
  }

  v239 = v32;
  OUTLINED_FUNCTION_70_2();
  if (!v96)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v34 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v34, static Logger.siriContacts);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v220 = v35;
  if (OUTLINED_FUNCTION_45_1())
  {
    v38 = OUTLINED_FUNCTION_33_2();
    v39 = swift_slowAlloc();
    v244 = v39;
    *v38 = 136315394;
    *(v38 + 4) = OUTLINED_FUNCTION_8_22(v39, v40, v41, v42, v43, v44, v45, v46, v216, v220, v224, v228, v232, v237, v239, v241, v242, v26);
    *(v38 + 12) = 2080;
    v47 = MEMORY[0x26D5E2610](v26, v25);
    object = v48;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v244);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_26686A000, v36, v37, "[%s] Existing contactRelations: %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6();
  }

  v224 = v2;
  if ([*(v0 + 16) modifyOperation] == 1)
  {
    v50 = v243;
    v51 = specialized Array._getCount()();
    v52 = 0;
    v241 = v243 & 0xFFFFFFFFFFFFFF8;
    v242 = v243 & 0xC000000000000001;
    v53 = MEMORY[0x277D84F90];
    while (v51 != v52)
    {
      if (v242)
      {
        v54 = MEMORY[0x26D5E29D0](v52, v50);
      }

      else
      {
        if (v52 >= *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v54 = *(v50 + 8 * v52 + 32);
      }

      v55 = v54;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
LABEL_8:
        v4 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v4, static Logger.siriContacts);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_31(v6))
        {
          v7 = OUTLINED_FUNCTION_24();
          v8 = OUTLINED_FUNCTION_23();
          v244 = v8;
          *v7 = 136315138;
          *(v7 + 4) = OUTLINED_FUNCTION_8_22(v8, v9, v10, v11, v12, v13, v14, v15, v216, v220, v224, v228, v232, v237, v239, v241, v242, v243);
          OUTLINED_FUNCTION_4_25(&dword_26686A000, v16, v17, "[%s] Since we're not modifying relationship, returning notRequired for modifyRelationship.");
          OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_11_1();
        }

        OUTLINED_FUNCTION_60_4();
        v18 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_42:
        v87 = v18;
        goto LABEL_102;
      }

      v56 = [v54 label];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v61 = static Dictionary<>.nlSemantic(forCNLabel:)(v58, v60);
      v63 = v62;

      v64 = [v55 value];
      v65 = [v64 name];

      object = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
        v53 = v71;
      }

      v69 = v53[2];
      v68 = v53[3];
      if (v69 >= v68 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v53);
        v53 = v72;
      }

      v53[2] = v69 + 1;
      v70 = &v53[4 * v69];
      v70[4] = v61;
      v70[5] = v63;
      v70[6] = object;
      v70[7] = v67;
      ++v52;
      v50 = v243;
    }

    v88 = v53[2];
    if (v88)
    {
      v89 = 0;
      v90 = v53 + 7;
      while (1)
      {
        if (v89 >= v53[2])
        {
          __break(1u);
          goto LABEL_123;
        }

        v92 = *(v90 - 3);
        v91 = *(v90 - 2);
        v93 = *(v90 - 1);
        v94 = *v90;
        v95 = String.lowercased()();
        object = v95._object;
        v96 = v92 == v95._countAndFlagsBits && v91 == v95._object;
        if (v96)
        {
          break;
        }

        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v97)
        {
          goto LABEL_56;
        }

LABEL_61:
        ++v89;
        v90 += 4;
        if (v88 == v89)
        {

          v101 = v232;
          v100 = v237;
          v102 = v228;
          v50 = v243;
          goto LABEL_65;
        }
      }

LABEL_56:
      if (v93 == v239 && v228 == v94)
      {

LABEL_112:

        v185 = v228;

        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v186, v187))
        {
          v188 = OUTLINED_FUNCTION_23();
          v189 = swift_slowAlloc();
          v244 = v189;
          *v188 = 136315650;
          v190 = OUTLINED_FUNCTION_36_8(v189, 0x8000000266970710, &v244);
          v198 = OUTLINED_FUNCTION_52_5(v190, v191, v192, v193, v194, v195, v196, v197, v216, v220, v224, v228, v232);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v237, v199);

          v208 = OUTLINED_FUNCTION_66_0(v200, v201, v202, v203, v204, v205, v206, v207, v219, v223, v227, v231, v236, v237, v239);
          v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v185, v209);

          *(v188 + 24) = v210;
          OUTLINED_FUNCTION_67_3();
          _os_log_impl(v211, v212, v213, v214, v215, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_17_12();
          OUTLINED_FUNCTION_5_32();
        }

        else
        {
        }

        OUTLINED_FUNCTION_60_4();
        static GetContactAttributeContactAttributeToGetResolutionResult.unsupported(forReason:)(1);
        static os_signpost_type_t.end.getter();
        goto LABEL_103;
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v99)
      {
        goto LABEL_112;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v50 = v243;
    v241 = v243 & 0xFFFFFFFFFFFFFF8;
    v242 = v243 & 0xC000000000000001;
  }

  v101 = v232;
  v100 = v237;
  v102 = v228;
LABEL_65:
  v244 = MEMORY[0x277D84F90];
  v103 = specialized Array._getCount()();
  for (i = 0; v103 != i; ++i)
  {
    if (v242)
    {
      v105 = MEMORY[0x26D5E29D0](i, v50);
    }

    else
    {
      if (i >= *(v241 + 16))
      {
        goto LABEL_117;
      }

      v105 = *(v50 + 8 * i + 32);
    }

    v106 = v105;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v107 = [v105 label];
    if (v107)
    {
      v108 = v107;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;
    }

    else
    {
      v109 = 0;
      v111 = 0;
    }

    v112 = static Dictionary<>.nlSemantic(forCNLabel:)(v109, v111);
    v114 = v113;

    if (v112 == v101 && v100 == v114)
    {
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {

        v50 = v243;
        continue;
      }
    }

    v117 = [v106 value];
    v118 = [v117 name];

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    if (v119 == v239 && v102 == v121)
    {

      v50 = v243;
    }

    else
    {
      OUTLINED_FUNCTION_26_3();
      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v50 = v243;
      if ((v123 & 1) == 0)
      {

        continue;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v124 = *(v0 + 16);

  if ([v124 modifyOperation] != 3)
  {

    object = &off_266966000;
    goto LABEL_96;
  }

  object = &off_266966000;
  if (v103)
  {
    v125 = specialized Array._getCount()();

    if (v125)
    {
      goto LABEL_94;
    }
  }

  else
  {
  }

  v145 = v237;

  v146 = v228;

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = OUTLINED_FUNCTION_23();
    v150 = swift_slowAlloc();
    v244 = v150;
    *v149 = 136315650;
    v158 = OUTLINED_FUNCTION_8_22(v150, v151, v152, v153, v154, v155, v156, v157, v216, v220, v224, v228, v232, v237, v239, v241, v242, v150);
    v166 = OUTLINED_FUNCTION_52_5(v158, v159, v160, v161, v162, v163, v164, v165, v217, v221, v225, v229, v234);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v145, v167);

    v176 = OUTLINED_FUNCTION_66_0(v168, v169, v170, v171, v172, v173, v174, v175, v218, v222, v226, v230, v235, v238, v240);
    v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v146, v177);

    *(v149 + 24) = v178;
    OUTLINED_FUNCTION_67_3();
    _os_log_impl(v179, v180, v181, v182, v183, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5_32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_60_4();
  v184 = OUTLINED_FUNCTION_69_3();
  static GetContactAttributeContactAttributeToGetResolutionResult.unsupported(forReason:)(v184);
LABEL_102:
  static os_signpost_type_t.end.getter();
LABEL_103:
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(*(v0 + 40));

  v142 = OUTLINED_FUNCTION_30_9();

  return v143(v142);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:);

  return ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)();
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_26_3();
  v10(v9);
  _Block_release(v4);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = *(v0 + 16);
  v2 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v3 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2(v3);
  OUTLINED_FUNCTION_63_2();
  if ([v1 contactAttributeToModify] != 6 || objc_msgSend(*(v0 + 16), sel_contactAttributeToModify) == 6 && OUTLINED_FUNCTION_79_2() == 3)
  {
    type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
    v4 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ((*(*(v0 + 24) + direct field offset for BaseIntentHandler.passedPrereqs) & 1) != 0 || !_s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(1, type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult))
  {
    v10 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(*(v0 + 16));
    if (!v11)
    {
      type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
      v4 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_7;
    }

    v12 = v10;
    v13 = v11;
    v14 = specialized BaseIntentHandler.meCard.getter();
    if (!v14)
    {

      goto LABEL_26;
    }

    v15 = v14;
    v16 = [v14 nickname];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v12 == v17 && v13 == v19)
    {
    }

    else
    {
      v21 = OUTLINED_FUNCTION_58_3();

      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (OUTLINED_FUNCTION_79_2() == 1)
    {
      swift_bridgeObjectRelease_n();
      type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
      v22 = 1;
      goto LABEL_38;
    }

LABEL_26:
    v23 = specialized BaseIntentHandler.meCard.getter();
    if (v23 && (v24 = v23, v25 = [v23 nickname], v24, v25, (v26 = specialized BaseIntentHandler.meCard.getter()) != 0))
    {
      v27 = v26;
      v28 = [v26 nickname];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (v12 == v29 && v13 == v31)
      {

LABEL_40:
        type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v35 = MEMORY[0x26D5E2470](v12, v13);

        [ObjCClassFromMetadata successWithResolvedString_];

        goto LABEL_8;
      }

      v33 = OUTLINED_FUNCTION_58_3();

      if (v33)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (OUTLINED_FUNCTION_79_2() != 3 && OUTLINED_FUNCTION_79_2() != 2)
    {
      goto LABEL_40;
    }

    type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
    v22 = OUTLINED_FUNCTION_69_3();
LABEL_38:
    static GetContactSiriMatchesResolutionResult.unsupported(forReason:)(v22);
  }

LABEL_8:
  v6 = *(v0 + 40);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v6);

  v7 = OUTLINED_FUNCTION_30_9();

  return v8(v7);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)();
}

uint64_t ModifyContactAttributeIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_18_0(v2);
  v0[4] = OUTLINED_FUNCTION_10_0();
  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v60 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = *(v0 + 16);
  v2 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v3 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_74_2(v3);
  OUTLINED_FUNCTION_63_2();
  v4 = [v1 contactAttributeToModify];
  if (v4 == 6)
  {
    if ([*(v0 + 16) modifyOperation] == 3)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v21 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_29(v21, static Logger.siriContacts);
      v22 = v1;
      v23 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_59_5())
      {
        v24 = *(v0 + 16);
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_62_2();
        *v22 = 136315394;
        OUTLINED_FUNCTION_21_11();
        v27 = OUTLINED_FUNCTION_36_8(v25, v26, &v59);
        OUTLINED_FUNCTION_2_43(v27);
        MEMORY[0x1D] = v24;
        v28 = v24;
        OUTLINED_FUNCTION_20_11(&dword_26686A000, v29, v30, "[%s] Returning success for intent: %@");
        outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_11_1();
      }

      v31 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
      v32 = 4;
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v44 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_29(v44, static Logger.siriContacts);
      v45 = v1;
      v46 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_59_5())
      {
        v47 = *(v0 + 16);
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_62_2();
        *v45 = 136315394;
        OUTLINED_FUNCTION_21_11();
        v50 = OUTLINED_FUNCTION_36_8(v48, v49, &v59);
        OUTLINED_FUNCTION_2_43(v50);
        MEMORY[0x1D] = v47;
        v51 = v47;
        OUTLINED_FUNCTION_20_11(&dword_26686A000, v52, v53, "[%s] Confirming intent for modifyNickname: %@");
        outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_10_27();
        OUTLINED_FUNCTION_11_1();
      }

      v54 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
      v32 = 1;
    }

    goto LABEL_29;
  }

  if (v4 != 10)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v33 = OUTLINED_FUNCTION_77_2();
    OUTLINED_FUNCTION_29(v33, static Logger.siriContacts);
    v34 = v1;
    v35 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_59_5())
    {
      v36 = *(v0 + 16);
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_23_13();
      OUTLINED_FUNCTION_62_2();
      *v34 = 136315394;
      OUTLINED_FUNCTION_21_11();
      v39 = OUTLINED_FUNCTION_36_8(v37, v38, &v59);
      OUTLINED_FUNCTION_2_43(v39);
      MEMORY[0x1D] = v36;
      v40 = v36;
      OUTLINED_FUNCTION_20_11(&dword_26686A000, v41, v42, "[%s] Returning continueInApp for intent: %@");
      outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_10_27();
      OUTLINED_FUNCTION_11_1();
    }

    v43 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
    v32 = OUTLINED_FUNCTION_69_3();
LABEL_29:
    ModifyContactAttributeIntentResponse.init(code:userActivity:)(v32, 0);
    goto LABEL_32;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_29(v5, static Logger.siriContacts);
  v6 = v1;
  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_59_5())
  {
    v8 = *(v0 + 16);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_62_2();
    *v6 = 136315394;
    OUTLINED_FUNCTION_21_11();
    v11 = OUTLINED_FUNCTION_36_8(v9, v10, &v59);
    OUTLINED_FUNCTION_2_43(v11);
    MEMORY[0x1D] = v8;
    v12 = v8;
    OUTLINED_FUNCTION_20_11(&dword_26686A000, v13, v14, "[%s] Confirming intent for modifyRelationship: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_10_27();
    OUTLINED_FUNCTION_11_1();
  }

  v15 = *(v0 + 16);
  outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v15);
  OUTLINED_FUNCTION_30_3();
  v16 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v15);
  if (v16)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D5E29D0](0, v16);
    }

    else
    {
      v17 = *(v16 + 32);
    }

    v18 = v17;

    v16 = outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v18);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  type metadata accessor for ModifyContactAttributeIntentResponse();
  ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(v7, v6, v16, v20, 1);
LABEL_32:
  v55 = *(v0 + 32);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v55);

  v56 = OUTLINED_FUNCTION_30_9();

  return v57(v56);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.confirm(intent:)();
}

uint64_t ModifyContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[23] = v2;
  v1[24] = v0;
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[25] = v3;
  OUTLINED_FUNCTION_18_0(v3);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v104 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v2 = static os_signpost_type_t.begin.getter();
  v3 = "HandleModifyContactAttribute";
  v4 = 2;
  OUTLINED_FUNCTION_74_2(v2);
  OUTLINED_FUNCTION_61_3();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = *(v0 + 184);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = OUTLINED_FUNCTION_57_3(v5);
  v8 = static os_log_type_t.debug.getter();

  v9 = &off_266966000;
  if (OUTLINED_FUNCTION_59_5())
  {
    v10 = *(v0 + 184);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_50_6();
    *"HandleModifyContactAttribute" = 136315394;
    v11 = OUTLINED_FUNCTION_6_31("ortedValueOutput", v100, v101, v102);
    OUTLINED_FUNCTION_4_30(v11);
    *"ntactAttribute" = v10;
    MEMORY[2] = v10;
    v12 = v10;
    v9 = &off_266966000;
    OUTLINED_FUNCTION_20_11(&dword_26686A000, v13, v14, "[%s] Handling intent: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_11_1();
  }

  v15 = specialized BaseIntentHandler.meCard.getter();
  if (!v15)
  {
    v36 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
    v37 = OUTLINED_FUNCTION_69_3();
    v4 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(v37, 0);
    goto LABEL_49;
  }

  v16 = v15;
  v17 = &selRef_isoCountryCode;
  v18 = [*(v0 + 184) contactAttributeToModify];
  v19 = *(v0 + 184);
  if (v18 != 6)
  {
    if (v18 != 10)
    {
      v48 = OUTLINED_FUNCTION_57_3(v19);
      v49 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        v50 = *(v0 + 184);
        v51 = OUTLINED_FUNCTION_33_2();
        swift_slowAlloc();
        OUTLINED_FUNCTION_37_7();
        *v51 = *(v9 + 279);
        *(v51 + 4) = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
        *(v51 + 12) = 2080;
        *(v0 + 176) = [v50 contactAttributeToModify];
        v52 = String.init<A>(describing:)();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v103);

        *(v51 + 14) = v54;
        OUTLINED_FUNCTION_22_12(&dword_26686A000, v55, v49, "[%s] Unsupported attribute requested to be modified: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_11_1();
      }

      v56 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
      v57 = 100;
      goto LABEL_48;
    }

    v20 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v19);
    if (v21)
    {
      v17 = v20;
      v4 = v21;
      v22 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v0 + 184));
      if (v22)
      {
        v23 = v22;
        v24 = v22 & 0xC000000000000001;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        v25 = v24 ? MEMORY[0x26D5E29D0](0, v23) : *(v23 + 32);
        v3 = v25;

        outlined bridged method (ob) of @objc SiriMatch.fullName.getter(v3);
        if (v26)
        {
          v27 = [*(v0 + 184) modifyOperation];
          if ((v27 - 1) < 2)
          {
            outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 136);
            v28 = v16;
            v29 = *(v0 + 168);
            __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
            v30 = OUTLINED_FUNCTION_43_6();
            v31(v30);

            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
            v32 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
            v33 = OUTLINED_FUNCTION_56_4();
            v34 = OUTLINED_FUNCTION_75_1(v33);
            v35 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v34, v35))
            {
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v27 == 3)
          {
            outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 96);
            v28 = v16;
            v29 = *(v0 + 120);
            __swift_project_boxed_opaque_existential_1((v0 + 96), v29);
            v70 = OUTLINED_FUNCTION_43_6();
            v71(v70);

            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
            v72 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentResponse());
            v73 = OUTLINED_FUNCTION_56_4();
            v34 = OUTLINED_FUNCTION_75_1(v73);
            v74 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v34, v74))
            {
LABEL_36:
              v75 = OUTLINED_FUNCTION_33_2();
              OUTLINED_FUNCTION_40_3();
              v76 = OUTLINED_FUNCTION_1_33();
              v103 = v76;
              *v75 = 136315394;
              v77 = OUTLINED_FUNCTION_6_31("ortedValueOutput", v100, v101, v102);
              OUTLINED_FUNCTION_29_11(v77);
              *(v75 + 14) = v4;
              *v29 = v4;
              v78 = v4;
              OUTLINED_FUNCTION_67_3();
              _os_log_impl(v79, v80, v81, v82, v83, 0x16u);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              OUTLINED_FUNCTION_3_22();
              __swift_destroy_boxed_opaque_existential_0Tm(v76);
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_5_32();
            }

LABEL_37:

            goto LABEL_49;
          }

          v94 = *(v0 + 184);

          v60 = OUTLINED_FUNCTION_57_3(v94);
          v61 = static os_log_type_t.error.getter();

          if (!OUTLINED_FUNCTION_45_1())
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_25_11();
          OUTLINED_FUNCTION_15_16();
          OUTLINED_FUNCTION_1_33();
          OUTLINED_FUNCTION_37_7();
          *v3 = 136315394;
          v95 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
          OUTLINED_FUNCTION_2_43(v95);
          *v8 = v17;
          v96 = v17;
          v65 = "[%s] Unknown modifyOperation received in modifyRelationship intent, returning failure: %@";
          goto LABEL_46;
        }
      }
    }

    v60 = OUTLINED_FUNCTION_57_3(*(v0 + 184));
    v61 = static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      *v3 = *(v9 + 279);
      v62 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
      OUTLINED_FUNCTION_2_43(v62);
      *v8 = v17;
      v63 = v17;
      v65 = "[%s] Didn't resolve modifyRelationship and/or fullName for intent, returning failure: %@";
LABEL_46:
      OUTLINED_FUNCTION_22_12(&dword_26686A000, v64, v61, v65);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_3_22();
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_11_1();
      goto LABEL_47;
    }

    goto LABEL_47;
  }

  v38 = [v19 modifyOperation];
  if ((v38 - 1) >= 2)
  {
    if (v38 != 3)
    {
      v60 = OUTLINED_FUNCTION_57_3(*(v0 + 184));
      v61 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_37_7();
        *"HandleModifyContactAttribute" = *(v9 + 279);
        v66 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
        OUTLINED_FUNCTION_2_43(v66);
        *v8 = &selRef_isoCountryCode;
        v67 = &selRef_isoCountryCode;
        v65 = "[%s] Unknown modifyOperation received in modifyNickname intent, returning failure: %@";
        goto LABEL_46;
      }

LABEL_47:

      v97 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
      v57 = 5;
      goto LABEL_48;
    }

    outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 16);
    v43 = *(v0 + 40);
    v42 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v43);
    (*(v42 + 40))(v16, v43, v42);
    v58 = *(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v59 = v58;
    v47 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0] = *(v9 + 279);
      v91 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
      OUTLINED_FUNCTION_2_43(v91);
      *v43 = v59;
      v92 = v59;
      v89 = "[%s] Delete nickname complete for intent, returning success: %@";
      goto LABEL_42;
    }
  }

  else
  {
    v39 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(*(v0 + 184));
    if (!v40)
    {
      v60 = OUTLINED_FUNCTION_57_3(*(v0 + 184));
      v61 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_45_1())
      {
        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_37_7();
        *"HandleModifyContactAttribute" = *(v9 + 279);
        v68 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
        OUTLINED_FUNCTION_2_43(v68);
        *v8 = &selRef_isoCountryCode;
        v69 = &selRef_isoCountryCode;
        v65 = "[%s] Didn't resolve modifyNickName for intent, returning failure: %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v41 = v39;
    v42 = v40;
    outlined init with copy of DeviceState(*(v0 + 192) + direct field offset for BaseIntentHandler.contactService, v0 + 56);
    v43 = *(v0 + 80);
    v44 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v43);
    (*(v44 + 32))(v41, v42, v16, v43, v44);
    v45 = *(v0 + 184);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v46 = v45;
    v47 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_45_1())
    {
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0] = *(v9 + 279);
      v86 = OUTLINED_FUNCTION_5_36("ModifyContactAttributeIntent", v100, v101, v102);
      OUTLINED_FUNCTION_2_43(v86);
      *v43 = v46;
      v87 = v46;
      v89 = "[%s] Add nickname complete for intent, returning success: %@";
LABEL_42:
      OUTLINED_FUNCTION_22_12(&dword_26686A000, v88, v84, v89);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_3_22();
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_11_1();
    }
  }

  v93 = objc_allocWithZone(OUTLINED_FUNCTION_76_1());
  v57 = 4;
LABEL_48:
  v4 = ModifyContactAttributeIntentResponse.init(code:userActivity:)(v57, 0);

LABEL_49:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(*(v0 + 208));

  v98 = *(v0 + 8);

  return v98(v4);
}

uint64_t @objc ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_27();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_26_3();

  return _runTaskForBridgedAsyncMethod(_:)(v10, v11);
}

uint64_t @objc closure #1 in ModifyContactAttributeIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:);

  return ModifyContactAttributeIntentHandler.handle(intent:)();
}

id ModifyContactAttributeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModifyContactAttributeIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModifyContactAttributeIntentHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeIntentHandler;
  if (!type metadata singleton initialization cache for ModifyContactAttributeIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of TaskPriority?(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of UsoEntity_common_Person.DefinedValues?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of UsoEntity_common_Person.DefinedValues?(a3, &_sScPSgMd, &_sScPSgMR);
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
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(void *a1)
{
  v1 = [a1 modifyNickName];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_26_3();
}

uint64_t outlined bridged method (ob) of @objc SiriMatch.fullName.getter(void *a1)
{
  v2 = [a1 fullName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined copy of CNContact??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_10(v4);
  *v5 = v6;
  v5[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return _sIeghH_IeAgH_TR(v1, v2, v3);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_10(v6);
  *v7 = v8;
  v7[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_4(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_34()
{
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_4(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyNickName(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveModifyRelationship(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in ModifyContactAttributeIntentHandler.resolveRelatedSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

id specialized ModifyContactAttributeIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v27 - v23;
  (*(v19 + 32))(&v27 - v23);
  (*(v11 + 32))(v17, a2, a5);
  (*(v19 + 16))(v22, v24, a4);
  (*(v11 + 16))(v14, v17, a5);
  v25 = specialized BaseIntentHandler.init(contactService:contactResolver:)(v22, v14, a3, a4, a5, v27, v28);
  (*(v11 + 8))(v17, a5);
  (*(v19 + 8))(v24, a4);
  return v25;
}

uint64_t OUTLINED_FUNCTION_2_43(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

unint64_t OUTLINED_FUNCTION_5_36@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, va);
}

unint64_t OUTLINED_FUNCTION_6_31@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a1 | 0x8000000000000000, va);
}

unint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, (v18 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_10_27()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_11_19()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_17_12()
{

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_18_13()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_20_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_22_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_24_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

unint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_45_1()
{

  return os_log_type_enabled(v0, v1);
}

char *OUTLINED_FUNCTION_48_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return ModifyContactAttributeIntentResponse.__allocating_init(relationshipLabel:contactName:code:)(v11, v10, a10, v12, 4);
}

id OUTLINED_FUNCTION_49_5()
{

  return SiriMatch.__allocating_init(identifier:fullName:)(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 4) = a1;
  *(v13 + 12) = 2080;
  return a13;
}

id OUTLINED_FUNCTION_55_5(uint64_t a1, uint64_t a2)
{

  return SiriMatch.__allocating_init(identifier:fullName:)(v2, v3, a1, a2);
}

char *OUTLINED_FUNCTION_56_4()
{

  return ModifyContactAttributeIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_59_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult();
}

void OUTLINED_FUNCTION_61_3()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

void OUTLINED_FUNCTION_63_2()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 14) = v15;
  *(v16 + 22) = v17;
  return a15;
}

void OUTLINED_FUNCTION_72_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return type metadata accessor for ModifyContactAttributeIntentResponse();
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return type metadata accessor for Logger();
}

id OUTLINED_FUNCTION_79_2()
{
  v3 = *(v0 + 16);

  return [v3 (v1 + 2166)];
}

uint64_t FlowFactory.__allocating_init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)()
{
  OUTLINED_FUNCTION_63_3();
  v0 = swift_allocObject();
  FlowFactory.init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)();
  return v0;
}

uint64_t FlowFactory.init(referenceResolver:deviceState:commonCATs:modifyAttributeCATs:sirikitEventSender:)()
{
  OUTLINED_FUNCTION_63_3();
  outlined init with take of DeviceState(v5, v1 + 72);
  outlined init with take of DeviceState(v4, v1 + 16);
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  outlined init with take of DeviceState(v0, v1 + 112);
  return v1;
}

uint64_t FlowFactory.makeGetContactFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_42_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents010GetContactC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents010GetContactC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_14();
  ContactFlowStrategy = type metadata accessor for GetContactFlowStrategy(0);
  v4 = OUTLINED_FUNCTION_52_6(ContactFlowStrategy);
  OUTLINED_FUNCTION_33_8(v4);
  FlowFactory.getContactFlowProducers()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents16GetContactIntentCAD0hiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents16GetContactIntentCAD0hiJ8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v5);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for GetContactFlowStrategy, &protocol conformance descriptor for ContactsFlowStrategy<A, B>);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v7 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v7);

  v8 = OUTLINED_FUNCTION_40_4();
  v9(v8);
  v10 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<GetContactIntent, GetContactIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4(v12);
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeGetContactAttributeFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_42_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents019GetContactAttributeC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents019GetContactAttributeC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_14();
  ContactAttributeFlowStrategy = type metadata accessor for GetContactAttributeFlowStrategy(0);
  v4 = OUTLINED_FUNCTION_52_6(ContactAttributeFlowStrategy);
  OUTLINED_FUNCTION_33_8(v4);
  FlowFactory.getContactAttributeFlowProducers()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents25GetContactAttributeIntentCAD0hijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents25GetContactAttributeIntentCAD0hijK8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v5);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for GetContactAttributeFlowStrategy, &protocol conformance descriptor for ContactsFlowStrategy<A, B>);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v7 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v7);

  v8 = OUTLINED_FUNCTION_40_4();
  v9(v8);
  v10 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<GetContactAttributeIntent, GetContactAttributeIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4(v12);
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeModifyContactAttributeFlow(intent:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_42_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents022ModifyContactAttributeC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15ContactsIntents022ModifyContactAttributeC8StrategyCGMR);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_14();
  v3 = type metadata accessor for ModifyContactAttributeFlowStrategy(0);
  v4 = OUTLINED_FUNCTION_52_6(v3);
  OUTLINED_FUNCTION_33_8(v4);
  FlowFactory.modifyContactAttributeFlowProducers()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents28ModifyContactAttributeIntentCAD0hijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCy0A15ContactsIntents28ModifyContactAttributeIntentCAD0hijK8ResponseCGMR);
  OUTLINED_FUNCTION_2_6(v5);
  RCHChildFlowFactory.init(producers:)();
  ContactFlow = lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeFlowStrategy and conformance ContactsFlowStrategy<A, B>, type metadata accessor for ModifyContactAttributeFlowStrategy, &protocol conformance descriptor for ContactsFlowStrategy<A, B>);
  OUTLINED_FUNCTION_22_13(ContactFlow);
  type metadata accessor for App();
  v7 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_34_7(v7);

  v8 = OUTLINED_FUNCTION_40_4();
  v9(v8);
  v10 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_2_44(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<ModifyContactAttributeIntent, ModifyContactAttributeIntentResponse>> and conformance AnyValueFlow<A>);
  OUTLINED_FUNCTION_53_4(v12);
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t FlowFactory.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = FlowFactory.makeUnsupportedLearnPronunciationFlow();

  return ContactsCommonCATs.unsupportedLearnPronunciation()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = FlowFactory.makeUnsupportedLearnPronunciationFlow();
  }

  else
  {
    v7 = FlowFactory.makeUnsupportedLearnPronunciationFlow();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_65_3(&dword_26686A000, v5, v6, "#FlowFactory building flow for unsupportedLearnPronunciation");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = *(v0 + 40);

  FlowFactory.getUnsupportedFlow(for:)(v7);
  v8 = OUTLINED_FUNCTION_61_4();
  v9(v8);

  v10 = OUTLINED_FUNCTION_8_1();

  return v11(v10);
}

uint64_t FlowFactory.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = FlowFactory.makeUnsupportedActionFlow();

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = FlowFactory.makeUnsupportedActionFlow();
  }

  else
  {
    v7 = FlowFactory.makeUnsupportedActionFlow();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_65_3(&dword_26686A000, v5, v6, "#FlowFactory building flow for unsupportedAction");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = *(v0 + 40);

  FlowFactory.getUnsupportedFlow(for:)(v7);
  v8 = OUTLINED_FUNCTION_61_4();
  v9(v8);

  v10 = OUTLINED_FUNCTION_8_1();

  return v11(v10);
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t FlowFactory.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v1[4] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for TemplatingResult();
  v1[5] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41();
  [*(v0 + 16) contactAttributeToModify];
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  String.toSpeakableString.getter();

  v3 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_37_0();
  *(v0 + 64) = DeviceState.toSiriKitDeviceState.getter();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);

  return ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:)();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  outlined destroy of Result<TemplatingResult, Error>(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    v9 = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);
  }

  else
  {
    v9 = FlowFactory.makeUnsupportedOnDeviceFlow(intent:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  OUTLINED_FUNCTION_19_1();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v6);
    _os_log_impl(&dword_26686A000, v4, v0, "#FlowFactory building flow for unsupportedOnDevice", v1, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[5];

  FlowFactory.getUnsupportedFlow(for:)(v7);
  (*(v8 + 8))(v7, v9);

  v10 = OUTLINED_FUNCTION_8_1();

  return v11(v10);
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t FlowFactory.makeAppPunchoutFlow()()
{
  *(v1 + 24) = v0;
  v2 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriContacts);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_59_6();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v6);
    _os_log_impl(&dword_26686A000, v4, v0, "#FlowFactory building flow for unsupported multiple contacts request", v1, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  OUTLINED_FUNCTION_60_5();
  if ((DeviceState.isVox.getter() & 1) != 0 || (OUTLINED_FUNCTION_60_5(), (DeviceState.supportsCompactView.getter() & 1) == 0))
  {
    v11 = swift_task_alloc();
    *(v2 + 32) = v11;
    *v11 = v2;
    v11[1] = FlowFactory.makeAppPunchoutFlow();

    return FlowFactory.makeUnsupportedActionFlow()();
  }

  else
  {

    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v7 = type metadata accessor for SimpleOutputFlowAsync();
    OUTLINED_FUNCTION_2_6(v7);
    *(v2 + 16) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    Flow.eraseToAnyFlow()();

    v8 = OUTLINED_FUNCTION_8_1();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t closure #1 in FlowFactory.makeAppPunchoutFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeAppPunchoutFlow(), 0, 0);
}

uint64_t closure #1 in FlowFactory.makeAppPunchoutFlow()()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
  type metadata accessor for SiriKitEvent();
  static SiriKitEvent.uufrReady()();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v0[5] = &type metadata for InstalledAppsProvider;
  v0[6] = &protocol witness table for InstalledAppsProvider;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v2 = v1;
  outlined destroy of AppUtil((v0 + 2));
  v3 = v0[7];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_266966A40;
    *(v4 + 32) = v2;
    v5 = type metadata accessor for AceOutput();
    v6 = MEMORY[0x277D5C1D8];
    v3[3] = v5;
    v3[4] = v6;
    __swift_allocate_boxed_opaque_existential_1(v3);
    AceOutput.init(commands:flowActivity:)();
  }

  else
  {
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
  }

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t FlowFactory.getUnsupportedFlow(for:)(uint64_t a1)
{
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_3_29();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v5 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_2_6(v11);
  v13[1] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_72_2();
  return OUTLINED_FUNCTION_62_3();
}

uint64_t closure #1 in FlowFactory.getUnsupportedFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[21] = swift_task_alloc();
  type metadata accessor for CATOption();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.getUnsupportedFlow(for:), 0, 0);
}

uint64_t closure #1 in FlowFactory.getUnsupportedFlow(for:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_77((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  static Device.current.getter();
  type metadata accessor for ContactsLabelCATs(0);
  static CATOption.defaultMode.getter();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v3;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v4 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = type metadata accessor for AceOutput();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  v6 = MEMORY[0x277D5C1D8];
  v2[3] = v5;
  v2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Result<TemplatingResult, Error>(v0 + 104, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t FlowFactory.getContactFlowProducers()()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v8 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_56_5();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_44_5();
  type metadata accessor for GetContactIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for GetContactIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v9 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v9);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents16GetContactIntentCAD0ijK8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for GetContactCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v26 = v7;
  v10 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v0 + 72, v45);

  static Device.current.getter();
  if (one-time initialization token for current != -1)
  {
    OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
  }

  v11 = static ContactService.current;
  v42 = type metadata accessor for ContactService();
  v43 = &protocol witness table for ContactService;
  v41[0] = v11;
  v27 = type metadata accessor for ContactsLabelCATs(0);
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v13 = OUTLINED_FUNCTION_29_7();
  type metadata accessor for ContactsLabelCATsModern(v13);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  v39 = &type metadata for SiriContactsFeatureFlagProvider;
  v40 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactNeedsValueStrategy(0);
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v45, v37);
  outlined init with copy of DeviceState(v44, v36);
  outlined init with copy of DeviceState(v41, v35);
  *(v15 + 184) = 1;
  outlined init with copy of DeviceState(v37, v15 + 192);
  outlined init with copy of DeviceState(v36, &v32);
  outlined init with copy of DeviceState(v35, v31);
  v29 = &type metadata for SiriContactsFeatureFlagProvider;
  v30 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(&v32, v15 + 16);
  outlined init with copy of DeviceState(v31, v15 + 56);
  *(v15 + 104) = v12;
  OUTLINED_FUNCTION_77((v15 + 16), *(v15 + 40));

  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  OUTLINED_FUNCTION_31_7(v37);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v28, v15 + 144);
  *(v15 + 128) = v27;
  *(v15 + 136) = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  v45[0] = v15;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for GetContactNeedsValueStrategy, &protocol conformance descriptor for ContactsNeedsValueStrategy<A, B, C>);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v16 = static Device.current.getter();
  OUTLINED_FUNCTION_66_1(v16);
  OUTLINED_FUNCTION_8_23();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v42 = &type metadata for SiriContactsFeatureFlagProvider;
  v43 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactDisambiguationStrategy(0);
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  outlined init with copy of DeviceState(v45, v38);
  outlined init with copy of DeviceState(v44, v37);
  v36[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v36[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v15 + 184) = 1;
  outlined init with copy of DeviceState(v38, v35);
  outlined init with copy of DeviceState(v37, &v32);
  outlined init with copy of DeviceState(v36, v31);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  v29 = &type metadata for SiriContactsFeatureFlagProvider;
  v30 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v35, v15 + 16);
  outlined init with copy of DeviceState(&v32, v15 + 56);
  *(v15 + 104) = v17;
  OUTLINED_FUNCTION_77((v15 + 16), *(v15 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  OUTLINED_FUNCTION_13_18(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v28, v15 + 144);
  *(v15 + 128) = v18;
  *(v15 + 136) = v19;
  OUTLINED_FUNCTION_20_12(v31);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for GetContactDisambiguationStrategy, &protocol conformance descriptor for ContactsDisambiguationStrategy<A, B>);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v1;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();

  v21 = static Device.current.getter();
  OUTLINED_FUNCTION_66_1(v21);
  OUTLINED_FUNCTION_8_23();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4(v22);
  OUTLINED_FUNCTION_8_23();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v42 = &type metadata for SiriContactsFeatureFlagProvider;
  v43 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactHandleIntentStrategy(0);
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  v39 = &type metadata for SiriContactsFeatureFlagProvider;
  v40 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v20[26] = &type metadata for InstalledAppsProvider;
  v20[27] = &protocol witness table for InstalledAppsProvider;
  static SiriKitEventSender.current.getter();
  outlined init with copy of DeviceState(v45, v37);
  outlined init with copy of DeviceState(v44, v36);
  outlined init with copy of DeviceState(v38, v35);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  v33 = &type metadata for SiriContactsFeatureFlagProvider;
  v34 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v37, (v20 + 2));
  outlined init with copy of DeviceState(v36, (v20 + 7));
  v20[13] = v19;
  OUTLINED_FUNCTION_77(v20 + 2, v20[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  OUTLINED_FUNCTION_1_42(v37);
  outlined init with take of DeviceState(&v32, (v20 + 18));
  v20[16] = v23;
  v20[17] = v24;
  OUTLINED_FUNCTION_20_12(v35);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy, type metadata accessor for GetContactHandleIntentStrategy, &protocol conformance descriptor for GetContactHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v26);
}

uint64_t closure #1 in FlowFactory.getContactFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v78 = a4;
  v79 = a3;
  v80 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents16GetContactIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents16GetContactIntentCGMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - v10;
  v12 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = ParameterResolutionRecord.result.getter();
  v14 = INIntentResolutionResult.isUnsupportedRelationshipNotFound.getter();

  if (v14)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      MEMORY[0x26D5E3300](v18, -1, -1);
    }

    v77 = a2;

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v19 = static ContactService.current;
    v101 = type metadata accessor for ContactService();
    v102 = &protocol witness table for ContactService;
    v76 = v101;
    v100[0] = v19;
    v20 = type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v75 = v20;
    v21 = CATWrapper.__allocating_init(options:globals:)();
    ContactCATsModern = type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v74 = ContactCATsModern;
    v72 = CATWrapperSimple.__allocating_init(options:globals:)();
    v23 = type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v73 = v23;
    v24 = CATWrapperSimple.__allocating_init(options:globals:)();
    v98 = &type metadata for SiriContactsFeatureFlagProvider;
    v99 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactUnsupportedValueStrategy(0);
    v25 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v97, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v103, v96);
    outlined init with copy of DeviceState(v100, v95);
    v93 = &type metadata for SiriContactsFeatureFlagProvider;
    v94 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v96, v91);
    outlined init with copy of DeviceState(v95, v90);
    outlined init with copy of DeviceState(v92, v88);
    __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v86 = &type metadata for SiriContactsFeatureFlagProvider;
    v87 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v25 + 113) = 0;
    *(v25 + 96) = v79;
    outlined init with copy of DeviceState(v91, v25 + 16);
    outlined init with copy of DeviceState(v90, v25 + 56);
    *(v25 + 104) = v21;
    __swift_project_boxed_opaque_existential_1((v25 + 16), *(v25 + 40));

    LOBYTE(v23) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    *(v25 + 112) = v23 & 1;
    *(v25 + 120) = 0;
    outlined init with take of DeviceState(&v85, v25 + 144);
    *(v25 + 128) = v72;
    *(v25 + 136) = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    __swift_project_boxed_opaque_existential_1(v78 + 2, v78[5]);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v103[0] = v25;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
      v26 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
    }

    else
    {
      v103[0] = v25;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
      v26 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    v79 = v26;
    type metadata accessor for ContactsCommonCATs(0);

    static CATOption.defaultMode.getter();
    v72 = CATWrapper.__allocating_init(options:globals:)();
    static Device.current.getter();
    static CATOption.defaultMode.getter();
    v41 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v74 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v73 = CATWrapperSimple.__allocating_init(options:globals:)();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMR);
    v42 = swift_allocObject();
    v101 = v76;
    v102 = &protocol witness table for ContactService;
    v100[0] = v19;
    v98 = &type metadata for SiriContactsFeatureFlagProvider;
    v99 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeCATs(0);

    static CATOption.defaultMode.getter();
    *(v42 + 192) = CATWrapper.__allocating_init(options:globals:)();
    outlined init with copy of DeviceState(v103, v96);
    outlined init with copy of DeviceState(v100, v95);
    outlined init with copy of DeviceState(v97, v92);
    __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v91[3] = &type metadata for SiriContactsFeatureFlagProvider;
    v91[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v42 + 184) = 1;
    outlined init with copy of DeviceState(v96, v90);
    outlined init with copy of DeviceState(v95, v88);
    outlined init with copy of DeviceState(v91, &v85);
    __swift_mutable_project_boxed_opaque_existential_1(&v85, v86);
    v83 = &type metadata for SiriContactsFeatureFlagProvider;
    v84 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v42 + 113) = 0;
    *(v42 + 96) = v72;
    outlined init with copy of DeviceState(v90, v42 + 16);
    outlined init with copy of DeviceState(v88, v42 + 56);
    *(v42 + 104) = v41;
    outlined init with copy of DeviceState(v42 + 16, v81);
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v43 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    *(v42 + 112) = v43 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    *(v42 + 120) = 0;
    outlined init with take of DeviceState(&v82, v42 + 144);
    v44 = v73;
    *(v42 + 128) = v74;
    *(v42 + 136) = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(&v85);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    v103[0] = v42;
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for GetContactIntentResponse();
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactsUnsetRelationshipFlowStrategy<GetContactIntent, GetContactIntentResponse> and conformance ContactsUnsetRelationshipFlowStrategy<A, B>, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA16GetContactIntentCAA0hiJ8ResponseCGMR, &protocol conformance descriptor for ContactsUnsetRelationshipFlowStrategy<A, B>);
    v45 = static RCHChildFlowFactoryHelper.makeUnsupportedFlowProducer<A, B>(unsupportedValueFlowProducer:unsetRelationshipStrategy:_:)();

    v46 = v45(v80, v77);
  }

  else
  {
    v27 = ParameterResolutionRecord.result.getter();
    ContactNeeds = INIntentResolutionResult.isGetContactNeedsValue.getter();

    if (ContactNeeds)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.siriContacts);
      (*(v6 + 16))(v11, a2, v5);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v103[0] = v78;
        *v32 = 136315138;
        v33 = ParameterResolutionRecord.result.getter();
        v34 = [v33 unsupportedReason];
        v77 = a2;
        v35 = v34;

        LOBYTE(v100[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
        v36 = String.init<A>(describing:)();
        v38 = v37;
        (*(v6 + 8))(v11, v5);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v103);
        a2 = v77;

        *(v32 + 4) = v39;
        _os_log_impl(&dword_26686A000, v30, v31, "#FlowFactory GetContact unsupported reason is %s. Creating prompt producer to handle unsupported with needs value.", v32, 0xCu);
        v40 = v78;
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x26D5E3300](v40, -1, -1);
        MEMORY[0x26D5E3300](v32, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v11, v5);
      }

      static Device.current.getter();
      if (one-time initialization token for current != -1)
      {
        swift_once();
      }

      v59 = static ContactService.current;
      v101 = type metadata accessor for ContactService();
      v102 = &protocol witness table for ContactService;
      v100[0] = v59;
      type metadata accessor for ContactsLabelCATs(0);

      static CATOption.defaultMode.getter();
      v60 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for GetContactCATsModern(0);
      static CATOption.defaultMode.getter();
      v61 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for ContactsLabelCATsModern(0);
      static CATOption.defaultMode.getter();
      v62 = CATWrapperSimple.__allocating_init(options:globals:)();
      v98 = &type metadata for SiriContactsFeatureFlagProvider;
      v99 = &protocol witness table for SiriContactsFeatureFlagProvider;
      type metadata accessor for GetContactUnsupportedValueStrategy(0);
      v63 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v97, &type metadata for SiriContactsFeatureFlagProvider);
      outlined init with copy of DeviceState(v103, v96);
      outlined init with copy of DeviceState(v100, v95);
      v93 = &type metadata for SiriContactsFeatureFlagProvider;
      v94 = &protocol witness table for SiriContactsFeatureFlagProvider;
      outlined init with copy of DeviceState(v96, v91);
      outlined init with copy of DeviceState(v95, v90);
      outlined init with copy of DeviceState(v92, v88);
      __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
      v86 = &type metadata for SiriContactsFeatureFlagProvider;
      v87 = &protocol witness table for SiriContactsFeatureFlagProvider;
      *(v63 + 113) = 0;
      *(v63 + 96) = v79;
      outlined init with copy of DeviceState(v91, v63 + 16);
      outlined init with copy of DeviceState(v90, v63 + 56);
      *(v63 + 104) = v60;
      __swift_project_boxed_opaque_existential_1((v63 + 16), *(v63 + 40));

      LOBYTE(v59) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      *(v63 + 112) = v59 & 1;
      *(v63 + 120) = 0;
      outlined init with take of DeviceState(&v85, v63 + 144);
      *(v63 + 128) = v61;
      *(v63 + 136) = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v103[0] = v63;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
      v64 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.siriContacts);
      (*(v6 + 16))(v9, a2, v5);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v103[0] = v78;
        *v50 = 136315138;
        v51 = ParameterResolutionRecord.result.getter();
        v52 = [v51 unsupportedReason];
        v77 = a2;
        v53 = v52;

        LOBYTE(v100[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
        v54 = String.init<A>(describing:)();
        v56 = v55;
        (*(v6 + 8))(v9, v5);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v103);
        a2 = v77;

        *(v50 + 4) = v57;
        _os_log_impl(&dword_26686A000, v48, v49, "#FlowFactory GetContact unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v50, 0xCu);
        v58 = v78;
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x26D5E3300](v58, -1, -1);
        MEMORY[0x26D5E3300](v50, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      static Device.current.getter();
      if (one-time initialization token for current != -1)
      {
        swift_once();
      }

      v65 = static ContactService.current;
      v101 = type metadata accessor for ContactService();
      v102 = &protocol witness table for ContactService;
      v100[0] = v65;
      type metadata accessor for ContactsLabelCATs(0);

      static CATOption.defaultMode.getter();
      v66 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for GetContactCATsModern(0);
      static CATOption.defaultMode.getter();
      v67 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for ContactsLabelCATsModern(0);
      static CATOption.defaultMode.getter();
      v68 = CATWrapperSimple.__allocating_init(options:globals:)();
      v98 = &type metadata for SiriContactsFeatureFlagProvider;
      v99 = &protocol witness table for SiriContactsFeatureFlagProvider;
      type metadata accessor for GetContactUnsupportedValueStrategy(0);
      v69 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v97, &type metadata for SiriContactsFeatureFlagProvider);
      outlined init with copy of DeviceState(v103, v96);
      outlined init with copy of DeviceState(v100, v95);
      v93 = &type metadata for SiriContactsFeatureFlagProvider;
      v94 = &protocol witness table for SiriContactsFeatureFlagProvider;
      outlined init with copy of DeviceState(v96, v91);
      outlined init with copy of DeviceState(v95, v90);
      outlined init with copy of DeviceState(v92, v88);
      __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
      v86 = &type metadata for SiriContactsFeatureFlagProvider;
      v87 = &protocol witness table for SiriContactsFeatureFlagProvider;
      *(v69 + 113) = 0;
      *(v69 + 96) = v79;
      outlined init with copy of DeviceState(v91, v69 + 16);
      outlined init with copy of DeviceState(v90, v69 + 56);
      *(v69 + 104) = v66;
      __swift_project_boxed_opaque_existential_1((v69 + 16), *(v69 + 40));

      LOBYTE(v65) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      *(v69 + 112) = v65 & 1;
      *(v69 + 120) = 0;
      outlined init with take of DeviceState(&v85, v69 + 144);
      *(v69 + 128) = v67;
      *(v69 + 136) = v68;
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v103[0] = v69;
      lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
      v64 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
    }

    v70 = v64;

    v46 = v70(v80, a2);
  }

  return v46;
}

uint64_t closure #1 in closure #1 in FlowFactory.getContactFlowProducers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 16), *(Strong + 40));
    v3 = dispatch thunk of DeviceState.isWatch.getter();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t FlowFactory.getContactAttributeFlowProducers()()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = v8 + *(v4 + 20);
  *v9 = "MakeGetContactAttributeFlowProducers";
  *(v9 + 8) = 36;
  *(v9 + 16) = 2;
  type metadata accessor for GetContactAttributeIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for GetContactAttributeIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v10 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v10);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents25GetContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for GetContactAttributeCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v1 + 72, v45);

  static Device.current.getter();
  v27 = v8;
  if (one-time initialization token for current != -1)
  {
    OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
  }

  v12 = static ContactService.current;
  v25 = type metadata accessor for ContactService();
  v42 = v25;
  v43 = &protocol witness table for ContactService;
  v41[0] = v12;
  type metadata accessor for ContactsLabelCATs(0);
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  v15 = type metadata accessor for ContactsLabelCATsModern(0);
  OUTLINED_FUNCTION_68_5(v15);
  OUTLINED_FUNCTION_8_23();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v40[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v40[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactAttributeNeedsValueStrategy(0);
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v40, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v45, v39);
  outlined init with copy of DeviceState(v44, &v36);
  outlined init with copy of DeviceState(v41, v35);
  v34[3] = &type metadata for SiriContactsFeatureFlagProvider;
  v34[4] = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v16 + 184) = 1;
  outlined init with copy of DeviceState(v39, v16 + 192);
  outlined init with copy of DeviceState(&v36, v33);
  outlined init with copy of DeviceState(v35, v32);
  outlined init with copy of DeviceState(v34, v31);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  v29 = &type metadata for SiriContactsFeatureFlagProvider;
  v30 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v16 + 113) = 0;
  *(v16 + 96) = v11;
  outlined init with copy of DeviceState(v33, v16 + 16);
  outlined init with copy of DeviceState(v32, v16 + 56);
  *(v16 + 104) = v13;
  OUTLINED_FUNCTION_77((v16 + 16), *(v16 + 40));
  v17 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(&v36);
  OUTLINED_FUNCTION_31_7(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  *(v16 + 112) = v17 & 1;
  *(v16 + 120) = 0;
  outlined init with take of DeviceState(&v28, v16 + 144);
  *(v16 + 128) = v14;
  *(v16 + 136) = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  v45[0] = v16;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeNeedsValueStrategy, &protocol conformance descriptor for ContactsNeedsValueStrategy<A, B, C>);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v19 = v18;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();

  static Device.current.getter();
  v44[3] = v25;
  v44[4] = &protocol witness table for ContactService;
  v44[0] = v12;
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  v42 = &type metadata for SiriContactsFeatureFlagProvider;
  v43 = &protocol witness table for SiriContactsFeatureFlagProvider;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  OUTLINED_FUNCTION_48_6(ContactAttributeHandleIntentStrategy);
  OUTLINED_FUNCTION_27_10();
  outlined init with copy of DeviceState(v45, v40);
  outlined init with copy of DeviceState(v44, v39);
  v37 = &type metadata for SiriContactsFeatureFlagProvider;
  v38 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v19 + 113) = 0;
  *(v19 + 96) = v11;
  outlined init with copy of DeviceState(v40, v19 + 16);
  outlined init with copy of DeviceState(v39, v19 + 56);
  *(v19 + 104) = v20;
  OUTLINED_FUNCTION_77((v19 + 16), *(v19 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  OUTLINED_FUNCTION_13_18(v40);
  OUTLINED_FUNCTION_4_31();
  outlined init with take of DeviceState(&v36, v19 + 144);
  *(v19 + 128) = v26;
  *(v19 + 136) = v21;
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  v45[0] = v19;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy, type metadata accessor for GetContactAttributeHandleIntentStrategy, &protocol conformance descriptor for GetContactAttributeHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v27);
}

uint64_t closure #1 in FlowFactory.getContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v5 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ParameterIdentifier();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v10 = ParameterIdentifier.name.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  v14.value = GetContactAttributeSlots.init(rawValue:)(v13).value;
  if (v14.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    goto LABEL_2;
  }

  value = v14.value;
  GetContactAttributeSlots.rawValue.getter(v14.value);
  if (v25 == 0xD000000000000014 && 0x800000026696E3B0 == v24)
  {
    goto LABEL_16;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_17;
  }

  GetContactAttributeSlots.rawValue.getter(value);
  if (v29 == 0xD000000000000019 && 0x800000026696E3D0 == v28)
  {
LABEL_16:

    goto LABEL_17;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
LABEL_2:
    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v15 = static ContactService.current;
    v60 = type metadata accessor for ContactService();
    v61 = &protocol witness table for ContactService;
    v59[0] = v15;
    type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v16 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v17 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v18 = CATWrapperSimple.__allocating_init(options:globals:)();
    v57 = &type metadata for SiriContactsFeatureFlagProvider;
    v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GCAContactsDisambiguationStrategy(0);
    v19 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v56, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v62, v55);
    outlined init with copy of DeviceState(v59, v54);
    *(v19 + 184) = 1;
    outlined init with copy of DeviceState(v55, v53);
    outlined init with copy of DeviceState(v54, v52);
    v50 = &type metadata for SiriContactsFeatureFlagProvider;
    v51 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v19 + 113) = 0;
    *(v19 + 96) = a3;
    outlined init with copy of DeviceState(v53, v19 + 16);
    outlined init with copy of DeviceState(v52, v19 + 56);
    *(v19 + 104) = v16;
    __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));

    LOBYTE(v15) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    *(v19 + 112) = v15 & 1;
    *(v19 + 120) = 0;
    outlined init with take of DeviceState(&v49, v19 + 144);
    *(v19 + 128) = v17;
    *(v19 + 136) = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v62[0] = v19;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GCAContactsDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for GCAContactsDisambiguationStrategy, &protocol conformance descriptor for ContactsDisambiguationStrategy<A, B>);
    v20 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

    v21 = v42;
    v22 = a2;
    goto LABEL_20;
  }

LABEL_17:
  v41 = a2;
  static Device.current.getter();
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v32 = static ContactService.current;
  v60 = type metadata accessor for ContactService();
  v61 = &protocol witness table for ContactService;
  v59[0] = v32;
  type metadata accessor for ContactsLabelCATs(0);

  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  v57 = &type metadata for SiriContactsFeatureFlagProvider;
  v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for GetContactCATsModern(0);
  static CATOption.defaultMode.getter();
  v40 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ContactsLabelCATsModern(0);
  static CATOption.defaultMode.getter();
  v34 = CATWrapperSimple.__allocating_init(options:globals:)();
  v35 = type metadata accessor for ReferenceResolutionClient();
  v36 = ReferenceResolutionClient.__allocating_init()();
  outlined init with copy of DeviceState(v62, v55);
  outlined init with copy of DeviceState(v59, v54);
  outlined init with copy of DeviceState(v56, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMd, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMR);
  v37 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  v52[3] = v35;
  v52[4] = MEMORY[0x277D5FDD8];
  v51 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v52[0] = v36;
  v50 = &type metadata for SiriContactsFeatureFlagProvider;
  outlined init with copy of DeviceState(v52, v37 + 184);
  outlined init with copy of DeviceState(v55, v48);
  outlined init with copy of DeviceState(v54, v47);
  outlined init with copy of DeviceState(&v49, v46);
  __swift_mutable_project_boxed_opaque_existential_1(v46, v46[3]);
  v44 = &type metadata for SiriContactsFeatureFlagProvider;
  v45 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v37 + 113) = 0;
  *(v37 + 96) = a3;
  outlined init with copy of DeviceState(v48, v37 + 16);
  outlined init with copy of DeviceState(v47, v37 + 56);
  *(v37 + 104) = v33;
  __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));

  LOBYTE(v35) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();

  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(&v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  *(v37 + 112) = v35 & 1;
  *(v37 + 120) = 0;
  outlined init with take of DeviceState(&v43, v37 + 144);
  *(v37 + 128) = v40;
  *(v37 + 136) = v34;
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  v62[0] = v37;
  lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactAttributeDisambiguationStrategy<GetContactAttributeIntent, GetContactAttributeIntentResponse, GetContactAttributeCATs> and conformance ContactAttributeDisambiguationStrategy<A, B, C>, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMd, &_s19SiriContactsIntents38ContactAttributeDisambiguationStrategyCyAA03GetdE6IntentCAA0hdeI8ResponseCAA0hdE4CATsCGMR, &protocol conformance descriptor for ContactAttributeDisambiguationStrategy<A, B, C>);
  v20 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  v22 = v41;
  v21 = v42;
LABEL_20:
  v38 = v20(v21, v22);

  return v38;
}

uint64_t closure #2 in FlowFactory.getContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v48 - v6;
  v8 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = ParameterResolutionRecord.result.getter();
  v10 = INIntentResolutionResult.isUnsupportedRelationshipNotFound.getter();

  if (v10)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriContacts);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      MEMORY[0x26D5E3300](v14, -1, -1);
    }

    v53 = a2;

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v15 = static ContactService.current;
    v52 = type metadata accessor for ContactService();
    v73 = v52;
    v74 = &protocol witness table for ContactService;
    v72[0] = v15;
    v50 = type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v16 = CATWrapper.__allocating_init(options:globals:)();
    ContactCATsModern = type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v51 = CATWrapperSimple.__allocating_init(options:globals:)();
    v48[1] = type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v17 = CATWrapperSimple.__allocating_init(options:globals:)();
    v70 = &type metadata for SiriContactsFeatureFlagProvider;
    v71 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactAttributeUnsupportedValueStrategy(0);
    v18 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v69, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v75, v68);
    outlined init with copy of DeviceState(v72, v67);
    v65 = &type metadata for SiriContactsFeatureFlagProvider;
    v66 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v68, v63);
    outlined init with copy of DeviceState(v67, v62);
    outlined init with copy of DeviceState(v64, &v59);
    __swift_mutable_project_boxed_opaque_existential_1(&v59, v60);
    v57 = &type metadata for SiriContactsFeatureFlagProvider;
    v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v18 + 113) = 0;
    *(v18 + 96) = v54;
    outlined init with copy of DeviceState(v63, v18 + 16);
    outlined init with copy of DeviceState(v62, v18 + 56);
    *(v18 + 104) = v16;
    __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));

    v19 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    *(v18 + 112) = v19 & 1;
    *(v18 + 120) = 0;
    outlined init with take of DeviceState(&v56, v18 + 144);
    *(v18 + 128) = v51;
    *(v18 + 136) = v17;
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    v75[0] = v18;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
    v54 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    v51 = v20;

    type metadata accessor for ContactsCommonCATs(0);
    static CATOption.defaultMode.getter();
    v21 = CATWrapper.__allocating_init(options:globals:)();
    static Device.current.getter();
    static CATOption.defaultMode.getter();
    v22 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    v50 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    ContactCATsModern = CATWrapperSimple.__allocating_init(options:globals:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMR);
    v23 = swift_allocObject();
    v73 = v52;
    v74 = &protocol witness table for ContactService;
    v72[0] = v15;
    v70 = &type metadata for SiriContactsFeatureFlagProvider;
    v71 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeCATs(0);

    static CATOption.defaultMode.getter();
    *(v23 + 192) = CATWrapper.__allocating_init(options:globals:)();
    outlined init with copy of DeviceState(v75, v68);
    outlined init with copy of DeviceState(v72, v67);
    outlined init with copy of DeviceState(v69, v64);
    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    *(v23 + 184) = 1;
    outlined init with copy of DeviceState(v68, v63);
    outlined init with copy of DeviceState(v67, v62);
    v60 = &type metadata for SiriContactsFeatureFlagProvider;
    v61 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v23 + 113) = 0;
    *(v23 + 96) = v21;
    outlined init with copy of DeviceState(v63, v23 + 16);
    outlined init with copy of DeviceState(v62, v23 + 56);
    *(v23 + 104) = v22;
    outlined init with copy of DeviceState(v23 + 16, &v56);
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v24 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    *(v23 + 112) = v24 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    *(v23 + 120) = 0;
    outlined init with take of DeviceState(&v59, v23 + 144);
    v25 = ContactCATsModern;
    *(v23 + 128) = v50;
    *(v23 + 136) = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    v75[0] = v23;
    type metadata accessor for GetContactAttributeIntentResponse();
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type ContactsUnsetRelationshipFlowStrategy<GetContactAttributeIntent, GetContactAttributeIntentResponse> and conformance ContactsUnsetRelationshipFlowStrategy<A, B>, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMd, &_s19SiriContactsIntents0B29UnsetRelationshipFlowStrategyCyAA25GetContactAttributeIntentCAA0hijK8ResponseCGMR, &protocol conformance descriptor for ContactsUnsetRelationshipFlowStrategy<A, B>);
    v26 = static RCHChildFlowFactoryHelper.makeUnsupportedFlowProducer<A, B>(unsupportedValueFlowProducer:unsetRelationshipStrategy:_:)();

    v27 = v55;
    v28 = v53;
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriContacts);
    (*(v5 + 16))(v7, a2, v4);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75[0] = v52;
      *v32 = 136315138;
      v33 = ParameterResolutionRecord.result.getter();
      v34 = [v33 unsupportedReason];
      v53 = a2;
      v35 = v34;

      LOBYTE(v72[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      (*(v5 + 8))(v7, v4);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v75);
      a2 = v53;

      *(v32 + 4) = v39;
      _os_log_impl(&dword_26686A000, v30, v31, "#FlowFactory GetContactAttribute unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v32, 0xCu);
      v40 = v52;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x26D5E3300](v40, -1, -1);
      MEMORY[0x26D5E3300](v32, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v41 = static ContactService.current;
    v73 = type metadata accessor for ContactService();
    v74 = &protocol witness table for ContactService;
    v72[0] = v41;
    type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v42 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v43 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v44 = CATWrapperSimple.__allocating_init(options:globals:)();
    v70 = &type metadata for SiriContactsFeatureFlagProvider;
    v71 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for GetContactAttributeUnsupportedValueStrategy(0);
    v45 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v69, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v75, v68);
    outlined init with copy of DeviceState(v72, v67);
    v65 = &type metadata for SiriContactsFeatureFlagProvider;
    v66 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v68, v63);
    outlined init with copy of DeviceState(v67, v62);
    outlined init with copy of DeviceState(v64, &v59);
    __swift_mutable_project_boxed_opaque_existential_1(&v59, v60);
    v57 = &type metadata for SiriContactsFeatureFlagProvider;
    v58 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v45 + 113) = 0;
    *(v45 + 96) = v54;
    outlined init with copy of DeviceState(v63, v45 + 16);
    outlined init with copy of DeviceState(v62, v45 + 56);
    *(v45 + 104) = v42;
    __swift_project_boxed_opaque_existential_1((v45 + 16), *(v45 + 40));

    LOBYTE(v41) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    *(v45 + 112) = v41 & 1;
    *(v45 + 120) = 0;
    outlined init with take of DeviceState(&v56, v45 + 144);
    *(v45 + 128) = v43;
    *(v45 + 136) = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    v75[0] = v45;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type GetContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for GetContactAttributeUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
    v26 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

    v27 = v55;
    v28 = a2;
  }

  v46 = v26(v27, v28);

  return v46;
}

uint64_t FlowFactory.modifyContactAttributeFlowProducers()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v7 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_56_5();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_44_5();
  type metadata accessor for ModifyContactAttributeIntent();
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ModifyContactAttributeIntentResponse();
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  v8 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_51_3(v8);
  OUTLINED_FUNCTION_49_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVy0A15ContactsIntents28ModifyContactAttributeIntentCAD0ijkL8ResponseCGMR);
  OUTLINED_FUNCTION_25_8();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for ModifyContactAttributeCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v37 = v6;
  v9 = CATWrapper.__allocating_init(options:globals:)();
  outlined init with copy of DeviceState(v0 + 72, v60);
  outlined init with copy of DeviceState(v0 + 16, v57);
  v10 = one-time initialization token for current;
  v11 = v9;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
  }

  v12 = static ContactService.current;
  v38 = type metadata accessor for ContactService();
  v55 = v38;
  v56 = &protocol witness table for ContactService;
  v54[0] = v12;
  type metadata accessor for ContactsLabelCATs(0);
  swift_retain_n();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for GetContactCATsModern(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v36 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ContactsLabelCATsModern(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  v52 = &type metadata for SiriContactsFeatureFlagProvider;
  v53 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v15 = type metadata accessor for ModifyContactAttributeNeedsValueStrategy(0);
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v51, &type metadata for SiriContactsFeatureFlagProvider);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v54, v47);
  *(v16 + 184) = 1;
  outlined init with copy of DeviceState(v50, v16 + 192);
  outlined init with copy of DeviceState(v49, v44);
  outlined init with copy of DeviceState(v47, v43);
  v41 = &type metadata for SiriContactsFeatureFlagProvider;
  v42 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v16 + 113) = 0;
  *(v16 + 96) = v11;
  outlined init with copy of DeviceState(v44, v16 + 16);
  outlined init with copy of DeviceState(v43, v16 + 56);
  *(v16 + 104) = v13;
  OUTLINED_FUNCTION_77((v16 + 16), *(v16 + 40));
  v17 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  OUTLINED_FUNCTION_31_7(v50);
  *(v16 + 112) = v17 & 1;
  *(v16 + 120) = 0;
  outlined init with take of DeviceState(&v40, v16 + 144);
  *(v16 + 128) = v36;
  *(v16 + 136) = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  v60[0] = v16;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeNeedsValueStrategy and conformance ContactsNeedsValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeNeedsValueStrategy, &protocol conformance descriptor for ContactsNeedsValueStrategy<A, B, C>);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v18 = v11;
  v58 = v38;
  v59 = &protocol witness table for ContactService;
  v39 = v12;
  v57[0] = v12;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4(v19);
  OUTLINED_FUNCTION_8_23();
  v20 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v20);
  OUTLINED_FUNCTION_8_23();
  v34 = CATWrapperSimple.__allocating_init(options:globals:)();
  v55 = &type metadata for SiriContactsFeatureFlagProvider;
  v56 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeDisambiguationStrategy(0);
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for SiriContactsFeatureFlagProvider);
  outlined init with copy of DeviceState(v60, v51);
  outlined init with copy of DeviceState(v57, v50);
  *(v21 + 184) = 1;
  outlined init with copy of DeviceState(v51, v49);
  outlined init with copy of DeviceState(v50, v47);
  v45 = &type metadata for SiriContactsFeatureFlagProvider;
  v46 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v21 + 113) = 0;
  *(v21 + 96) = v18;
  outlined init with copy of DeviceState(v49, v21 + 16);
  outlined init with copy of DeviceState(v47, v21 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  OUTLINED_FUNCTION_13_18(v51);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_73_1();
  *(v21 + 128) = v36;
  *(v21 + 136) = v34;
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  v60[0] = v21;
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeDisambiguationStrategy and conformance ContactsDisambiguationStrategy<A, B>, type metadata accessor for ModifyContactAttributeDisambiguationStrategy, &protocol conformance descriptor for ContactsDisambiguationStrategy<A, B>);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v58 = v38;
  v59 = &protocol witness table for ContactService;
  v57[0] = v12;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4(v22);
  OUTLINED_FUNCTION_8_23();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v23);
  OUTLINED_FUNCTION_8_23();
  v35 = CATWrapperSimple.__allocating_init(options:globals:)();
  v55 = &type metadata for SiriContactsFeatureFlagProvider;
  v56 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v24 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  v25 = OUTLINED_FUNCTION_48_6(v24);
  __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for SiriContactsFeatureFlagProvider);
  v52 = &type metadata for SiriContactsFeatureFlagProvider;
  v53 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v51, v47);
  __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v45 = &type metadata for SiriContactsFeatureFlagProvider;
  v46 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v25 + 113) = 0;
  *(v25 + 96) = v18;
  outlined init with copy of DeviceState(v50, v25 + 16);
  outlined init with copy of DeviceState(v49, v25 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  OUTLINED_FUNCTION_1_42(v50);
  OUTLINED_FUNCTION_73_1();
  *(v25 + 128) = v36;
  *(v25 + 136) = v35;
  OUTLINED_FUNCTION_20_12(v47);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeConfirmIntentStrategy and conformance ModifyContactAttributeConfirmIntentStrategy, type metadata accessor for ModifyContactAttributeConfirmIntentStrategy, &protocol conformance descriptor for ModifyContactAttributeConfirmIntentStrategy);
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v58 = v38;
  v59 = &protocol witness table for ContactService;
  v57[0] = v12;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4(v26);
  OUTLINED_FUNCTION_8_23();
  v27 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_68_5(v27);
  OUTLINED_FUNCTION_8_23();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  v55 = &type metadata for SiriContactsFeatureFlagProvider;
  v56 = &protocol witness table for SiriContactsFeatureFlagProvider;
  v29 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  OUTLINED_FUNCTION_48_6(v29);
  OUTLINED_FUNCTION_27_10();
  v52 = &type metadata for SiriContactsFeatureFlagProvider;
  v53 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v51, v47);
  __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v45 = &type metadata for SiriContactsFeatureFlagProvider;
  v46 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v50, v25 + 16);
  outlined init with copy of DeviceState(v49, v25 + 56);
  OUTLINED_FUNCTION_19_12();
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  OUTLINED_FUNCTION_1_42(v50);
  OUTLINED_FUNCTION_73_1();
  *(v25 + 128) = v36;
  *(v25 + 136) = v28;
  OUTLINED_FUNCTION_20_12(v47);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy, type metadata accessor for ModifyContactAttributeHandleIntentStrategy, &protocol conformance descriptor for ModifyContactAttributeHandleIntentStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  OUTLINED_FUNCTION_38_5();
  v58 = v38;
  v59 = &protocol witness table for ContactService;
  v57[0] = v39;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_54_4(v30);
  OUTLINED_FUNCTION_8_23();
  v31 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_23();
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();
  v55 = &type metadata for SiriContactsFeatureFlagProvider;
  v56 = &protocol witness table for SiriContactsFeatureFlagProvider;
  type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy(0);
  swift_allocObject();
  OUTLINED_FUNCTION_27_10();
  v52 = &type metadata for SiriContactsFeatureFlagProvider;
  v53 = &protocol witness table for SiriContactsFeatureFlagProvider;
  *(v25 + 208) = &type metadata for InstalledAppsProvider;
  *(v25 + 216) = &protocol witness table for InstalledAppsProvider;
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_69_4();
  outlined init with copy of DeviceState(v51, v47);
  __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v45 = &type metadata for SiriContactsFeatureFlagProvider;
  v46 = &protocol witness table for SiriContactsFeatureFlagProvider;
  OUTLINED_FUNCTION_45_2();
  outlined init with copy of DeviceState(v50, v25 + 16);
  outlined init with copy of DeviceState(v49, v25 + 56);
  *(v25 + 104) = v15;
  OUTLINED_FUNCTION_77((v25 + 16), *(v25 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  OUTLINED_FUNCTION_1_42(v50);
  OUTLINED_FUNCTION_73_1();
  *(v25 + 128) = v31;
  *(v25 + 136) = v32;
  OUTLINED_FUNCTION_20_12(v47);
  lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy, type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy, &protocol conformance descriptor for ModifyContactAttributeContinueInAppFlowStrategy);
  OUTLINED_FUNCTION_10_28();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_37_0();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return outlined destroy of Signpost.OpenSignpost(v37);
}

uint64_t closure #1 in FlowFactory.modifyContactAttributeFlowProducers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v43 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v8 - 8);
  v44 = a2;
  v9 = ParameterResolutionRecord.result.getter();
  v10 = INIntentResolutionResult.isModifyContactAttributeNeedsValue.getter();

  if (v10)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriContacts);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26686A000, v12, v13, "#FlowFactory ModifyContactAttribute unsupported. Creating prompt producer to handle unsupported with needs value.", v14, 2u);
      MEMORY[0x26D5E3300](v14, -1, -1);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v15 = static ContactService.current;
    v61 = type metadata accessor for ContactService();
    v62 = &protocol witness table for ContactService;
    v60[0] = v15;
    type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v16 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v17 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v18 = CATWrapperSimple.__allocating_init(options:globals:)();
    v58 = &type metadata for SiriContactsFeatureFlagProvider;
    v59 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy(0);
    v19 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v63, v56);
    outlined init with copy of DeviceState(v60, v55);
    v53 = &type metadata for SiriContactsFeatureFlagProvider;
    v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v56, v51);
    outlined init with copy of DeviceState(v55, v50);
    outlined init with copy of DeviceState(v52, v48);
    __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v46 = &type metadata for SiriContactsFeatureFlagProvider;
    v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v19 + 113) = 0;
    *(v19 + 96) = v42;
    outlined init with copy of DeviceState(v51, v19 + 16);
    outlined init with copy of DeviceState(v50, v19 + 56);
    *(v19 + 104) = v16;
    __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));

    LOBYTE(v15) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    *(v19 + 112) = v15 & 1;
    *(v19 + 120) = 0;
    outlined init with take of DeviceState(&v45, v19 + 144);
    *(v19 + 128) = v17;
    *(v19 + 136) = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    v63[0] = v19;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
    v20 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriContacts);
    (*(v5 + 16))(v7, v44, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63[0] = v41;
      *v24 = 136315138;
      v25 = ParameterResolutionRecord.result.getter();
      v26 = [v25 unsupportedReason];

      LOBYTE(v60[0]) = SiriKitContactUnsupportedReason.init(rawValue:)(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v63);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_26686A000, v22, v23, "#FlowFactory ModifyContactAttribute unsupported reason is %s. Creating cancel producer to handle unsupported without needs value.", v24, 0xCu);
      v31 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x26D5E3300](v31, -1, -1);
      MEMORY[0x26D5E3300](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    static Device.current.getter();
    if (one-time initialization token for current != -1)
    {
      swift_once();
    }

    v32 = static ContactService.current;
    v61 = type metadata accessor for ContactService();
    v62 = &protocol witness table for ContactService;
    v60[0] = v32;
    type metadata accessor for ContactsLabelCATs(0);

    static CATOption.defaultMode.getter();
    v33 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for GetContactCATsModern(0);
    static CATOption.defaultMode.getter();
    v34 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v35 = CATWrapperSimple.__allocating_init(options:globals:)();
    v58 = &type metadata for SiriContactsFeatureFlagProvider;
    v59 = &protocol witness table for SiriContactsFeatureFlagProvider;
    type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy(0);
    v36 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for SiriContactsFeatureFlagProvider);
    outlined init with copy of DeviceState(v63, v56);
    outlined init with copy of DeviceState(v60, v55);
    v53 = &type metadata for SiriContactsFeatureFlagProvider;
    v54 = &protocol witness table for SiriContactsFeatureFlagProvider;
    outlined init with copy of DeviceState(v56, v51);
    outlined init with copy of DeviceState(v55, v50);
    outlined init with copy of DeviceState(v52, v48);
    __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v46 = &type metadata for SiriContactsFeatureFlagProvider;
    v47 = &protocol witness table for SiriContactsFeatureFlagProvider;
    *(v36 + 113) = 0;
    *(v36 + 96) = v42;
    outlined init with copy of DeviceState(v51, v36 + 16);
    outlined init with copy of DeviceState(v50, v36 + 56);
    *(v36 + 104) = v33;
    __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));

    LOBYTE(v32) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    *(v36 + 112) = v32 & 1;
    *(v36 + 120) = 0;
    outlined init with take of DeviceState(&v45, v36 + 144);
    *(v36 + 128) = v34;
    *(v36 + 136) = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    v63[0] = v36;
    lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(&lazy protocol witness table cache variable for type ModifyContactAttributeUnsupportedValueStrategy and conformance ContactsUnsupportedValueStrategy<A, B, C>, type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy, &protocol conformance descriptor for ContactsUnsupportedValueStrategy<A, B, C>);
    v20 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
  }

  v37 = v20;

  v38 = v37(v43, v44);

  return v38;
}

BOOL closure #2 in FlowFactory.modifyContactAttributeFlowProducers()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v0 = IntentResolutionRecord.intentResponse.getter();
  v1 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 1;
}

void *FlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  return v0;
}

uint64_t FlowFactory.__deallocating_deinit()
{
  FlowFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedLearnPronunciationFlow()();
}

uint64_t protocol witness for FlowProviding.makeUnsupportedActionFlow() in conformance FlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedActionFlow()();
}

uint64_t protocol witness for FlowProviding.makeUnsupportedOnDeviceFlow(intent:) in conformance FlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedOnDeviceFlow(intent:)();
}

uint64_t protocol witness for FlowProviding.makeAppPunchoutFlow() in conformance FlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return FlowFactory.makeAppPunchoutFlow()();
}

uint64_t partial apply for closure #1 in FlowFactory.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  v4[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return closure #1 in FlowFactory.makeAppPunchoutFlow()(v2, v0);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_41_8(v0, v1);
  OUTLINED_FUNCTION_21_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_10(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_41_8(v0, v1);
  OUTLINED_FUNCTION_21_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_10(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_10(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_13(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of FlowProviding.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_41_8(v0, v1);
  OUTLINED_FUNCTION_21_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_10(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v5 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_13(v2);

  return v5();
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v5 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_13(v2);

  return v5();
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  OUTLINED_FUNCTION_10_4();
  v7 = (*(v2 + 168) + **(v2 + 168));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_13(v4);

  return v7(v1);
}

uint64_t dispatch thunk of FlowFactory.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v5 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_13(v2);

  return v5();
}

{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t partial apply for closure #1 in FlowFactory.getUnsupportedFlow(for:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_1_1(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  v9[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return closure #1 in FlowFactory.getUnsupportedFlow(for:)(v2, v0 + v5, v7);
}

uint64_t lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_42(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v3 - 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v3 - 168));
  result = __swift_destroy_boxed_opaque_existential_0Tm((v3 - 248));
  *(v2 + 112) = v1 & 1;
  *(v2 + 120) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_44(unint64_t *a1)
{
  v4 = MEMORY[0x277D5B820];

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return App.__allocating_init(appIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_13_18(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 128));

  return __swift_destroy_boxed_opaque_existential_0Tm((v1 - 168));
}

uint64_t OUTLINED_FUNCTION_17_13()
{
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  v0[13] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_20_12(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm((v2 - 208));
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1)
{

  return MEMORY[0x2821BAFA8](v3 - 104, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return outlined init with copy of DeviceState(v0 + 72, v1 - 104);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 208, v0);
}

uint64_t OUTLINED_FUNCTION_31_7(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 128));

  return __swift_destroy_boxed_opaque_existential_0Tm((v1 - 208));
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1)
{
  result = outlined init with take of DeviceState((v1 - 104), a1 + 16);
  *(v1 - 104) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  v3 = *(v0 + 80) + 16;

  return outlined init with copy of DeviceState(v3, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  v5 = v4 + *(v0 + 20);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return type metadata accessor for Signpost.OpenSignpost(0);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_6()
{
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return MEMORY[0x2821BA408](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_4(uint64_t a1)
{

  return Flow.eraseToAnyFlow()();
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_60_5()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{
  v5 = *(v2 + 56);
  *(v3 - 144) = *(v2 + 64);
  *(v3 - 136) = v1;
  *(v3 - 168) = v5;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1)
{
  *(v1 + 8) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return outlined init with copy of DeviceState(v1 - 168, v0 + 264);
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return outlined init with copy of DeviceState(v1 - 128, v0 + 304);
}

uint64_t OUTLINED_FUNCTION_72_2()
{
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return outlined init with take of DeviceState((v0 + 184), v1 + 144);
}

uint64_t GetContactDirectInvocationsModel.init(contact:)(void *a1)
{
  v99 = &type metadata for InstalledAppsProvider;
  v100 = &protocol witness table for InstalledAppsProvider;
  v1 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()();
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F98];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D5E29D0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AppUtil.buildPunchoutFor(emailAddress:)();
      v11 = v10;

      if (v11)
      {
        v12 = [v8 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = v11;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_0_46();
      }

      ++v5;
      v14 = [v8 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = [v8 value];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      static AppUtil.buildMessagesPunchoutFor(handleString:)(v16, v18);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_46();
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v19 = [a1 phoneNumbers];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v93 = v20;
  v21 = specialized Array._getCount()();
  if (!v21)
  {
LABEL_27:

    v54 = [a1 postalAddresses];
    v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = v55;
    v56 = specialized Array._getCount()();
    if (v56)
    {
      v57 = v56;
      if (v56 < 1)
      {
        goto LABEL_54;
      }

      v58 = 0;
      v59 = MEMORY[0x277D84F98];
      v90 = v56;
      v92 = v55 & 0xC000000000000001;
      do
      {
        if (v92)
        {
          v60 = MEMORY[0x26D5E29D0](v58, v94);
        }

        else
        {
          v60 = *(v94 + 8 * v58 + 32);
        }

        v61 = v60;
        AppUtil.buildPunchoutFor(labeledAddress:contact:)();
        if (v62)
        {
          v63 = v62;
          v64 = [v61 identifier];
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          v68 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v59;
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v67);
          v72 = v59[2];
          v73 = (v71 & 1) == 0;
          v74 = v72 + v73;
          if (__OFADD__(v72, v73))
          {
            goto LABEL_49;
          }

          v75 = v70;
          v76 = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
          {
            v77 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v67);
            if ((v76 & 1) != (v78 & 1))
            {
              goto LABEL_55;
            }

            v75 = v77;
          }

          v59 = v97;
          if (v76)
          {
            v79 = v97[7];
            v80 = *(v79 + 8 * v75);
            *(v79 + 8 * v75) = v68;

            v61 = v80;
          }

          else
          {
            v97[(v75 >> 6) + 8] |= 1 << v75;
            v81 = (v97[6] + 16 * v75);
            *v81 = v65;
            v81[1] = v67;
            *(v97[7] + 8 * v75) = v68;
            v82 = v97[2];
            v52 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v52)
            {
              goto LABEL_51;
            }

            v97[2] = v83;
          }

          v57 = v90;
        }

        else
        {
        }

        ++v58;
      }

      while (v57 != v58);
    }

    v84 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v86 = v85;

    if (v86)
    {
      type metadata accessor for SAUIAppPunchOut();
      v87 = v86;
      SAClientBoundCommand.data.getter();
    }

    GetContactDirectInvocationsModel.init(contactCardPunchout:sendEmailPunchouts:sendMessagePunchouts:navigationPunchouts:)();

    return outlined destroy of AppUtil(v98);
  }

  if (v21 >= 1)
  {
    v22 = v6;
    v23 = 0;
    v89 = v21;
    v91 = v20 & 0xC000000000000001;
    while (1)
    {
      v24 = v91 ? MEMORY[0x26D5E29D0](v23, v93) : *(v93 + 8 * v23 + 32);
      v25 = v24;
      v26 = [v24 value];
      v27 = [v26 stringValue];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      static AppUtil.buildMessagesPunchoutFor(handleString:)(v28, v30);
      v32 = v31;

      v33 = [v25 identifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v32;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v22;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = v22[2];
      v42 = (v40 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        break;
      }

      v44 = v39;
      v45 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v38, v43))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_55;
        }

        v44 = v46;
      }

      v22 = v96;
      if (v45)
      {
        v48 = v96[7];
        v49 = *(v48 + 8 * v44);
        *(v48 + 8 * v44) = v37;

        v25 = v49;
      }

      else
      {
        v96[(v44 >> 6) + 8] |= 1 << v44;
        v50 = (v96[6] + 16 * v44);
        *v50 = v34;
        v50[1] = v36;
        *(v96[7] + 8 * v44) = v37;
        v51 = v96[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_50;
        }

        v96[2] = v53;
      }

      ++v23;

      if (v89 == v23)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for SAUIAppPunchOut()
{
  result = lazy cache variable for type metadata for SAUIAppPunchOut;
  if (!lazy cache variable for type metadata for SAUIAppPunchOut)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIAppPunchOut);
  }

  return result;
}

void OUTLINED_FUNCTION_0_46()
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for CompactViews(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CompactViews(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)()
{
  OUTLINED_FUNCTION_15();
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v4);
  v5 = v0 + *(v2 + 20);
  *v5 = "BuildGetAttributeSnippetIOS";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  CompactViews.buildCardSections(handles:contact:contactAttribute:localeString:)();
  OUTLINED_FUNCTION_5_37();
  if (specialized Array._getCount()())
  {
    v6 = v1[4];
    v7 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
    (*(v7 + 8))(v6, v7);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SACardSnippet, 0x277D47200);
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
  }

  v8 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v8);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactForgetRelationshipView(relatedContactName:meCardName:meCardContactID:)(Swift::String_optional relatedContactName, Swift::String meCardName, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v31 = v5;
  v32 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v10 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v10);
  v11 = v3 + *(v8 + 20);
  *v11 = "BuildForgetRelationshipViewIOS";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  if (v12)
  {
    v13 = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = OUTLINED_FUNCTION_7_21(v14);
    *(v15 + 16) = xmmword_266966A40;
    *(v15 + 32) = v13;
    v16 = OUTLINED_FUNCTION_8_24();
    *(v16 + 16) = xmmword_266966A40;
    v17 = v13;
    *(v16 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = OUTLINED_FUNCTION_7_21(v18);
  *(v19 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

  v20 = @nonobjc SFFormattedText.__allocating_init(string:)(v31, v32);
  v21 = OUTLINED_FUNCTION_8_24();
  *(v21 + 16) = xmmword_266966A40;

  OUTLINED_FUNCTION_13_19();
  *(v21 + 32) = SFRichText.init(string:bold:color:)(v22, v23, v24, v25);
  ContactsLabelCATs.relationshipRemoved()();
  Result<>.firstPrint.getter();
  OUTLINED_FUNCTION_30_3();
  outlined destroy of Result<TemplatingResult, Error>(v4, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!"BuildForgetRelationshipViewIOS")
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v26 = @nonobjc SFFormattedText.__allocating_init(string:)(v4, "BuildForgetRelationshipViewIOS");
  *(v19 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v20, v21, v16, 0, v26, 0, 0);
  v27 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v27);
  outlined destroy of Signpost.OpenSignpost(v3);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v29;
  result._0._rawValue = v28;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactSetRelationshipView(relatedContactName:meCardName:relationship:meCardContactID:)(Swift::String_optional relatedContactName, Swift::String meCardName, Swift::String_optional relationship, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v46[1] = v5;
  *&v47 = v6;
  v8 = v7;
  *&v48 = v9;
  v53 = v10;
  v54 = v11;
  v51 = v12;
  v52 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v22 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v49 = v22;
  os_signpost(_:dso:log:name:signpostID:)();
  v23 = &v21[*(v18 + 20)];
  *v23 = "BuildSetRelationshipViewIOS";
  *(v23 + 1) = 27;
  v23[16] = 2;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  if (v24)
  {
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = OUTLINED_FUNCTION_4_21(v26);
    v47 = xmmword_266966A40;
    *(v27 + 16) = xmmword_266966A40;
    *(v27 + 32) = v25;
    v28 = OUTLINED_FUNCTION_4_21(v26);
    *(v28 + 16) = v47;
    v29 = v25;
    *(v28 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (!v8)
  {
    static String.EMPTY.getter();
  }

  SpeakableString.init(print:speak:)();
  v30 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v30);
  ContactsLabelCATs.relationship(relationship:)(v16);
  outlined destroy of Result<TemplatingResult, Error>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v32 = OUTLINED_FUNCTION_4_21(v31);
  v48 = xmmword_266966A40;
  *(v32 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v33 = v52;

  v34 = @nonobjc SFFormattedText.__allocating_init(string:)(v51, v33);
  v35 = OUTLINED_FUNCTION_4_21(v31);
  *(v35 + 16) = v48;

  OUTLINED_FUNCTION_13_19();
  *(v35 + 32) = SFRichText.init(string:bold:color:)(v36, v37, v38, v39);
  v40 = Result<>.firstPrint.getter();
  v42 = @nonobjc SFFormattedText.__allocating_init(string:)(v40, v41);
  *(v32 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v34, v35, v28, 0, v42, 0, 0);
  outlined destroy of Result<TemplatingResult, Error>(v4, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v21);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v44;
  result._0._rawValue = v43;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(Swift::String newNickName, Swift::String meCardName, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v6 = v5;
  v8 = v7;
  v36 = v9;
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v14 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v14);
  v15 = v3 + *(v12 + 20);
  *v15 = "BuildSetNickNameViewIOS";
  *(v15 + 8) = 23;
  *(v15 + 16) = 2;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v38 = v8;
  if (v16)
  {
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_7_21(v18);
    *(v19 + 16) = xmmword_266966A40;
    *(v19 + 32) = v17;
    v20 = OUTLINED_FUNCTION_8_24();
    *(v20 + 16) = xmmword_266966A40;
    v21 = v17;
    *(v20 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_7_21(v22);
  *(v23 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

  v24 = @nonobjc SFFormattedText.__allocating_init(string:)(v36, v37);
  v25 = OUTLINED_FUNCTION_8_24();
  *(v25 + 16) = xmmword_266966A40;

  OUTLINED_FUNCTION_13_19();
  *(v25 + 32) = SFRichText.init(string:bold:color:)(v26, v27, v28, v29);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);

  v30 = SFContactImage.init(contactId:size:)(v38, v6, 0, 0, 1);
  ContactsLabelCATs.nickName()();
  Result<>.firstPrint.getter();
  OUTLINED_FUNCTION_30_3();
  outlined destroy of Result<TemplatingResult, Error>(v4, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!"BuildSetNickNameViewIOS")
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v31 = @nonobjc SFFormattedText.__allocating_init(string:)(v4, "BuildSetNickNameViewIOS");
  *(v23 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v24, v25, v20, v30, v31, 0, 0);
  v32 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v32);
  outlined destroy of Signpost.OpenSignpost(v3);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v34;
  result._0._rawValue = v33;
  return result;
}

void CompactViews.buildCompactConfirmationView(attributeType:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v7 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v7);
  v8 = v0 + *(v5 + 20);
  *v8 = "BuildConfirmationViewIOS";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  type metadata accessor for SiriKitAceViewBuilder();

  SiriKitAceViewBuilder.__allocating_init()();
  GenericViews.getConfirmText(forAttribute:)(v3);
  v9 = static ContactsDirectInvocations.confirm()();
  dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

  ContactsLabelCATs.cancel()();
  Result<>.firstPrint.getter();
  v11 = v10;
  outlined destroy of Result<TemplatingResult, Error>(v1, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!v11)
  {
    static String.EMPTY.getter();
  }

  v12 = static ContactsDirectInvocations.deny()();
  dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  v13 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v13);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

uint64_t static CompactViews.formatPhoneNumberForDisplay(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNPhoneNumber, 0x277CBDB70);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5.super.isa = CNPhoneNumber.__allocating_init(stringValue:)(v4).super.isa;
  v6 = [(objc_class *)v5.super.isa formattedStringValue];
  if (v6)
  {
    v7 = v6;
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

void CompactViews.buildCardSections(handles:contact:contactAttribute:localeString:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v59 = v3;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v13 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v13);
  v14 = v0 + *(v11 + 20);
  *v14 = "BuildCardSectionsIOS";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  switch([v6 contactAttributeType])
  {
    case 1uLL:
      if (!v10 || !specialized Array._getCount()())
      {
        goto LABEL_25;
      }

      if (specialized Array._getCount()() == 1)
      {
        OUTLINED_FUNCTION_6_32();
        MEMORY[0x26D5E29D0](0, v10);
        v43 = OUTLINED_FUNCTION_3_30();
        CompactViews.buildEmailSingleAttributeSnippet(contact:emailAddress:localeString:)(v43, v44, v45, v46);
        goto LABEL_24;
      }

      CompactViews.buildEmailMultipleAttributesSnippet(contact:emailAddresses:localeString:)(v8, v10, v59, v60);
      goto LABEL_27;
    case 2uLL:
      if (!v10 || !specialized Array._getCount()())
      {
        goto LABEL_25;
      }

      if (specialized Array._getCount()() != 1)
      {
        static CompactViews.buildPhoneMultipleAttributesSnippet(contact:phoneNumbers:localeString:)(v8, v10, v59, v60);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_6_32();
      MEMORY[0x26D5E29D0](0, v10);
      v35 = OUTLINED_FUNCTION_3_30();
      CompactViews.buildPhoneSingleAttributeSnippet(contact:phoneNumber:localeString:)(v35, v36, v37, v38);
LABEL_24:
      OUTLINED_FUNCTION_5_37();

      goto LABEL_34;
    case 3uLL:
      if (!v10 || !specialized Array._getCount()())
      {
LABEL_25:
        v15 = v8;
        v16 = 1;
LABEL_26:
        CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(v15, v16);
LABEL_27:
        OUTLINED_FUNCTION_5_37();
        if (v47 >> 62)
        {
          goto LABEL_35;
        }

LABEL_28:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
        goto LABEL_29;
      }

      if (specialized Array._getCount()() == 1)
      {
        OUTLINED_FUNCTION_6_32();
        v39 = MEMORY[0x26D5E29D0](0, v10);
        v40 = [v39 postalAddress];

        if (v40)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          v41 = v40;
          v42 = CNLabeledValue<>.init(address:)(v41);
          CompactViews.buildAddressSingleAttributeSnippet(contact:postalAddress:localeString:)(v8, v42, v59, v60);
          OUTLINED_FUNCTION_5_37();

          if (!(v8 >> 62))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

            goto LABEL_29;
          }

          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

          _bridgeCocoaArray<A>(_:)();

          goto LABEL_36;
        }
      }

      Array<A>.toCNPostalAddresses.getter(v10);
      v55 = OUTLINED_FUNCTION_3_30();
      CompactViews.buildAddressMultipleAttributesSnippet(contact:postalAddresses:localeString:)(v55, v56, v57, v58);
      OUTLINED_FUNCTION_5_37();
LABEL_33:

LABEL_34:
      if (!(v8 >> 62))
      {
        goto LABEL_28;
      }

LABEL_35:
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

      _bridgeCocoaArray<A>(_:)();
LABEL_36:

LABEL_29:

      v48 = static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_18_2(v48);
      outlined destroy of Signpost.OpenSignpost(v0);
      OUTLINED_FUNCTION_14();
      return;
    case 4uLL:
      type metadata accessor for ContactsAgeInfo();
      v49 = *(v2 + 48);
      v50 = v49;
      v8 = v8;
      ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(v8, v6, v49);
      static CompactViews.formattedAgeDigit(_:)();
      v52 = v51;
      v54 = v53;

      CompactViews.buildAgeAttributeSnippet(contact:requestedAge:)(v8, v52, v54);
      OUTLINED_FUNCTION_5_37();
      goto LABEL_33;
    case 5uLL:
      CompactViews.buildBirthdayAttributeSnippet(contact:)(v8);
      goto LABEL_27;
    case 6uLL:
      v17 = [v8 nickname];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        goto LABEL_9;
      }

      v22 = [v8 nickname];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = CNContact.formattedFullName.getter();
      v28 = v27;
      v8 = [v8 identifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32._countAndFlagsBits = v23;
      v32._object = v25;
      v33._countAndFlagsBits = v26;
      v33._object = v28;
      v34._countAndFlagsBits = v29;
      v34._object = v31;
      CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(v32, v33, v34);
      OUTLINED_FUNCTION_5_37();

      goto LABEL_33;
    case 9uLL:
    case 0xBuLL:
      v15 = v8;
      v16 = 0;
      goto LABEL_26;
    default:
LABEL_9:
      v16 = [v6 contactAttributeType] == 0;
      v15 = v8;
      goto LABEL_26;
  }
}

uint64_t CompactViews.buildPhoneSingleAttributeSnippet(contact:phoneNumber:localeString:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v58 = a1;
  v7 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = &v11[*(v9 + 20)];
  *v13 = "BuildPhoneSingleAttributeSnippetIOS";
  *(v13 + 1) = 35;
  v13[16] = 2;
  v56 = a2;
  v14 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a2);
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    v18 = [v58 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v20 = v19;

    v54 = a4;
    v55 = v12;
    v53 = a3;
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      v51 = xmmword_266966A40;
      *(v21 + 16) = xmmword_266966A40;
      v52 = v21;
      *(v21 + 32) = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = v51;
      v23 = v20;
      v24 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v51 = v22;
      *(v22 + 32) = v24;
    }

    else
    {
      *&v51 = MEMORY[0x277D84F90];
      v52 = MEMORY[0x277D84F90];
    }

    v50 = v17;
    v26 = static CompactViews.formatPhoneNumberForDisplay(_:)(v17, v16);
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    v47 = xmmword_266966A40;
    *(v25 + 16) = xmmword_266966A40;
    v49 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
    v48 = SFRichText.init(string:bold:color:)(v26, v28, 1, 4);
    v29 = swift_allocObject();
    *(v29 + 16) = v47;
    v30 = v58;
    v31 = CNContact.formattedFullName.getter();
    *(v29 + 32) = SFRichText.init(string:bold:color:)(v31, v32, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v33 = [v30 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = SFContactImage.init(contactId:size:)(v34, v36, 0, 0, 1);
    type metadata accessor for ContactsLabelCATs(0);
    static CATOption.defaultMode.getter();
    v38 = CATWrapper.__allocating_init(options:globals:)();
    v39 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v56);
    v41 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v39, v40, v53, v54, 2, v38);
    v43 = v42;

    v44 = @nonobjc SFFormattedText.__allocating_init(string:)(v41, v43);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFActionItem, 0x277D4C1A8);
    v45 = SFActionItem.init(phoneNumber:)(v50, v16);
    *(v25 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v48, v29, v51, v37, v44, v45, 0);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v11);
  return v25;
}

uint64_t static CompactViews.buildPhoneMultipleAttributesSnippet(contact:phoneNumbers:localeString:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = &v10[*(v8 + 20)];
  *v12 = "BuildPhoneMultipleAttributesSnippetIOS";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v45 = xmmword_266966A40;
  *(v13 + 16) = xmmword_266966A40;
  *(v13 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v53 = v13;
  v52 = MEMORY[0x277D84F90];
  result = specialized Array._getCount()();
  v41 = v11;
  v42 = v10;
  if (!result)
  {
    goto LABEL_16;
  }

  v15 = result;
  if (result >= 1)
  {
    v16 = 0;
    v50 = a2 & 0xC000000000000001;
    v43 = result;
    v44 = a2;
    do
    {
      if (v50)
      {
        v17 = MEMORY[0x26D5E29D0](v16, a2);
      }

      else
      {
        v17 = *(a2 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v17);
      if (v20)
      {
        v21 = v19;
        v22 = v20;
        static AppUtil.buildPunchoutFor(phoneNumber:)(v19, v20);
        v24 = v23;
        v51 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
        v25 = static CompactViews.formatPhoneNumberForDisplay(_:)(v21, v22);
        v27 = v26;

        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
        type metadata accessor for ContactsLabelCATs(0);
        static CATOption.defaultMode.getter();
        v28 = CATWrapper.__allocating_init(options:globals:)();
        v29 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v18);
        v31 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v29, v30, v48, v49, 2, v28);
        v33 = v32;

        v34 = @nonobjc SFFormattedText.__allocating_init(string:)(v31, v33);
        v35 = swift_allocObject();
        *(v35 + 16) = v45;
        v36 = v24;
        v37 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v35 + 32) = v37;
        v38 = SFRowCardSection.init(blueTitle:subtitle:commands:)(v25, v27, v34, v35);
        MEMORY[0x26D5E25E0](v38);
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v39 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v53;
        MEMORY[0x26D5E25E0](v39);
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v43;
        a2 = v44;
      }

      ++v16;
    }

    while (v15 != v16);
LABEL_16:
    static os_signpost_type_t.end.getter();
    v40 = v42;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v40);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(void *a1, int a2)
{
  v36 = a2;
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v6 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v37 = v6;
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = &v5[*(v3 + 20)];
  *v7 = "BuildNameAttributeSnippetIOS";
  *(v7 + 1) = 28;
  v7[16] = 2;
  v8 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v10 = v9;

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    v34 = xmmword_266966A40;
    *(v11 + 16) = xmmword_266966A40;
    v35 = v11;
    *(v11 + 32) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v34;
    v13 = v10;
    *(v12 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  v33 = xmmword_266966A40;
  *(v14 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v15 = CNContact.formattedFullName.getter();
  *&v34 = @nonobjc SFFormattedText.__allocating_init(string:)(v15, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v33;
  v18 = [a1 organizationName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v17 + 32) = SFRichText.init(string:bold:color:)(v19, v21, 0, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v22 = [a1 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = SFContactImage.init(contactId:size:)(v23, v25, 0, 0, 1);
  v27 = 0;
  if (v36)
  {
    v28 = [a1 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v27 = [objc_allocWithZone(MEMORY[0x277D4C1A8]) init];
    outlined bridged method (mbnn) of @objc SFActionItem.contactIdentifier.setter(v29, v31, v27);
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  *(v14 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v34, v17, v12, v26, 0, v27, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v5);
  return v14;
}

uint64_t CompactViews.buildEmailSingleAttributeSnippet(contact:emailAddress:localeString:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v55 = a1;
  v7 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = &v11[*(v9 + 20)];
  *v13 = "BuildEmailSingleAttributeSnippetIOS";
  *(v13 + 1) = 35;
  v13[16] = 2;
  v53 = a2;
  v14 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a2);
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    v18 = [v55 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v20 = v19;

    v51 = a4;
    v52 = v12;
    v50 = a3;
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      v48 = xmmword_266966A40;
      *(v21 + 16) = xmmword_266966A40;
      v49 = v21;
      *(v21 + 32) = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = v48;
      v23 = v20;
      v24 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v48 = v22;
      *(v22 + 32) = v24;
    }

    else
    {
      *&v48 = MEMORY[0x277D84F90];
      v49 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    v44 = xmmword_266966A40;
    *(v25 + 16) = xmmword_266966A40;
    v47 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

    v45 = v17;
    v46 = SFRichText.init(string:bold:color:)(v17, v16, 1, 4);
    v26 = swift_allocObject();
    *(v26 + 16) = v44;
    v27 = v55;
    v28 = CNContact.formattedFullName.getter();
    *(v26 + 32) = SFRichText.init(string:bold:color:)(v28, v29, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v30 = [v27 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = SFContactImage.init(contactId:size:)(v31, v33, 0, 0, 1);
    type metadata accessor for ContactsLabelCATs(0);
    static CATOption.defaultMode.getter();
    v35 = CATWrapper.__allocating_init(options:globals:)();
    v36 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v53);
    v38 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v36, v37, v50, v51, 1, v35);
    v40 = v39;

    v41 = @nonobjc SFFormattedText.__allocating_init(string:)(v38, v40);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFActionItem, 0x277D4C1A8);
    v42 = SFActionItem.init(email:)(v45, v16);
    *(v25 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v46, v26, v48, v34, v41, v42, 0);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v11);
  return v25;
}

uint64_t CompactViews.buildEmailMultipleAttributesSnippet(contact:emailAddresses:localeString:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v49 = a3;
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = &v10[*(v8 + 20)];
  *v12 = "BuildEmailMultipleAttributesSnippetIOS";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v43 = xmmword_266966A40;
  *(v13 + 16) = xmmword_266966A40;
  *(v13 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v56 = v13;
  v14 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  result = specialized Array._getCount()();
  v41 = v11;
  v42 = v10;
  if (!result)
  {
    v45 = v14;
LABEL_21:
    static os_signpost_type_t.end.getter();
    v40 = v42;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v40);
    return v13;
  }

  v16 = result;
  if (result >= 1)
  {
    v17 = 0;
    v51 = a2 & 0xC000000000000001;
    v45 = MEMORY[0x277D84F90];
    v46 = result;
    v47 = a2;
    do
    {
      if (v51)
      {
        v18 = MEMORY[0x26D5E29D0](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v18);
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        AppUtil.buildPunchoutFor(emailAddress:)();
        if (v24)
        {
          v25 = v24;
          MEMORY[0x26D5E25E0](v25);
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = v55;
          v26 = swift_allocObject();
          *(v26 + 16) = v43;
          v27 = v25;
          v28 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

          *(v26 + 32) = v28;
        }

        else
        {
          v26 = MEMORY[0x277D84F90];
        }

        v52 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
        v53 = v22;
        v54 = v23;
        v29 = String.init<A>(_:)();
        v31 = v30;
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
        type metadata accessor for ContactsLabelCATs(0);
        static CATOption.defaultMode.getter();
        v32 = CATWrapper.__allocating_init(options:globals:)();
        v33 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v19);
        v35 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v33, v34, v49, v50, 1, v32);
        v37 = v36;

        v38 = @nonobjc SFFormattedText.__allocating_init(string:)(v35, v37);
        v39 = SFRowCardSection.init(blueTitle:subtitle:commands:)(v29, v31, v38, v26);
        MEMORY[0x26D5E25E0](v39);
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v56;
        v16 = v46;
        a2 = v47;
      }

      ++v17;
    }

    while (v16 != v17);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildAddressSingleAttributeSnippet(contact:postalAddress:localeString:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v46 = a3;
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v10 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v45 = v10;
  os_signpost(_:dso:log:name:signpostID:)();
  v11 = &v9[*(v7 + 20)];
  *v11 = "BuildAddressSingleAttributeSnippetIOS";
  *(v11 + 1) = 37;
  v11[16] = 2;
  AppUtil.buildPunchoutFor(labeledAddress:contact:)();
  if (v12)
  {
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    v42 = xmmword_266966A40;
    *(v14 + 16) = xmmword_266966A40;
    v43 = v14;
    *(v14 + 32) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v42;
    v16 = v13;
    v17 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
    *&v42 = v15;
    *(v15 + 32) = v17;
  }

  else
  {
    *&v42 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  v40 = xmmword_266966A40;
  *(v18 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v19 = CNLabeledValue<>.formattedString.getter();
  v41 = SFRichText.init(string:bold:color:)(v19, v20, 1, 0);
  v21 = swift_allocObject();
  *(v21 + 16) = v40;
  v22 = CNContact.formattedFullName.getter();
  *(v21 + 32) = SFRichText.init(string:bold:color:)(v22, v23, 0, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v24 = [a1 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = SFContactImage.init(contactId:size:)(v25, v27, 0, 0, 1);
  type metadata accessor for ContactsLabelCATs(0);
  static CATOption.defaultMode.getter();
  v29 = CATWrapper.__allocating_init(options:globals:)();
  v30 = [a2 label];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v35 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v32, v34, v46, v44, 3, v29);
  v37 = v36;

  v38 = @nonobjc SFFormattedText.__allocating_init(string:)(v35, v37);
  *(v18 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v41, v21, v42, v28, v38, 0, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v9);
  return v18;
}

uint64_t CompactViews.buildAddressMultipleAttributesSnippet(contact:postalAddresses:localeString:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v53 = a3;
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  v52 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v42[1] = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = &v10[*(v8 + 20)];
  *v12 = "BuildAddressMultipleAttributesSnippetIOS";
  *(v12 + 1) = 40;
  v12[16] = 2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v43 = xmmword_266966A40;
  *(v13 + 16) = xmmword_266966A40;
  *(v13 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v56 = v13;
  v55 = MEMORY[0x277D84F90];
  v14 = specialized Array._getCount()();
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v51 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
  v50 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  result = type metadata accessor for ContactsLabelCATs(0);
  v49 = result;
  if (v15 >= 1)
  {
    v42[0] = v10;
    v17 = 0;
    v46 = a2 & 0xC000000000000001;
    v45 = MEMORY[0x277D84F90];
    v47 = v15;
    v48 = a1;
    do
    {
      if (v46)
      {
        v18 = MEMORY[0x26D5E29D0](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = a2;
      AppUtil.buildPunchoutFor(labeledAddress:contact:)();
      if (v21)
      {
        v22 = v21;
        MEMORY[0x26D5E25E0]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45 = v55;
        v23 = swift_allocObject();
        *(v23 + 16) = v43;
        v24 = v22;
        v25 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v23 + 32) = v25;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      v26 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
      v27 = [v19 value];
      v28 = [v26 stringFromPostalAddress_];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      static CATOption.defaultMode.getter();
      v32 = CATWrapper.__allocating_init(options:globals:)();
      v33 = [v19 label];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v35, v37, v53, v54, 3, v32);
      v40 = v39;

      v41 = @nonobjc SFFormattedText.__allocating_init(string:)(v38, v40);
      SFRowCardSection.init(title:subtitle:commands:)(v29, v31, v41, v23);
      MEMORY[0x26D5E25E0]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v17;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v56;

      a2 = v20;
    }

    while (v47 != v17);
    v10 = v42[0];
LABEL_21:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v10);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildBirthdayAttributeSnippet(contact:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = &v11[*(v9 + 20)];
  *v13 = "BuildBirthdayAttributeSnippetIOS";
  *(v13 + 1) = 32;
  v13[16] = 2;
  CNContact.timezonedBirthdate.getter(v8);
  v14 = type metadata accessor for Date();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
  outlined destroy of Result<TemplatingResult, Error>(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    v16 = CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(a1, 1);
  }

  else
  {
    v17 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v19 = v18;

    v44 = v4;
    v45 = v2;
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v20 = swift_allocObject();
      v43 = xmmword_266966A40;
      *(v20 + 16) = xmmword_266966A40;
      *(v20 + 32) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v43;
      v22 = v19;
      v23 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v43 = v21;
      *(v21 + 32) = v23;
    }

    else
    {
      *&v43 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    v40 = xmmword_266966A40;
    *(v16 + 16) = xmmword_266966A40;
    v42 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
    v24 = CNContact.formattedBirthdateString.getter();
    v41 = @nonobjc SFFormattedText.__allocating_init(string:)(v24, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = v40;
    v27 = CNContact.formattedFullName.getter();
    *(v26 + 32) = SFRichText.init(string:bold:color:)(v27, v28, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v29 = [a1 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = SFContactImage.init(contactId:size:)(v30, v32, 0, 0, 1);
    v34 = v46;
    ContactsLabelCATs.birthday()();
    v35 = Result<>.firstPrint.getter();
    v37 = v36;
    outlined destroy of Result<TemplatingResult, Error>(v34, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v38 = @nonobjc SFFormattedText.__allocating_init(string:)(v35, v37);
    *(v16 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v41, v26, v43, v33, v38, 0, 0);
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v11);
  return v16;
}

void static CompactViews.formattedAgeDigit(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v18);
  v20 = v29 - v19;
  if (v1)
  {
    if ((*(v1 + 40) & 1) == 0 && *(v1 + 32) >= 1.0)
    {
      v29[1] = *(v1 + 32);

      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Double and conformance Double();
      FloatingPointFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
      BinaryFloatingPoint.formatted<A>(_:)();

      (*(v17 + 8))(v20, v15);
      goto LABEL_12;
    }

    if (!*(v1 + 56))
    {
      if (!*(v1 + 48) && !*(v1 + 24))
      {
        goto LABEL_12;
      }
    }

    v21 = COERCE_DOUBLE(dispatch thunk of DialogDuration.valueInYears.getter());
    if ((v22 & 1) != 0 || v21 < 1.0)
    {
    }

    else
    {
      dispatch thunk of DialogDuration.years.getter();
      v23 = type metadata accessor for SpeakableString();
      if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
      {

        outlined destroy of Result<TemplatingResult, Error>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        goto LABEL_12;
      }

      v24 = SpeakableString.print.getter();
      v26 = v25;
      (*(*(v23 - 8) + 8))(v13, v23);
      v29[2] = v24;
      v29[3] = v26;
      static CharacterSet.decimalDigits.getter();
      CharacterSet.inverted.getter();
      v27 = *(v4 + 8);
      v27(v10, v2);
      lazy protocol witness table accessor for type String and conformance String();
      v28 = StringProtocol.components(separatedBy:)();
      v27(v8, v2);

      if (*(v28 + 16))
      {

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_14();
}

id CompactViews.buildAgeAttributeSnippet(contact:requestedAge:)(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v48 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v14 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v15 = &v13[*(v11 + 20)];
  *v15 = "BuildAgeAttributeSnippetIOS";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v16 = [a1 birthday];
  if (v16)
  {
    v17 = v16;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = type metadata accessor for DateComponents();
  __swift_storeEnumTagSinglePayload(v8, v18, 1, v19);
  outlined init with take of DateComponents?(v8, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v10, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_8:
    v20 = CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(a1, 1);
LABEL_16:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v13);
    return v20;
  }

  DateComponents.year.getter();
  v22 = v21;
  (*(*(v19 - 8) + 8))(v10, v19);
  if ((v22 & 1) != 0 || !v51)
  {
    goto LABEL_8;
  }

  v23 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v25 = v24;

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v26 = swift_allocObject();
    v47 = xmmword_266966A40;
    *(v26 + 16) = xmmword_266966A40;
    *(v26 + 32) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = v47;
    v28 = v25;
    v29 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
    v46 = v27;
    *(v27 + 32) = v29;
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  v47 = xmmword_266966A40;
  *(v20 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v30 = CNContact.formattedFullName.getter();
  v45 = @nonobjc SFFormattedText.__allocating_init(string:)(v30, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = v47;
  v33 = v49;
  ContactsLabelCATs.age()();
  v34 = Result<>.firstPrint.getter();
  v36 = v35;
  outlined destroy of Result<TemplatingResult, Error>(v33, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  result = @nonobjc SFFormattedText.__allocating_init(string:)(v34, v36);
  if (result)
  {
    v38 = result;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    *(v32 + 32) = v38;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v39 = [a1 identifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = SFContactImage.init(contactId:size:)(v40, v42, 0, 0, 1);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
    v44 = @nonobjc SFFormattedText.__allocating_init(string:)(v48, v51);
    *(v20 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v45, v32, v46, v43, 0, 0, v44);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id static CompactViews.buildHeaderItem(contact:)(void *a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v5 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = &v4[*(v2 + 20)];
  *v6 = "BuildHeaderItemIOS";
  *(v6 + 1) = 18;
  v6[16] = 2;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v7 = CNContact.formattedFullName.getter();
  v9 = SFRichText.init(string:bold:color:)(v7, v8, 1, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v10 = [a1 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = SFContactImage.init(contactId:size:)(v11, v13, 0x4041000000000000, 0x4041000000000000, 0);
  v15 = SFRowCardSection.init(leadingText:image:)(v9, v14);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v4);
  return v15;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFActionItem.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1);

  [a3 setContactIdentifier_];
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return type metadata accessor for Signpost.OpenSignpost(0);
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return type metadata accessor for Signpost.OpenSignpost(0);
}

uint64_t ContactsError.errorDescription.getter()
{
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v94 = v1;
  v95 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v92 - v6;
  v8 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_1_0();
  v93 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = (v23 - v22);
  outlined init with copy of ContactsError(v0, v23 - v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(35);

      OUTLINED_FUNCTION_3_31();
      v52 = v58 - 12;
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(28);

      OUTLINED_FUNCTION_3_31();
      v52 = v51 - 19;
LABEL_23:
      *&v100[0] = v52;
      *(&v100[0] + 1) = v50;
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(62);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      v34 = v54 + 15;
      goto LABEL_20;
    case 4u:
      (*(v16 + 32))(v20, v24, v14);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(47);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD00000000000002DLL, 0x8000000266971930);
      _print_unlocked<A, B>(_:_:)();
      v0 = *&v100[0];
      (*(v16 + 8))(v20, v14);
      return v0;
    case 5u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(57);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v62 | 2, v63 | 0x8000000000000000);
      v64 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v64);

      v37 = 0x2E64656C69616620;
      v65 = 0xE800000000000000;
      goto LABEL_37;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(49);

      *&v100[0] = 0xD000000000000018;
      *(&v100[0] + 1) = 0x8000000266971680;
      v72 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v72);

      v37 = 0xD000000000000017;
      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(38);

      OUTLINED_FUNCTION_3_31();
      *&v100[0] = v56 - 10;
      *(&v100[0] + 1) = v55;
      v57 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v57);
      goto LABEL_34;
    case 8u:
      v80 = *v24;
      v81 = v24[1];
      v83 = v24[2];
      v82 = v24[3];
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(82);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD000000000000014, 0x80000002669715D0);
      MEMORY[0x26D5E2570](v80, v81);

      MEMORY[0x26D5E2570](0xD00000000000001FLL, 0x80000002669715F0);
      MEMORY[0x26D5E2570](v83, v82);

      v36 = " even though user is modifying ";
      v37 = 0xD00000000000001BLL;
      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(26);

      *&v100[0] = 0x20746F6C53;
      *(&v100[0] + 1) = 0xE500000000000000;
      v44 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v44);

      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v45 - 28, v46 | 0x8000000000000000);
      v47 = _typeName(_:qualified:)();
      MEMORY[0x26D5E2570](v47);
      goto LABEL_25;
    case 0xAu:
      v74 = *v24;
      v75 = v24[1];
      v77 = v24[2];
      v76 = v24[3];
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(50);

      OUTLINED_FUNCTION_3_31();
      *&v100[0] = v79 - 4;
      *(&v100[0] + 1) = v78;
      MEMORY[0x26D5E2570](v74, v75);

      MEMORY[0x26D5E2570](544175136, 0xE400000000000000);
      MEMORY[0x26D5E2570](v77, v76);
LABEL_34:

      v37 = 46;
      v65 = 0xE100000000000000;
      goto LABEL_37;
    case 0xBu:
      outlined init with take of Any(v24, v100);
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v98 = v96;
      v99 = v97;
      MEMORY[0x26D5E2570](0xD00000000000001CLL, 0x80000002669714B0);
      outlined init with copy of Any(v100, &v96);
      v39 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v39);

      MEMORY[0x26D5E2570](0xD000000000000017, 0x80000002669714D0);
      v0 = v98;
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      return v0;
    case 0xCu:
      v40 = v93;
      (*(v93 + 32))(v13, v24, v8);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(81);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v41 + 33, v42 | 0x8000000000000000);
      lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5E2570](v43);

      MEMORY[0x26D5E2570](46, 0xE100000000000000);
      v0 = *&v100[0];
      (*(v40 + 8))(v13, v8);
      return v0;
    case 0xDu:
      v67 = v94;
      v68 = v95;
      (*(v95 + 32))(v7, v24, v94);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(34);

      OUTLINED_FUNCTION_3_31();
      *&v100[0] = v70 - 13;
      *(&v100[0] + 1) = v69;
      (*(v68 + 16))(v5, v7, v67);
      OUTLINED_FUNCTION_22_0();
      v71 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v71);

      v0 = *&v100[0];
      (*(v68 + 8))(v7, v67);
      return v0;
    case 0xEu:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(79);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD00000000000002ALL, 0x80000002669712C0);
      v35 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v35);

      v36 = "ted unsupported reason of ";
      v37 = 0xD000000000000023;
      goto LABEL_36;
    case 0xFu:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(83);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD000000000000023, 0x8000000266971260);
      v53 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v53);

      v36 = "ted intent type of ";
      v37 = 0xD00000000000002ELL;
LABEL_36:
      v65 = v36 | 0x8000000000000000;
LABEL_37:
      MEMORY[0x26D5E2570](v37, v65);
      return *&v100[0];
    case 0x10u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(65);
      OUTLINED_FUNCTION_7_22();
      v33 = "BuildNameAttributeSnippetIOS";
      v34 = 0xD00000000000003FLL;
LABEL_20:
      MEMORY[0x26D5E2570](v34, v33 | 0x8000000000000000);
LABEL_24:
      v59 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v59);
LABEL_25:

      return *&v100[0];
    case 0x11u:
      OUTLINED_FUNCTION_0_47();
      return v61 + 15;
    case 0x12u:
      OUTLINED_FUNCTION_0_47();
      return v73 + 40;
    case 0x13u:
      OUTLINED_FUNCTION_0_47();
      return v87 + 43;
    case 0x14u:
    case 0x15u:
      OUTLINED_FUNCTION_0_47();
      return v66 + 9;
    case 0x16u:
      OUTLINED_FUNCTION_0_47();
      return v85 + 13;
    case 0x17u:
      OUTLINED_FUNCTION_0_47();
      return v88 - 6;
    case 0x18u:
      OUTLINED_FUNCTION_0_47();
      return v49 | 0x10;
    case 0x19u:
      OUTLINED_FUNCTION_0_47();
      return v48 - 7;
    case 0x1Au:
    case 0x26u:
      OUTLINED_FUNCTION_0_47();
      return v90 - 4;
    case 0x1Bu:
      OUTLINED_FUNCTION_0_47();
      return v31 - 3;
    case 0x1Cu:
    case 0x1Eu:
    case 0x24u:
    case 0x25u:
      OUTLINED_FUNCTION_9_24();
      return v0;
    case 0x1Du:
      OUTLINED_FUNCTION_0_47();
      return v89 - 14;
    case 0x1Fu:
      OUTLINED_FUNCTION_0_47();
      return v60 - 2;
    case 0x20u:
      OUTLINED_FUNCTION_0_47();
      return v84 - 19;
    case 0x21u:
      OUTLINED_FUNCTION_0_47();
      return v38 - 26;
    case 0x22u:
      OUTLINED_FUNCTION_0_47();
      return v32 + 3;
    case 0x23u:
      OUTLINED_FUNCTION_0_47();
      return v30 - 10;
    case 0x27u:
      OUTLINED_FUNCTION_0_47();
      return v86 + 24;
    default:
      v25 = *v24;
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(34);

      OUTLINED_FUNCTION_3_31();
      *&v100[0] = v27 - 13;
      *(&v100[0] + 1) = v26;
      v96 = v25;
      v28 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v29);

      return *&v100[0];
  }
}

void fatalError(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v9 = (a1)();
  v11 = v10;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriContacts);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v24);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_26686A000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x26D5E3300](v16, -1, -1);
    MEMORY[0x26D5E3300](v15, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v18 = static FatalError.fatalErrorClosure;

  v20 = a1(v19);
  v18(v20, v21, a3, a4, a5, a6);
}

void (*static FatalError.fatalErrorClosure.getter())()
{
  swift_beginAccess();
  v0 = static FatalError.fatalErrorClosure;

  return v0;
}

uint64_t static FatalError.fatalErrorClosure.setter(void (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_10_29(a1);
  static FatalError.fatalErrorClosure = a1;
  qword_281F246F0 = a2;
}

uint64_t key path getter for static FatalError.fatalErrorClosure : FatalError.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static FatalError.fatalErrorClosure;
  v2 = qword_281F246F0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned StaticString, @unowned UInt) -> (@unowned Never);
  a1[1] = v4;
}

uint64_t key path setter for static FatalError.fatalErrorClosure : FatalError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static FatalError.fatalErrorClosure = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed StaticString, @in_guaranteed UInt) -> (@out Never);
  qword_281F246F0 = v3;
}

void thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed StaticString, @in_guaranteed UInt) -> (@out Never)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(void *, void *, uint64_t *))
{
  v10[0] = a1;
  v10[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  v9 = a5;
  v7 = a6;
  a7(v10, v8, &v7);
  __break(1u);
}

uint64_t type metadata accessor for ContactsError(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactsError;
  if (!type metadata singleton initialization cache for ContactsError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of ContactsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static FatalError.replaceFatalError(closure:)(void (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_10_29(a1);
  static FatalError.fatalErrorClosure = a1;
  qword_281F246F0 = a2;
}

uint64_t static FatalError.restoreFatalError()()
{
  swift_beginAccess();
  static FatalError.fatalErrorClosure = closure #1 in variable initialization expression of static FatalError.defaultFatalErrorClosure;
  qword_281F246F0 = 0;
}

uint64_t lazy protocol witness table accessor for type NLIntent and conformance NLIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for FatalError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata completion function for ContactsError(uint64_t a1)
{
  type metadata accessor for Error();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Parse.DirectInvocation();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (String, String)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (String, @thick INIntent.Type)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (inputType: String, outputType: String)();
          if (v5 <= 0x3F)
          {
            type metadata accessor for NLIntent();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Parse();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (String, @thick INIntent.Type)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, @thick INIntent.Type))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8INIntentCXMTMd, &_sSo8INIntentCXMTMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, @thick INIntent.Type));
    }
  }
}

void type metadata accessor for (inputType: String, outputType: String)()
{
  if (!lazy cache variable for type metadata for (inputType: String, outputType: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (inputType: String, outputType: String));
    }
  }
}

void OUTLINED_FUNCTION_7_22()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_10_29(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void AppUtil.buildPunchoutFor(contactIdentifier:)()
{
  OUTLINED_FUNCTION_15();
  v43 = v2;
  v44 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_16();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - v8;
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v13 = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v15 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v16 = static os_signpost_type_t.begin.getter();
  v45 = v15;
  OUTLINED_FUNCTION_18_2(v16);
  v17 = v0 + *(v13 + 20);
  *v17 = "BuildPunchoutForContact";
  *(v17 + 8) = 23;
  *(v17 + 16) = 2;
  v18 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v18);
  if (v19)
  {
  }

  else
  {
    UUID.init()();
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v11 + 8))(v1, v9);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v20, v22, v18, &selRef_setAceId_);
  }

  v23 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v23);
  if ((*(v24 + 8))(v23, v24))
  {
    if (v44)
    {
      v46 = 0xD000000000000012;
      v47 = 0x8000000266971BD0;
      MEMORY[0x26D5E2570](v43);
      v25 = v47;
      v26 = v42;
      URL.init(string:)();

      v27 = type metadata accessor for URL();
      __swift_getEnumTagSinglePayload(v26, 1, v27);
      OUTLINED_FUNCTION_12_18();
      if (!v29)
      {
        URL._bridgeToObjectiveC()(v28);
        v25 = v30;
        OUTLINED_FUNCTION_52();
        (*(v31 + 8))(v26, v27);
      }

LABEL_18:
      [v18 setPunchOutUri_];

      goto LABEL_19;
    }

    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(0xD00000000000001BLL, 0x800000026696E4A0, v18, &selRef_setBundleId_);
  }

  else
  {
    v32 = v1[3];
    v33 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v32);
    if ((*(v33 + 32))(v32, v33))
    {
      if (v44)
      {
        v46 = 0xD00000000000001FLL;
        v47 = 0x8000000266971BB0;
        MEMORY[0x26D5E2570](v43);
        v25 = v47;
      }

      else
      {
        v25 = 0x8000000266971B90;
      }

      v34 = v41;
      URL.init(string:)();

      v35 = type metadata accessor for URL();
      __swift_getEnumTagSinglePayload(v34, 1, v35);
      OUTLINED_FUNCTION_12_18();
      if (!v29)
      {
        URL._bridgeToObjectiveC()(v36);
        v25 = v37;
        OUTLINED_FUNCTION_52();
        (*(v38 + 8))(v34, v35);
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v39 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v39);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

void static AppUtil.buildPunchoutFor(string:)()
{
  OUTLINED_FUNCTION_15();
  v28 = v2;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_33();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v15 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_21_15(v15);
  v16 = v14 + *(v10 + 20);
  *v16 = "BuildPunchoutForString";
  *(v16 + 8) = 22;
  *(v16 + 16) = 2;
  v17 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v17);
  if (v18)
  {
  }

  else
  {
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v8 + 8))(v1, v6);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v19, v21, v17, &selRef_setAceId_);
  }

  URL.init(string:)();
  v22 = type metadata accessor for URL();
  __swift_getEnumTagSinglePayload(v0, 1, v22);
  OUTLINED_FUNCTION_12_18();
  if (!v24)
  {
    URL._bridgeToObjectiveC()(v23);
    v1 = v25;
    OUTLINED_FUNCTION_52();
    (*(v26 + 8))(v0, v22);
  }

  [v17 setPunchOutUri_];

  v27 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_15(v27);
  outlined destroy of Signpost.OpenSignpost(v14);
  OUTLINED_FUNCTION_14();
}

id AppUtil.buildSash()()
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v5 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_9_25(v5);
  v6 = v0 + *(v2 + 20);
  *v6 = "BuildSash";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 8))(v8, v9);
  OUTLINED_FUNCTION_20_13();
  v13 = v12 | 0x6C7070612E6D0000;
  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0xD00000000000001BLL;
  }

  if (v10)
  {
    v15 = 0xEE00697269732E65;
  }

  else
  {
    v15 = v11;
  }

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v14, v15, v7, &selRef_setApplicationBundleIdentifier_);
  v16 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_25(v16);
  outlined destroy of Signpost.OpenSignpost(v0);
  return v7;
}

uint64_t AppUtil.sashBundleId.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  OUTLINED_FUNCTION_20_13();
  v4 = v3 | 0x6C7070612E6D0000;
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void AppUtil.buildPunchoutFor(emailAddress:)()
{
  OUTLINED_FUNCTION_15();
  v31 = v2;
  v32 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v6;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v11 = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v13 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v13);
  v14 = v0 + *(v11 + 20);
  *v14 = "BuildPunchoutForEmailAddress";
  *(v14 + 8) = 28;
  *(v14 + 16) = 2;
  v15 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v15);
  if (v16)
  {
  }

  else
  {
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v9 + 8))(v1, v7);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v17, v19, v15, &selRef_setAceId_);
  }

  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  if ((*(v21 + 24))(v20, v21))
  {
    v34 = 0x3A6F746C69616DLL;
    v35 = 0xE700000000000000;
    MEMORY[0x26D5E2570](v31, v32);
    v22 = v35;
    v23 = v33;
    URL.init(string:)();

    v24 = type metadata accessor for URL();
    __swift_getEnumTagSinglePayload(v23, 1, v24);
    OUTLINED_FUNCTION_12_18();
    if (!v26)
    {
      URL._bridgeToObjectiveC()(v25);
      v22 = v27;
      OUTLINED_FUNCTION_52();
      (*(v28 + 8))(v23, v24);
    }

    [v15 setPunchOutUri_];
  }

  else
  {
  }

  v29 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v29);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

void AppUtil.buildPunchoutFor(labeledAddress:contact:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v70 = v4;
  v71 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  v72 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_0();
  v69 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_16();
  v65 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v66 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v65 - v15;
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v67 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v24 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v25 = static os_signpost_type_t.begin.getter();
  v73 = v24;
  OUTLINED_FUNCTION_18_2(v25);
  v26 = v0 + *(v22 + 20);
  *v26 = "BuildPunchoutForPostalAddress";
  *(v26 + 8) = 29;
  *(v26 + 16) = 2;
  v27 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v27);
  if (v28)
  {
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriContacts);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26686A000, v30, v31, "#buildPunchoutFor address: Ace ID is nil, setting random UUID to punchout", v32, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    UUID.init()();
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v67 + 8))(v21, v16);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v33, v35, v27, &selRef_setAceId_);
  }

  v36 = v2[3];
  v37 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v36);
  if (((*(v37 + 16))(v36, v37) & 1) == 0)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.siriContacts);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_21;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "#buildPunchoutFor address: Maps is not installed, returning nil for punchout";
    goto LABEL_20;
  }

  CNLabeledValue<>.buildMapsURL(contact:)(v70, v8);
  v38 = v72;
  if (__swift_getEnumTagSinglePayload(v8, 1, v72) == 1)
  {
    outlined destroy of URL?(v8);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriContacts);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_21;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "#buildPunchoutFor address: failed to build Maps punchout URL, returning nil";
LABEL_20:
    _os_log_impl(&dword_26686A000, v40, v41, v43, v42, 2u);
    OUTLINED_FUNCTION_11_1();
LABEL_21:

LABEL_22:
    v45 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_2(v45);
    outlined destroy of Signpost.OpenSignpost(v0);
    OUTLINED_FUNCTION_14();
    return;
  }

  v46 = *(v69 + 32);
  v46(v68, v8, v38);
  URL._bridgeToObjectiveC()(v47);
  v49 = v48;
  [v27 setPunchOutUri_];

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.siriContacts);
  v51 = v27;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v52, v53))
  {

    (*(v69 + 8))(v68, v38);
    goto LABEL_22;
  }

  v54 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v74 = v70;
  v71 = v54;
  *v54 = 136315138;
  v55 = [v51 punchOutUri];

  if (v55)
  {
    v56 = v65;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v66;
    v46(v66, v56, v38);
    lazy protocol witness table accessor for type URL and conformance URL();
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = *(v69 + 8);
    v61(v57, v38);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v74);

    v63 = v71;
    *(v71 + 1) = v62;
    _os_log_impl(&dword_26686A000, v52, v53, "#buildPunchoutFor address: punchout URI: %s", v63, 0xCu);
    v64 = v70;
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    MEMORY[0x26D5E3300](v64, -1, -1);
    OUTLINED_FUNCTION_11_1();

    v61(v68, v38);
    goto LABEL_22;
  }

  __break(1u);
}

void static AppUtil.buildMessagesPunchoutFor(handleString:)()
{
  OUTLINED_FUNCTION_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_33();
  v36 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v34 = v11;
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v12 = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v17 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_21_15(v17);
  v18 = v16 + *(v12 + 20);
  *v18 = "BuildPunchoutForPhoneNumber";
  *(v18 + 8) = 27;
  *(v18 + 16) = 2;
  v19 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v19);
  if (v20)
  {
  }

  else
  {
    UUID.init()();
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v34 + 8))(v1, v35);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v21, v23, v19, &selRef_setAceId_);
  }

  static CharacterSet.urlPathAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v24 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v26 = v25;
  (*(v5 + 8))(v9, v36);
  if (v26)
  {
    MEMORY[0x26D5E2570](v24, v26);

    v27 = 0xE400000000000000;
    URL.init(string:)();

    v28 = type metadata accessor for URL();
    __swift_getEnumTagSinglePayload(v0, 1, v28);
    OUTLINED_FUNCTION_12_18();
    if (!v30)
    {
      URL._bridgeToObjectiveC()(v29);
      v27 = v31;
      OUTLINED_FUNCTION_52();
      (*(v32 + 8))(v0, v28);
    }

    [v19 setPunchOutUri_];

    v33 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_21_15(v33);
    outlined destroy of Signpost.OpenSignpost(v16);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall InstalledAppsProvider.isContactsAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(27, 0x800000026696E4A0);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

Swift::Bool __swiftcall InstalledAppsProvider.isMapsAppInstalled()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v1 = OUTLINED_FUNCTION_13_20();
  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v2, 0);
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

Swift::Bool __swiftcall InstalledAppsProvider.isMailAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(20, 0x8000000266971B50);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

Swift::Bool __swiftcall InstalledAppsProvider.isPhoneAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(21, 0x8000000266970810);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

uint64_t static AppUtil.contactsAppCandidate.getter()
{
  type metadata accessor for ContactResolver.AppCandidateType();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 104))(v2 - v1, *MEMORY[0x277D56098]);
  return ContactResolver.AppCandidate.init(bundleId:type:)();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D5E2470](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

_BYTE *storeEnumTagSinglePayload for InstalledAppsProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

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

uint64_t getEnumTagSinglePayload for AppUtil(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for AppUtil(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for Signpost.OpenSignpost(0);
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

id OUTLINED_FUNCTION_14_18(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v3, a2, 0);
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t RREntity.isFromContactSource.getter()
{
  if (RREntity.appBundleId.getter() == 0x73746361746E6F43 && v0 == 0xE800000000000000)
  {
    goto LABEL_16;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 1;
  }

  if (RREntity.appBundleId.getter() == 0xD00000000000001BLL && 0x800000026696E4A0 == v3)
  {
LABEL_16:

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    if (RREntity.appBundleId.getter() != 0xD000000000000015 || 0x8000000266970810 != v6)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v8 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t static RREntity.makeEntityList(for:)(void *a1)
{
  v131 = a1;
  v2 = type metadata accessor for GroupIdentifier();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v133 = v5;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  v135 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_16();
  v129 = v10;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_6();
  v136 = v12;
  OUTLINED_FUNCTION_16();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v109 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v109 - v17;
  v137 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_1_0();
  v126 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_6();
  v120 = v25;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  v119 = v27;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_4();
  v121 = v29;
  OUTLINED_FUNCTION_13_8();
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17(v34);
  v134 = UUID.uuidString.getter();
  v35 = *(v32 + 8);
  v35(v1, v30);
  UUID.init()();
  v132 = UUID.uuidString.getter();
  v37 = v36;
  v35(v1, v30);
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  v35(v1, v30);
  v41 = v131;
  RREntity.init(from:)(v41);
  v131 = v37;
  v127 = v38;
  v128 = v40;
  OUTLINED_FUNCTION_7_24(v18);
  v42 = v126;
  v43 = v121;
  v123 = *(v126 + 32);
  v124 = v126 + 32;
  v123(v121, v18, v30);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v45 = v44;
  v47 = *(v44 + 16);
  v46 = *(v44 + 24);
  if (v47 >= v46 >> 1)
  {
    OUTLINED_FUNCTION_1_27(v46);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v45 = v108;
  }

  *(v45 + 16) = v47 + 1;
  v49 = *(v42 + 16);
  v48 = v42 + 16;
  v50 = (*(v48 + 64) + 32) & ~*(v48 + 64);
  v125 = v45;
  v113 = v50;
  v112 = *(v48 + 56);
  v114 = v49;
  v49(v45 + v50 + v112 * v47, v43, v30);
  v110 = v41;
  v51 = v48;
  v52 = [v41 postalAddresses];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = specialized Array._getCount()();
  v55 = 0;
  v130 = v53 & 0xC000000000000001;
  v126 = v48;
  v122 = (v48 - 8);
  while (1)
  {
    v56 = v136;
    if (v54 == v55)
    {
      break;
    }

    if (v130)
    {
      v57 = MEMORY[0x26D5E29D0](v55, v53);
    }

    else
    {
      if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v57 = *(v53 + 8 * v55 + 32);
    }

    v51 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_38:
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
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      goto LABEL_34;
    }

    v58 = v57;

    v59 = v135;
    GroupIdentifier.init(id:seq:)();
    RREntity.init(from:groupId:)(v58, v59, v16);
    OUTLINED_FUNCTION_7_24(v16);
    v123(v119, v16, v55);
    OUTLINED_FUNCTION_8_26();
    v60();
    v61 = *(v125 + 16);
    if (v61 >= *(v125 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v125 = v65;
    }

    v62 = v137;
    (*v122)(v119, v137);
    v63 = v125;
    *(v125 + 16) = v61 + 1;
    v64 = OUTLINED_FUNCTION_3_32(v63);
    v123(v64, v120, v62);
    v55 = v51;
  }

  v66 = [v110 phoneNumbers];
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = specialized Array._getCount()();
  v69 = 0;
  v136 = v67 & 0xC000000000000001;
  v54 = v137;
  while (v68 != v69)
  {
    if (v136)
    {
      v70 = MEMORY[0x26D5E29D0](v69, v67);
    }

    else
    {
      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v70 = *(v67 + 8 * v69 + 32);
    }

    v51 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_39;
    }

    v71 = v70;

    v72 = v56;
    v73 = v133;
    GroupIdentifier.init(id:seq:)();
    RREntity.init(from:groupId:)(v71, v73, v72);
    OUTLINED_FUNCTION_7_24(v72);
    v123(v116, v72, v69);
    OUTLINED_FUNCTION_8_26();
    v74();
    v76 = *(v125 + 16);
    v75 = *(v125 + 24);
    v56 = v72;
    v135 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v125 = v79;
    }

    v54 = v137;
    (*v122)(v116, v137);
    v77 = v125;
    *(v125 + 16) = v135;
    v78 = OUTLINED_FUNCTION_3_32(v77);
    v123(v78, v117, v54);
    v69 = v51;
  }

  v80 = [v110 emailAddresses];
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = specialized Array._getCount()();
  v83 = 0;
  v51 = v81 & 0xFFFFFFFFFFFFFF8;
  v84 = v118;
  while (v82 != v83)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x26D5E29D0](v83, v81);
    }

    else
    {
      if (v83 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v85 = *(v81 + 8 * v83 + 32);
    }

    v86 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_41;
    }

    v87 = v85;

    GroupIdentifier.init(id:seq:)();
    v88 = v129;
    RREntity.init(from:groupId:)(v87, v84, v129);
    OUTLINED_FUNCTION_7_24(v88);
    v123(v115, v88, v83);
    v89 = v111;
    OUTLINED_FUNCTION_8_26();
    v90();
    v91 = *(v125 + 16);
    if (v91 >= *(v125 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v125 = v94;
    }

    v54 = v137;
    (*v122)(v115, v137);
    v92 = v125;
    *(v125 + 16) = v91 + 1;
    v93 = OUTLINED_FUNCTION_3_32(v92);
    v123(v93, v89, v54);
    v83 = v86;
    v84 = v118;
  }

  (*v122)(v121, v54);
  v51 = v125;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_43;
  }

LABEL_34:
  v95 = type metadata accessor for Logger();
  __swift_project_value_buffer(v95, static Logger.siriContacts);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v138[0] = v99;
    *v98 = 136315138;

    v101 = MEMORY[0x26D5E2610](v100, v54);
    v103 = v102;

    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v138);

    *(v98 + 4) = v104;
    OUTLINED_FUNCTION_18_14(&dword_26686A000, v105, v106, "#RREntity.makeEntityList returning entities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v51;
}