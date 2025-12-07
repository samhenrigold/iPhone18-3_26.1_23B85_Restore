uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = 1;
  if (v2 != 1 << *(a1 + 32))
  {
    v3 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);
    v4 = v3;
  }

  return v3;
}

void PSEHomeSELFEmitter.emitPSEHome(homeSignals:appLaunchSignals:task:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v249 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v215 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v236 = &v215 - v14;
  MEMORY[0x28223BE20](v13);
  v240 = &v215 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v235 = &v215 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v233 = &v215 - v20;
  MEMORY[0x28223BE20](v19);
  v234 = &v215 - v21;
  v22 = type metadata accessor for UUID();
  v241 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v232 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v230 = &v215 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v231 = &v215 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v215 - v29;
  v243 = type metadata accessor for Date();
  v246 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v242 = &v215 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Calendar.Component();
  v245 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v238 = (&v215 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for Calendar();
  base_props = v33[-1].base_props;
  MEMORY[0x28223BE20](v33);
  v237 = &v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v35)
  {
    goto LABEL_107;
  }

  v250 = v35;
  v247 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v247)
  {
    v50 = v250;
LABEL_106:

LABEL_107:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    __swift_project_value_buffer(v113, static Logger.engagement);
    v114 = *MEMORY[0x277D615B0];
    v115 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v115 - 8) + 104))(v9, v114, v115);
    (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v5);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = v5;
      v119 = swift_slowAlloc();
      v120 = v6;
      v121 = swift_slowAlloc();
      v254 = *&v121;
      *v119 = 136315138;
      *(v119 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x800000025ED7F460, &v254);
      _os_log_impl(&dword_25ECEC000, v116, v117, "%s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      v122 = v121;
      v6 = v120;
      MEMORY[0x25F8CEE50](v122, -1, -1);
      v123 = v119;
      v5 = v118;
      MEMORY[0x25F8CEE50](v123, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v124 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v124, v125);

    (*(v6 + 8))(v9, v5);
    return;
  }

  v229 = [objc_allocWithZone(MEMORY[0x277D5A1B8]) init];
  if (!v229)
  {
    v51 = v250;
    v52 = v247;
LABEL_105:

    v50 = v52;
    goto LABEL_106;
  }

  v228 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v228)
  {
    v53 = v247;
    v52 = v229;
LABEL_104:

    v51 = v53;
    goto LABEL_105;
  }

  v227 = [objc_allocWithZone(MEMORY[0x277D5A1B0]) init];
  if (!v227)
  {
    v54 = v250;
    v250 = v247;
    v52 = v228;
LABEL_103:

    v53 = v229;
    goto LABEL_104;
  }

  if (a1 >> 62)
  {
    goto LABEL_98;
  }

  v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = v250;
  if (!v36)
  {
LABEL_102:

    v250 = v228;
    v52 = v247;
    v54 = v227;
    goto LABEL_103;
  }

LABEL_8:
  v225 = v22;
  v22 = a1 & 0xC000000000000001;
  v221 = v5;
  v222 = v12;
  v223 = v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x25F8CE460](0, a1);
    v38 = v228;
  }

  else
  {
    v38 = v228;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }
  }

  v40 = v39;
  (*(*v39 + 120))(&v254);
  v41 = (*(*v40 + 144))([v38 setEventDonationTimeInSecondsSince2001_]);
  v42 = MEMORY[0x25F8CDFC0](v41);

  [v38 setDomain_];

  v43 = (*(*v40 + 168))();
  v33 = v44;
  v5 = MEMORY[0x25F8CDFC0](v43);

  [v38 setAction_];

  v45 = *(*v40 + 216);
  v219 = v40;
  v46 = v45();
  if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v48 & 1) != 0))
  {
    outlined init with copy of Any(*(v46 + 56) + 32 * v47, &v254);

    if (swift_dynamicCast())
    {
      v49 = v251;
    }

    else
    {
      v49 = 2;
    }
  }

  else
  {

    v49 = 2;
  }

  v12 = v248;
  [v38 setIsDonatedBySiri_];
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v126 = a2;
    }

    else
    {
      v126 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v55 = MEMORY[0x25F8CE500](v126);
  }

  else
  {
    v55 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v220 = v6;
  if (v55)
  {
    v5 = 0xD000000000000024;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x25F8CE460](0, a2);
      v56 = v57;
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_147;
      }

      v56 = *(a2 + 32);
    }

    (*(*v56 + 120))(&v254, v57);
    v58 = (*(*v56 + 216))([v38 setAppLaunchTimeInSecondsSince2001_]);
    if (*(v58 + 16) && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v60 & 1) != 0))
    {
      outlined init with copy of Any(*(v58 + 56) + 32 * v59, &v254);

      v61 = swift_dynamicCast();
      v62 = v251;
      if (!v61)
      {
        v62 = 0;
      }

      v224 = v62;
      if (v61)
      {
        v63 = v252;
      }

      else
      {
        v63 = 0;
      }

      v226 = v63;
    }

    else
    {

      v224 = 0;
      v226 = 0;
    }

    v64 = (*(*v249 + 256))();
    if (v64[2])
    {
      v65 = v64[4];
      v66 = v64[5];
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v33 = v248;
    v67 = (*(*v248 + 120))(v224, v226, v65, v66);

    v68 = v228;
    v69 = (*(*v56 + 168))([v228 setAppFollowup_]);
    v5 = v70;
    v12 = (*(*&v33->flags + 136))(v69);

    [v68 setAppLaunchReason_];
  }

  else
  {
    [v38 setAppFollowup_];
  }

  a2 = 0;
  v251 = MEMORY[0x277D84F90];
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x277D839B0];
  v226 = v30;
  do
  {
    if (v22)
    {
      v5 = MEMORY[0x25F8CE460](a2, a1);
      v33 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v5 = *(a1 + 8 * a2 + 32);

      v33 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        if ((a1 & 0x8000000000000000) != 0)
        {
          v112 = a1;
        }

        else
        {
          v112 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v36 = MEMORY[0x25F8CE500](v112);
        v37 = v250;
        if (!v36)
        {
          goto LABEL_102;
        }

        goto LABEL_8;
      }
    }

    v12 = (*(*v5 + 216))();
    if (v12[2] && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v72 & 1) != 0))
    {
      outlined init with copy of Any(v12[7] + 32 * v71, &v254);

      if ((swift_dynamicCast() & 1) != 0 && v253 != 1)
      {
        v12 = &v251;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v30 = v226;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_55;
      }
    }

    else
    {
    }

LABEL_55:
    ++a2;
  }

  while (v33 != v36);
  a2 = v251;
  if ((v251 & 0x8000000000000000) == 0 && (v251 & 0x4000000000000000) == 0)
  {
    v38 = v228;
    if (*(v251 + 16))
    {
      goto LABEL_59;
    }

LABEL_120:

    [v38 setHasUserInitiatedFollowup_];
    v110 = v227;
    [v227 setFollowUpSource_];
    a1 = v247;
    v109 = v241;
LABEL_121:
    v128 = v229;
    [v229 setCommonSignal_];
    [v128 setHomeFollowUpSignal_];
    UUID.init()();
    v129 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v131 = [v129 initWithNSUUID_];

    v38 = *(v109 + 8);
    v132 = v225;
    v246 = v109 + 8;
    (v38)(v30, v225);
    [a1 setPseId_];

    (*(*v249 + 160))();
    v133 = v234;
    UUID.init(uuidString:)();

    v245 = *(v109 + 48);
    if (v245(v133, 1, v132) == 1)
    {
      v134 = outlined destroy of UUID?(v133);
    }

    else
    {
      v135 = v231;
      (*(v109 + 32))(v231, v133, v132);
      v136 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v137 = UUID._bridgeToObjectiveC()().super.isa;
      v138 = [v136 initWithNSUUID_];

      [a1 setUiSessionId_];
      v134 = (v38)(v135, v132);
    }

    v139 = ((*(*v249 + 208))(v134) + 16);
    v33 = &SiriExecutionTask;
    v140 = MEMORY[0x277D616A8];
    v6 = v220;
    if (*v139)
    {

      v141 = v233;
      UUID.init(uuidString:)();

      v142 = v225;
      if (v245(v141, 1, v225) == 1)
      {
        outlined destroy of UUID?(v141);
        goto LABEL_128;
      }

      v159 = v230;
      (*(v109 + 32))(v230, v141, v142);
      v160 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v161 = UUID._bridgeToObjectiveC()().super.isa;
      v162 = [v160 initWithNSUUID_];

      [a1 setOriginalLastRequestId_];
      v158 = (v38)(v159, v142);
      v5 = v221;
    }

    else
    {

LABEL_128:
      v5 = v221;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v143 = type metadata accessor for Logger();
      __swift_project_value_buffer(v143, static Logger.engagement);
      v144 = *MEMORY[0x277D615E0];
      v145 = type metadata accessor for EngagementSignalCollectionError();
      v146 = v240;
      (*(*(v145 - 8) + 104))(v240, v144, v145);
      (*(v6 + 104))(v146, *v140, v5);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = v5;
        v150 = swift_slowAlloc();
        v151 = v6;
        v152 = swift_slowAlloc();
        v254 = *&v152;
        *v150 = 136315138;
        *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v254);
        _os_log_impl(&dword_25ECEC000, v147, v148, "%s", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v152);
        v153 = v152;
        v6 = v151;
        MEMORY[0x25F8CEE50](v153, -1, -1);
        v154 = v150;
        v5 = v149;
        v33 = &SiriExecutionTask;
        MEMORY[0x25F8CEE50](v154, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v155 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v156 = v240;
      MEMORY[0x25F8CDB30](v240, v155, v157);

      v158 = (*(v6 + 8))(v156, v5);
      a1 = v247;
      v109 = v241;
    }

    (*(*v249 + 184))(v158);
    v163 = v235;
    UUID.init(uuidString:)();

    v164 = v225;
    if (v245(v163, 1, v225) == 1)
    {
      outlined destroy of UUID?(v163);
      if (*&v33[20].flags == -1)
      {
        goto LABEL_136;
      }

      goto LABEL_153;
    }

    v184 = v232;
    (*(v109 + 32))(v232, v163, v164);
    v185 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v186 = UUID._bridgeToObjectiveC()().super.isa;
    v187 = [v185 initWithNSUUID_];

    [a1 setTaskId_];
    v183 = (v38)(v184, v164);
    v172 = v229;
LABEL_140:
    v188 = (*(*v249 + 328))(v183);
    v189 = (*(*v188 + 104))(v188);

    v190 = v248;
    v191 = [a1 setSiriEngagementTaskSuccess_];
    [a1 setTriggerOrigin_];
    v192 = v250;
    [v250 setEventMetadata_];
    [v192 setHomeFollowupSignalGenerated_];
    if (*&v33[20].flags != -1)
    {
      swift_once();
    }

    v193 = v38;
    v194 = type metadata accessor for Logger();
    __swift_project_value_buffer(v194, static Logger.engagement);
    v195 = *MEMORY[0x277D61600];
    v196 = type metadata accessor for SELFPSELogged();
    v197 = v222;
    (*(*(v196 - 8) + 104))(v222, v195, v196);
    v198 = v197;
    (*(v6 + 104))(v197, *MEMORY[0x277D61658], v5);
    v199 = Logger.logObject.getter();
    v200 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = v5;
      v202 = swift_slowAlloc();
      v203 = v6;
      v204 = swift_slowAlloc();
      v254 = *&v204;
      *v202 = 136315138;
      *(v202 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000025ED7F490, &v254);
      _os_log_impl(&dword_25ECEC000, v199, v200, "%s", v202, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v204);
      v205 = v204;
      v6 = v203;
      MEMORY[0x25F8CEE50](v205, -1, -1);
      v206 = v202;
      v5 = v201;
      MEMORY[0x25F8CEE50](v206, -1, -1);
    }

    v207 = v226;
    v208 = v228;
    type metadata accessor for SiriTaskEngagementUtils();
    v209 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v198, v209, v210);

    (*(v6 + 8))(v198, v5);
    v211 = [objc_opt_self() sharedAnalytics];
    v212 = [v211 defaultMessageStream];

    UUID.init()();
    v213 = UUID._bridgeToObjectiveC()().super.isa;
    v193(v207, v225);
    v214 = v250;
    [v212 emitMessage:v250 isolatedStreamUUID:v213];

    return;
  }

LABEL_118:
  v127 = MEMORY[0x25F8CE500](a2);
  v38 = v228;
  if (v127 <= 0 || !MEMORY[0x25F8CE500](a2))
  {
    goto LABEL_120;
  }

LABEL_59:
  if ((a2 & 0xC000000000000001) == 0)
  {
    v30 = 0xED00006972695379;
    if (*(a2 + 16))
    {
      v224 = *(a2 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

LABEL_147:
  v224 = MEMORY[0x25F8CE460](0, a2);
  v30 = 0xED00006972695379;
LABEL_62:
  [v38 setHasUserInitiatedFollowup_];
  v9 = 0;
  v251 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v22)
    {
      v5 = MEMORY[0x25F8CE460](v9, a1);
      v33 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_97;
      }

      v5 = *(a1 + 8 * v9 + 32);

      v33 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }
    }

    v12 = (*(*v5 + 216))();
    if (v12[2] && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v74 & 1) != 0))
    {
      outlined init with copy of Any(v12[7] + 32 * v73, &v254);

      if (swift_dynamicCast() & 1) != 0 && (v253)
      {
        v12 = &v251;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v30 = 0xED00006972695379;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_76;
      }
    }

    else
    {
    }

LABEL_76:
    ++v9;
    if (v33 != v36)
    {
      continue;
    }

    break;
  }

  v75 = v251;
  v76 = v248;
  v77 = (*(*v248 + 168))(a2, v251);
  v78 = v227;
  [v227 setFollowUpType_];
  v79 = [v78 setFollowUpSource_];
  v80 = (*(*v224 + 216))(v79);
  if (*(v80 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(0x5465636976726573, 0xEB00000000657079), (v82 & 1) != 0))
  {
    outlined init with copy of Any(*(v80 + 56) + 32 * v81, &v254);

    if (swift_dynamicCast())
    {
      v83 = v251;
      v84 = v252;
      goto LABEL_83;
    }
  }

  else
  {
  }

  v83 = 0;
  v84 = 0xE000000000000000;
LABEL_83:
  v85 = MEMORY[0x25F8CDFC0](v83, v84);

  [v78 setFollowUpAccessoryType_];

  v86 = (*(*v248 + 184))(a2, v75);

  [v78 setIsFollowUpInSameContainerAsSiriRequest_];
  v6 = v237;
  static Calendar.current.getter();
  v87 = v245;
  v88 = *(v245 + 13);
  v33 = v238;
  v89 = v239;
  v90 = v88(v238, *MEMORY[0x277CC9980], v239);
  v91 = (*v224 + 120);
  v218 = *v91;
  v217 = v91;
  v218(&v254, v90);
  v92 = v242;
  Date.init(timeIntervalSinceReferenceDate:)();
  v93 = Calendar.component(_:from:)();
  v94 = *(v246 + 8);
  v246 += 8;
  v216 = v94;
  v94(v92, v243);
  v95 = *(v87 + 1);
  v5 = (v87 + 8);
  v38 = v95;
  v95(v33, v89);
  v96 = base_props + 1;
  a1 = base_props[1];
  (a1)(v6, v223);
  if ((v93 & 0x8000000000000000) != 0)
  {
    goto LABEL_149;
  }

  base_props = v96;
  v245 = v5;
  if (HIDWORD(v93))
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  [v227 setFollowUpHourOfDay_];
  v97 = v237;
  static Calendar.current.getter();
  v6 = v238;
  v5 = v239;
  v98 = v88(v238, *MEMORY[0x277CC99B8], v239);
  v218(&v254, v98);
  v99 = v242;
  Date.init(timeIntervalSinceReferenceDate:)();
  v100 = Calendar.component(_:from:)();
  v33 = v246;
  v101 = v216;
  v216(v99, v243);
  (v38)(v6, v5);
  (a1)(v97, v223);
  if ((v100 & 0x8000000000000000) != 0)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
LABEL_136:
    v165 = type metadata accessor for Logger();
    __swift_project_value_buffer(v165, static Logger.engagement);
    v166 = *MEMORY[0x277D615C8];
    v167 = type metadata accessor for EngagementSignalCollectionError();
    v168 = v236;
    (*(*(v167 - 8) + 104))(v236, v166, v167);
    (*(v6 + 104))(v168, *MEMORY[0x277D616A8], v5);
    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.debug.getter();
    v171 = os_log_type_enabled(v169, v170);
    v172 = v229;
    if (v171)
    {
      v173 = v38;
      v174 = v5;
      v175 = swift_slowAlloc();
      v176 = v6;
      v177 = swift_slowAlloc();
      v254 = *&v177;
      *v175 = 136315138;
      *(v175 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v254);
      _os_log_impl(&dword_25ECEC000, v169, v170, "%s", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v177);
      v178 = v177;
      v6 = v176;
      a1 = v247;
      MEMORY[0x25F8CEE50](v178, -1, -1);
      v179 = v175;
      v5 = v174;
      v38 = v173;
      MEMORY[0x25F8CEE50](v179, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v180 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v181 = v236;
    MEMORY[0x25F8CDB30](v236, v180, v182);

    v183 = (*(v6 + 8))(v181, v5);
    goto LABEL_140;
  }

  v30 = v226;
  a1 = v247;
  v38 = v228;
  if (HIDWORD(v100))
  {
    goto LABEL_152;
  }

  v102 = [v227 setFollowUpDayOfWeek_];
  v103 = (v218)(&v254, v102);
  v104 = v254;
  v105 = v242;
  (*(*v249 + 352))(v103);
  Date.timeIntervalSinceReferenceDate.getter();
  v107 = v106;
  v101(v105, v243);
  v108 = v104 - v107;
  if (v104 - v107 <= 0.0)
  {
    v111 = 0;
    v110 = v227;
    v109 = v241;
LABEL_93:
    [v110 setFollowUpDurationSinceSiriRequestInSeconds_];

    goto LABEL_121;
  }

  v109 = v241;
  if (*&v108 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_155;
  }

  v110 = v227;
  if (v108 <= -1.0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v108 < 4294967300.0)
  {
    v111 = v108;
    goto LABEL_93;
  }

LABEL_156:
  __break(1u);
}

Swift::Bool __swiftcall PSEHomeSELFEmitter.isUndoAction(actionFromSiri:actionFromUser:)(NSNumber_optional actionFromSiri, NSNumber_optional actionFromUser)
{
  v2 = *&actionFromSiri.is_nil;
  isa = actionFromSiri.value.super.super.isa;
  type metadata accessor for NSNumber();
  v4.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v5 = v4.super.super.isa;
  if (!isa)
  {

    v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    LOBYTE(v2) = 0;
LABEL_11:

    return v2 & 1;
  }

  v6 = isa;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v9 = v8.super.super.isa;
  if (!v2)
  {

    goto LABEL_8;
  }

  v10 = v2;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
LABEL_8:
    v13 = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v14 = v6;
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    v12.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    if (v2)
    {
      v16 = v12.super.super.isa;
      v17 = v2;
      LOBYTE(v2) = static NSObject.== infix(_:_:)();

      v12.super.super.isa = v17;
    }

    goto LABEL_11;
  }

  LOBYTE(v2) = 1;
  return v2 & 1;
}

uint64_t PSEHomeSELFEmitter.getHomeFollowUpType(userSignals:siriSignals:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v173 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_326;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v191 = v2;
  v190 = a1;
  if (v3)
  {
    v194 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v4 = v194;
      v7 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v8 = MEMORY[0x25F8CE460](v6, v191);
        }

        else
        {
          v8 = *(v191 + 8 * v6 + 32);
        }

        v9 = (*(*v8 + 216))();
        if (!*(v9 + 16))
        {
          break;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0);
        if ((v11 & 1) == 0)
        {
          break;
        }

        outlined init with copy of Any(*(v9 + 56) + 32 * v10, v192);

        if (!swift_dynamicCast())
        {
          goto LABEL_14;
        }

        v12 = v193;
LABEL_15:
        v194 = v4;
        v14 = *(v4 + 16);
        v13 = *(v4 + 24);
        if (v14 >= v13 >> 1)
        {
          v188 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v188;
          v4 = v194;
        }

        ++v6;
        *(v4 + 16) = v14 + 1;
        *(v4 + 16 * v14 + 32) = v12;
        if (v3 == v6)
        {
          v2 = v191;
          v15 = v190;
          goto LABEL_20;
        }
      }

LABEL_14:
      v12 = 0uLL;
      v193 = 0u;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_335;
  }

  v15 = a1;
LABEL_20:
  v189 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v4);

  v170 = v15 >> 62;
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v158 = v15;
    }

    else
    {
      v158 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x25F8CE500](v158);
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v194 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
      goto LABEL_339;
    }

    v18 = 0;
    v17 = v194;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8CE460](v18, v190);
      }

      else
      {
        v19 = *(v190 + 8 * v18 + 32);
      }

      v20 = (*(*v19 + 216))();
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0);
      if ((v22 & 1) == 0)
      {
        break;
      }

      outlined init with copy of Any(*(v20 + 56) + 32 * v21, v192);

      if (!swift_dynamicCast())
      {
        goto LABEL_33;
      }

      v23 = v193;
LABEL_34:
      v194 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        v185 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v23 = v185;
        v17 = v194;
      }

      ++v18;
      *(v17 + 16) = v25 + 1;
      *(v17 + 16 * v25 + 32) = v23;
      if (v16 == v18)
      {
        v2 = v191;
        v15 = v190;
        goto LABEL_38;
      }
    }

LABEL_33:
    v23 = 0uLL;
    v193 = 0u;
    goto LABEL_34;
  }

LABEL_38:
  v186 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v17);

  v26 = MEMORY[0x277D84F90];
  if (!v3)
  {
    goto LABEL_54;
  }

  v194 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_336;
  }

  v27 = 0;
  v26 = v194;
  v28 = v2 & 0xC000000000000001;
  do
  {
    if (v28)
    {
      v29 = MEMORY[0x25F8CE460](v27, v191);
    }

    else
    {
      v29 = *(v191 + 8 * v27 + 32);
    }

    v30 = (*(*v29 + 216))();
    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v192);

      if (swift_dynamicCast())
      {
        v33 = v193;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v33 = 0uLL;
    v193 = 0u;
LABEL_50:
    v194 = v26;
    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      v181 = v33;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v33 = v181;
      v26 = v194;
    }

    ++v27;
    *(v26 + 16) = v35 + 1;
    *(v26 + 16 * v35 + 32) = v33;
  }

  while (v3 != v27);
  v2 = v191;
  v15 = v190;
LABEL_54:
  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v26);

  v37 = MEMORY[0x277D84F90];
  if (v16)
  {
    v194 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_337;
    }

    v182 = v36;
    v38 = 0;
    v37 = v194;
    v39 = v15;
    while (2)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x25F8CE460](v38, v39);
      }

      else
      {
        v40 = *(v39 + 8 * v38 + 32);
      }

      v41 = (*(*v40 + 216))();
      if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v43 & 1) != 0))
      {
        outlined init with copy of Any(*(v41 + 56) + 32 * v42, v192);

        if (swift_dynamicCast())
        {
          v44 = v193;
          goto LABEL_66;
        }
      }

      else
      {
      }

      v44 = 0uLL;
      v193 = 0u;
LABEL_66:
      v194 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        v178 = v44;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v44 = v178;
        v37 = v194;
      }

      ++v38;
      *(v37 + 16) = v46 + 1;
      *(v37 + 16 * v46 + 32) = v44;
      v39 = v190;
      if (v16 == v38)
      {
        v15 = v190;
        v2 = v191;
        v36 = v182;
        break;
      }

      continue;
    }
  }

  v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v37);

  v48 = specialized _NativeSet.intersection(_:)(v186, v189, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  if (*(v47 + 16) && !v48[2])
  {

    v105 = specialized _NativeSet.intersection(_:)(v47, v36, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    v106 = v105[2];
    if (v106)
    {
      v107 = *(v36 + 16);

      if (v106 >= v107)
      {
        v108 = 0;
        v167 = v105;
        v161 = (v105 + 7);
        v109 = 1 << *(v105 + 32);
        v110 = -1;
        if (v109 < 64)
        {
          v110 = ~(-1 << v109);
        }

        v111 = v110 & v105[7];
        v159 = (v109 + 63) >> 6;
        v184 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v2 < 0)
        {
          v112 = v2;
        }

        else
        {
          v112 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v113 = v15 & 0xFFFFFFFFFFFFFF8;
        v177 = v2 & 0xC000000000000001;
        v180 = v15 & 0xFFFFFFFFFFFFFF8;
        if (v15 < 0)
        {
          v113 = v15;
        }

        v163 = v113;
        v165 = v112;
        v175 = v15 & 0xC000000000000001;
LABEL_207:
        v114 = MEMORY[0x277D84F90];
        do
        {
          if (!v111)
          {
            do
            {
              v115 = v108 + 1;
              if (__OFADD__(v108, 1))
              {
                goto LABEL_324;
              }

              if (v115 >= v159)
              {
                goto LABEL_313;
              }

              v111 = *&v161[8 * v115];
              ++v108;
            }

            while (!v111);
            v108 = v115;
          }

          v116 = (v167[6] + ((v108 << 10) | (16 * __clz(__rbit64(v111)))));
          v117 = v116[1];
          v172 = *v116;
          v194 = v114;
          if (v173)
          {
            v118 = MEMORY[0x25F8CE500](v165);
          }

          else
          {
            v118 = *(v184 + 16);
          }

          if (v118)
          {
            v119 = 0;
            while (1)
            {
              if (v177)
              {
                a1 = MEMORY[0x25F8CE460](v119, v2);
                v120 = a1;
                v121 = v119 + 1;
                if (__OFADD__(v119, 1))
                {
                  goto LABEL_320;
                }
              }

              else
              {
                if (v119 >= *(v184 + 16))
                {
                  goto LABEL_321;
                }

                v120 = *(v2 + 8 * v119 + 32);

                v121 = v119 + 1;
                if (__OFADD__(v119, 1))
                {
                  goto LABEL_320;
                }
              }

              v122 = (*(*v120 + 216))();
              if (*(v122 + 16) && (v123 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v124 & 1) != 0))
              {
                outlined init with copy of Any(*(v122 + 56) + 32 * v123, v192);

                if (swift_dynamicCast())
                {
                  if (v117)
                  {
                    if (__PAIR128__(v117, v172) == v193)
                    {

LABEL_234:
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      a1 = specialized ContiguousArray._endMutation()();
                      goto LABEL_220;
                    }

                    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v125)
                    {
                      goto LABEL_234;
                    }
                  }

                  else
                  {
                  }
                }

                else if (!v117)
                {
                  goto LABEL_234;
                }
              }

              else
              {

                if (!v117)
                {
                  goto LABEL_234;
                }
              }

LABEL_220:
              ++v119;
              if (v121 == v118)
              {
                v114 = v194;
                break;
              }
            }
          }

          if (v114 < 0 || (v114 & 0x4000000000000000) != 0)
          {
            v126 = MEMORY[0x25F8CE500](v114);
            if (v126)
            {
LABEL_242:
              *&v193 = MEMORY[0x277D84F90];
              result = specialized ContiguousArray.reserveCapacity(_:)();
              if (v126 < 0)
              {
LABEL_339:
                __break(1u);
LABEL_340:
                __break(1u);
                return result;
              }

              v127 = 0;
              while (2)
              {
                if ((v114 & 0xC000000000000001) != 0)
                {
                  v128 = MEMORY[0x25F8CE460](v127, v114);
                }

                else
                {
                  v128 = *(v114 + 8 * v127 + 32);
                }

                v129 = (*(*v128 + 216))();
                if (*(v129 + 16) && (v130 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v131 & 1) != 0))
                {
                  outlined init with copy of Any(*(v129 + 56) + 32 * v130, v192);

                  type metadata accessor for NSNumber();
                  if (swift_dynamicCast())
                  {
LABEL_246:
                    ++v127;
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    if (v126 == v127)
                    {

                      v132 = v193;
                      v2 = v191;
                      v133 = MEMORY[0x277D84F90];
                      goto LABEL_257;
                    }

                    continue;
                  }
                }

                else
                {
                }

                break;
              }

              v194 = 0;
              goto LABEL_246;
            }
          }

          else
          {
            v126 = *(v114 + 16);
            if (v126)
            {
              goto LABEL_242;
            }
          }

          v133 = MEMORY[0x277D84F90];
          v132 = MEMORY[0x277D84F90];
LABEL_257:
          v169 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(v132);

          v194 = v133;
          v134 = v133;
          if (!v170)
          {
            v135 = *(v180 + 16);
            if (!v135)
            {
              goto LABEL_283;
            }

LABEL_261:
            v136 = 0;
            while (2)
            {
              if (v175)
              {
                a1 = MEMORY[0x25F8CE460](v136, v190);
                v137 = a1;
                v138 = v136 + 1;
                if (__OFADD__(v136, 1))
                {
                  goto LABEL_322;
                }
              }

              else
              {
                if (v136 >= *(v180 + 16))
                {
                  goto LABEL_323;
                }

                v137 = *(v190 + 8 * v136 + 32);

                v138 = v136 + 1;
                if (__OFADD__(v136, 1))
                {
                  goto LABEL_322;
                }
              }

              v139 = (*(*v137 + 216))();
              if (*(v139 + 16) && (v140 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F4F0), (v141 & 1) != 0))
              {
                outlined init with copy of Any(*(v139 + 56) + 32 * v140, v192);

                if (swift_dynamicCast())
                {
                  if (v117)
                  {
                    if (__PAIR128__(v117, v172) == v193)
                    {

                      goto LABEL_278;
                    }

                    v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v142)
                    {
LABEL_278:
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      a1 = specialized ContiguousArray._endMutation()();
LABEL_264:
                      ++v136;
                      if (v138 == v135)
                      {
                        v134 = v194;
                        goto LABEL_283;
                      }

                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                else if (!v117)
                {
                  goto LABEL_278;
                }
              }

              else
              {

                if (!v117)
                {
                  goto LABEL_278;
                }
              }

              break;
            }

            goto LABEL_264;
          }

          a1 = MEMORY[0x25F8CE500](v163);
          v135 = a1;
          if (a1)
          {
            goto LABEL_261;
          }

LABEL_283:

          if (v134 < 0 || (v134 & 0x4000000000000000) != 0)
          {
            v143 = MEMORY[0x25F8CE500](v134);
            if (!v143)
            {
LABEL_300:

              v149 = MEMORY[0x277D84F90];
              goto LABEL_301;
            }
          }

          else
          {
            v143 = *(v134 + 16);
            if (!v143)
            {
              goto LABEL_300;
            }
          }

          *&v193 = MEMORY[0x277D84F90];
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v143 < 0)
          {
            goto LABEL_340;
          }

          v144 = 0;
          do
          {
            if ((v134 & 0xC000000000000001) != 0)
            {
              v145 = MEMORY[0x25F8CE460](v144, v134);
            }

            else
            {
              v145 = *(v134 + 8 * v144 + 32);
            }

            v146 = (*(*v145 + 216))();
            if (!*(v146 + 16) || (v147 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v148 & 1) == 0))
            {

LABEL_289:
              v194 = 0;
              goto LABEL_290;
            }

            outlined init with copy of Any(*(v146 + 56) + 32 * v147, v192);

            type metadata accessor for NSNumber();
            if (!swift_dynamicCast())
            {
              goto LABEL_289;
            }

LABEL_290:
            ++v144;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v143 != v144);

          v149 = v193;
          v2 = v191;
LABEL_301:
          v111 &= v111 - 1;
          v150 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(v149);

          if (*(v169 + 16) != 1 || *(v150 + 16) != 1)
          {

            goto LABEL_207;
          }

          v151 = specialized Collection.first.getter(v169);

          if (v151 >= 2)
          {
            v152 = v151;
          }

          else
          {
            v152 = 0;
          }

          v153 = specialized Collection.first.getter(v150);

          if (v153 >= 2)
          {
            v154 = v153;
          }

          else
          {
            v154 = 0;
          }

          v155 = (*(*v168 + 160))(v152, v154);

          v114 = MEMORY[0x277D84F90];
        }

        while ((v155 & 1) == 0);
      }
    }

    else
    {
    }

    return 4;
  }

  if (!v48[2])
  {

    return 0;
  }

  v49 = 0;
  v171 = v48;
  v52 = v48[7];
  v51 = (v48 + 7);
  v50 = v52;
  v53 = 1 << *(v51 - 24);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v2;
  v2 = v54 & v50;
  v162 = (v53 + 63) >> 6;
  v164 = v51;
  v56 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 < 0)
  {
    v57 = v55;
  }

  else
  {
    v57 = v55 & 0xFFFFFFFFFFFFFF8;
  }

  v166 = v57;
  v187 = v55 & 0xC000000000000001;
  v58 = v15 & 0xFFFFFFFFFFFFFF8;
  v183 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 < 0)
  {
    v58 = v15;
  }

  v160 = v58;
  v179 = v15 & 0xC000000000000001;
LABEL_81:
  v59 = MEMORY[0x277D84F90];
  while (2)
  {
    if (!v2)
    {
      do
      {
        v60 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_319;
        }

        if (v60 >= v162)
        {

          return 1;
        }

        v2 = *&v164[8 * v60];
        ++v49;
      }

      while (!v2);
      v49 = v60;
    }

    v61 = (v171[6] + ((v49 << 10) | (16 * __clz(__rbit64(v2)))));
    v62 = v61[1];
    v176 = *v61;
    v194 = v59;
    if (v173)
    {
      v63 = MEMORY[0x25F8CE500](v166);
    }

    else
    {
      v63 = *(v56 + 16);
    }

    if (!v63)
    {
      a1 = v59;
LABEL_114:
      v2 &= v2 - 1;
      v71 = v190;
      if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
      {
        v103 = a1;
        v104 = MEMORY[0x25F8CE500]();
        a1 = v103;
        v59 = MEMORY[0x277D84F90];
        if (!v104)
        {
LABEL_188:

          continue;
        }
      }

      else if (!*(a1 + 16))
      {
        goto LABEL_188;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v174 = MEMORY[0x25F8CE460](0, a1);
      }

      else
      {
        if (!*(a1 + 16))
        {
          goto LABEL_325;
        }

        v174 = *(a1 + 32);
      }

      v194 = MEMORY[0x277D84F90];
      if (!v170)
      {
        v72 = *(v183 + 16);
        if (v72)
        {
          goto LABEL_122;
        }

LABEL_146:
        v80 = MEMORY[0x277D84F90];
LABEL_147:

        if (v80 < 0 || (v80 & 0x4000000000000000) != 0)
        {
          result = MEMORY[0x25F8CE500](v80);
          if (!result)
          {
LABEL_193:

            goto LABEL_81;
          }
        }

        else if (!*(v80 + 16))
        {
          goto LABEL_193;
        }

        if ((v80 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x25F8CE460](0, v80);
        }

        else
        {
          if (!*(v80 + 16))
          {
            goto LABEL_338;
          }

          v81 = *(v80 + 32);
        }

        v83 = *(*v174 + 216);
        v84 = (v83)(v82);
        if (*(v84 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v86 & 1) != 0))
        {
          outlined init with copy of Any(*(v84 + 56) + 32 * v85, v192);

          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v87 = v193;
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {

          v87 = 0;
        }

        v88 = *(*v81 + 216);
        v89 = v88();
        if (*(v89 + 16) && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v91 & 1) != 0))
        {
          outlined init with copy of Any(*(v89 + 56) + 32 * v90, v192);

          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v92 = v193;
          }

          else
          {
            v92 = 0;
          }

          if (!v87)
          {
LABEL_165:
            if (!v92)
            {
              goto LABEL_316;
            }

            goto LABEL_172;
          }
        }

        else
        {

          v92 = 0;
          if (!v87)
          {
            goto LABEL_165;
          }
        }

        if (v92)
        {
          type metadata accessor for NSNumber();
          v93 = static NSObject.== infix(_:_:)();

          if (v93)
          {
            goto LABEL_316;
          }

LABEL_173:
          v94 = v83();
          if (*(v94 + 16) && (v95 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v96 & 1) != 0))
          {
            outlined init with copy of Any(*(v94 + 56) + 32 * v95, v192);

            type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v97 = v193;
            }

            else
            {
              v97 = 0;
            }
          }

          else
          {

            v97 = 0;
          }

          v98 = v88();
          if (*(v98 + 16) && (v99 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F510), (v100 & 1) != 0))
          {
            outlined init with copy of Any(*(v98 + 56) + 32 * v99, v192);

            type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v101 = v193;
            }

            else
            {
              v101 = 0;
            }
          }

          else
          {

            v101 = 0;
          }

          v102 = (*(*v168 + 160))(v97, v101);

          v59 = MEMORY[0x277D84F90];
          if ((v102 & 1) == 0)
          {

            return 2;
          }

          continue;
        }

        v92 = v87;
LABEL_172:

        goto LABEL_173;
      }

      a1 = MEMORY[0x25F8CE500](v160);
      v72 = a1;
      if (!a1)
      {
        goto LABEL_146;
      }

LABEL_122:
      v73 = 0;
      while (1)
      {
        if (v179)
        {
          a1 = MEMORY[0x25F8CE460](v73, v71);
          v74 = a1;
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_317;
          }
        }

        else
        {
          if (v73 >= *(v183 + 16))
          {
            goto LABEL_318;
          }

          v74 = *(v71 + 8 * v73 + 32);

          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            v156 = a1;
            if (v2 < 0)
            {
              v157 = v2;
            }

            else
            {
              v157 = v2 & 0xFFFFFFFFFFFFFF8;
            }

            v3 = MEMORY[0x25F8CE500](v157);
            a1 = v156;
            goto LABEL_3;
          }
        }

        v76 = (*(*v74 + 216))();
        if (*(v76 + 16) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0), (v78 & 1) != 0))
        {
          outlined init with copy of Any(*(v76 + 56) + 32 * v77, v192);

          if (swift_dynamicCast())
          {
            if (!v62)
            {

              goto LABEL_137;
            }

            if (__PAIR128__(v62, v176) == v193)
            {

LABEL_135:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a1 = specialized ContiguousArray._endMutation()();
              goto LABEL_136;
            }

            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v79)
            {
              goto LABEL_135;
            }
          }

          else if (!v62)
          {
            goto LABEL_135;
          }
        }

        else
        {

          if (!v62)
          {
            goto LABEL_135;
          }
        }

LABEL_136:
        v71 = v190;
LABEL_137:
        ++v73;
        if (v75 == v72)
        {
          v80 = v194;
          goto LABEL_147;
        }
      }
    }

    break;
  }

  v64 = 0;
  while (2)
  {
    if (v187)
    {
      v65 = MEMORY[0x25F8CE460](v64, v191);
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_314;
      }

LABEL_98:
      v67 = (*(*v65 + 216))();
      if (*(v67 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000025ED7F4D0), (v69 & 1) != 0))
      {
        outlined init with copy of Any(*(v67 + 56) + 32 * v68, v192);

        if (swift_dynamicCast())
        {
          if (v62)
          {
            if (__PAIR128__(v62, v176) == v193)
            {

              goto LABEL_108;
            }

            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v70)
            {
              goto LABEL_108;
            }
          }

          else
          {
          }
        }

        else if (!v62)
        {
          goto LABEL_108;
        }
      }

      else
      {

        if (!v62)
        {
LABEL_108:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_94:
          ++v64;
          if (v66 == v63)
          {
            a1 = v194;
            v59 = MEMORY[0x277D84F90];
            goto LABEL_114;
          }

          continue;
        }
      }

      goto LABEL_94;
    }

    break;
  }

  if (v64 >= *(v56 + 16))
  {
    goto LABEL_315;
  }

  v65 = *(v191 + 8 * v64 + 32);

  v66 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_98;
  }

LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:

LABEL_313:

  return 3;
}

unint64_t PSEHomeSELFEmitter.getHomeFollowUpSource(userSignals:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
LABEL_41:
    if (v1 < 0)
    {
      v18 = v1;
    }

    else
    {
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x25F8CE500](v18);
    v2 = result;
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F8CE460](v5, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v5 + 32);
    }

    v8 = *(*v7 + 216);
    v9 = v8();
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65696C63, 0xEA0000000000656DLL), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v21);

      v12 = swift_dynamicCast();
      if (v12)
      {
        if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEE00656D6F482E65)
        {

          goto LABEL_28;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    v13 = (v8)(v12);
    if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65696C63, 0xEA0000000000656DLL), (v15 & 1) == 0))
    {

      goto LABEL_6;
    }

    outlined init with copy of Any(*(v13 + 56) + 32 * v14, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_6:
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_41;
      }

      goto LABEL_7;
    }

    if (v19 == 0xD000000000000012 && 0x800000025ED7F530 == v20)
    {

LABEL_26:

      goto LABEL_28;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      break;
    }

LABEL_7:
    if (v2 == ++v5)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_31:
  if (v4 < 1)
  {
    if (!v4 && v3 > 0)
    {
      return 3;
    }
  }

  else
  {
    if (v3 > 0)
    {
      return 4;
    }

    if (!v3)
    {
      return 2;
    }
  }

  return 0;
}

Swift::Bool __swiftcall PSEHomeSELFEmitter.isFollowUpInSameContainer(userSignals:siriSignals:)(Swift::OpaquePointer userSignals, Swift::OpaquePointer siriSignals)
{
  rawValue = userSignals._rawValue;
  if (userSignals._rawValue >> 62)
  {
    if (userSignals._rawValue >= 0)
    {
      userSignals._rawValue = (userSignals._rawValue & 0xFFFFFFFFFFFFFF8);
    }

    v5 = MEMORY[0x25F8CE500](userSignals._rawValue);
  }

  else
  {
    v5 = *((userSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if ((rawValue & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8CE460](0, rawValue);
    v6 = v7;
  }

  else
  {
    if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v6 = *(rawValue + 32);
  }

  v8 = (*(*v6 + 216))(v7);

  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F550), (v10 & 1) == 0))
  {

LABEL_16:
    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, v41);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v39;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v40;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:
  if (siriSignals._rawValue >> 62)
  {
    if (siriSignals._rawValue < 0)
    {
      v38 = siriSignals._rawValue;
    }

    else
    {
      v38 = siriSignals._rawValue & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v38);
    if (!v2)
    {
LABEL_34:
      v20 = 0;
      v21 = 0;
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v2 = *((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_34;
    }
  }

  if ((siriSignals._rawValue & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x25F8CE460](0, siriSignals._rawValue);
    v14 = v15;
    goto LABEL_22;
  }

  if (!*((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    v23 = MEMORY[0x25F8CE460](0, rawValue);
    v22 = v23;
    goto LABEL_44;
  }

  v14 = *(siriSignals._rawValue + 4);

LABEL_22:
  v16 = (*(*v14 + 216))(v15);

  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7F550), (v18 & 1) == 0))
  {

    goto LABEL_34;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, v41);

  v19 = swift_dynamicCast();
  if (v19)
  {
    v20 = v39;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v40;
  }

  else
  {
    v21 = 0;
  }

  if (!v13)
  {
LABEL_31:
    if (v21)
    {
      v13 = v21;
LABEL_39:

      goto LABEL_40;
    }

    return 1;
  }

LABEL_35:
  if (!v21)
  {
    goto LABEL_39;
  }

  if (v12 == v20 && v13 == v21)
  {

    return 1;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    return 1;
  }

LABEL_40:
  if (!v5)
  {
    return 0;
  }

  if ((rawValue & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v22 = *(rawValue + 32);

LABEL_44:
  v24 = (*(*v22 + 216))(v23);

  if (!*(v24 + 16))
  {
    goto LABEL_55;
  }

  v13 = "roomUniqueIdentifier";
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000025ED7F570);
  if ((v26 & 1) == 0)
  {
    goto LABEL_55;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  rawValue = v39;
  if (!v2)
  {
LABEL_55:

    return 0;
  }

  if ((siriSignals._rawValue & 0xC000000000000001) != 0)
  {
LABEL_75:
    v29 = MEMORY[0x25F8CE460](0, siriSignals._rawValue);
    v28 = v29;
    goto LABEL_51;
  }

  if (*((siriSignals._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(siriSignals._rawValue + 4);

LABEL_51:
    v30 = (*(*v28 + 216))(v29);

    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, v13 | 0x8000000000000000), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v41);

      if (swift_dynamicCast())
      {
        v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(rawValue);

        v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v39);

        v35 = specialized _NativeSet.intersection(_:)(v34, v33, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

        v36 = v35[2];

        return v36 != 0;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v7 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    *a1 = a2;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v6 + 48) + 8 * v10);
    if (!v12)
    {
      break;
    }

    if (a2)
    {
      type metadata accessor for NSNumber();
      v13 = a2;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {

        v16 = *(*(v6 + 48) + 8 * v10);
        goto LABEL_14;
      }
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v16 = 0;
LABEL_14:
  *a1 = v16;
  v20 = v16;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17)
      {
        Hasher._combine(_:)(1u);
        v18 = v17;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v15, v10, a2, a1, a4);

    MEMORY[0x25F8CEE50](v15, -1, -1);
  }

  return v13;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v53 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_32;
  }

  v56 = 0;
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
  v50 = v11;
  v51 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
    }

    else
    {
      v14 = v6;
      do
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_64;
        }

        if (v6 >= v11)
        {
LABEL_62:

          return specialized _NativeSet.extractSubset(using:count:)(v53, a2, v56, v5);
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v54 = (v15 - 1) & v15;
    }

    v16 = (*(v4 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v12 + 8 * (v20 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v5 = a3;
    v4 = a4;
    v11 = v50;
    v7 = v51;
    v10 = v54;
  }

  v23 = ~v19;
  v24 = *(v5 + 48);
  while (1)
  {
    v25 = (v24 + 16 * v20);
    v26 = v25[1];
    if (!v26)
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    if (v17)
    {
      if (*v25 == v18 && v26 == v17)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }
    }

LABEL_20:
    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if ((*(v12 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  v7 = v51;
  v53[v21] |= v22;
  v4 = a4;
  v28 = __OFADD__(v56++, 1);
  v5 = a3;
  v11 = v50;
  v10 = v54;
  if (!v28)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_32:
  v56 = 0;
  v29 = 0;
  v30 = v5 + 56;
  v31 = 1 << *(v5 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v5 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v4 + 56;
LABEL_37:
  while (2)
  {
    if (v33)
    {
      v36 = __clz(__rbit64(v33));
      v55 = (v33 - 1) & v33;
LABEL_44:
      v52 = v36 | (v29 << 6);
      v39 = (*(v5 + 48) + 16 * v52);
      v41 = *v39;
      v40 = v39[1];
      Hasher.init(_seed:)();
      if (v40)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v42 = -1 << *(v4 + 32);
      v43 = result & ~v42;
      if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
LABEL_36:

        v5 = a3;
        v4 = a4;
        v33 = v55;
        continue;
      }

      v44 = ~v42;
      v45 = *(v4 + 48);
      while (1)
      {
        v46 = (v45 + 16 * v43);
        v47 = v46[1];
        if (v47)
        {
          if (v40)
          {
            v48 = *v46 == v41 && v47 == v40;
            if (v48 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {

LABEL_59:
              *(v53 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
              v4 = a4;
              v28 = __OFADD__(v56++, 1);
              v5 = a3;
              v33 = v55;
              if (v28)
              {
                __break(1u);
                goto LABEL_62;
              }

              goto LABEL_37;
            }
          }
        }

        else if (!v40)
        {
          goto LABEL_59;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    break;
  }

  v37 = v29;
  while (1)
  {
    v29 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      goto LABEL_62;
    }

    v38 = *(v30 + 8 * v29);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v55 = (v38 - 1) & v38;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

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

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v10 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          type metadata accessor for NSNumber();
          v15 = a1;
          v16 = v14;
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
LABEL_18:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_23;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSNumberCSgGMd, &_ss11_SetStorageCySo8NSNumberCSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16)
      {
        Hasher._combine(_:)(1u);
        v17 = v16;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  result = MEMORY[0x25F8CE250](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Set._Variant.insert(_:)(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8NSNumberCSg_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v4 = lazy protocol witness table accessor for type NSNumber? and conformance <A> A?();
  result = MEMORY[0x25F8CE250](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized Set._Variant.insert(_:)(&v9, v7);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8CE250](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

uint64_t Logger.engagement.unsafeMutableAddressor()
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.engagement);
}

uint64_t Logger.debug(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  v8 = Logger.logObject.getter();
  v9 = a4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_25ECEC000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F8CEE50](v11, -1, -1);
    MEMORY[0x25F8CEE50](v10, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v12 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](a3, v12, v13);
}

uint64_t one-time initialization function for engagement()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.engagement);
  __swift_project_value_buffer(v0, static Logger.engagement);
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;
  return Logger.init(_:)();
}

uint64_t *Log.pseLog.unsafeMutableAddressor()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  return &static Log.pseLog;
}

uint64_t static Logger.engagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.engagement);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for pseLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.pseLog = result;
  return result;
}

id static Log.pseLog.getter()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 Signal.__allocating_init(deltaT:domain:action:postSiriEngagement:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = *a1;
  v18 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v18;
  *(v14 + 48) = v15;
  *(v14 + 56) = v16;
  *(v14 + 64) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a6;
  *(v14 + 104) = a7;
  return result;
}

uint64_t PSESignals.init(biomeSignals:siriTaskEngagementFeatures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Delta.errorCode.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Delta.CodingKeys()
{
  v1 = *v0;
  v2 = 0x45495565636E6973;
  v3 = 0x53495565636E6973;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x646F43726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Delta.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Delta.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Delta.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Delta.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Delta.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement5DeltaV10CodingKeys33_EC9BC3BA8A5DD6306B42F1F00C1EDDD6LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement5DeltaV10CodingKeys33_EC9BC3BA8A5DD6306B42F1F00C1EDDD6LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void __swiftcall Delta.init(donatedAtTimestamp:sinceUIEnd:sinceUIStart:duration:errorCode:)(PostSiriEngagement::Delta *__return_ptr retstr, Swift::Double donatedAtTimestamp, Swift::Double sinceUIEnd, Swift::Double sinceUIStart, Swift::Double duration, Swift::Double_optional errorCode)
{
  retstr->donatedAtTimestamp = donatedAtTimestamp;
  retstr->sinceUIEnd = sinceUIEnd;
  retstr->sinceUIStart = sinceUIStart;
  retstr->duration = duration;
  retstr->errorCode.value = *&errorCode.is_nil;
  retstr->errorCode.is_nil = v6 & 1;
}

__n128 Signal.deltaT.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 Signal.deltaT.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Signal.domain.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Signal.domain.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t Signal.action.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Signal.action.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t Signal.postSiriEngagement.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t Signal.data.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t Signal.init(deltaT:domain:action:postSiriEngagement:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v10;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  return v7;
}

unint64_t lazy protocol witness table accessor for type Delta.CodingKeys and conformance Delta.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys;
  if (!lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta.CodingKeys and conformance Delta.CodingKeys);
  }

  return result;
}

PostSiriEngagement::Signal::CodingKeys_optional __swiftcall Signal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signal.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t Signal.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x5461746C6564;
  v2 = 0x6E6F69746361;
  v3 = 0xD000000000000012;
  if (a1 != 3)
  {
    v3 = 1635017060;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E69616D6F64;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Signal.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*a1)
    {
      v4 = 0x6E69616D6F64;
    }

    else
    {
      v4 = 0x5461746C6564;
    }

    v5 = 0xE600000000000000;
    if (*a2 <= 1u)
    {
LABEL_20:
      if (*a2)
      {
        v7 = 0x6E69616D6F64;
      }

      else
      {
        v7 = 0x5461746C6564;
      }

      v6 = 0xE600000000000000;
      if (v4 != v7)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if (v2 == 2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E6F69746361;
    if (*a2 <= 1u)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 1635017060;
    }

    if (v2 == 3)
    {
      v5 = 0x800000025ED7E610;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (*a2 <= 1u)
    {
      goto LABEL_20;
    }
  }

  if (v3 == 2)
  {
    v6 = 0xE600000000000000;
    if (v4 != 0x6E6F69746361)
    {
      goto LABEL_30;
    }
  }

  else if (v3 == 3)
  {
    v6 = 0x800000025ED7E610;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    if (v4 != 1635017060)
    {
LABEL_30:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_31;
    }
  }

LABEL_28:
  if (v5 != v6)
  {
    goto LABEL_30;
  }

  v8 = 1;
LABEL_31:

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Signal.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Signal.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Signal.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Signal.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Signal.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Signal.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x5461746C6564;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F69746361;
  v7 = 0x800000025ED7E610;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69616D6F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Signal.CodingKeys()
{
  v1 = *v0;
  v2 = 0x5461746C6564;
  v3 = 0x6E6F69746361;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Signal.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Signal.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Signal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Signal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signal.encode(to:)(void *a1)
{
  v2 = v1;
  v54 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ReliabilityCategory();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement6SignalC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement6SignalC10CodingKeysOGMR);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys();
  v12 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 120))(v51, v12);
  v47 = v51[0];
  v48 = v51[1];
  v49 = v52;
  v50 = v53;
  v46 = 0;
  lazy protocol witness table accessor for type Delta and conformance Delta();
  v13 = v45;
  v14 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v45 = v6;
  v16 = v44;
  (*(*v2 + 144))(v14);
  LOBYTE(v51[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  (*(*v2 + 168))(v17);
  LOBYTE(v51[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();

  (*(*v2 + 192))(v18);
  LOBYTE(v51[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v42 = objc_opt_self();
  (*(*v2 + 216))();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v51[0] = 0;
  v20 = [v42 dataWithJSONObject:isa options:1 error:v51];

  v21 = *&v51[0];
  if (v20)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    outlined consume of Data._Representation(v22, v24);
  }

  else
  {
    v42 = v8;
    v25 = v21;
    v26 = _convertNSErrorToError(_:)();

    v41 = v26;
    swift_willThrow();
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.engagement);
    v28 = *MEMORY[0x277D615F0];
    v29 = type metadata accessor for EncodingError();
    v30 = v45;
    (*(*(v29 - 8) + 104))(v45, v28, v29);
    v31 = v43;
    v32 = v16;
    (*(v43 + 104))(v30, *MEMORY[0x277D61650], v16);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v51[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004DLL, 0x800000025ED7F5F0, v51);
      _os_log_impl(&dword_25ECEC000, v35, v34, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v31 = v43;
      MEMORY[0x25F8CEE50](v37, -1, -1);
      v32 = v16;
      MEMORY[0x25F8CEE50](v36, -1, -1);
    }

    else
    {
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v38 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v39 = v45;
    MEMORY[0x25F8CDB30](v45, v38, v40);

    (*(v31 + 8))(v39, v32);
    v8 = v42;
  }

  LOBYTE(v51[0]) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v9 + 8))(v11, v8);
}

void *Signal.deinit()
{

  return v0;
}

uint64_t Signal.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t PSETask.siriTask.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PSETask.biomeSignals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSETask.siriTaskEngagementFeatures.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSETask.init(siriTask:biomeSignals:siriTaskEngagementFeatures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PSESignals.biomeSignals.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PSESignals.siriTaskEngagementFeatures.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t specialized Delta.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000025ED7F660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45495565636E6973 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53495565636E6973 && a2 == 0xEC00000074726174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized Signal.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signal.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Signal.CodingKeys and conformance Signal.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys;
  if (!lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signal.CodingKeys and conformance Signal.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Delta and conformance Delta()
{
  result = lazy protocol witness table cache variable for type Delta and conformance Delta;
  if (!lazy protocol witness table cache variable for type Delta and conformance Delta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Delta and conformance Delta);
  }

  return result;
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Delta(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Delta(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PSETask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PSETask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PSESignals(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PSESignals(uint64_t result, int a2, int a3)
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

void AlarmSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v145 = a2;
  v3 = type metadata accessor for ReliabilityCategory();
  v142 = *(v3 - 8);
  v143 = v3;
  MEMORY[0x28223BE20](v3);
  v146 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v144 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v135 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v135 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v135 - v19;
  v21 = MEMORY[0x25F8CE7F0](v18);
  v22 = v152;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v148, &v150);
  if (v22)
  {
    objc_autoreleasePoolPop(v21);
    return;
  }

  v139 = 0;
  v137 = v17;
  v136 = v8;
  v138 = v13;
  v140 = a1;
  objc_autoreleasePoolPop(v21);
  v141 = v150;
  v152 = [v150 intent];
  v23 = [v152 typeName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v153._countAndFlagsBits = v24;
  v153._object = v26;
  if (specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(v153) != 4)
  {
    v47 = v140;
    v48 = [v140 intentClass];
    v49 = v11;
    v50 = v5;
    v51 = v20;
    v52 = v145;
    v135 = v49;
    if (v48)
    {
      v53 = v48;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (v54 == 0xD000000000000011 && 0x800000025ED7F6B0 == v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v57 = [v141 intentResponse];
        v58 = MEMORY[0x277D84F98];
        if (v57)
        {
          v59 = v57;
          v60 = [v57 _className];
          if (v60)
          {
            v61 = v60;
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            if (v62 == 0xD000000000000019 && 0x800000025ED7F750 == v64)
            {

              v47 = v140;
            }

            else
            {
              v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v47 = v140;
              if ((v68 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            v69 = MEMORY[0x25F8CDFC0](0xD000000000000017, 0x800000025ED7F770);
            v70 = [v59 valueForKeyPath_];

            if (v70)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v148 = 0u;
              v149 = 0u;
            }

            v150 = v148;
            v151 = v149;
            if (!*(&v149 + 1))
            {

              outlined destroy of Date?(&v150, &_sypSgMd, &_sypSgMR);
              goto LABEL_49;
            }

            v74 = MEMORY[0x277D837D0];
            if (swift_dynamicCast())
            {
              v75 = specialized static Utils.normalizedAlarmIdentifier(from:)(v147, *(&v147 + 1));
              v77 = v76;

              *(&v151 + 1) = v74;
              *&v150 = v75;
              *(&v150 + 1) = v77;
              v47 = v140;
              outlined init with take of Any(&v150, &v148);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v147 = v58;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v148, 0x6564496D72616C61, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);

              v58 = v147;
              goto LABEL_49;
            }
          }

LABEL_36:
        }

LABEL_49:
        v93 = [v47 absoluteTimestamp];
        if (v93)
        {
          v94 = v93;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v95 = 0;
        }

        else
        {
          v95 = 1;
        }

        v96 = v138;
        v97 = v144;
        (*(v144 + 56))(v51, v95, 1, v50);
        v98 = *(v97 + 16);
        v98(v96, v52, v50);
        v99 = type metadata accessor for SiriUISession(0);
        v100 = v135;
        v98(v135, v52 + *(v99 + 20), v50);
        v101 = v137;
        outlined init with copy of Date?(v51, v137);
        v102 = (*(v97 + 48))(v101, 1, v50);
        if (v102 == 1)
        {
          v117 = *(v97 + 8);
          v117(v100, v50);
          v117(v96, v50);
          outlined destroy of Date?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of Date?(v101, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v115 = 0x3FF0000000000000;
          v105 = 0;
          v109 = 0.0;
          v116 = 0.0;
        }

        else
        {
          v103 = v136;
          (*(v97 + 32))(v136, v101, v50);
          Date.timeIntervalSinceReferenceDate.getter();
          v105 = v104;
          Date.timeIntervalSinceReferenceDate.getter();
          v107 = v106;
          Date.timeIntervalSinceReferenceDate.getter();
          v109 = v107 - v108;
          Date.timeIntervalSinceReferenceDate.getter();
          v111 = v110;
          Date.timeIntervalSinceReferenceDate.getter();
          v113 = v112;
          v114 = *(v97 + 8);
          v114(v103, v50);
          v114(v100, v50);
          v114(v96, v50);
          outlined destroy of Date?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v115 = 0;
          v116 = v111 - v113;
        }

        v118 = v140;
        v119 = [v140 donatedBySiri];
        *(&v151 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v150) = v119;
        outlined init with take of Any(&v150, &v148);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        *&v147 = v58;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v148, 0x42646574616E6F64, 0xED00006972695379, v120);
        v121 = v147;
        v122 = v152;
        v123 = [v152 typeName];
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        *(&v151 + 1) = MEMORY[0x277D837D0];
        *&v150 = v124;
        *(&v150 + 1) = v126;
        outlined init with take of Any(&v150, &v148);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        *&v147 = v121;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v148, 0x7954746E65746E69, 0xEE00656D614E6570, v127);
        v128 = v147;
        v129 = [v118 intentClass];
        if (v129)
        {
          v130 = v129;
          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v133 = v132;
        }

        else
        {

          v131 = 0;
          v133 = 0xE000000000000000;
        }

        type metadata accessor for Signal();
        v134 = swift_allocObject();
        *(v134 + 16) = v105;
        *(v134 + 24) = v109;
        *(v134 + 32) = v116;
        *(v134 + 40) = 0;
        *(v134 + 48) = v115;
        *(v134 + 56) = v102 != 1;
        *(v134 + 64) = 0x6D72616C41;
        *(v134 + 72) = 0xE500000000000000;
        *(v134 + 80) = v131;
        *(v134 + 88) = v133;
        *(v134 + 96) = 1;
        *(v134 + 104) = v128;
        return;
      }

      if (v54 == 0xD000000000000013 && 0x800000025ED7F6D0 == v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v65 = MEMORY[0x25F8CDFC0](0xD000000000000010, 0x800000025ED7F730);
        v66 = [v152 valueForKeyPath_];
        goto LABEL_22;
      }

      if (v54 == 0xD000000000000013 && 0x800000025ED7F6F0 == v56)
      {

LABEL_42:
        v65 = MEMORY[0x25F8CDFC0](0xD000000000000012, 0x800000025ED7F710);
        v66 = [v152 valueForKeyPath_];
LABEL_22:
        v67 = v66;

        if (v67)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v148 = 0u;
          v149 = 0u;
        }

        v150 = v148;
        v151 = v149;
        if (*(&v149 + 1))
        {
          v71 = MEMORY[0x277D837D0];
          if (swift_dynamicCast())
          {
            *(&v151 + 1) = v71;
            v150 = v147;
            outlined init with take of Any(&v150, &v148);
            v72 = MEMORY[0x277D84F98];
            v73 = swift_isUniquelyReferenced_nonNull_native();
            *&v147 = v72;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v148, 0x6564496D72616C61, 0xEF7265696669746ELL, v73);
            v58 = v147;
            goto LABEL_49;
          }
        }

        else
        {
          outlined destroy of Date?(&v150, &_sypSgMd, &_sypSgMR);
        }

LABEL_48:
        v58 = MEMORY[0x277D84F98];
        goto LABEL_49;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {
        goto LABEL_42;
      }
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.engagement);
    v81 = v152;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *&v150 = swift_slowAlloc();
      v85 = v150;
      *v84 = 136315138;
      v86 = [v81 _className];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = v87;
      v47 = v140;
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, &v150);

      *(v84 + 4) = v91;
      _os_log_impl(&dword_25ECEC000, v82, v83, "Skip the alarmID for other intents %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      v92 = v85;
      v52 = v145;
      MEMORY[0x25F8CEE50](v92, -1, -1);
      MEMORY[0x25F8CEE50](v84, -1, -1);
    }

    goto LABEL_48;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.engagement);
  *&v150 = 0;
  *(&v150 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
  v28 = v152;
  v29 = [v152 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  MEMORY[0x25F8CE090](v30, v32);

  MEMORY[0x25F8CE090](0xD000000000000024, 0x800000025ED7F680);
  v33 = v150;
  v34 = *MEMORY[0x277D616E0];
  v35 = type metadata accessor for AppIntentEventDataIssues();
  v36 = v146;
  (*(*(v35 - 8) + 104))(v146, v34, v35);
  v38 = v142;
  v37 = v143;
  (*(v142 + 104))(v36, *MEMORY[0x277D61678], v143);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v150 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, *(&v33 + 1), &v150);
    _os_log_impl(&dword_25ECEC000, v39, v40, "%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v43 = v42;
    v28 = v152;
    MEMORY[0x25F8CEE50](v43, -1, -1);
    v44 = v41;
    v36 = v146;
    MEMORY[0x25F8CEE50](v44, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v45 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v36, v45, v46);

  (*(v38 + 8))(v36, v37);
}

void AlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v92 = a2;
  v69 = a3;
  v94 = type metadata accessor for ReliabilityCategory();
  v6 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v65 - v9;
  v11 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v72 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v71 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v70 = v65 - v16;
  v100 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_3:
    v76 = v14;
    v74 = v10;
    v18 = 0;
    v19 = *v4;
    v91 = a1 & 0xC000000000000001;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = *(v19 + 88);
    v89 = v19 + 88;
    v79 = a1 + 32;
    v87 = "createdAlarm.identifier";
    v86 = *MEMORY[0x277D615C0];
    v85 = v6 + 104;
    v84 = v6 + 8;
    v83 = *MEMORY[0x277D616A8];
    v73 = v72 + 56;
    v67 = (v72 + 48);
    v68 = (v72 + 32);
    v66 = (v72 + 16);
    v65[1] = v72 + 8;
    *&v15 = 136315138;
    v78 = v15;
    v75 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v77 = v4;
    v82 = a1;
    v88 = v17;
    while (1)
    {
      if (v91)
      {
        v14 = MEMORY[0x25F8CE460](v18, a1);
      }

      else
      {
        if (v18 >= *(v80 + 16))
        {
          goto LABEL_56;
        }

        v14 = *(v79 + 8 * v18);
      }

      v6 = v14;
      if (__OFADD__(v18++, 1))
      {
        goto LABEL_55;
      }

      v10 = v4;
      v14 = v90(v14, v92);
      v21 = v14;
      if (v14)
      {
        break;
      }

LABEL_4:
      if (v18 == v17)
      {
        goto LABEL_62;
      }
    }

    v81 = v6;
    if (v95 >> 62)
    {
      if (v95 < 0)
      {
        v51 = v95;
      }

      else
      {
        v51 = v95 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = MEMORY[0x25F8CE500](v51);
      v22 = v14;
      if (v14)
      {
LABEL_13:
        v23 = 0;
        a1 = v95 & 0xC000000000000001;
        v4 = (v95 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (a1)
          {
            v14 = MEMORY[0x25F8CE460](v23, v95);
            v6 = v14;
            v24 = (v23 + 1);
            if (__OFADD__(v23, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v23 >= v4[2])
            {
              goto LABEL_54;
            }

            v6 = *(v95 + 8 * v23 + 32);

            v24 = (v23 + 1);
            if (__OFADD__(v23, 1))
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              v61 = v14;
              if ((a1 & 0x8000000000000000) != 0)
              {
                v62 = a1;
              }

              else
              {
                v62 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v17 = MEMORY[0x25F8CE500](v62);
              v14 = v61;
              if (!v17)
              {
                goto LABEL_61;
              }

              goto LABEL_3;
            }
          }

          v25 = (*(*v21 + 120))(&v98);
          v26 = *&v98._countAndFlagsBits;
          v10 = v6;
          (*(*v6 + 120))(&v96, v25);
          if (vabdd_f64(v26, *&v96) < 2.0)
          {
            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            __swift_project_value_buffer(v27, static Logger.engagement);
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();
            v30 = os_log_type_enabled(v28, v29);
            a1 = v82;
            if (v30)
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_25ECEC000, v28, v29, "duped won't be added to PSE signals, we update the original one.", v31, 2u);
              MEMORY[0x25F8CEE50](v31, -1, -1);
            }

            (*(*v6 + 168))();
            v32 = String.lowercased()();

            v98 = v32;
            v96 = 0x656C67676F74;
            v97 = 0xE600000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v33 = StringProtocol.contains<A>(_:)();

            if (v33)
            {
              v35 = *(*v21 + 168);
              v35(v34);
              v36 = String.lowercased()();

              v98 = v36;
              v96 = 0x657461657263;
              v97 = 0xE600000000000000;
              v37 = StringProtocol.contains<A>(_:)();
              a1 = v82;

              if (v37)
              {
                v38 = (v35)(v34);
                v39 = (*(*v6 + 176))(v38);
                v40 = (*(*v21 + 216))(v39);
                v10 = v6;
                (*(*v6 + 224))(v40);

                goto LABEL_34;
              }
            }

            v10 = (*(*v6 + 216))(v34);
            if (*(v10 + 2) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v42 & 1) != 0))
            {
              outlined init with copy of Any(*(v10 + 7) + 32 * v41, &v98);

              v14 = outlined destroy of Date?(&v98, &_sypSgMd, &_sypSgMR);
LABEL_34:
              v4 = v77;
            }

            else
            {

              v98 = 0;
              v99 = 0u;
              v43 = outlined destroy of Date?(&v98, &_sypSgMd, &_sypSgMR);
              v44 = *(*v21 + 216);
              v10 = v44(v43);
              v4 = v77;
              if (*(v10 + 2) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v46 & 1) != 0))
              {
                outlined init with copy of Any(*(v10 + 7) + 32 * v45, &v98);

                v47 = outlined destroy of Date?(&v98, &_sypSgMd, &_sypSgMR);
                v48 = (*(*v21 + 168))(v47);
                v49 = (*(*v6 + 176))(v48);
                v50 = v44(v49);
                v10 = v6;
                (*(*v6 + 224))(v50);
              }

              else
              {

                v98 = 0;
                v99 = 0u;
                v14 = outlined destroy of Date?(&v98, &_sypSgMd, &_sypSgMR);
              }
            }

            v17 = v88;
            goto LABEL_4;
          }

          ++v23;
        }

        while (v24 != v22);
      }
    }

    else
    {
      v22 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_13;
      }
    }

    MEMORY[0x25F8CE160](v52);
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v95 = v100;
    v4 = v77;
    v6 = v74;
    v53 = v81;
    (*(*v77 + 80))(v81);
    a1 = v82;
    v17 = v88;
    v10 = v53;
    v54 = v76;
    if ((*v67)(v6, 1, v76) == 1)
    {

      v14 = outlined destroy of Date?(v6, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
    }

    else
    {
      v55 = v70;
      v65[0] = *v68;
      (v65[0])(v70, v6, v54);
      (*v66)(v71, v55, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
      }

      v57 = v75[2];
      v56 = v75[3];
      v6 = (v57 + 1);
      if (v57 >= v56 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v75);
      }

      v58 = v72;
      v59 = v76;
      (*(v72 + 8))(v70, v76);
      v60 = v75;
      v75[2] = v6;
      v14 = (v65[0])(v60 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v71, v59);
    }

    goto LABEL_4;
  }

LABEL_61:
  v75 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
LABEL_62:
  v63 = v69;
  v64 = v75;
  *v69 = v95;
  v63[1] = v64;
}

uint64_t PostSiriEngagementCollectionResult.lastSessionEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PostSiriEngagementCollectionResult.lastSessionEndDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PostSiriEngagementCollectionResult.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for PostSiriEngagementCollectionResult(0);
  return Date.init()();
}

uint64_t PostSiriEngagementCollectionResult.init(status:numCollectedSiriSessions:lastSessionEndDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for PostSiriEngagementCollectionResult(0) + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t PostSiriEngagementCollection.__allocating_init(identifier:startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = v12 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v12 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  outlined assign with take of Date?(a3, v12 + v13);
  swift_endAccess();
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  *v16 = a6;
  *(v16 + 8) = a7 & 1;
  return v12;
}

uint64_t PostSiriEngagementCollection.init(identifier:startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v13 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v7 + v13, 1, 1, v14);
  v15 = v7 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v7 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  outlined assign with take of Date?(a3, v7 + v13);
  swift_endAccess();
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  *v16 = a6;
  *(v16 + 8) = a7 & 1;
  return v7;
}

uint64_t PostSiriEngagementCollection.__allocating_init(startDate:timeWindowInSeconds:numSiriUISessions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = (*(v5 + 208))(0, 0xE000000000000000, v13, a2, a3 & 1, a4, a5 & 1);
  (*(v15 + 8))(a1, v14);
  return v16;
}

uint64_t PostSiriEngagementCollection.perform(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v13 = *(v3 + 24);
  type metadata accessor for PostSiriEngagementMetricsCollector();
  swift_allocObject();

  v14 = PostSiriEngagementMetricsCollector.init(identifier:)(v12, v13);
  v15 = OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate;
  swift_beginAccess();
  outlined init with copy of Date?(v3 + v15, v7);
  v16 = *(v9 + 48);
  v17 = v16(v7, 1, v8);
  v27 = v8;
  if (v17 == 1)
  {

    UserDefaultsDomainProvider.lastCollectionDate.getter(v11);

    if (v16(v7, 1, v8) != 1)
    {
      outlined destroy of Date?(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v18 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds);
  v19 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_timeWindowInSeconds + 8);
  v20 = v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions;
  v21 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_numSiriUISessions);
  v22 = *(v20 + 8);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  *(v23 + 24) = a2;
  v24 = *(*v14 + 248);

  v24(v11, v18, v19, v21, v22, partial apply for closure #1 in PostSiriEngagementCollection.perform(completion:), v23);

  return (*(v9 + 8))(v11, v27);
}

uint64_t PostSiriEngagementCollection.deinit()
{

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate);
  return v0;
}

uint64_t PostSiriEngagementCollection.__deallocating_deinit()
{

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement28PostSiriEngagementCollection_startDate);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for PostSiriEngagementCollectionResult(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PostSiriEngagementCollection(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t TaskSuccess.toProto()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoSiriTaskSuccessType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279A51710 + a1);

  return v5(a2, v6, v4);
}

uint64_t TaskCompletionType.toProto()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoSiriTaskCompletionType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279A516E8 + a1);

  return v5(a2, v6, v4);
}

uint64_t TaskInteractionType.toProto()(unsigned int a1)
{
  ProtoSiriTaskInteractionType.init()();
  ProtoSiriTaskInteractionType.includesPrompt.setter();
  ProtoSiriTaskInteractionType.includesConfirm.setter();
  ProtoSiriTaskInteractionType.includesDisambiguate.setter();
  return ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter();
}

uint64_t SiriExecutionTask.toProto()()
{
  v1 = type metadata accessor for Date();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v28 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ProtoSiriTaskInteractionType();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for ProtoSiriTaskSuccessType();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProtoSiriTaskCompletionType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = ProtoSiriTaskEvaluationSummary.init()();
  (*(*v0 + 208))(v10);
  v11 = ProtoSiriTaskEvaluationSummary.requestIds.setter();
  v12 = *(*v0 + 328);
  v13 = v12(v11);
  v14 = (*(*v13 + 152))(v13);

  (*(v7 + 104))(v9, **(&unk_279A516E8 + v14), v6);
  v15 = ProtoSiriTaskEvaluationSummary.taskCompletion.setter();
  v16 = v12(v15);
  v17 = (*(*v16 + 104))(v16);

  (*(v26 + 104))(v25, **(&unk_279A51710 + v17), v27);
  v18 = ProtoSiriTaskEvaluationSummary.taskSuccess.setter();
  v19 = v12(v18);
  (*(*v19 + 128))(v19);

  ProtoSiriTaskInteractionType.init()();
  ProtoSiriTaskInteractionType.includesPrompt.setter();
  ProtoSiriTaskInteractionType.includesConfirm.setter();
  ProtoSiriTaskInteractionType.includesDisambiguate.setter();
  ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter();
  ProtoSiriTaskEvaluationSummary.interactionType.setter();
  type metadata accessor for SiriTaskEngagementUtils();
  v20 = v28;
  (*(*v0 + 352))();
  dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
  v21 = v30;
  v22 = *(v29 + 8);
  v22(v20, v30);
  v23 = ProtoSiriTaskEvaluationSummary.startTimestampMs.setter();
  (*(*v0 + 376))(v23);
  dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
  v22(v20, v21);
  return ProtoSiriTaskEvaluationSummary.endTimestampMs.setter();
}

uint64_t static EngagementSignalEnrichmentUtils.getTaskCompletionType(executionSequence:)(uint64_t a1)
{
  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 2;
  }

  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 3;
  }

  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    return 4;
  }

  return 1;
}

uint64_t static EngagementSignalEnrichmentUtils.getTaskInteractionType(executionSequence:)(uint64_t a1)
{
  v2 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  v3 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  v4 = specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
  if (specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(a1))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 0xFFFFFFFE | v2 | v6 | v5;
}

BOOL specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(uint64_t a1)
{
  return specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v14;
    v4 = a1 + 40;
    do
    {
      String.lowercased()();
      String.lowercased()();
      lazy protocol witness table accessor for type String and conformance String();
      v5 = StringProtocol.contains<A>(_:)();

      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v14 + 16) = v8;
      *(v14 + v7 + 32) = v5 & 1;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
  }

  v9 = (v3 + 32);
  do
  {
    v10 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v12 = *v9++;
  }

  while ((v12 & 1) == 0);

  return v10 != 0;
}

BOOL specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v14;
    v4 = a1 + 40;
    do
    {
      String.lowercased()();
      String.lowercased()();
      lazy protocol witness table accessor for type String and conformance String();
      v5 = StringProtocol.contains<A>(_:)();

      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v14 + 16) = v8;
      *(v14 + v7 + 32) = v5 & 1;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
  }

  v9 = (v3 + 32);
  do
  {
    v10 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v12 = *v9++;
  }

  while ((v12 & 1) == 0);

  return v10 != 0;
}

uint64_t PostSiriEngagementMetricsCollector.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PostSiriEngagementMetricsCollector.init(identifier:)(a1, a2);
  return v4;
}

uint64_t PostSiriEngagementMetricsCollector.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PostSiriEngagementMetricsCollector.init(parameters:)(a1);
  return v2;
}

uint64_t PostSiriEngagementMetricsCollector.init(parameters:)(uint64_t a1)
{

  type metadata accessor for PSEBiomeDonator();
  v2 = swift_allocObject();
  v3 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v4 = [v3 PostSiriEngagement];
  swift_unknownObjectRelease();
  v5 = [v4 source];

  *(v2 + 16) = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0xD000000000000022;
  *(v1 + 32) = 0x800000025ED7C740;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  type metadata accessor for UserDefaultsDomainProvider();
  v6 = swift_allocObject();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = MEMORY[0x25F8CDFC0](0xD000000000000021, 0x800000025ED7E7F0);
  v9 = [v7 initWithSuiteName_];

  v6[2] = v9;
  v6[3] = 0xD000000000000022;
  v6[4] = 0x800000025ED7C740;
  v6[5] = 0xD000000000000033;
  v6[6] = 0x800000025ED7F880;
  *(v1 + 48) = v6;
  return v1;
}

uint64_t PostSiriEngagementMetricsCollector.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PSEBiomeDonator();
  v6 = swift_allocObject();
  v7 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v8 = [v7 PostSiriEngagement];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  *(v6 + 16) = v9;
  *(v3 + 40) = 257;
  v10 = (v3 + 40);
  *(v3 + 42) = 1;
  *(v3 + 16) = v6;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  type metadata accessor for UserDefaultsDomainProvider();
  v11 = swift_allocObject();
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v13 = MEMORY[0x25F8CDFC0](0xD000000000000021, 0x800000025ED7E7F0);
  v14 = [v12 initWithSuiteName_];

  v11[2] = v14;
  v11[3] = a1;
  v11[4] = a2;
  swift_bridgeObjectRetain_n();
  MEMORY[0x25F8CE090](0xD000000000000011, 0x800000025ED7F8C0);
  v11[5] = a1;
  v11[6] = a2;
  *(v3 + 48) = v11;
  if (a1 == 0xD000000000000022 && 0x800000025ED7C740 == a2)
  {
    v15 = 1;
    swift_beginAccess();
    *v10 = 1;
    swift_beginAccess();
    *(v3 + 41) = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_beginAccess();
    *v10 = v16 & 1;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_beginAccess();
    *(v3 + 41) = v17 & 1;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_beginAccess();
  *(v3 + 42) = v15 & 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  return v3;
}

uint64_t PostSiriEngagementMetricsCollector.collect(callback:)(void (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.engagement);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25ECEC000, v14, v15, "Starting activity collector", v16, 2u);
    MEMORY[0x25F8CEE50](v16, -1, -1);
  }

  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = 0x6E61747369737361;
  qword_280FEE450 = 0xEA00000000006474;

  UserDefaultsDomainProvider.lastCollectionDate.getter(v12);
  (*(v10 + 56))(v8, 1, 1, v9);
  v17 = (*(*v3 + 288))(v12, v8, 0, 1);
  outlined destroy of Date?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  specialized PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v17, v3, v17, v3, a1, a2);
  swift_bridgeObjectRelease_n();

  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in PostSiriEngagementMetricsCollector.collect(callback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.engagement);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(a1 + 16);

    _os_log_impl(&dword_25ECEC000, v9, v10, "Successfully completed collection of %ld activities.", v11, 0xCu);
    MEMORY[0x25F8CEE50](v11, -1, -1);
  }

  else
  {
  }

  Date.init()();
  UserDefaultsDomainProvider.lastCollectionDate.setter(v7);
  return a3(0);
}

uint64_t PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, void (*a6)(_BYTE *), uint64_t a7)
{
  v8 = v7;
  v93 = a6;
  v94 = a7;
  v101 = a5;
  v100 = a4;
  LODWORD(v96) = a3;
  v89 = a2;
  v84 = type metadata accessor for PostSiriEngagementCollectionResult(0);
  MEMORY[0x28223BE20](v84);
  v85 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SiriUISession(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v79[-v19];
  v90 = v21;
  MEMORY[0x28223BE20](v18);
  v92 = &v79[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v88 = &v79[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v105 = &v79[-v26];
  v27 = type metadata accessor for Date();
  v98 = *(v27 - 8);
  v28 = v98;
  v29 = MEMORY[0x28223BE20](v27);
  v83 = &v79[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v95 = &v79[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v104 = &v79[-v34];
  MEMORY[0x28223BE20](v33);
  v36 = &v79[-v35];
  if (one-time initialization token for engagement != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v37 = type metadata accessor for Logger();
    v38 = __swift_project_value_buffer(v37, static Logger.engagement);
    v39 = *(v28 + 16);
    v99 = a1;
    v87 = v28 + 16;
    v86 = v39;
    v39(v36, a1, v27);

    v82 = v38;
    v40 = v28;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    v43 = os_log_type_enabled(v41, v42);
    v102 = v27;
    v103 = v8;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v106[0] = v81;
      *v44 = 136315394;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v80 = v42;
      v45 = v40;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v97 = *(v45 + 8);
      v97(v36, v102);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v106);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v50 = v103[3];
      v51 = v103[4];

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v106);
      v27 = v102;

      *(v44 + 14) = v52;
      _os_log_impl(&dword_25ECEC000, v41, v80, "Starting collection with startDate: %s with identifier: %s", v44, 0x16u);
      v53 = v81;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v53, -1, -1);
      v54 = v44;
      v8 = v103;
      MEMORY[0x25F8CEE50](v54, -1, -1);

      v55 = v45;
    }

    else
    {

      v97 = *(v40 + 8);
      v97(v36, v27);
      v55 = v40;
    }

    swift_beginAccess();
    static PSEStruct.pseTriggerOrigin = 0x636E657265666E69;
    qword_280FEE450 = 0xEA00000000006465;

    v36 = v95;
    v81 = v8[6];
    UserDefaultsDomainProvider.lastCollectionDate.getter(v95);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v56 = v99;
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      (*(v55 + 32))(v104, v36, v27);
    }

    else
    {
      v97(v36, v27);
      v86(v104, v56, v27);
    }

    v59 = *(v55 + 56);
    v58 = v55 + 56;
    v57 = v59;
    v59(v105, 1, 1, v27);
    if ((v96 & 1) == 0)
    {
      v36 = v105;
      v96 = v58;
      v60 = v88;
      Date.addingTimeInterval(_:)();
      outlined destroy of Date?(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v57(v60, 0, 1, v27);
      outlined init with take of Date?(v60, v36);
    }

    v61 = (*(*v8 + 288))(v104, v105, v100, v101 & 1);
    v27 = v61;
    v8 = *(v61 + 16);
    if (!v8)
    {
      break;
    }

    v28 = *(v12 + 80);
    a1 = v61 + ((v28 + 32) & ~v28);
    outlined init with copy of SiriUISession(a1, v20);
    if (v8 == 1)
    {
LABEL_12:
      v62 = v92;
      outlined init with take of SiriUISession(v20, v92);
      v63 = v91;
      outlined init with copy of SiriUISession(v62, v91);
      v64 = (v28 + 48) & ~v28;
      v65 = (v90 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v67 = v100;
      *(v66 + 16) = v27;
      *(v66 + 24) = v67;
      *(v66 + 32) = v101 & 1;
      *(v66 + 40) = v103;
      outlined init with take of SiriUISession(v63, v66 + v64);
      v68 = (v66 + v65);
      v69 = v94;
      *v68 = v93;
      v68[1] = v69;

      PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v27, partial apply for closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:), v66);

      v70 = type metadata accessor for SiriUISession;
      v71 = v62;
      goto LABEL_16;
    }

    v78 = 1;
    while (v78 < *(v27 + 16))
    {
      outlined init with copy of SiriUISession(a1 + *(v12 + 72) * v78, v17);
      if (static Date.< infix(_:_:)())
      {
        outlined destroy of SiriUISession(v20, type metadata accessor for SiriUISession);
        outlined init with take of SiriUISession(v17, v20);
      }

      else
      {
        outlined destroy of SiriUISession(v17, type metadata accessor for SiriUISession);
      }

      if (v8 == ++v78)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_25ECEC000, v72, v73, "There are no Siri UI events to submit.", v74, 2u);
    MEMORY[0x25F8CEE50](v74, -1, -1);
  }

  v75 = v83;
  Date.init()();
  UserDefaultsDomainProvider.lastCollectionDate.setter(v75);
  v76 = v85;
  UserDefaultsDomainProvider.lastCollectionDate.getter(&v85[*(v84 + 24)]);
  *v76 = 1;
  *(v76 + 1) = 0;
  v93(v76);
  v70 = type metadata accessor for PostSiriEngagementCollectionResult;
  v71 = v76;
LABEL_16:
  outlined destroy of SiriUISession(v71, v70);
  outlined destroy of Date?(v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v97)(v104, v102);
}

uint64_t closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v26 = a5;
  v27 = a3;
  v9 = type metadata accessor for PostSiriEngagementCollectionResult(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.engagement);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v9;
    v19 = a6;
    v20 = v18;
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&dword_25ECEC000, v16, v17, "Successfully completed collection of %ld activities.", v20, 0xCu);
    v21 = v20;
    a6 = v19;
    v9 = v25;
    MEMORY[0x25F8CEE50](v21, -1, -1);

    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v27)
    {
LABEL_9:
      type metadata accessor for SiriUISession(0);
      Date.addingTimeInterval(_:)();
      goto LABEL_10;
    }
  }

  if (*(a1 + 16) >= a2)
  {
    goto LABEL_9;
  }

  Date.init()();
LABEL_10:
  UserDefaultsDomainProvider.lastCollectionDate.setter(v14);
  v22 = *(a1 + 16);
  UserDefaultsDomainProvider.lastCollectionDate.getter(&v11[*(v9 + 24)]);
  *v11 = 1;
  *(v11 + 1) = v22;
  a6(v11);
  return outlined destroy of SiriUISession(v11, type metadata accessor for PostSiriEngagementCollectionResult);
}

uint64_t PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v17 = type metadata accessor for SiriUISession(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v88 = *(a1 + 16);
  if (v88)
  {
    v72 = a2;
    v73 = v7;
    v74 = v6;
    v75 = a3;
    v92 = MEMORY[0x277D84F90];
    v86 = (&v71 - v26);
    v87 = v25;
    specialized ContiguousArray.reserveCapacity(_:)();
    v27 = 0;
    v28 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v29 = *(v18 + 72);
    v84 = v20;
    v85 = v29;
    v30 = (v18 + 56);
    do
    {
      v32 = v86;
      v31 = v87;
      v33 = *(v87 + 48);
      v34 = (&v27->isa + 1);
      outlined init with copy of SiriUISession(v28, v86 + v33);
      *v24 = v27;
      v35 = *(v31 + 48);
      outlined init with take of SiriUISession(v32 + v33, v24 + v35);
      v36 = v84;
      outlined init with copy of SiriUISession(v24 + v35, v84);
      type metadata accessor for UISessionSignalBuilder(0);
      v37 = swift_allocObject();
      v38 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
      v39 = *v30;
      (*v30)(v37 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, 1, 1, v17);
      *(v37 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
      v40 = v37 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
      *(v40 + 112) = 0;
      *(v40 + 80) = 0u;
      *(v40 + 96) = 0u;
      *(v40 + 48) = 0u;
      *(v40 + 64) = 0u;
      *(v40 + 16) = 0u;
      *(v40 + 32) = 0u;
      *v40 = 0u;
      outlined init with take of SiriUISession(v36, v16);
      v39(v16, 0, 1, v17);
      swift_beginAccess();
      outlined assign with take of SiriUISession?(v16, v37 + v38);
      swift_endAccess();
      *(v37 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v89;

      outlined destroy of Date?(v24, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v28 += v85;
      v27 = v34;
    }

    while (v88 != v34);
    v86 = v30;
    v84 = v17;
    v41 = v92;
    v92 = 0;
    v88 = dispatch_group_create();
    v42 = (v41 >> 62) & 1;
    if (v41 < 0)
    {
      LODWORD(v42) = 1;
    }

    LODWORD(v85) = v42;
    if (v42 == 1)
    {
      goto LABEL_37;
    }

    v43 = *(v41 + 16);
LABEL_8:
    v44 = v89;
    v45 = MEMORY[0x277D84F90];
    v46 = v83;
    if (v43)
    {
      v47 = 0;
      v87 = v41 & 0xC000000000000001;
      v83 = (v41 + 32);
      do
      {
        if (v87)
        {
          v45 = MEMORY[0x25F8CE460](v47, v41);
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v47 >= *(v41 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v43 = MEMORY[0x25F8CE500](v41);
            goto LABEL_8;
          }

          v45 = *(v41 + 8 * v47 + 32);

          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_27;
          }
        }

        v50 = MEMORY[0x25F8CE7F0]();
        dispatch_group_enter(v88);
        if (v85)
        {
          v51 = MEMORY[0x25F8CE500](v41);
        }

        else
        {
          v51 = *(v41 + 16);
        }

        if (v49 >= v51)
        {
          v39(v46, 1, 1, v84);
        }

        else
        {
          if (v87)
          {
            v52 = MEMORY[0x25F8CE460](v49, v41);
          }

          else
          {
            if (v49 < 0)
            {
              goto LABEL_35;
            }

            if (v49 >= *(v41 + 16))
            {
              goto LABEL_36;
            }

            v52 = *&v83[8 * v49];
          }

          (*(*v52 + 112))();

          v44 = v89;
        }

        v48 = v88;
        specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(v45, v46, v44, &v92, v48);

        outlined destroy of Date?(v46, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
        objc_autoreleasePoolPop(v50);

        ++v47;
        v45 = MEMORY[0x277D84F90];
      }

      while (v49 != v43);
    }

    type metadata accessor for OS_dispatch_queue();
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, *MEMORY[0x277D851C8], v78);
    v56 = static OS_dispatch_queue.global(qos:)();
    (*(v54 + 8))(v55, v53);
    v57 = swift_allocObject();
    v58 = v75;
    *(v57 + 16) = v72;
    *(v57 + 24) = v58;
    aBlock[4] = partial apply for closure #3 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:);
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v59 = _Block_copy(aBlock);

    v60 = v79;
    static DispatchQoS.unspecified.getter();
    v90 = v45;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v61 = v81;
    v62 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v63 = v88;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v59);

    (*(v73 + 8))(v61, v62);
    (*(v80 + 8))(v60, v82);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.engagement);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = a2;
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_25ECEC000, v66, v67, "There are no Siri UI events in Biome stream to submit.", v69, 2u);
      v70 = v69;
      a2 = v68;
      MEMORY[0x25F8CEE50](v70, -1, -1);
    }

    return a2();
  }
}

void specialized closure #1 in closure #2 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    swift_beginAccess();
    v9 = *a3;
    v10 = *(*a2 + 264);

    v10(a1, v9);

    v11 = *(a1 + 24 * v5 + 8);
    swift_beginAccess();
    *a3 = v11;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25ECEC000, v13, v14, "There are no SiriExecution events in SiriExecution Biome stream to submit.", v15, 2u);
      MEMORY[0x25F8CEE50](v15, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t PostSiriEngagementMetricsCollector.calculateSuccessAndSubmit(allPseTasks:previousTask:)(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v6 = result;
    type metadata accessor for TaskSuccessCalculator();
    v26 = (*v4)[27];
    v25 = (*v4)[24];
    v24 = (*v4)[21];

    v7 = 0;
    v8 = (v6 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v12 = static TaskSuccessCalculator.calculateTaskSuccess(signals:task:)(v10, v9);
      if (v26(v12))
      {

        specialized static SiriTaskEngagementFeatureDonator.donate(siriTask:previousTask:taskFeatureSets:)(v13, a2, v11);
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.engagement);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_25ECEC000, v15, v16, "Successfully wrote task engagement features to featurestore", v17, 2u);
          MEMORY[0x25F8CEE50](v17, -1, -1);
        }

        a2 = v9;
      }

      v18 = v25();
      if (v18)
      {
        v19 = *v4[2];
        v20 = v4;
        v21 = v7;
        v22 = a2;
        v23 = *(v19 + 96);

        v23(v10, v9);
        a2 = v22;
        v7 = v21;
        v4 = v20;
      }

      if (v24(v18))
      {
        specialized PSESELFEmitter.emitPSESELFInstrumentation(signals:task:)(v10, v9);
      }

      swift_bridgeObjectRelease_n();

      v8 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a2;
  v7 = *(*a1 + 224);

  v7(v8, partial apply for closure #1 in closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:), v6);
}

uint64_t closure #1 in closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = a1[1];
    v5 = a1[2];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v7 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = v6;
  *(v11 + 6) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t PostSiriEngagementMetricsCollector.signalFactoryForIntentEvents(group:taskName:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for AppIntentSignalFactory();
  v7 = swift_allocObject();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_34:

    return 0;
  }

  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v30 = a1;
  }

  v31 = v7;
  v32 = MEMORY[0x25F8CE500](v30);
  v7 = v31;
  if (!v32)
  {
    goto LABEL_34;
  }

LABEL_3:
  v37 = v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8CE460](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v37;
    }

    v8 = *(a1 + 32);
  }

  v9 = v8;
  v10 = MEMORY[0x25F8CE7F0]();
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(v9, v35, &v36._countAndFlagsBits);
  if (v3)
  {
    objc_autoreleasePoolPop(v10);
  }

  objc_autoreleasePoolPop(v10);
  countAndFlagsBits = v36._countAndFlagsBits;
  v13 = [v36._countAndFlagsBits intent];
  v14 = [v13 typeName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v38._countAndFlagsBits = v15;
  v38._object = v17;
  if (specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(v38) != 4)
  {

    type metadata accessor for AlarmSignalFactory();
    return swift_allocObject();
  }

  v34 = v13;
  v18 = String.lowercased()();
  v36 = v18;
  v35[0] = 0xD000000000000011;
  v35[1] = 0x800000025ED7F8E0;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for MessagesIntentSignalFactory();
    return swift_allocObject();
  }

  v36 = v18;
  v35[0] = 0x6C61637472617473;
  v35[1] = 0xEF746E65746E696CLL;
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v36 = v18, v35[0] = 0xD000000000000014, v35[1] = 0x800000025ED7F900, (StringProtocol.contains<A>(_:)()) || (v36 = v18, v35[0] = 0xD000000000000014, v35[1] = 0x800000025ED7F920, (StringProtocol.contains<A>(_:)()))
  {

    type metadata accessor for CallsIntentSignalFactory();
LABEL_17:
    result = swift_allocObject();
    *(result + 16) = 0;
    return result;
  }

  v36 = v18;
  v35[0] = 0xD000000000000010;
  v35[1] = 0x800000025ED7F3E0;
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for AnswerCallsIntentSignalFactory();
    goto LABEL_17;
  }

  v36 = v18;
  v35[0] = 1936744813;
  v35[1] = 0xE400000000000000;
  if (StringProtocol.contains<A>(_:)())
  {

    type metadata accessor for MapsIntentSignalFactory();
    v19 = swift_allocObject();

    *(v19 + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
    return v19;
  }

  v36 = v18;
  strcpy(v35, "genericintent");
  HIWORD(v35[1]) = -4864;
  v20 = StringProtocol.contains<A>(_:)();

  if (v20)
  {
    v21 = [v13 domain];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0x7261646E656C6143 && v24 == 0xE800000000000000)
    {

LABEL_36:

      type metadata accessor for CalendarEventSignalFactory();
      return swift_allocObject();
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_36;
    }

    return v37;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.engagement);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36._countAndFlagsBits = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v36._countAndFlagsBits);
    _os_log_impl(&dword_25ECEC000, v26, v27, "Intent object attached to the task with taskName (%s).", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F8CEE50](v29, -1, -1);
    MEMORY[0x25F8CEE50](v28, -1, -1);
  }

  return v37;
}

uint64_t PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v53 = a4;
  v50 = a3;
  v7 = type metadata accessor for ReliabilityCategory();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(a1, a2);
  v10 = v9;
  v59.isa = MEMORY[0x277D84F90];
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  v12 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v21))
  {
    v51 = v12;
    v52 = v7;
    v7 = 0;
    v4 = v10 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v14 = MEMORY[0x25F8CE460](v7, v10);
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v14 = *(v10 + 8 * v7 + 32);
      }

      v15 = v14;
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if ([v14 starting])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *(v59.isa + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
    }

    while (v16 != i);
    v17 = 0;
    isa = v59.isa;
    v59.isa = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4)
      {
        v18 = MEMORY[0x25F8CE460](v17, v10);
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17 >= v11)
        {
          goto LABEL_27;
        }

        v18 = *(v10 + 8 * v17 + 32);
      }

      v19 = v18;
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 starting])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *(v59.isa + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v17;
      if (v7 == i)
      {
        v20 = v59.isa;
        v12 = v51;
        v7 = v52;
        goto LABEL_33;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v10 < 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }
  }

  v20 = MEMORY[0x277D84F90];
  isa = MEMORY[0x277D84F90];
LABEL_33:
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.engagement);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    if (v12)
    {
      if (v10 < 0)
      {
        v30 = v10;
      }

      else
      {
        v30 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = MEMORY[0x25F8CE500](v30);
    }

    else
    {
      v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 4) = v26;

    _os_log_impl(&dword_25ECEC000, v24, v25, "UISessions Count = %ld", v4, 0xCu);
    MEMORY[0x25F8CEE50](v4, -1, -1);

    if (!i)
    {
      goto LABEL_49;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!i)
    {
LABEL_49:

      return MEMORY[0x277D84F90];
    }
  }

  v27 = isa;
  if ((isa & 0x8000000000000000) == 0 && (isa & 0x4000000000000000) == 0)
  {
    if (*(isa + 16))
    {
      goto LABEL_42;
    }

LABEL_63:

    v38 = *MEMORY[0x277D61558];
    v39 = type metadata accessor for SiriUIEventDataIssues();
    v40 = v54;
    (*(*(v39 - 8) + 104))(v54, v38, v39);
    (*(v55 + 104))(v40, *MEMORY[0x277D61670], v7);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59.isa = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000025ED7F940, &v59);
      _os_log_impl(&dword_25ECEC000, v41, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F8CEE50](v44, -1, -1);
      MEMORY[0x25F8CEE50](v43, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v45 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v46 = v54;
    MEMORY[0x25F8CDB30](v54, v45, v47);

    (*(v55 + 8))(v46, v7);
    return MEMORY[0x277D84F90];
  }

  if (!MEMORY[0x25F8CE500](isa))
  {
    goto LABEL_63;
  }

LABEL_42:
  v59.isa = MEMORY[0x277D84F98];
  v28 = 0;
  specialized Sequence.forEach(_:)(v20, &v59);

  v58 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v27, &v59, &v58);

  v57 = v58;

  specialized MutableCollection<>.sort(by:)(&v57);

  v29 = v57;
  if ((v53 & 1) == 0)
  {
    if (v50 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = specialized Collection.prefix(_:)(v50, v57);
      v28 = v31;
      v25 = v32;
      v4 = v33;
      if ((v33 & 1) == 0)
      {

LABEL_53:
        specialized _copyCollectionToContiguousArray<A>(_:)(v23, v28, v25, v4);
        v35 = v34;

        goto LABEL_60;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();

      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x277D84F90];
      }

      v37 = *(v36 + 16);

      if (!__OFSUB__(v4 >> 1, v25))
      {
        if (v37 == (v4 >> 1) - v25)
        {
          v35 = swift_dynamicCastClass();

          swift_unknownObjectRelease();
          if (v35)
          {
LABEL_61:

            return v35;
          }

          v35 = MEMORY[0x277D84F90];
LABEL_60:
          swift_unknownObjectRelease();
          goto LABEL_61;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_70:
    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  return v29;
}

uint64_t closure #3 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(id *a1, uint64_t a2)
{
  v52 = a2;
  v54 = type metadata accessor for ReliabilityCategory();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v51 = type metadata accessor for Date();
  v9 = *(v51 - 8);
  v10 = MEMORY[0x28223BE20](v51);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = *a1;
  v15 = [*a1 uuid];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    v50 = v17;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = [v14 absoluteTimestamp];
      if (v21)
      {
        v22 = v21;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v9;
        v24 = *(v9 + 16);
        v25 = v51;
        v24(v8, v13, v51);
        (*(v23 + 56))(v8, 0, 1, v25);

        specialized Dictionary.subscript.setter(v8, v50, v19);
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.engagement);
        v27 = v53;
        v24(v53, v13, v25);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v55 = v54;
          *v30 = 136315394;
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v19, &v55);

          *(v30 + 4) = v31;
          *(v30 + 12) = 2080;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          v35 = *(v23 + 8);
          v35(v27, v25);
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v55);

          *(v30 + 14) = v36;
          _os_log_impl(&dword_25ECEC000, v28, v29, "UISessionEnd has %s, %s", v30, 0x16u);
          v37 = v54;
          swift_arrayDestroy();
          MEMORY[0x25F8CEE50](v37, -1, -1);
          MEMORY[0x25F8CEE50](v30, -1, -1);

          return (v35)(v13, v25);
        }

        else
        {

          v49 = *(v23 + 8);
          v49(v27, v25);
          return (v49)(v13, v25);
        }
      }
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.engagement);
  v40 = *MEMORY[0x277D61568];
  v41 = type metadata accessor for SiriUIEventDataIssues();
  (*(*(v41 - 8) + 104))(v5, v40, v41);
  v42 = v54;
  (*(v3 + 104))(v5, *MEMORY[0x277D61670], v54);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v45 = 136315138;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000025ED7FA50, &v55);
    _os_log_impl(&dword_25ECEC000, v43, v44, "%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8CEE50](v46, -1, -1);
    MEMORY[0x25F8CEE50](v45, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v47 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v5, v47, v48);

  return (*(v3 + 8))(v5, v42);
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v10))
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8CE460](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      closure #3 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(&v11, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void specialized Sequence.forEach(_:)(unint64_t a1, NSObject *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8CE500](v11))
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F8CE460](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = v8;
      closure #4 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(&v13, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

id closure #4 in PostSiriEngagementMetricsCollector.getUISessionsFromStartDate(startDate:endDate:numSiriUISessions:)(void **a1, NSObject *a2, uint64_t *a3)
{
  v106 = a2;
  v6 = type metadata accessor for SiriUISession(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v109 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = v97 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v108 = v97 - v13;
  MEMORY[0x28223BE20](v12);
  v111 = v97 - v14;
  v15 = type metadata accessor for ReliabilityCategory();
  v110 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v116 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v107 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v112 = v97 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v97 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v115 = v97 - v29;
  MEMORY[0x28223BE20](v28);
  v114 = v97 - v30;
  v31 = *a1;
  result = [v31 uuid];
  if (result)
  {
    v102 = v15;
    v103 = v7;
    v33 = v18;
    v101 = a3;
    v34 = result;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    v104 = v35;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 && (v39 = [v31 absoluteTimestamp]) != 0)
    {
      v40 = v39;
      v98 = v6;
      v41 = v114;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = v116[2];
      v43 = v33;
      v97[1] = v116 + 2;
      v100 = v42;
      v42(v115, v41, v33);
      isa = v106->isa;
      v45 = *(v106->isa + 2);
      v99 = v3;
      if (v45 && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v37), (v47 & 1) != 0))
      {
        v48 = v116;
        v100(v27, *(isa + 7) + v116[9] * v46, v33);
        v49 = v115;
        (v48[1])(v115, v33);
        (v48[4])(v49, v27, v33);
        v50 = v98;
      }

      else
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.engagement);
        v52 = *MEMORY[0x277D61560];
        v53 = type metadata accessor for SiriUIEventDataIssues();
        (*(*(v53 - 8) + 104))(v17, v52, v53);
        v54 = v102;
        (*(v110 + 104))(v17, *MEMORY[0x277D61670], v102);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        v57 = os_log_type_enabled(v55, v56);
        v50 = v98;
        if (v57)
        {
          v58 = swift_slowAlloc();
          v106 = v55;
          v59 = v58;
          v60 = swift_slowAlloc();
          v117 = v60;
          *v59 = 136315138;
          *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000025ED7FA30, &v117);
          v61 = v56;
          v62 = v106;
          _os_log_impl(&dword_25ECEC000, v106, v61, "%s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v54 = v102;
          MEMORY[0x25F8CEE50](v60, -1, -1);
          MEMORY[0x25F8CEE50](v59, -1, -1);
        }

        else
        {
        }

        type metadata accessor for SiriTaskEngagementUtils();
        v63 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](v17, v63, v64);

        (*(v110 + 8))(v17, v54);
      }

      v65 = v100;
      v100(v112, v114, v43);
      v65(v113, v115, v43);
      v66 = v107;
      Date.addingTimeInterval(_:)();
      v67 = [v31 sessionID];
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0xE000000000000000;
      }

      v72 = v111;
      v73 = v116[4];
      v73(v111, v112, v43);
      v73((v72 + v50[5]), v113, v43);
      v73((v72 + v50[6]), v66, v43);
      v74 = (v72 + v50[7]);
      *v74 = v69;
      v74[1] = v71;
      v75 = (v72 + v50[8]);
      *v75 = v104;
      v75[1] = v37;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.engagement);
      v77 = v108;
      outlined init with copy of SiriUISession(v72, v108);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.info.getter();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v101;
      v82 = v103;
      if (v80)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v117 = v84;
        *v83 = 136315138;
        outlined init with copy of SiriUISession(v77, v105);
        v85 = String.init<A>(describing:)();
        v87 = v86;
        outlined destroy of SiriUISession(v77, type metadata accessor for SiriUISession);
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v117);
        v72 = v111;

        *(v83 + 4) = v88;
        _os_log_impl(&dword_25ECEC000, v78, v79, "UISession: %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        v89 = v84;
        v82 = v103;
        MEMORY[0x25F8CEE50](v89, -1, -1);
        MEMORY[0x25F8CEE50](v83, -1, -1);
      }

      else
      {

        outlined destroy of SiriUISession(v77, type metadata accessor for SiriUISession);
      }

      v90 = v109;
      outlined init with copy of SiriUISession(v72, v109);
      v91 = *v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v81 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
        *v81 = v91;
      }

      v94 = v91[2];
      v93 = v91[3];
      if (v94 >= v93 >> 1)
      {
        *v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v91);
      }

      outlined destroy of SiriUISession(v72, type metadata accessor for SiriUISession);
      v95 = v116[1];
      v95(v115, v43);
      v95(v114, v43);
      v96 = *v81;
      v96[2] = v94 + 1;
      return outlined init with take of SiriUISession(v90, v96 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v94);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for SiriUISession(0);
    return a2;
  }

  return result;
}

uint64_t PostSiriEngagementMetricsCollector.generateBiomeFetcherConfiguration(uiSession:nextUiSession:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64[-v6];
  v8 = type metadata accessor for SiriUISession(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v64[-v13];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v64[-v19];
  v21 = *(v16 + 16);
  v22 = &a1[*(v8 + 24)];
  v70 = v16 + 16;
  v71 = v21;
  v21(&v64[-v19], v22, v15);
  outlined init with copy of SiriUISession?(a2, v7);
  v23 = *(v9 + 48);
  v73 = v8;
  if (v23(v7, 1, v8) == 1)
  {
    outlined destroy of Date?(v7, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  }

  else
  {
    outlined init with take of SiriUISession(v7, v14);
    v24 = v14;
    if (static Date.> infix(_:_:)())
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      v26 = __swift_project_value_buffer(v25, static Logger.engagement);
      outlined init with copy of SiriUISession(a1, v12);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v67 = a1;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v68 = v26;
        v66 = v27;
        v65 = v28;
        v31 = v30;
        v32 = swift_slowAlloc();
        v75[0] = v32;
        *v31 = 136315394;
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        outlined destroy of SiriUISession(v12, type metadata accessor for SiriUISession);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v75);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        swift_beginAccess();
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v75);

        *(v31 + 14) = v39;
        v24 = v14;
        v40 = v66;
        _os_log_impl(&dword_25ECEC000, v66, v65, "More than one session in time range [%s,%s]", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8CEE50](v32, -1, -1);
        MEMORY[0x25F8CEE50](v31, -1, -1);
      }

      else
      {

        outlined destroy of SiriUISession(v12, type metadata accessor for SiriUISession);
      }

      swift_beginAccess();
      (*(v16 + 24))(v20, v24, v15);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v75[0] = v44;
        *v43 = 136315138;
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v75);
        v68 = v24;
        v48 = v47;

        *(v43 + 4) = v48;
        _os_log_impl(&dword_25ECEC000, v41, v42, "Setting postEndDate to %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x25F8CEE50](v44, -1, -1);
        MEMORY[0x25F8CEE50](v43, -1, -1);

        v49 = v68;
      }

      else
      {

        v49 = v24;
      }

      outlined destroy of SiriUISession(v49, type metadata accessor for SiriUISession);
      a1 = v67;
    }

    else
    {
      outlined destroy of SiriUISession(v14, type metadata accessor for SiriUISession);
    }
  }

  swift_beginAccess();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0 || (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v68 = v16;
    v50 = a1;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.engagement);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74[0] = v55;
      *v54 = 136315138;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v74);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_25ECEC000, v52, v53, "PostSiri Fetch asking for <= 0s slice [%s]", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x25F8CEE50](v55, -1, -1);
      MEMORY[0x25F8CEE50](v54, -1, -1);
    }

    a1 = v50;
    v59 = v69;
    Date.addingTimeInterval(_:)();
    swift_beginAccess();
    v16 = v68;
    (*(v68 + 40))(v20, v59, v15);
  }

  v61 = v71;
  v60 = v72;
  v71(v72, a1, v15);
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration(0);
  v61(v60 + *(Configuration + 20), v20, v15);
  return (*(v16 + 8))(v20, v15);
}