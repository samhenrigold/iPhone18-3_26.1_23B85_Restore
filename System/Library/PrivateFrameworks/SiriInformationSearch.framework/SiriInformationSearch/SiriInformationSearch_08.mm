uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of DomainWarmupHandling(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined init with copy of Google_Protobuf_Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
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

  String.index(before:)();
  return String.subscript.getter();
}

void *AFSpeechRecognition.toAsrHypotheses()()
{
  v1 = v0;
  v132 = type metadata accessor for UUID();
  v2 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v115 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v135 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v130 = v115 - v15;
  v16 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation();
  v141 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v148 = v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = v115 - v19;
  v20 = [v1 utterances];
  if (!v20)
  {
LABEL_124:
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_151;
    }

    goto LABEL_125;
  }

  v21 = v20;
  v162 = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x277CEF4B8);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [v1 phrases];
  if (!v23)
  {

    goto LABEL_124;
  }

  v24 = v23;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x277CEF478);
  v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v142 = v22;
  if (v22 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v130;
  if (!v25)
  {

    return MEMORY[0x277D84F90];
  }

  v27 = 0;
  v147 = v142 & 0xC000000000000001;
  v129 = v142 & 0xFFFFFFFFFFFFFF8;
  v128 = v142 + 32;
  v28 = v149 & 0xFFFFFFFFFFFFFF8;
  v161 = v149 & 0xFFFFFFFFFFFFFF8;
  if (v149 < 0)
  {
    v28 = v149;
  }

  v115[1] = v28;
  v158 = v149 & 0xC000000000000001;
  v139 = (v141 + 16);
  v138 = v141 + 8;
  v137 = v141 + 32;
  v122 = (v162 + 8);
  v121 = (v8 + 48);
  v116 = (v8 + 32);
  v120 = (v135 + 16);
  v119 = v135 + 8;
  v118 = v135 + 32;
  v145 = MEMORY[0x277D84F90];
  v127 = v6;
  v126 = v7;
  v125 = v10;
  v124 = v11;
  v123 = v14;
  v140 = v16;
  v146 = v25;
  while (1)
  {
    if (v147)
    {
      v29 = v27;
      v30 = MEMORY[0x223DDFF80](v27, v142);
      v31 = __OFADD__(v29, 1);
      v32 = v29 + 1;
      if (v31)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v27 >= *(v129 + 16))
      {
        goto LABEL_147;
      }

      v33 = v27;
      v30 = *(v128 + 8 * v27);
      v31 = __OFADD__(v33, 1);
      v32 = v33 + 1;
      if (v31)
      {
        goto LABEL_134;
      }
    }

    v154 = v32;
    v157 = v30;
    v34 = [v30 interpretationIndices];
    if (!v34)
    {
      goto LABEL_119;
    }

    v35 = v34;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v160 = v36 >> 62;
    v37 = v36 >> 62 ? __CocoaSet.count.getter() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v149 >> 62)
    {
      if (v37 != __CocoaSet.count.getter())
      {
LABEL_118:

LABEL_119:
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
          _os_log_impl(&dword_2232BB000, v108, v109, "Phrase length is not the same as interpretationIndices.", v110, 2u);
          MEMORY[0x223DE0F80](v110, -1, -1);
        }

        goto LABEL_10;
      }

      v163 = 0;
      v164 = 0xE000000000000000;
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      if (v37 != *(v161 + 16))
      {
        goto LABEL_118;
      }

      v163 = 0;
      v164 = 0xE000000000000000;
    }

    v38 = v36 & 0xFFFFFFFFFFFFFF8;
    v162 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v36 < 0)
    {
      v38 = v36;
    }

    v152 = v38;
    if (v37)
    {
      break;
    }

    v156 = MEMORY[0x277D84F90];
LABEL_106:

    Siri_Nlu_External_AsrHypothesis.init()();
    String.sanitize()(v163, v164);
    Siri_Nlu_External_AsrHypothesis.utterance.setter();
    [v157 confidenceScore];
    Siri_Nlu_External_AsrHypothesis.probability.setter();
    MEMORY[0x223DDC000](v156);
    v94 = v131;
    UUID.init()();
    v95 = v127;
    static ConversionUtils.convertUuidToProto(uuid:)();
    (*v122)(v94, v132);
    v96 = *v121;
    v97 = v126;
    if ((*v121)(v95, 1, v126) == 1)
    {
      Siri_Nlu_External_UUID.init()();
      v98 = v96(v95, 1, v97);
      v99 = v124;
      v100 = v123;
      if (v98 != 1)
      {
        outlined destroy of Siri_Nlu_External_UUID?(v95);
      }
    }

    else
    {
      (*v116)(v125, v95, v97);
      v99 = v124;
      v100 = v123;
    }

    Siri_Nlu_External_AsrHypothesis.id.setter();
    (*v120)(v100, v26, v99);
    v101 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v101[2] + 1, 1, v101);
    }

    v103 = v101[2];
    v102 = v101[3];
    v145 = v101;
    v104 = v157;
    if (v103 >= v102 >> 1)
    {
      v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v145);
      v104 = v157;
    }

    v105 = v135;
    (*(v135 + 8))(v26, v99);
    v106 = v145;
    v145[2] = v103 + 1;
    (*(v105 + 32))(v106 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v103, v100, v99);
LABEL_10:
    v27 = v154;
    if (v154 == v146)
    {

      return v145;
    }
  }

  v39 = 0;
  v153 = 0;
  v159 = v36 & 0xC000000000000001;
  v156 = MEMORY[0x277D84F90];
  v40 = v149;
  v150 = v36;
  v155 = v37;
LABEL_27:
  v41 = v39 + 4;
  while (1)
  {
    v42 = v41 - 4;
    if (v158)
    {
      v43 = MEMORY[0x223DDFF80](v41 - 4, v40);
    }

    else
    {
      if (v42 >= *(v161 + 16))
      {
        goto LABEL_132;
      }

      v43 = *(v40 + 8 * v41);
    }

    v44 = v43;
    v39 = v41 - 3;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v160)
    {
      if (v42 == __CocoaSet.count.getter())
      {
LABEL_104:

LABEL_105:
        v26 = v130;
        goto LABEL_106;
      }
    }

    else if (v42 == *(v162 + 16))
    {
      goto LABEL_104;
    }

    if (v159)
    {
      v45 = MEMORY[0x223DDFF80](v41 - 4, v36);
    }

    else
    {
      if (v42 >= *(v162 + 16))
      {
        goto LABEL_133;
      }

      v45 = *(v36 + 8 * v41);
    }

    v46 = v45;
    v47 = [v44 interpretations];
    if (v47)
    {
      v48 = v47;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x277CEF458);
      v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = [v46 integerValue];
      if (v49 >> 62)
      {
        if (v50 >= __CocoaSet.count.getter())
        {
LABEL_56:

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          __swift_project_value_buffer(v60, static Logger.pommes);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_2232BB000, v61, v62, "Invalid interpretation index.", v63, 2u);
            MEMORY[0x223DE0F80](v63, -1, -1);
          }

          v36 = v150;
          v37 = v155;
          goto LABEL_29;
        }
      }

      else if (v50 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v51 = [v46 integerValue];
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x223DDFF80](v51, v49);
      }

      else
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_135;
        }

        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = [v52 tokens];
      if (!v54)
      {

        v37 = v155;
        goto LABEL_29;
      }

      v55 = v54;
      v151 = v53;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechToken, 0x277CEF4B0);
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = v56;
      if (!(v56 >> 62))
      {
        v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v59 = v151;
        if (v58)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }

      v58 = __CocoaSet.count.getter();
      v59 = v151;
      if (!v58)
      {
LABEL_51:

        v37 = v155;
        goto LABEL_29;
      }

LABEL_63:
      v64 = 0;
      v136 = v56 & 0xC000000000000001;
      v117 = v56 & 0xFFFFFFFFFFFFFF8;
      v134 = v56;
      v133 = v58;
      while (2)
      {
        if (v136)
        {
          v65 = MEMORY[0x223DDFF80](v64, v57);
        }

        else
        {
          if (v64 >= *(v117 + 16))
          {
            goto LABEL_149;
          }

          v65 = *(v57 + 8 * v64 + 32);
        }

        v66 = v65;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_137;
        }

        Siri_Nlu_External_AsrTokenInformation.init()();
        [v66 removeSpaceBefore];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.setter();
        v67 = Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.getter();
        v144 = v64 + 1;
        if (v67)
        {
          v68 = specialized BidirectionalCollection.last.getter(v163, v164);
          if (v69)
          {
            if (v68 == 32 && v69 == 0xE100000000000000)
            {

              goto LABEL_75;
            }

            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v71)
            {
LABEL_75:
              if (!v153)
              {
                goto LABEL_150;
              }

              --v153;
              specialized RangeReplaceableCollection<>.removeLast()(v70);
            }
          }
        }

        v72 = [v66 text];
        if (v72)
        {
          v73 = v72;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.postItnText.setter();
        v74 = Siri_Nlu_External_AsrTokenInformation.postItnText.getter();
        MEMORY[0x223DDF6D0](v74);

        v75 = [v66 phoneSequence];
        if (v75)
        {
          v76 = v75;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.phoneSequence.setter();
        v77 = [v66 ipaPhoneSequence];
        if (v77)
        {
          v78 = v77;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.setter();
        [v66 removeSpaceAfter];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.setter();
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.getter();
        Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.setter();
        [v66 confidenceScore];
        Siri_Nlu_External_AsrTokenInformation.confidenceScore.setter();
        Siri_Nlu_External_AsrTokenInformation.beginIndex.setter();
        v79 = Siri_Nlu_External_AsrTokenInformation.beginIndex.getter();
        result = [v66 text];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v81 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v82 = String.count.getter();

        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v82))
        {
          goto LABEL_139;
        }

        if (__CFADD__(v79, v82))
        {
          goto LABEL_140;
        }

        v83 = v143;
        Siri_Nlu_External_AsrTokenInformation.endIndex.setter();
        v153 = Siri_Nlu_External_AsrTokenInformation.endIndex.getter();
        v84 = Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.getter();
        v85 = v140;
        if (v84)
        {
          if (v153 == -1)
          {
            goto LABEL_148;
          }

          ++v153;
          MEMORY[0x223DDF6D0](32, 0xE100000000000000);
        }

        [v66 startTime];
        v87 = v86 * 1000.0;
        if ((*&v87 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v87 <= -2147483650.0)
        {
          goto LABEL_142;
        }

        if (v87 >= 2147483650.0)
        {
          goto LABEL_143;
        }

        Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.setter();
        [v66 endTime];
        v89 = v88 * 1000.0;
        if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_144;
        }

        if (v89 <= -2147483650.0)
        {
          goto LABEL_145;
        }

        if (v89 >= 2147483650.0)
        {
          goto LABEL_146;
        }

        Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.setter();
        (*v139)(v148, v83, v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156);
        }

        v91 = v156[2];
        v90 = v156[3];
        if (v91 >= v90 >> 1)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v156);
        }

        v92 = v141;
        (*(v141 + 8))(v83, v85);
        v93 = v156;
        v156[2] = v91 + 1;
        (*(v92 + 32))(v93 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v91, v148, v85);
        ++v64;
        v40 = v149;
        v36 = v150;
        v57 = v134;
        if (v144 == v133)
        {

          v37 = v155;
          v26 = v130;
          if (v39 != v155)
          {
            goto LABEL_27;
          }

          goto LABEL_106;
        }

        continue;
      }
    }

LABEL_29:
    ++v41;
    if (v39 == v37)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_125:
  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.pommes);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_2232BB000, v112, v113, "AFSpeechRecognition utterances/phrases is nil", v114, 2u);
    MEMORY[0x223DE0F80](v114, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t String.sanitize()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = a2;
  v11[2] = 0x2B5D735C5BLL;
  v11[3] = 0xE500000000000000;
  v11[0] = 32;
  v11[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = v8;
  static CharacterSet.whitespacesAndNewlines.getter();
  v9 = StringProtocol.trimmingCharacters(in:)();
  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t outlined destroy of Siri_Nlu_External_UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DownloadedFeaturiser.name.getter()
{
  type metadata accessor for DownloadedFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch20DownloadedFeaturiserCmMd, &_s21SiriInformationSearch20DownloadedFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t DownloadedFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v4, v5, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v6, 8u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

  *(v2 + 16) = v7;
  return v2;
}

uint64_t DownloadedFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized DownloadedFeaturiser.init(query:)(a1);

  return v1;
}

void DownloadedFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source) == 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      v11 = MEMORY[0x277D85000];
      v12 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v4);
      v10 = *((*v11 & *v12) + 0xD0);
      v9.n128_u32[0] = 1.0;
      v13 = v12;
      goto LABEL_12;
    }
  }

  v6 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v4);
  v10 = *((*v7 & *v8) + 0xD0);
  v13 = v8;
  if (v6 == 1)
  {
    v9.n128_u32[0] = 1065395159;
    if (*(v2 + 16))
    {
      v9.n128_f32[0] = 1.0005;
    }
  }

  else
  {
    v9.n128_u64[0] = 0;
    if (*(v2 + 16))
    {
      v9.n128_f32[0] = 1.0;
    }
  }

LABEL_12:
  v10(v9);
}

uint64_t specialized DownloadedFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v5, v6, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v7, 8u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  *(v2 + 16) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);
  return v2;
}

Swift::Int PommesBridge.PommesBridgeError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

uint64_t PommesBridge.pommesSearch.setter(uint64_t a1)
{
  v2 = direct field offset for PommesBridge.pommesSearch;
  *(v1 + direct field offset for PommesBridge.pommesSearch) = a1;

  v3 = *(v1 + v2);
  if (v3)
  {

    MessageDispatchingBridgeBase.serviceHelper.getter();
    (*(*v3 + 248))();

    swift_unknownObjectRelease();
  }
}

uint64_t key path setter for PommesBridge.currentSessionId : PommesBridge(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of MediaUserStateCenter?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + class metadata base offset for PommesBridge + 80))(v6);
}

void PommesBridge.isMultiUser.setter(char a1)
{
  v3 = direct field offset for PommesBridge.isMultiUser;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void PommesBridge.isOnlyUserInHome.setter(char a1)
{
  v3 = direct field offset for PommesBridge.isOnlyUserInHome;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PommesBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of AppDataProviding(a3, v16);
  outlined init with copy of AppDataProviding(a6, v15);
  v13 = (*(v6 + class metadata base offset for PommesBridge + 168))(a1, a2, v16, a4, a5, v15, 0);
  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t PommesBridge.__allocating_init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_allocObject();
  v14 = specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t PommesBridge.init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v8;
}

void closure #1 in PommesBridge.init(_:_:_:_:_:pommesSearch:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "Initializing PommesSearch async", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    type metadata accessor for PommesSearch();
    v5 = PommesSearch.__allocating_init()();
    PommesBridge.pommesSearch.setter(v5);
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
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "PommesBridge deallocated before PommesSearch set up", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
}

uint64_t PommesBridge.handleMUXContextMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = MessageBase.assistantId.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v6, v7, "MUXContextMessage received for assistantId: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v13 = MUXContextMessage.isRMVEnabled.getter();
  (*(*v2 + class metadata base offset for PommesBridge + 128))(v13 & 1);
  v14 = static MUXUtils.singleKnownUserInHome(muxContextMessage:)();
  result = (*(*v2 + class metadata base offset for PommesBridge + 152))(v14 & 1);
  v16 = *(v2 + direct field offset for PommesBridge.pommesSearch);
  if (v16)
  {
    v17 = *(*v16 + 344);

    v17(v5);
  }

  return result;
}

void PommesBridge.handleRunPOMMESRequest(_:_:_:)(void *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v4, v5, "Received SARDRunPOMMESRequest: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DE0F80](v7, -1, -1);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  if (dispatch thunk of CandidateRequestAwareBridgeBase.activeRequestProcessor.getter())
  {
    type metadata accessor for PommesBridgeRequestProcessor(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      (*(*v13 + class metadata base offset for PommesBridgeRequestProcessor + 360))(v3);

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v14, "Unable to handle SARDRunPOMMESRequest because there is no active PommesBridgeRequestProcessor", v15, 2u);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }
}

uint64_t PommesBridge.__ivar_destroyer()
{

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
}

uint64_t PommesBridge.deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return v0;
}

uint64_t PommesBridge.__deallocating_deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v57 = a5;
  v58 = a7;
  v61 = a4;
  started = a1;
  v56 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageHandlerType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + direct field offset for PommesBridge.pommesSearch) = 0;
  v21 = direct field offset for PommesBridge.currentSessionId;
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 56))(v7 + v21, 1, 1, v22);
  v23 = v7 + direct field offset for PommesBridge.sessionState;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v7 + direct field offset for PommesBridge.isMultiUser) = 0;
  *(v7 + direct field offset for PommesBridge.isOnlyUserInHome) = 0;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  *(v7 + direct field offset for PommesBridge.instrumentationUtil) = static PommesBridgeInstrumentationUtil.sharedInstance;
  v60 = a3;
  outlined init with copy of AppDataProviding(a3, aBlock);
  v59 = a6;
  outlined init with copy of AppDataProviding(a6, v63);
  v24 = one-time initialization token for pommes;

  swift_unknownObjectRetain();
  v25 = v57;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, static Logger.pommes);
  v27 = *(v18 + 16);
  v57 = v26;
  v27(v20);
  v48 = v25;
  v28 = CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)();
  type metadata accessor for SessionStartedMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  type metadata accessor for SessionEndedMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  type metadata accessor for MUXContextMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  v29 = *MEMORY[0x277D60070];
  v30 = *(v14 + 104);
  v30(v16, v29, v13);
  type metadata accessor for StartSpeechRequestMessage();
  type metadata accessor for PommesBridgeRequestProcessor(0);
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31 = *(v14 + 8);
  v31(v16, v13);
  v30(v16, v29, v13);
  type metadata accessor for StartChildSpeechRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v29, v13);
  type metadata accessor for StartChildTextRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  LODWORD(v56) = v29;
  v30(v16, v29, v13);
  type metadata accessor for StartTextRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v29, v13);
  started = type metadata accessor for StartLocalRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, *MEMORY[0x277D60090], v13);
  type metadata accessor for EndRequestMessageBase();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v32 = *MEMORY[0x277D60098];
  v30(v16, v32, v13);
  type metadata accessor for RequestContextMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for NLResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for TextBasedResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for GestureBasedResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for AsrResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for FallbackToPommesMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for TextBasedTRPCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for RewrittenUtteranceCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for NLTRPCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for TTResponseMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v32, v13);
  type metadata accessor for TRPCandidateRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, *MEMORY[0x277D60080], v13);
  type metadata accessor for StartCandidateRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  v30(v16, v56, v13);
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v31(v16, v13);
  if (AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags())
  {
    v30(v16, v32, v13);
    type metadata accessor for RunPommesRequestMessage();
    dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
    v31(v16, v13);
  }

  else
  {
    type metadata accessor for SARDRunPOMMESRequest();
    dispatch thunk of MessageDispatchingBridgeBase.registerCommandHandler<A>(_:)();
  }

  v33 = v60;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v58;
  if (v58)
  {
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2232BB000, v34, v35, "PommesSearch provided to initializer", v38, 2u);
      MEMORY[0x223DE0F80](v38, -1, -1);
    }

    *(v28 + direct field offset for PommesBridge.pommesSearch) = v37;
  }

  else
  {
    if (v36)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2232BB000, v34, v35, "Using default PommesSearch, dispatching to initialize", v39, 2u);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    v40 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in PommesBridge.init(_:_:_:_:_:pommesSearch:);
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_9;
    v41 = _Block_copy(aBlock);

    v42 = v49;
    static DispatchQoS.unspecified.getter();
    v63[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v43 = v51;
    v44 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v42, v43, v41);
    _Block_release(v41);
    (*(v53 + 8))(v43, v44);
    (*(v50 + 8))(v42, v52);
  }

  v45 = v59;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v46 = v61;
  (*(*static PommesSearchService.shared + 112))(v61);
  swift_beginAccess();
  ServiceHelperManager.setServiceHelper(_:)(v46);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v28;
}

unint64_t lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError()
{
  result = lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError;
  if (!lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError;
  if (!lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError);
  }

  return result;
}

uint64_t type metadata accessor for PommesBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesBridge;
  if (!type metadata singleton initialization cache for PommesBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PommesBridge(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

unint64_t type metadata accessor for SARDRunPOMMESRequest()
{
  result = lazy cache variable for type metadata for SARDRunPOMMESRequest;
  if (!lazy cache variable for type metadata for SARDRunPOMMESRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SARDRunPOMMESRequest);
  }

  return result;
}

uint64_t static AppInfoDataProvider.make(appDataProvider:preferences:)(uint64_t a1, void *a2)
{
  outlined init with copy of AppDataProviding(a1, v6);
  type metadata accessor for AppInfoDataProvider();
  v3 = swift_allocObject();
  outlined init with take of PommesAppChecking(v6, v3 + 16);
  *(v3 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v4 = a2;
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

uint64_t AppInfoDataProvider.__allocating_init(appDataProvider:preferences:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of PommesAppChecking(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t AppInfoDataProvider.init(appDataProvider:preferences:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of PommesAppChecking(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(int *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v8 = *(v29 - 8);
  v9 = MEMORY[0x28223BE20](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v28 = &v27;
    v12 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v9);
    v25 = a1;
    v26 = v30;
    Date.init()();
    v13 = *(*v12 + 200);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMd, &_sSay10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMR);
    v25 = &v24;
    v26 = v14;
    LOBYTE(v24) = 2;
    a1 = 0;
    v13(&v35, 0xD000000000000038, 0x80000002234DC690, 0, v11, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 44, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v24, partial apply for closure #1 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:));
    v15 = *(v8 + 1);
    v8 += 8;
    v15(v11, v29);
    v16 = v35;
    v17 = *(v35 + 16);
    if (!v17)
    {
      break;
    }

    v35 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = 0;
    v19 = v35;
    v30 = v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v20 = (v33 + 8);
    v28 = (v6 + 32);
    v29 = v33 + 16;
    while (v18 < *(v16 + 16))
    {
      v21 = v32;
      (*(v33 + 16))(v5, v30 + *(v33 + 72) * v18, v32);
      closure #2 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(v5, v34);
      (*v20)(v5, v21);
      v35 = v19;
      v11 = *(v19 + 16);
      v22 = *(v19 + 24);
      v8 = (v11 + 1);
      if (v11 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v11 + 1, 1);
        v19 = v35;
      }

      ++v18;
      *(v19 + 16) = v8;
      (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v34, v31);
      if (v17 == v18)
      {

        return v19;
      }
    }

    __break(1u);
LABEL_12:
    v9 = swift_once();
  }

  return MEMORY[0x277D84F90];
}

uint64_t closure #1 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(void (*a1)(char *, unint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v46 = a2;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_Span();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v39 - v18;
  outlined init with copy of MediaUserStateCenter?(v51, v16, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v20 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(&v16[*(v20 + 44)], v19, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined destroy of PerformanceUtil.Ticket(v16, type metadata accessor for PommesSearchRequest);
    v24 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v19, 1, v24) == 1)
    {
      v21 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v22 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v23 = v19;
      goto LABEL_5;
    }

    v28 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v25 + 8))(v19, v24);
    v29 = *(v28 + 16);
    if (!v29)
    {

      goto LABEL_6;
    }

    v39[1] = v28;
    v40 = a3;
    v30 = *(v52 + 16);
    v31 = v28 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v50 = *(v52 + 72);
    v51 = v30;
    v52 += 16;
    v32 = (v52 - 8);
    v33 = v45;
    v49 = (v44 + 56);
    v42 = (v44 + 32);
    v43 = (v44 + 48);
    v48 = MEMORY[0x277D84F90];
    v30(v13, v31, v11);
    while (1)
    {
      AppInfoDataProvider.equivalentAppInfo(span:)(v13, v8);
      if (v4)
      {
        break;
      }

      (*v32)(v13, v11);
      if ((*v43)(v8, 1, v33) == 1)
      {
        goto LABEL_11;
      }

      v41 = *v42;
      v41(v47, v8, v33);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v34 = v48;
      }

      else
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
      }

      v34[2] = v36 + 1;
      v37 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v48 = v34;
      v38 = v34 + v37 + *(v44 + 72) * v36;
      v33 = v45;
      v41(v38, v47, v45);
LABEL_12:
      v31 += v50;
      if (!--v29)
      {

        a3 = v40;
        v27 = v48;
        goto LABEL_7;
      }

      v51(v13, v31, v11);
    }

    (*v32)(v13, v11);
    (*v49)(v8, 1, 1, v33);
    v4 = 0;
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
    goto LABEL_12;
  }

  v21 = &_s21SiriInformationSearch06PommesC7RequestVSgMd;
  v22 = &_s21SiriInformationSearch06PommesC7RequestVSgMR;
  v23 = v16;
LABEL_5:
  result = outlined destroy of MediaUserStateCenter?(v23, v21, v22);
LABEL_6:
  v27 = MEMORY[0x277D84F90];
LABEL_7:
  *a3 = v27;
  return result;
}

uint64_t closure #2 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v42[6] = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Google_Protobuf_Any();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v42[3] = v21;
  v42[4] = lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo, MEMORY[0x277D39018], MEMORY[0x277D39010]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v32, v21);
  defaultAnyTypeURLPrefix.getter();
  v23 = v33;
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v23)
  {

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  (*(v7 + 56))(v20, v24, 1, v6);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
  (*(v9 + 104))(v11, *MEMORY[0x277D39AE8], v31);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  outlined init with copy of MediaUserStateCenter?(v20, v18, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v25 = *(v7 + 48);
  if (v25(v18, 1, v6) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v25(v18, 1, v6) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v18, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v7 + 32))(v34, v18, v6);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v37 + 104))(v35, *MEMORY[0x277D39D58], v38);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
  (*(v40 + 104))(v39, *MEMORY[0x277D39718], v41);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2234CF920;
  v28 = v27 + v26;
  v29 = v36;
  (*(v12 + 16))(v28, v14, v36);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
  (*(v12 + 8))(v14, v29);
  return outlined destroy of MediaUserStateCenter?(v20, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
}

uint64_t AppInfoDataProvider.equivalentAppInfo(span:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v236 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_Span();
  v240 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v245 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v208 = &v203 - v7;
  MEMORY[0x28223BE20](v6);
  v215 = &v203 - v8;
  v233 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept();
  v234 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v205 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v204);
  v227 = (&v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for Date();
  v216 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v213 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for Google_Protobuf_StringValue();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan();
  v220 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v246 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_SpanProperty();
  v248 = *(v14 - 8);
  v249 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v243 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v209 = &v203 - v17;
  v231 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v229 = *(v231 - 8);
  v18 = MEMORY[0x28223BE20](v231);
  v207 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v223 = &v203 - v21;
  MEMORY[0x28223BE20](v20);
  v222 = &v203 - v22;
  v228 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v219 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v218 = &v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
  MEMORY[0x28223BE20](v28);
  v30 = &v203 - v29;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v31 = MEMORY[0x28223BE20](v226);
  v230 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v244 = &v203 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v203 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v203 - v38;
  v235 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v237 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v239 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_AppInfo.init()();
  v242 = a1;
  v41 = Siri_Nlu_External_Span.matcherNames.getter();
  v42 = *(v41 + 16);
  v241 = v3;
  v221 = v27;
  if (v42)
  {
    (*(v25 + 16))(v39, v41 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(v25 + 56);
  v44(v39, v43, 1, v24);
  (*(v25 + 104))(v37, *MEMORY[0x277D5DA08], v24);
  v225 = v25 + 56;
  v224 = v44;
  v44(v37, 0, 1, v24);
  v45 = *(v28 + 48);
  outlined init with copy of MediaUserStateCenter?(v39, v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined init with copy of MediaUserStateCenter?(v37, &v30[v45], &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v232 = v25;
  v46 = *(v25 + 48);
  if (v46(v30, 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v39, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    v47 = v46(&v30[v45], 1, v24);
    v48 = v240;
    if (v47 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
      v49 = v241;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v50 = v244;
  outlined init with copy of MediaUserStateCenter?(v30, v244, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if (v46(&v30[v45], 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v39, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    (*(v232 + 8))(v50, v24);
    v48 = v240;
LABEL_9:
    v206 = v24;
    outlined destroy of MediaUserStateCenter?(v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
    v49 = v241;
    v51 = v245;
    goto LABEL_10;
  }

  v62 = v232;
  v63 = v221;
  (*(v232 + 32))(v221, &v30[v45], v24);
  lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30], MEMORY[0x277D5DA40]);
  v255 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v62 + 8);
  v64(v63, v24);
  outlined destroy of MediaUserStateCenter?(v37, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined destroy of MediaUserStateCenter?(v39, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v206 = v24;
  v64(v244, v24);
  outlined destroy of MediaUserStateCenter?(v30, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v48 = v240;
  v49 = v241;
  v51 = v245;
  if ((v255 & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_122;
  }

LABEL_16:
  if (Siri_Nlu_External_Span.label.getter() == 0x656D614E707061 && v65 == 0xE700000000000000)
  {

    v66 = v229;
    v67 = v228;
  }

  else
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v66 = v229;
    v67 = v228;
    if ((v68 & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      __swift_project_value_buffer(v104, static Logger.pommes);
      v105 = v208;
      (*(v48 + 16))(v208, v242, v49);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v106, v107))
      {

        (*(v48 + 8))(v105, v49);
        goto LABEL_88;
      }

      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v251[0] = v109;
      *v108 = 136315138;
      v110 = Siri_Nlu_External_Span.label.getter();
      v112 = v111;
      (*(v48 + 8))(v105, v49);
      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v251);

      *(v108 + 4) = v113;
      _os_log_impl(&dword_2232BB000, v106, v107, "PegasusProxy#equivalentAppInfo matcher not appName label:%s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x223DE0F80](v109, -1, -1);
      v114 = v108;
      goto LABEL_79;
    }
  }

  v69 = v222;
  Siri_Nlu_External_Span.usoGraph.getter();
  v70 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v71 = *(v66 + 8);
  v71(v69, v231);
  if (*(v70 + 16))
  {
    v72 = v219;
    v73 = v218;
    (*(v219 + 16))(v218, v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v67);

    v232 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v230 = v74;
    (*(v72 + 8))(v73, v67);
  }

  else
  {

    v232 = 0;
    v230 = 0xE000000000000000;
  }

  v81 = v223;
  Siri_Nlu_External_Span.usoGraph.getter();
  v82 = Siri_Nlu_External_UsoGraph.spans.getter();
  v71(v81, v231);
  v48 = *(v82 + 16);
  if (!v48)
  {

    v85 = MEMORY[0x277D84F90];
    v49 = *(MEMORY[0x277D84F90] + 16);
    if (!v49)
    {
      goto LABEL_52;
    }

LABEL_46:
    v48 = 0;
    v51 = (v248 + 16);
    v96 = (v248 + 8);
    while (v48 < v85[2])
    {
      (*(v248 + 16))(v243, v85 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v48, v249);
      v97 = Siri_Nlu_External_SpanProperty.key.getter();
      v99 = v98;
      if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
      {

LABEL_58:

        v115 = v212;
        v116 = v211;
        v117 = v249;
        v118 = v248 + 32;
        v119 = v209;
        (*(v248 + 32))(v209, v243, v249);
        v120 = v210;
        Siri_Nlu_External_SpanProperty.valueString.getter();
        (*(v118 - 24))(v119, v117);
        v102 = Google_Protobuf_StringValue.value.getter();
        v103 = v121;
        (*(v116 + 8))(v120, v115);
        goto LABEL_59;
      }

      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v101)
      {
        goto LABEL_58;
      }

      ++v48;
      (*v96)(v243, v249);
      if (v49 == v48)
      {
        goto LABEL_52;
      }
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v245 = *(v220 + 16);
  v83 = (*(v220 + 80) + 32) & ~*(v220 + 80);
  v229 = v82;
  v84 = v82 + v83;
  v244 = *(v220 + 72);
  v49 = (v220 + 8);
  v85 = MEMORY[0x277D84F90];
  do
  {
    v86 = v246;
    v87 = v247;
    (v245)(v246, v84, v247);
    v88 = Siri_Nlu_External_UsoEntitySpan.properties.getter();
    (*v49)(v86, v87);
    v89 = *(v88 + 16);
    v90 = v85[2];
    v51 = (v90 + v89);
    if (__OFADD__(v90, v89))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v51 <= v85[3] >> 1)
    {
      if (!*(v88 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v90 <= v51)
      {
        v92 = v90 + v89;
      }

      else
      {
        v92 = v90;
      }

      v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v92, 1, v85);
      if (!*(v88 + 16))
      {
LABEL_28:

        if (v89)
        {
          goto LABEL_117;
        }

        goto LABEL_29;
      }
    }

    if ((v85[3] >> 1) - v85[2] < v89)
    {
      goto LABEL_118;
    }

    swift_arrayInitWithCopy();

    if (v89)
    {
      v93 = v85[2];
      v94 = __OFADD__(v93, v89);
      v95 = v93 + v89;
      if (v94)
      {
        goto LABEL_119;
      }

      v85[2] = v95;
    }

LABEL_29:
    v84 += v244;
    --v48;
  }

  while (v48);

  v49 = v85[2];
  if (v49)
  {
    goto LABEL_46;
  }

LABEL_52:

  v102 = 0;
  v103 = 0;
LABEL_59:
  v48 = v240;
  v49 = v241;
  v122 = v230 & 0x2000000000000000;
  v123 = HIBYTE(v230) & 0xF;
  v124 = v232 & 0xFFFFFFFFFFFFLL;
  if ((v230 & 0x2000000000000000) != 0)
  {
    v125 = HIBYTE(v230) & 0xF;
  }

  else
  {
    v125 = v232 & 0xFFFFFFFFFFFFLL;
  }

  v126 = v227;
  if (v125)
  {

    goto LABEL_66;
  }

  if (!v103)
  {
    goto LABEL_76;
  }

  v122 = v103 & 0x2000000000000000;
  v123 = HIBYTE(v103) & 0xF;
  v124 = v102 & 0xFFFFFFFFFFFFLL;
  v232 = v102;
  v230 = v103;
LABEL_66:
  if (v122)
  {
    v127 = v123;
  }

  else
  {
    v127 = v124;
  }

  if (!v127)
  {

LABEL_76:
    if (one-time initialization token for pommes != -1)
    {
LABEL_124:
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.pommes);
    v139 = v215;
    (*(v48 + 16))(v215, v242, v49);
    v106 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v106, v140))
    {

      (*(v48 + 8))(v139, v49);
      goto LABEL_88;
    }

    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v251[0] = v142;
    *v141 = 136315138;
    Siri_Nlu_External_Span.usoGraph.getter();
    v143 = String.init<A>(describing:)();
    v144 = v139;
    v146 = v145;
    (*(v48 + 8))(v144, v49);
    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v146, v251);

    *(v141 + 4) = v147;
    _os_log_impl(&dword_2232BB000, v106, v140, "PegasusProxy#equivalentAppInfo identifier not present in USO graph: %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    MEMORY[0x223DE0F80](v142, -1, -1);
    v114 = v141;
LABEL_79:
    MEMORY[0x223DE0F80](v114, -1, -1);

LABEL_88:
    v80 = v235;
    v79 = v237;
    (*(v237 + 56))(v236, 1, 1, v235);
    return (*(v79 + 8))(v239, v80);
  }

  v128 = v217;
  v129 = v217[5];
  v130 = v217[6];
  __swift_project_boxed_opaque_existential_1(v217 + 2, v129);
  v131 = v232;
  v49 = v230;
  if (((*(v130 + 8))(v232, v230, v129, v130) & 1) == 0)
  {
    Siri_Nlu_External_Span.input.getter();
    Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter();

    v148 = Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter();
    v256 = 0;
    if (one-time initialization token for shared != -1)
    {
      v148 = swift_once();
    }

    v249 = &v203;
    v149 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v148);
    v199 = v128;
    v200 = v131;
    v201 = v49;
    v202 = &v256;
    v150 = v213;
    Date.init()();
    v151 = (*v149 + 200);
    v152 = *v151;
    v232 = v131;
    v153 = v151;
    v201 = &v198;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch7AppDataVSgMd, &_s21SiriInformationSearch7AppDataVSgMR);
    LOBYTE(v199) = 2;
    v154 = v238;
    v245 = v153;
    v246 = v152;
    (v152)(v251, 0xD000000000000036, 0x80000002234DC7C0, 0, v150, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 105, "equivalentAppInfo(span:)", 24, v199, partial apply for closure #3 in AppInfoDataProvider.equivalentAppInfo(span:));
    v155 = v154;
    v157 = v216 + 8;
    v156 = *(v216 + 8);
    v156(v150, v214);
    v158 = v252;
    if (!v252)
    {
      v128 = v232;
      v165 = v237;
      if (v256 == 1)
      {

        v166 = *(v165 + 16);
        v80 = v235;
        v167 = v236;
        v166(v236, v239, v235);
        v79 = v237;
        (*(v237 + 56))(v167, 0, 1, v80);
        return (*(v79 + 8))(v239, v80);
      }

      if (one-time initialization token for pommes == -1)
      {
LABEL_112:
        v192 = type metadata accessor for Logger();
        __swift_project_value_buffer(v192, static Logger.pommes);

        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v251[0] = v196;
          *v195 = 136315138;
          v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v49, v251);

          *(v195 + 4) = v197;
          _os_log_impl(&dword_2232BB000, v193, v194, "PegasusProxy#equivalentAppInfo failed to resolve appData for bundleIdentifier:%s", v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v196);
          MEMORY[0x223DE0F80](v196, -1, -1);
          MEMORY[0x223DE0F80](v195, -1, -1);
        }

        else
        {
        }

        goto LABEL_24;
      }

LABEL_128:
      swift_once();
      goto LABEL_112;
    }

    v243 = v156;
    v216 = v157;
    v49 = v254;
    v159 = v251[1];
    v249 = v253;
    Apple_Parsec_Siri_V2alpha_AppInfo.hasSiriIntegration_p.setter();
    v160 = *(v158 + 16);
    v244 = v149;
    if (v160)
    {
      v248 = v159;
      v238 = v154;
      v161 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v160, 0);
      v162 = specialized Sequence._copySequenceContents(initializing:)(v251, v161 + 4, v160, v158);
      v163 = v251[0];
      v128 = v252;

      outlined consume of Set<String>.Iterator._Variant(v163);
      if (v162 != v160)
      {
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v155 = v238;
      v126 = v227;
      v128 = v217;
      v164 = v204;
      v149 = v244;
    }

    else
    {
      v164 = v204;
    }

    Apple_Parsec_Siri_V2alpha_AppInfo.supportedIntents.setter();
    Date.init()();
    v168 = v126 + v164[5];
    *v168 = "SiriInformationSearch/AppInfoDataProvider.swift";
    *(v168 + 1) = 47;
    v168[16] = 2;
    *(v126 + v164[6]) = 119;
    v169 = v126 + v164[7];
    *v169 = "equivalentAppInfo(span:)";
    *(v169 + 1) = 24;
    v169[16] = 2;
    v170 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ELL, 0x80000002234DC820);
    v49 = v126;
    v171 = (v126 + v164[8]);
    *v171 = v170;
    v171[1] = v172;
    v173 = AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)(v232, v230, 0);
    v174 = specialized Sequence.flatMap<A>(_:)(v173);
    v51 = v155;

    if (v174 >> 62)
    {
      v175 = __CocoaSet.count.getter();
    }

    else
    {
      v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v176 = v205;
    if (!v175)
    {

      v186 = v49;
LABEL_109:
      v187 = v239;
      Apple_Parsec_Siri_V2alpha_AppInfo.vocabConcepts.setter();
      v188 = (*(*v149 + 184))(v186, 0);
      v249 = &v203;
      MEMORY[0x28223BE20](v188);
      LODWORD(v199) = v187;
      v189 = v213;
      Date.init()();
      v201 = &v198;
      v202 = (MEMORY[0x277D84F78] + 8);
      LOBYTE(v199) = 2;
      (v246)(0xD000000000000014, 0x80000002234DC840, 0, v189, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 146, "equivalentAppInfo(span:)", 24, v199, partial apply for closure #6 in AppInfoDataProvider.equivalentAppInfo(span:));

      (v243)(v189, v214);
      outlined destroy of PerformanceUtil.Ticket(v186, type metadata accessor for PerformanceUtil.Ticket);
      v190 = v236;
      v79 = v237;
      v80 = v235;
      (*(v237 + 16))(v236, v187, v235);
      (*(v79 + 56))(v190, 0, 1, v80);
      return (*(v79 + 8))(v239, v80);
    }

    v177 = v174;
    v251[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v175 & ~(v175 >> 63), 0);
    if ((v175 & 0x8000000000000000) == 0)
    {
      v178 = 0;
      v179 = v251[0];
      v180 = v177;
      v249 = (v177 & 0xC000000000000001);
      v247 = v177 & 0xFFFFFFFFFFFFFF8;
      v248 = v234 + 32;
      while (1)
      {
        v48 = v178 + 1;
        if (__OFADD__(v178, 1))
        {
          break;
        }

        if (v249)
        {
          v181 = MEMORY[0x223DDFF80](v178, v180);
        }

        else
        {
          if (v178 >= *(v247 + 16))
          {
            __break(1u);
            goto LABEL_124;
          }

          v181 = *(v180 + 8 * v178 + 32);
        }

        v182 = v181;
        v250 = v181;
        closure #5 in AppInfoDataProvider.equivalentAppInfo(span:)(v176);

        v251[0] = v179;
        v183 = v176;
        v185 = *(v179 + 16);
        v184 = *(v179 + 24);
        v49 = (v185 + 1);
        if (v185 >= v184 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v184 > 1), v185 + 1, 1);
          v179 = v251[0];
        }

        *(v179 + 16) = v49;
        (*(v234 + 32))(v179 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v185, v183, v233);
        ++v178;
        v176 = v183;
        v180 = v177;
        if (v48 == v175)
        {

          v186 = v227;
          v149 = v244;
          goto LABEL_109;
        }
      }

LABEL_121:
      __break(1u);
LABEL_122:
      swift_once();
LABEL_11:
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.pommes);
      (*(v48 + 16))(v51, v242, v49);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v230;
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v251[0] = v58;
        *v57 = 136315138;
        v59 = Siri_Nlu_External_Span.matcherNames.getter();
        if (*(v59 + 16))
        {
          v60 = v206;
          (*(v232 + 16))(v56, v59 + ((*(v232 + 80) + 32) & ~*(v232 + 80)), v206);
          v61 = 0;
        }

        else
        {
          v61 = 1;
          v60 = v206;
        }

        v224(v56, v61, 1, v60);
        v75 = String.init<A>(describing:)();
        v77 = v76;
        (*(v48 + 8))(v51, v241);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v251);

        *(v57 + 4) = v78;
        _os_log_impl(&dword_2232BB000, v53, v54, "PegasusProxy#equivalentAppInfo matcher not siriVocabularyMatcher matcherNames:%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x223DE0F80](v58, -1, -1);
        MEMORY[0x223DE0F80](v57, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v51, v49);
      }

      goto LABEL_24;
    }

    goto LABEL_127;
  }

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
    v136 = swift_slowAlloc();
    v251[0] = v136;
    *v135 = 136315138;
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v49, v251);

    *(v135 + 4) = v137;
    _os_log_impl(&dword_2232BB000, v133, v134, "PegasusProxy#equivalentAppInfo failed to resolve appData for hidden app bundleIdentifier:%s", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v136);
    MEMORY[0x223DE0F80](v136, -1, -1);
    MEMORY[0x223DE0F80](v135, -1, -1);
  }

  else
  {
  }

LABEL_24:
  v79 = v237;
  v80 = v235;
  (*(v237 + 56))(v236, 1, 1, v235);
  return (*(v79 + 8))(v239, v80);
}

uint64_t specialized NSDictionary.arrayValue<A>(for:)()
{
  v1 = MEMORY[0x223DDF550]();
  v2 = [v0 objectForKey_];

  if (v2)
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
  if (!*(&v12 + 1))
  {
    outlined destroy of MediaUserStateCenter?(v13, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9;
  v10 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v13);
      outlined init with take of Any(v13, &v11);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
      if ((swift_dynamicCast() & 1) != 0 && v8)
      {
        MEMORY[0x223DDF820]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v10;
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t closure #5 in AppInfoDataProvider.equivalentAppInfo(span:)@<X0>(uint64_t a1@<X8>)
{
  Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.init()();
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  object = NSDictionary.stringValue(for:)(v2).value._object;

  v35 = a1;
  if (object)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_33:
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v34[0] = v29;
      *v7 = 136315138;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v34);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_2232BB000, v5, v6, "PegasusProxy#equivalentAppInfo unable find id from key:%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }

    Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = specialized NSDictionary.arrayValue<A>(for:)();

  if (v11)
  {
    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_35;
      }
    }

    v13 = 0;
    v14 = *MEMORY[0x277CD4480];
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v28 = v15;
      v16 = v13;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x223DDFF80](v16, v11);
        }

        else
        {
          if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v17 = *(v11 + 8 * v16 + 32);
        }

        v18 = v17;
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if ([v17 objectForKey_])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v32 = 0u;
          v33 = 0u;
        }

        v34[0] = v32;
        v34[1] = v33;
        if (*(&v33 + 1))
        {
          break;
        }

        outlined destroy of MediaUserStateCenter?(v34, &_sypSgMd, &_sypSgMR);
LABEL_12:
        ++v16;
        if (v13 == v12)
        {
          goto LABEL_35;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v19 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      v23 = v19;
      if (v22 >= v21 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
      }

      *(v23 + 2) = v22 + 1;
      v15 = v23;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v30;
      *(v24 + 5) = v31;
      if (v13 == v12)
      {
LABEL_35:

        Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
        break;
      }
    }
  }

  v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26.value = NSDictionary.BOOLeanValue(for:)(v25).value;

  if (v26.value != 2)
  {
    return MEMORY[0x223DDB620](v26.value);
  }

  return result;
}

uint64_t closure #6 in AppInfoDataProvider.equivalentAppInfo(span:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v7[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNMetadataProvider, 0x277D23C38);
  v7[4] = &protocol witness table for LNMetadataProvider;
  v7[0] = v5;
  AppIntentMetadataMapper.getAppIntentMetadata(bundleId:)(a2, a3);
  outlined destroy of AppIntentMetadataMapper(v7);
  return Apple_Parsec_Siri_V2alpha_AppInfo.appIntentsProtocolMetadata.setter();
}

uint64_t AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)(unint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v92 = type metadata accessor for Locale.Language();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v87 - v10;
  v89 = type metadata accessor for Locale();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v95 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
LABEL_50:
    v14 = swift_once();
  }

  v94 = v87;
  v17 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v14);
  v83 = v4;
  v84 = a1;
  v85 = a2;
  LOBYTE(v86) = v5 & 1;
  Date.init()();
  v18 = *(*v17 + 200);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  v85 = &v82;
  v86 = v19;
  LOBYTE(v83) = 2;
  v18(v108, 0xD00000000000003BLL, 0x80000002234DC740, 0, v16, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 155, "getVocabularyConcepts(bundleId:allowPlaceholder:)", 49, v83, partial apply for closure #1 in AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:));
  v13[1](v16, v12);
  v12 = v108[0];
  v20 = [*(v4 + 56) languageCode];
  if (v20)
  {
    v87[1] = 0;
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v108[0] = v22;
    v108[1] = v24;
    v106 = 45;
    v107 = 0xE100000000000000;
    v104 = 95;
    v105 = 0xE100000000000000;
    v85 = lazy protocol witness table accessor for type String and conformance String();
    v86 = v85;
    v83 = MEMORY[0x277D837D0];
    v84 = v85;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v16 = v26;

    v27 = static Locale.canonicalLanguageIdentifier(from:)();
    v29 = v28;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.pommes);

    v94 = v31;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v108[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v16, v108);
      *(v34 + 12) = 2080;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v108);
      _os_log_impl(&dword_2232BB000, v32, v33, "PegasusProxy#equivalentAppInfo siriLocale: %s canonical: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    v36 = v93;
    v37 = v92;
    v38 = v91;
    v39 = v90;
    Locale.init(identifier:)();
    v97 = v27;
    v98 = v29;
    v99 = Locale.identifier.getter();
    v100 = v40;
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    (*(v38 + 8))(v39, v37);
    v41 = type metadata accessor for Locale.LanguageCode();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v36, 1, v41) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v36, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v43 = MEMORY[0x223DD91C0]();
      v44 = v49;
      (*(v42 + 8))(v36, v41);
    }

    v5 = v94;
    v4 = 0;
    a2 = v96;
    v101 = v43;
    v102 = v44;
    v103 = xmmword_2234D3D20;
    v50 = MEMORY[0x277D84F90];
    a1 = 4;
    v13 = v96;
LABEL_16:
    if (v4 <= 4)
    {
      v51 = 4;
    }

    else
    {
      v51 = v4;
    }

    v52 = v51 + 1;
    v53 = 16 * v4 + 40;
    while (v4 != 4)
    {
      if (v52 == ++v4)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v54 = v53 + 16;
      v55 = *&v96[v53];
      v53 += 16;
      if (v55)
      {
        v56 = v5;
        v57 = *(&v93 + v54);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v16 = *(v50 + 2);
        v58 = *(v50 + 3);
        if (v16 >= v58 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v16 + 1, 1, v50);
        }

        *(v50 + 2) = v16 + 1;
        v59 = &v50[16 * v16];
        *(v59 + 4) = v57;
        *(v59 + 5) = v55;
        v5 = v56;
        a2 = v96;
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayDestroy();
    v60 = *(v50 + 2);
    if (v60)
    {
      a2 = 0;
      v13 = (v50 + 40);
      while (a2 < *(v50 + 2))
      {
        if (*(v12 + 16))
        {
          v4 = *(v13 - 1);
          a1 = *v13;

          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v4, a1);
          if (v62)
          {
            v67 = v61;

            v68 = *(*(v12 + 56) + 8 * v67);

            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v108[0] = v72;
              *v71 = 136315138;
              v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, a1, v108);

              *(v71 + 4) = v73;
              _os_log_impl(&dword_2232BB000, v69, v70, "PegasusProxy#equivalentAppInfo matched vocabulary for locale identifier: %s", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v72);
              MEMORY[0x223DE0F80](v72, -1, -1);
              MEMORY[0x223DE0F80](v71, -1, -1);
            }

            else
            {
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = specialized NSDictionary.arrayValue<A>(for:)();

            if (v74)
            {
              (*(v88 + 8))(v95, v89);

              return v74;
            }

            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v108[0] = v78;
              *v77 = 136315138;
              v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v108);

              *(v77 + 4) = v81;
              _os_log_impl(&dword_2232BB000, v75, v76, "PegasusProxy#equivalentAppInfo no policies found in vocabulary for key:%s", v77, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v78);
              MEMORY[0x223DE0F80](v78, -1, -1);
              MEMORY[0x223DE0F80](v77, -1, -1);
            }

            goto LABEL_38;
          }
        }

        a2 = (a2 + 1);
        v13 += 2;
        if (v60 == a2)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_49;
    }

LABEL_35:

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2232BB000, v63, v64, "PegasusProxy#equivalentAppInfo no vocabulary matches for any locale identifier", v65, 2u);
      MEMORY[0x223DE0F80](v65, -1, -1);
    }

LABEL_38:
    (*(v88 + 8))(v95, v89);
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pommes);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2232BB000, v46, v47, "PegasusProxy#equivalentAppInfo unable get siriLocale", v48, 2u);
      MEMORY[0x223DE0F80](v48, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t AppInfoDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AppInfoDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance AppInfoDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 128))();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 128);
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

uint64_t partial apply for closure #1 in AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  result = (*(v8 + 24))(v4, v5, v6, v7, v8);
  *a1 = result;
  return result;
}

double partial apply for closure #3 in AppInfoDataProvider.equivalentAppInfo(span:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v11, v4, v5, *v6, v7, v8);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type [NSDictionary] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSDictionary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSDictionary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSDictionary] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t key path setter for MarketplaceInfoDataProvider.marketplaceInfo : MarketplaceInfoDataProvider(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(a1, &v8 - v5);
  return (*(**a2 + 96))(v6);
}

uint64_t MarketplaceInfoDataProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t MarketplaceInfoDataProvider.init()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t static MarketplaceInfoDataProvider.make()()
{
  type metadata accessor for MarketplaceInfoDataProvider(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v0);
}

uint64_t type metadata accessor for MarketplaceInfoDataProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for MarketplaceInfoDataProvider;
  if (!type metadata singleton initialization cache for MarketplaceInfoDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v50[4] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43[-v12];
  v14 = *(*v0 + 88);
  v47 = *v0 + 88;
  v48 = v14;
  v14(v11);
  v15 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v13);
  if (v18 == 1)
  {
    v50[0] = 0;
    domain_answer = os_eligibility_get_domain_answer();
    if (domain_answer)
    {
      v20 = domain_answer;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.pommes);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 1) = v20;
      v25 = "MarketplaceInfoDataProvider could not retrieve HYDROGEN domain eligibility information, assuming ineligible. EligibilityError: %d";
      v26 = v23;
      v27 = v22;
      v28 = v24;
      v29 = 8;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      v45 = __swift_project_value_buffer(v30, static Logger.pommes);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v44 = v32;
        v34 = v33;
        *v33 = 134217984;
        swift_beginAccess();
        *(v34 + 1) = v50[0];
        _os_log_impl(&dword_2232BB000, v31, v44, "MarketplaceInfoDataProvider device eligibility: %llu", v34, 0xCu);
        MEMORY[0x223DE0F80](v34, -1, -1);
      }

      MEMORY[0x28223BE20](v35);
      *&v43[-16] = v50;
      lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo, MEMORY[0x277D393F0], MEMORY[0x277D393E8]);
      v36 = v49;
      static Message.with(_:)();
      v49 = v36;
      (*(v16 + 56))(v10, 0, 1, v15);
      v37 = (*(*v1 + 96))(v10);
      v48(v37);
      if (v17(v7, 1, v15))
      {
        outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v7);
      }

      else
      {
        v38 = Apple_Parsec_Search_V2_MarketplaceInfo.isMarketplaceEligible.getter();
        outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v7);
        if (v38)
        {
          v39 = type metadata accessor for TaskPriority();
          v40 = v46;
          (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v1;

          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), v41);

          return;
        }
      }

      v22 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v22, v42))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "MarketplaceInfoDataProvider device ineligible";
      v26 = v42;
      v27 = v22;
      v28 = v24;
      v29 = 2;
    }

    _os_log_impl(&dword_2232BB000, v27, v26, v25, v28, v29);
    MEMORY[0x223DE0F80](v24, -1, -1);
LABEL_18:
  }
}

uint64_t closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

void closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "MarketplaceInfoDataProvider fetching distributors", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static PerformanceUtil.shared;
  Date.init()();
  v8 = *(*v5 + 208) + **(*v5 + 208);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  *v6 = v0;
  v6[1] = closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:);

  __asm { BRAA            X8, X16 }
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    MEMORY[0x2822009F8](closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
  }
}

uint64_t closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = (*(**(v0 + 56) + 104))(v0 + 16);
  v3 = v2;
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  *(v0 + 120) = v5;
  if (v5)
  {
    v1(v0 + 16, 0);
    **(v0 + 48) = *(v0 + 120) != 0;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:);

    return MEMORY[0x2821237B8]();
  }
}

{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v17;
    v16 = v3;
    v5 = (v1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace and conformance Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace, MEMORY[0x277D393E0], MEMORY[0x277D393D8]);

      static Message.with(_:)();

      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      *(v17 + 16) = v10 + 1;
      (*(v16 + 32))(v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v10, v11, v12);
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v13 = *(v0 + 88);
  MEMORY[0x223DDA7F0](v4);
  v13(v0 + 16, 0);
  **(v0 + 48) = *(v0 + 120) != 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t MarketplaceInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
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
    _os_log_impl(&dword_2232BB000, v3, v4, "MarketplaceInfoDataProvider returning marketplace info", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(*v1 + 88);

  return v6();
}

uint64_t MarketplaceInfoDataProvider.__deallocating_deinit()
{
  outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v0 + OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(a1, v4, v5, v6);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void type metadata completion function for MarketplaceInfoDataProvider(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MarketplaceInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 136);
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

void type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Search_V2_MarketplaceInfo?)
  {
    type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Parsec_Search_V2_MarketplaceInfo?);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(a1, v1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x223DDA7D0](v2, v1);
}

id PommesCacheInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*PommesCacheInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesCacheInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PommesCacheInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t PommesCacheInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupStarted(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59F00]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D59F18]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setStartedOrChanged:v9];
        [v6 setCacheLookupContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log POMMES cache look up started event", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupEnded(requestId:pommesCandidateId:status:resultDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D59F00]) init];
    if (v13)
    {
      v24 = v13;
      v14 = [objc_allocWithZone(MEMORY[0x277D59F08]) init];
      if (v14)
      {
        v15 = v14;
        [v14 setStatus_];
        if (a6)
        {
          v16 = MEMORY[0x223DDF550](a5, a6);
        }

        else
        {
          v16 = 0;
        }

        [v15 setResultDomain_];

        [v24 setEnded:v15];
        [v12 setCacheLookupContext:v24];
        v21 = [objc_opt_self() processInfo];
        v22 = NSProcessInfo.isRunningUnitTests.getter();

        if (v22)
        {
          v23 = (*(*v7 + 96))();
        }

        else
        {
          v23 = [objc_opt_self() sharedStream];
        }

        [v23 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_18;
      }

      v17 = v24;
    }

    else
    {
      v17 = v12;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v24 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v24, v19, "Unable to log POMMES cache look up ended event", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_18:
}

void PommesCacheInstrumentationUtil.logPommesCacheStoringStarted(requestId:pommesCandidateId:resultDomain:resultSizeInBytes:timeToLiveInSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D59F40]) init];
    if (v15)
    {
      v26 = v15;
      v16 = [objc_allocWithZone(MEMORY[0x277D59F58]) init];
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0x223DDF550](a4, a5);
        [v17 setResultDomain_];

        [v17 setResultSizeInBytes_];
        [v17 setTimeToLiveInSeconds_];
        [v26 setStartedOrChanged:v17];
        [v14 setCacheStoringContext:v26];
        v19 = [objc_opt_self() processInfo];
        v20 = NSProcessInfo.isRunningUnitTests.getter();

        if (v20)
        {
          v21 = (*(*v8 + 96))();
        }

        else
        {
          v21 = [objc_opt_self() sharedStream];
        }

        [v21 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v22 = v26;
    }

    else
    {
      v22 = v14;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.pommes);
  v26 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2232BB000, v26, v24, "Unable to log POMMES cache storing started event", v25, 2u);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheStoringEnded(requestId:pommesCandidateId:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59F40]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59F48]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setStatus_];
        [v19 setEnded:v11];
        [v8 setCacheStoringContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache storing ended event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheInvalidationStarted(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59EE0]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59EF8]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v19 setStartedOrChanged:v11];
        [v8 setCacheInvalidationContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache invalidation started event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupFailed(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, Class *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(*a5) init];
    if (v17)
    {
      v27 = v17;
      v18 = [objc_allocWithZone(*a6) init];
      if (v18)
      {
        v19 = v18;
        [v18 setReason_];
        [v27 setFailed:v19];
        [v16 *a7];
        v20 = [objc_opt_self() processInfo];
        v21 = NSProcessInfo.isRunningUnitTests.getter();

        if (v21)
        {
          v22 = (*(*v13 + 96))();
        }

        else
        {
          v22 = [objc_opt_self() sharedStream];
        }

        [v22 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v23 = v27;
    }

    else
    {
      v23 = v16;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheInvalidationEnded(requestId:pommesCandidateId:numberOfCacheKeysInvalidated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59EE0]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59EE8]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setNumberOfCacheKeysInvalidated_];
        [v19 setEnded:v11];
        [v8 setCacheInvalidationContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache invalidation ended event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

uint64_t PommesCacheInstrumentationUtil.logPommesCacheMaintenanceStarted(secondsSinceLastMaintenanceStarted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PommesCandidateId();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v6);
  outlined destroy of PommesCandidateId?(v6);
  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277D59F38]) init];
      if (v11)
      {
        v12 = v11;
        if ((a1 & 0x100000000) == 0)
        {
          [v11 setTimeSinceLastMaintenanceInSeconds_];
        }

        [v10 setStartedOrChanged:v12];
        [v8 setCacheMaintenanceContext:v10];
        UUID.init()();
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v8);

        v13 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v10 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v10 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v10, v15, "Unable to log POMMESCacheMaintenanceStarted event", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  v13 = 1;
LABEL_15:

  v17 = type metadata accessor for UUID();
  return (*(*(v17 - 8) + 56))(a2, v13, 1, v17);
}

void PommesCacheInstrumentationUtil.logPommesCacheMaintenanceEnded(isolatedStreamUUID:numberOfCacheEntriesUpdated:totalCacheEntries:secondsSinceMaintenanceStarted:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PommesCandidateId();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v11);
  outlined destroy of PommesCandidateId?(v11);
  if (v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x277D59F28]) init];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfEntriesUpdated:a2];
        [v17 setTotalCacheEntries:a3];
        [v17 setTimeSinceMaintenanceStartedInSeconds:a4];
        [v17 setReason:a5];
        [v15 setEnded_];
        [v13 setCacheMaintenanceContext_];
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v13);

        goto LABEL_12;
      }
    }

    else
    {
      v15 = v13;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v17, v19, "Unable to log POMMESCacheMaintenanceEnded event", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_12:
}

void PommesCacheInstrumentationUtil.logPommesCacheMaintenanceFailed(isolatedStreamUUID:reason:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for PommesCandidateId();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v5);
  outlined destroy of PommesCandidateId?(v5);
  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D59F30]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason:a2];
        [v9 setFailed_];
        [v7 setCacheMaintenanceContext_];
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v7);

        goto LABEL_12;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);
  v11 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v11, v13, "Unable to log POMMESCacheMaintenanceFailed event", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

LABEL_12:
}

void PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 processInfo];
  v6 = NSProcessInfo.isRunningUnitTests.getter();

  if (v6)
  {
    oslog = (*(*v2 + 96))();
    (*((*MEMORY[0x277D85000] & oslog->isa) + 0x78))(a1);
  }

  else
  {
    v7 = [v4 processInfo];
    v8 = NSProcessInfo.isRunningUnitTests.getter();

    if (v8)
    {
      (*(*v2 + 96))();
    }

    else
    {
      v9 = [objc_opt_self() sharedStream];
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      oslog = UUID._bridgeToObjectiveC()().super.isa;
      [v11 emitMessage:a1 isolatedStreamUUID:?];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.pommes);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2232BB000, oslog, v13, "PegasusCacheManager : Default stream is not an instance of SiriAnalyticsClientMessageStream", v14, 2u);
        MEMORY[0x223DE0F80](v14, -1, -1);
      }
    }
  }
}

uint64_t PommesCacheInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of PommesCandidateId?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Collection<>.merge<A>(with:by:isAscending:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a6;
  v58 = a3;
  v64 = a1;
  v57 = a2;
  v56 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v56 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v48 - v14;
  v16 = *v15;
  v17 = *(*v15 - 8);
  v18 = MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = 0;
  v23 = 0;
  v67 = Array.init()();
  v24 = (v17 + 16);
  v52 = (v10 + 8);
  v53 = (v17 + 8);
  v60 = a4;
  v61 = (v17 + 16);
  v50 = a5;
  v51 = v21;
LABEL_3:
  for (i = v22; ; v22 = i)
  {
    while (1)
    {
      if (v23 >= dispatch thunk of Collection.count.getter() && v22 >= MEMORY[0x223DDF8C0](v64, v16))
      {
        return v67;
      }

      if (v23 == dispatch thunk of Collection.count.getter())
      {
        Array.subscript.getter();
        type metadata accessor for Array();
        result = Array.append(_:)();
        v26 = __OFADD__(v22++, 1);
        if (!v26)
        {
          goto LABEL_3;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v22 != MEMORY[0x223DDF8C0](v64, v16))
      {
        break;
      }

      v66 = v23;
      v27 = dispatch thunk of Collection.subscript.read();
      (*v24)(v21);
      v27(v65, 0);
      type metadata accessor for Array();
      result = Array.append(_:)();
      v26 = __OFADD__(v23++, 1);
      if (v26)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    if (v58)
    {
      break;
    }

    v66 = v23;
    v38 = dispatch thunk of Collection.subscript.read();
    v49 = *v24;
    v49(v21);
    v38(v65, 0);
    swift_getAtKeyPath();
    v39 = *v53;
    (*v53)(v21, v16);
    v40 = v54;
    Array.subscript.getter();
    v31 = v7;
    v41 = v55;
    swift_getAtKeyPath();
    v39(v40, v16);
    v42 = v62;
    v43 = v56;
    LOBYTE(v39) = dispatch thunk of static Comparable.< infix(_:_:)();
    v44 = *v52;
    (*v52)(v41, v43);
    v44(v42, v43);
    if (v39)
    {
      v7 = v31;
      v21 = v51;
      v47 = i;
      Array.subscript.getter();
      type metadata accessor for Array();
      result = Array.append(_:)();
      v26 = __OFADD__(v47, 1);
      v22 = v47 + 1;
      if (!v26)
      {
LABEL_21:
        v24 = v61;
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    v66 = v23;
    v45 = dispatch thunk of Collection.subscript.read();
    v21 = v51;
    v49(v51);
    v45(v65, 0);
    type metadata accessor for Array();
    result = Array.append(_:)();
    v26 = __OFADD__(v23++, 1);
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_16:
    v7 = v31;
    v24 = v61;
  }

  v66 = v23;
  v28 = dispatch thunk of Collection.subscript.read();
  v48 = *v24;
  v48(v21);
  v28(v65, 0);
  swift_getAtKeyPath();
  v29 = *v53;
  (*v53)(v21, v16);
  v30 = v54;
  Array.subscript.getter();
  v31 = v7;
  v32 = v55;
  swift_getAtKeyPath();
  v29(v30, v16);
  v33 = v62;
  v34 = v56;
  LODWORD(v49) = dispatch thunk of static Comparable.< infix(_:_:)();
  v35 = *v52;
  (*v52)(v32, v34);
  v35(v33, v34);
  if (v49)
  {
    v66 = v23;
    v36 = dispatch thunk of Collection.subscript.read();
    v37 = v51;
    v48(v51);
    v36(v65, 0);
    type metadata accessor for Array();
    v21 = v37;
    result = Array.append(_:)();
    v26 = __OFADD__(v23++, 1);
    if (v26)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = v31;
  v21 = v51;
  v46 = i;
  Array.subscript.getter();
  type metadata accessor for Array();
  result = Array.append(_:)();
  v26 = __OFADD__(v46, 1);
  v22 = v46 + 1;
  if (!v26)
  {
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:isRelatedQuestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v27 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 32))(v26 + v27, a3, v28);
  v29 = (v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v30 = a6;
  v30[1] = a7;
  v31 = (v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v31 = a8;
  v31[1] = a9;
  v32 = (v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v32 = a10;
  v32[1] = a11;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v26 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = a20;
  return v26;
}

unint64_t PommesRequestContext.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x756F536F69647561;
      break;
    case 4:
    case 10:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x7246736579457369;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x4D6E496567726162;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesRequestContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PommesRequestContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesRequestContext.assistantId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PommesRequestContext.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesRequestContext.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);

  return v1;
}

uint64_t PommesRequestContext.audioSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);

  return v1;
}

uint64_t PommesRequestContext.audioDestination.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);

  return v1;
}

uint64_t PommesRequestContext.responseMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);

  return v1;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(v12 + 16);
  v18(&v25 - v16, a3, v11);
  v18(v15, v17, v11);
  v19 = type metadata accessor for DateInterval();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v24 = 0;
  BYTE4(v23) = 0;
  LODWORD(v23) = 0;
  v20 = (*(v5 + 216))(a1, v26, v15, v27, v28, 0, 0, 0, 0, 0, 0, v23, MEMORY[0x277D84F90], v10, MEMORY[0x277D84F90], v24);
  v21 = *(v12 + 8);
  v21(a3, v11);
  v21(v17, v11);
  return v20;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a3, v15);
  v19 = type metadata accessor for DateInterval();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  BYTE4(v22) = 0;
  LODWORD(v22) = 0;
  v20 = (*(v6 + 216))(a1, a2, v18, a4, v24, 0, 0, 0, 0, 0, 0, v22, MEMORY[0x277D84F90], v14, a6, 0);
  (*(v16 + 8))(a3, v15);
  return v20;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v26 = type metadata accessor for UUID();
  (*(*(v26 - 8) + 32))(v24 + v25, a3, v26);
  v27 = (v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v28 = a6;
  v28[1] = a7;
  v29 = (v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v29 = a8;
  v29[1] = a9;
  v30 = (v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v30 = a10;
  v30[1] = a11;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a15;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a16;
  outlined init with take of DateInterval?(a17, v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a18;
  *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v24;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v24 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 32))(v18 + v24, a3, v25);
  v26 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v26 = a4;
  v26[1] = a5;
  v27 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v27 = a6;
  v27[1] = a7;
  v28 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v28 = a8;
  v28[1] = a9;
  v29 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v29 = a10;
  v29[1] = a11;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a15;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a16;
  outlined init with take of DateInterval?(a17, v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a18;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v18;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 32))(v25 + v26, a3, v27);
  v28 = (v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v29 = a6;
  v29[1] = a7;
  v30 = (v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v30 = a8;
  v30[1] = a9;
  v31 = (v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v31 = a10;
  v31[1] = a11;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v25 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v25;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v24 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 32))(v19 + v24, a3, v25);
  v26 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v26 = a4;
  v26[1] = a5;
  v27 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v27 = a6;
  v27[1] = a7;
  v28 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v28 = a8;
  v28[1] = a9;
  v29 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v29 = a10;
  v29[1] = a11;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v19;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:isRelatedQuestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v25 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v26 = type metadata accessor for UUID();
  (*(*(v26 - 8) + 32))(v20 + v25, a3, v26);
  v27 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v28 = a6;
  v28[1] = a7;
  v29 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v29 = a8;
  v29[1] = a9;
  v30 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v30 = a10;
  v30[1] = a11;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = a20;
  return v20;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PommesRequestContext.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PommesRequestContext.init(from:)(a1);
  return v2;
}

uint64_t PommesRequestContext.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for UUID();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMR);
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - v10;
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();
  v36 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v13 = v39;
    type metadata accessor for PommesRequestContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v9;
    v34 = v6;
    LOBYTE(v41) = 0;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v39;
    *(v39 + 16) = v15;
    *(v16 + 24) = v17;
    LOBYTE(v41) = 1;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v18 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 32))(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v8, v18);
    LOBYTE(v41) = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v41) = 3;
    v33 = 0;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v41) = 4;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v41) = 5;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v41) = 6;
    *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 7;
    *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 8;
    *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 9;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 10;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v40 = 11;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v41;
    type metadata accessor for DateInterval();
    LOBYTE(v41) = 12;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of DateInterval?(v5, v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
    v40 = 13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v41;
    LOBYTE(v41) = 14;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v14 + 8))(v36, v37);
    v13 = v39;
    *(v39 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = v32 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v13;
}

unint64_t lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

uint64_t PommesRequestContext.__allocating_init(requestContextMessage:)(void *a1)
{
  v2 = specialized PommesRequestContext.__allocating_init(requestContextMessage:)(a1);

  return v2;
}

uint64_t PommesRequestContext.__allocating_init(requestContextData:assistantId:sessionId:requestId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v42 = a5;
  v43 = a6;
  v6 = a4;
  v40 = a2;
  v41 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29[-v9];
  v37 = type metadata accessor for UUID();
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, v6);
  v14 = RequestContextData.audioSource.getter();
  v35 = v15;
  v36 = v14;
  v16 = RequestContextData.audioDestination.getter();
  v33 = v17;
  v34 = v16;
  v18 = RequestContextData.responseMode.getter();
  v31 = v19;
  v32 = v18;
  v30 = RequestContextData.isEyesFree.getter();
  v20 = RequestContextData.isVoiceTriggerEnabled.getter();
  LOBYTE(v6) = RequestContextData.isTextToSpeechEnabled.getter();
  v21 = RequestContextData.isTriggerlessFollowup.getter();
  v22 = RequestContextData.bargeInModes.getter();
  RequestContextData.approximatePreviousTTSInterval.getter();
  v23 = RequestContextData.deviceRestrictions.getter();
  v24 = RequestContextData.suggestionRequestType.getter() == 1;
  BYTE4(v28) = v21 & 1;
  BYTE3(v28) = 0;
  BYTE2(v28) = v6 & 1;
  BYTE1(v28) = v20 & 1;
  LOBYTE(v28) = v30 & 1;
  v26 = (*(v39 + 216))(v40, v41, v13, v42, v43, v36, v35, v34, v33, v32, v31, v28, v22, v10, v23, v24 & ~v25);

  (*(v11 + 8))(v38, v37);
  return v26;
}

uint64_t PommesRequestContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes);
    v11 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 12;
    type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);
    v11 = 13;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PommesRequestContext.responseModeInteractionType()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for ResponseMode();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;

  ResponseMode.init(aceValue:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v4, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
LABEL_3:
    v18 = type metadata accessor for InteractionType();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  v41 = a1;
  (*(v6 + 32))(v17, v4, v5);
  v40 = *(v6 + 16);
  v40(v15, v17, v5);
  static ResponseMode.voiceOnly.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x277D61CC8], MEMORY[0x277D61CD8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v6 + 8);
  v21(v12, v5);
  if (v20 & 1) != 0 || (static ResponseMode.voiceForward.getter(), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v21(v12, v5), (v22))
  {
    v21(v15, v5);
    v21(v17, v5);
    v23 = MEMORY[0x277D61D90];
  }

  else
  {
    static ResponseMode.displayForward.getter();
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21(v12, v5);
    if (v28)
    {
      v21(v15, v5);
    }

    else
    {
      static ResponseMode.displayOnly.getter();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21(v12, v5);
      v21(v15, v5);
      if ((v29 & 1) == 0)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.pommes);
        v40(v9, v17, v5);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v42 = v40;
          *v33 = 136315138;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x277D61CC8], MEMORY[0x277D5C1F0]);
          v34 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v35;
          v21(v9, v5);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v42);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_2232BB000, v31, v32, "Unknown (future?) response mode value: %s", v33, 0xCu);
          v38 = v40;
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x223DE0F80](v38, -1, -1);
          MEMORY[0x223DE0F80](v33, -1, -1);
        }

        else
        {

          v21(v9, v5);
        }

        v21(v17, v5);
        a1 = v41;
        goto LABEL_3;
      }
    }

    v21(v17, v5);
    v23 = MEMORY[0x277D61D98];
  }

  v24 = *v23;
  v25 = type metadata accessor for InteractionType();
  v26 = *(v25 - 8);
  v27 = v41;
  (*(v26 + 104))(v41, v24, v25);
  return (*(v26 + 56))(v27, 0, 1, v25);
}

uint64_t PommesRequestContext.mappedInteractionType(inputOrigin:previousInteractionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v50 = a2;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v38 - v5;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  MEMORY[0x28223BE20](v6);
  v43 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InteractionTypeHelper();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v38 - v15;
  v17 = type metadata accessor for DeviceRestrictions();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v38 - v22;

  DeviceRestrictions.init(aceValue:)();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0], MEMORY[0x277D61DC8]);
  v38[1] = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v24 = *(v18 + 8);
  v24(v21, v17);
  static DeviceRestrictions.carDNDMode.getter();
  v38[0] = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v24(v21, v17);

  v42 = v16;
  AudioSource.init(aceValue:)();
  v46 = v3;
  v25 = v39;

  v45 = v13;
  AudioDestination.init(aceValue:)();
  static InteractionTypeHelper.shared.getter();
  v26 = v41;
  outlined init with copy of MediaUserStateCenter?(v44, v41, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v27 = v40;
  v28 = *(v40 + 48);
  v29 = v26;
  if (v28(v26, 1, v25) == 1)
  {
    v30 = v43;
    (*(v27 + 104))(v43, *MEMORY[0x277D61C50], v25);
    v31 = v28(v29, 1, v25);
    v32 = v30;
    v33 = v27;
    if (v31 != 1)
    {
      outlined destroy of MediaUserStateCenter?(v29, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    v32 = v43;
    (*(v27 + 32))(v43, v26, v25);
    v33 = v27;
  }

  v34 = v45;
  v35 = v42;
  v36 = v51;
  InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)();
  (*(v33 + 8))(v32, v25);
  (*(v47 + 8))(v36, v48);
  outlined destroy of MediaUserStateCenter?(v34, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of MediaUserStateCenter?(v35, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return (v24)(v23, v17);
}

uint64_t PommesRequestContext.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(302);
  MEMORY[0x223DDF6D0](0x6E61747369737361, 0xEE0022203A644974);
  MEMORY[0x223DDF6D0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x223DDF6D0](0x6973736573202C22, 0xEE00203A64496E6FLL);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v5);

  MEMORY[0x223DDF6D0](0x736575716572202CLL, 0xED0000203A644974);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8));
  MEMORY[0x223DDF6D0](0x536F69647561202CLL, 0xEF203A656372756FLL);
  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);
  v27 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  v28 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v7);

  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DC960);
  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);
  v27 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  v28 = v8;

  v9 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v9);

  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234DC980);
  v10 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode + 8);
  v27 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  v28 = v10;

  v11 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v11);

  MEMORY[0x223DDF6D0](0x6579457369202C22, 0xEF203A6565724673);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v12, v13);

  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DC9A0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v14, v15);

  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DC9C0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v16, v17);

  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC9E0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v18, v19);

  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DCA00);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v20, v21);

  MEMORY[0x223DDF6D0](0x6E4965677261620ALL, 0xEF203A7365646F4DLL);
  v22 = MEMORY[0x277D837D0];
  v23 = MEMORY[0x223DDF850](*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes), MEMORY[0x277D837D0]);
  MEMORY[0x223DDF6D0](v23);

  MEMORY[0x223DDF6D0](0xD000000000000022, 0x80000002234DCA20);
  outlined init with copy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, v4, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v24 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v24);

  MEMORY[0x223DDF6D0](0xD000000000000016, 0x80000002234DCA50);
  v25 = MEMORY[0x223DDF850](*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions), v22);
  MEMORY[0x223DDF6D0](v25);

  return v29;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PommesRequestContext@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 224))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized PommesRequestContext.__allocating_init(requestContextMessage:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MessageBase.assistantId.getter();
  v37 = v9;
  v38 = v8;
  v10 = a1;
  SessionMessageBase.sessionId.getter();

  v11 = v10;
  v12 = RequestMessageBase.requestId.getter();
  v35 = v13;
  v36 = v12;

  v14 = RequestContextMessage.audioSource.getter();
  v33 = v15;
  v34 = v14;
  v16 = RequestContextMessage.audioDestination.getter();
  v31 = v17;
  v32 = v16;
  v18 = RequestContextMessage.responseMode.getter();
  v20 = v19;
  v21 = RequestContextMessage.isEyesFree.getter();
  v22 = RequestContextMessage.isVoiceTriggerEnabled.getter();
  v23 = RequestContextMessage.isTextToSpeechEnabled.getter();
  v24 = RequestContextMessage.isTriggerlessFollowup.getter();
  v25 = RequestContextMessage.bargeInModes.getter();
  RequestContextMessage.approximatePreviousTTSInterval.getter();
  v26 = RequestContextMessage.deviceRestrictions.getter();
  v29 = 0;
  BYTE4(v28) = v24 & 1;
  BYTE3(v28) = 0;
  BYTE2(v28) = v23 & 1;
  BYTE1(v28) = v22 & 1;
  LOBYTE(v28) = v21 & 1;
  return (*(v39 + 216))(v38, v37, v7, v36, v35, v34, v33, v32, v31, v18, v20, v28, v25, v4, v26, v29);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for PommesRequestContext(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateInterval?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DateInterval?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DateInterval?);
    }
  }
}

uint64_t specialized PommesRequestContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F536F69647561 && a2 == 0xEB00000000656372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DCAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7246736579457369 && a2 == 0xEA00000000006565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCAF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DCB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002234DCB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002234DCB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002234DCBB0 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t PommesSearchRequest.hadPreviousClassicTurn.getter()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v1);
  v77 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v3 = MEMORY[0x28223BE20](v71);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = &v69 - v6;
  MEMORY[0x28223BE20](v5);
  v76 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v69 - v9;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PommesContext.Source();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for PommesContext();
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v25 = v24;
  v27 = v26;
  outlined init with copy of MediaUserStateCenter?(v0 + *(v1 + 40), v19, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if ((*(v27 + 48))(v19, 1, v25) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v19, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v28 = v76;
    outlined init with copy of MediaUserStateCenter?(v0 + *(v1 + 56), v76, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v29 = type metadata accessor for InputOrigin();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v28, 1, v29);
    v32 = v77;
    if (v31 != 1)
    {
      v33 = v73;
      outlined init with copy of MediaUserStateCenter?(v28, v73, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      if ((*(v30 + 88))(v33, v29) == *MEMORY[0x277D61C88])
      {
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
          _os_log_impl(&dword_2232BB000, v35, v36, "Had previous Classic turn? FALSE - no PommesContext, but inputOrigin was .serverGenerated, indicating followup from fully on-device previous turn", v37, 2u);
          MEMORY[0x223DE0F80](v37, -1, -1);
        }

LABEL_28:
        outlined destroy of MediaUserStateCenter?(v28, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
        return 0;
      }

      (*(v30 + 8))(v33, v29);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.pommes);
    outlined init with copy of PommesSearchRequest(v0, v32);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v78 = v53;
      *v52 = 136315138;
      outlined init with copy of MediaUserStateCenter?(v32 + *(v23 + 56), v70, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      outlined destroy of PommesSearchRequest(v32);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v78);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_2232BB000, v50, v51, "Had previous Classic turn? FALSE - no PommesContext and inputOrigin is %s, which is ambiguous", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x223DE0F80](v53, -1, -1);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

    else
    {

      outlined destroy of PommesSearchRequest(v32);
    }

    goto LABEL_28;
  }

  (*(v27 + 32))(v22, v19, v25);
  PommesContext.source.getter();
  v38 = (*(v14 + 88))(v16, v13);
  v39 = *MEMORY[0x277D56690];
  (*(v14 + 8))(v16, v13);
  if (v38 != v39)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_21;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Had previous Classic turn? FALSE - PommesContext does not have source equal to .modalityTranslated";
    goto LABEL_20;
  }

  v40 = v72;
  PommesContext.promptContext.getter();
  v42 = v74;
  v41 = v75;
  if ((*(v75 + 48))(v40, 1, v74) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_21;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Had previous Classic turn? FALSE - no conclusive information available";
LABEL_20:
    _os_log_impl(&dword_2232BB000, v44, v45, v47, v46, 2u);
    MEMORY[0x223DE0F80](v46, -1, -1);
LABEL_21:

    (*(v27 + 8))(v22, v25);
    return 0;
  }

  v59 = v69;
  (*(v41 + 32))(v69, v40, v42);
  if (Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_51;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with strictPrompt=true";
    goto LABEL_50;
  }

  v65 = *(Com_Apple_Siri_Product_Proto_PromptContext.promptTargetHints.getter() + 16);

  if (v65)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_51;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with non-empty promptTargetHints";
    goto LABEL_50;
  }

  if (Com_Apple_Siri_Product_Proto_PromptContext.objectDisambiguation.getter())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_51;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with objectDisambiguation=true";
    goto LABEL_50;
  }

  if ((Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter() & 1) == 0)
  {
    (*(v41 + 8))(v59, v42);
    goto LABEL_12;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.pommes);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with dictationPrompt=true";
LABEL_50:
    _os_log_impl(&dword_2232BB000, v61, v62, v64, v63, 2u);
    MEMORY[0x223DE0F80](v63, -1, -1);
  }

LABEL_51:

  (*(v41 + 8))(v59, v42);
  (*(v27 + 8))(v22, v25);
  return 1;
}

uint64_t ClassicFollowupPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v2 = type metadata accessor for PommesSearchReason();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v19 - v7);
  if (PommesSearchRequest.hadPreviousClassicTurn.getter())
  {
    v9 = (a1 + *(type metadata accessor for PommesSearchRequest(0) + 32));
    v10 = *v9;
    v11 = v9[1];
    PommesSearchRequest.pommesCandidateId.getter(v8);
    v12 = type metadata accessor for PommesCandidateId();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v5);
    v13 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(a1, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v10, v11, v8, v5, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ELL, 0x80000002234D4160);
    (*(v3 + 8))(v5, v2);
    outlined destroy of MediaUserStateCenter?(v8, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    result = v13;
    if (v13)
    {
      return result;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v16, v17, "ClassicFollowupPreflightClient#ignore could not build PommesResponse with given parameters", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }
  }

  return 1;
}

uint64_t OnDeviceSearchInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id OnDeviceSearchInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*OnDeviceSearchInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = OnDeviceSearchInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t OnDeviceSearchInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void OnDeviceSearchInstrumentationUtil.logEndOnDeviceSearch(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59FB8]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D59FC0]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setEnded:v9];
        [v6 setOnDeviceIndexSearchContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log end of OnDeviceSearch", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void OnDeviceSearchInstrumentationUtil.logStartOnDeviceSearch(requestId:pommesCandidateId:indexType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, SEL *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277D59FB8]) init];
    if (v17)
    {
      v27 = v17;
      v18 = [objc_allocWithZone(*a5) init];
      if (v18)
      {
        v19 = v18;
        [v18 *a6];
        [v27 *a7];
        [v16 setOnDeviceIndexSearchContext:v27];
        v20 = [objc_opt_self() processInfo];
        v21 = NSProcessInfo.isRunningUnitTests.getter();

        if (v21)
        {
          v22 = (*(*v13 + 96))();
        }

        else
        {
          v22 = [objc_opt_self() sharedStream];
        }

        [v22 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v23 = v27;
    }

    else
    {
      v23 = v16;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

LABEL_15:
}

uint64_t OnDeviceSearchInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PlayThisLibraryItemPreflightClient.__allocating_init(rrClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(a1, v2 + 16);
  return v2;
}

uint64_t PlayThisLibraryItemPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v186 = a1;
  v165 = *v1;
  v166 = type metadata accessor for PommesSearchReason();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = (&v149 - v4);
  v182 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v185 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v161 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Siri_Nlu_External_UserParse();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v8 = MEMORY[0x28223BE20](v174);
  v160 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v173 = &v149 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v180 = (&v149 - v13);
  MEMORY[0x28223BE20](v12);
  v183 = &v149 - v14;
  v15 = type metadata accessor for UsoIdentifier();
  v190 = *(v15 - 8);
  v191 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v187 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v159 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v170 = &v149 - v21;
  MEMORY[0x28223BE20](v20);
  v188 = (&v149 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v171 = &v149 - v24;
  v175 = type metadata accessor for RREntity();
  v25 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v179 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v27 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v29 = &v149 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v149 - v31;
  v33 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(v186 + v181[11], v32, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v32, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_3;
  }

  v172 = v34;
  (*(v34 + 32))(v36, v32, v33);
  outlined init with copy of AppDataProviding((v1 + 2), &v195);
  v41 = v196;
  v42 = v197;
  __swift_project_boxed_opaque_existential_1(&v195, v196);
  v157 = v36;
  v43 = RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(v36, v41, v42);
  v194 = MEMORY[0x277D84F90];
  v45 = v43[2];
  v158 = v33;
  if (!v45)
  {
    v184 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v46 = 0;
  v156 = (v25 + 16);
  v155 = (v25 + 8);
  v184 = MEMORY[0x277D84F90];
  v154 = v45 - 1;
  *&v44 = 136315138;
  v153 = v44;
  do
  {
    v47 = v46;
    while (1)
    {
      if (v47 >= v43[2])
      {
        __break(1u);
        goto LABEL_89;
      }

      outlined init with copy of MediaUserStateCenter?(v43 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v47, v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      v48 = *(v189 + 48);
      RREntity.usoEntity.getter();
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v193[3])
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v193, &_sypSgMd, &_sypSgMR);
LABEL_10:
      ++v47;
      outlined destroy of MediaUserStateCenter?(v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      if (v45 == v47)
      {
        goto LABEL_24;
      }
    }

    type metadata accessor for UsoEntity_common_MediaItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v184 = v192;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.pommes);
    v50 = &v29[v48];
    v51 = v175;
    (*v156)(v179, v50, v175);
    v52 = Logger.logObject.getter();
    v152 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v152))
    {
      v53 = swift_slowAlloc();
      v149 = v53;
      v151 = swift_slowAlloc();
      v193[0] = v151;
      *v53 = v153;
      v150 = v52;
      RREntity.usoEntity.getter();
      v54 = type metadata accessor for UsoBuilderOptions();
      v55 = v171;
      (*(*(v54 - 8) + 56))(v171, 1, 1, v54);
      static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();

      outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
      v56 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v58 = v57;

      (*v155)(v179, v175);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v193);

      v60 = v149;
      *(v149 + 1) = v59;
      v61 = v150;
      v62 = v60;
      _os_log_impl(&dword_2232BB000, v150, v152, "PlayThisLibraryItemPreflightClient#handle found relevantEntity: %s", v60, 0xCu);
      v63 = v151;
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x223DE0F80](v63, -1, -1);
      MEMORY[0x223DE0F80](v62, -1, -1);
    }

    else
    {

      (*v155)(v179, v51);
    }

    v64 = outlined destroy of MediaUserStateCenter?(v29, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
    MEMORY[0x223DDF820](v64);
    if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v46 = v47 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v184 = v194;
  }

  while (v154 != v47);
LABEL_24:

  __swift_destroy_boxed_opaque_existential_1(&v195);
  if (v184 >> 62)
  {
    v65 = __CocoaSet.count.getter();
  }

  else
  {
    v65 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v191;
  v67 = v188;
  if (!v65)
  {
LABEL_45:

    v82 = 0;
LABEL_48:
    v83 = v185;
    v84 = *(v186 + v181[19]);
    v85 = v182;
    v86 = v183;
    v87 = v180;
    if (*(v84 + 16))
    {
      v88 = v177;
      v89 = v176;
      v90 = v178;
      (*(v177 + 16))(v176, v84 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v178);
      v91 = Siri_Nlu_External_Span.matcherNames.getter();
      (*(v88 + 8))(v89, v90);
      if (*(v91 + 16))
      {
        (*(v83 + 16))(v86, v91 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v85);
        v92 = 0;
      }

      else
      {
        v92 = 1;
      }
    }

    else
    {
      v92 = 1;
    }

    (*(v83 + 56))(v86, v92, 1, v85);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    v94 = __swift_project_value_buffer(v93, static Logger.pommes);
    outlined init with copy of MediaUserStateCenter?(v86, v87, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v195 = v98;
      *v97 = 136315138;
      outlined init with copy of MediaUserStateCenter?(v87, v173, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v99 = v82;
      v100 = String.init<A>(describing:)();
      v101 = v87;
      v103 = v102;
      outlined destroy of MediaUserStateCenter?(v101, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v104 = v100;
      v82 = v99;
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v195);
      v86 = v183;

      *(v97 + 4) = v105;
      _os_log_impl(&dword_2232BB000, v95, v96, "PlayThisLibraryItemPreflightClient#handle found userDialogAct: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x223DE0F80](v98, -1, -1);
      v106 = v97;
      v85 = v182;
      MEMORY[0x223DE0F80](v106, -1, -1);
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v87, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    v107 = v172;
    v108 = *(v185 + 48);
    if (v108(v86, 1, v85) == 1)
    {
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v109, v110))
      {
LABEL_79:

        (*(v107 + 8))(v157, v158);
        outlined destroy of MediaUserStateCenter?(v86, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        return 1;
      }

      v111 = swift_slowAlloc();
      *v111 = 0;
      v112 = "PlayThisLibraryItemPreflightClient#handle userDialogAct is nil, this result cannot be used in the audio plugin so ignore and try going to the server";
    }

    else
    {
      if (v82)
      {
        v180 = v108;
        v184 = v94;

        v189 = v82;
        v113 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v114 = v113;
        v115 = *(v113 + 16);
        if (v115)
        {
          v116 = 0;
          v117 = v113 + ((v190[80] + 32) & ~v190[80]);
          v188 = (v190 + 8);
          while (v116 < *(v114 + 16))
          {
            (*(v190 + 2))(v187, v117 + *(v190 + 9) * v116, v191);
            v119 = UsoIdentifier.namespace.getter();
            if (v120)
            {
              if (v119 == 0x6574736973726570 && v120 == 0xED000064695F746ELL)
              {

LABEL_72:

                v121 = v191;
                v122 = *(v190 + 4);
                v123 = v159;
                v122(v159, v187, v191);
                v122(v170, v123, v121);
                v124 = v167;
                PlayThisLibraryItemPreflightClient.audioItem(from:)(v189, v167);
                v125 = v160;
                outlined init with copy of MediaUserStateCenter?(v183, v160, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                v126 = v182;
                v127 = v180;
                if (v180(v125, 1, v182) == 1)
                {
                  Siri_Nlu_External_UserDialogAct.init()();
                  v128 = v127(v125, 1, v126);
                  if (v128 != 1)
                  {
                    v128 = outlined destroy of MediaUserStateCenter?(v125, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                  }
                }

                else
                {
                  v128 = (*(v185 + 32))(v161, v125, v126);
                }

                MEMORY[0x28223BE20](v128);
                v130 = objc_allocWithZone(type metadata accessor for AudioExperience());
                v131 = AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v132 = swift_allocObject();
                *(v132 + 16) = xmmword_2234D0FE0;
                *(v132 + 32) = v131;
                v133 = v186;
                v134 = (v186 + v181[8]);
                v135 = *v134;
                v136 = v134[1];
                v190 = v131;
                v137 = v162;
                PommesSearchRequest.pommesCandidateId.getter(v162);
                v138 = type metadata accessor for PommesCandidateId();
                (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
                v139 = v163;
                default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v163);
                v140 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v133, v132, MEMORY[0x277D84F90], v135, v136, v137, v139, 0x616964656DLL, 0xE500000000000000, 0xD000000000000022, 0x80000002234D4270);

                (*(v164 + 8))(v139, v166);
                outlined destroy of MediaUserStateCenter?(v137, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
                if (v140)
                {
                  (*(v172 + 8))(v157, v158);

                  outlined destroy of MediaUserStateCenter?(v183, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                  (*(v168 + 8))(v124, v169);
                  (*v188)(v170, v191);
                  return v140;
                }

                v141 = v190;
                v142 = Logger.logObject.getter();
                v143 = static os_log_type_t.error.getter();
                v144 = os_log_type_enabled(v142, v143);
                v145 = v169;
                v146 = v158;
                v147 = v172;
                if (v144)
                {
                  v148 = swift_slowAlloc();
                  *v148 = 0;
                  _os_log_impl(&dword_2232BB000, v142, v143, "PlayThisLibraryItemPreflightClient#ignore could not build PommesResponse with given parameters", v148, 2u);
                  MEMORY[0x223DE0F80](v148, -1, -1);
                }

                else
                {
                }

                (*(v147 + 8))(v157, v146);
                outlined destroy of MediaUserStateCenter?(v183, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                (*(v168 + 8))(v124, v145);
                (*v188)(v170, v191);
                return 1;
              }

              v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v118)
              {
                goto LABEL_72;
              }
            }

            ++v116;
            (*v188)(v187, v191);
            if (v115 == v116)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_90;
        }

LABEL_75:

        v86 = v183;
        v107 = v172;
      }

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v109, v110))
      {
        goto LABEL_79;
      }

      v111 = swift_slowAlloc();
      *v111 = 0;
      v112 = "PlayThisLibraryItemPreflightClient#handle no conclusive result, ignoring";
    }

    _os_log_impl(&dword_2232BB000, v109, v110, v112, v111, 2u);
    MEMORY[0x223DE0F80](v111, -1, -1);
    goto LABEL_79;
  }

  v68 = 0;
  v69 = v184 & 0xC000000000000001;
  v175 = v184 & 0xFFFFFFFFFFFFFF8;
  v171 = (v184 + 32);
  v70 = (v190 + 8);
  v156 = v65;
  v155 = (v184 & 0xC000000000000001);
  while (1)
  {
    if (v69)
    {
      v71 = MEMORY[0x223DDFF80](v68, v184);
      v72 = __OFADD__(v68, 1);
      v73 = v68 + 1;
      if (v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v68 >= *(v175 + 16))
      {
        goto LABEL_91;
      }

      v72 = __OFADD__(v68, 1);
      v73 = v68 + 1;
      if (v72)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    v179 = v73;
    v189 = v71;
    v74 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v75 = v74;
    v76 = *(v74 + 16);
    if (v76)
    {
      break;
    }

LABEL_28:

    v68 = v179;
    v69 = v155;
    if (v179 == v156)
    {
      goto LABEL_45;
    }
  }

  v77 = 0;
  v78 = v74 + ((v190[80] + 32) & ~v190[80]);
  while (v77 < *(v75 + 16))
  {
    (*(v190 + 2))(v67, v78 + *(v190 + 9) * v77, v66);
    v79 = UsoIdentifier.namespace.getter();
    if (v80)
    {
      if (v79 == 0x6574736973726570 && v80 == 0xED000064695F746ELL)
      {

        (*v70)(v67, v66);
LABEL_47:

        v82 = v189;
        goto LABEL_48;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v70)(v67, v66);
      if (v81)
      {
        goto LABEL_47;
      }
    }

    else
    {
      (*v70)(v67, v66);
    }

    ++v77;
    v66 = v191;
    v67 = v188;
    if (v76 == v77)
    {
      goto LABEL_28;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_3:
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.pommes);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2232BB000, v38, v39, "PlayThisLibraryItemPreflightClient#handle nil delegatedUDA", v40, 2u);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }

  return 1;
}

uint64_t closure #4 in PlayThisLibraryItemPreflightClient.handle(pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2234CF920;
  (*(v13 + 16))(v15 + v14, a2, v12);
  AudioExperience.Builder.serverAudioResults.setter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init()();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  AudioExperience.Builder.audioUnderstanding.setter();
  Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  AudioExperience.Builder.playbackSignals.setter();
  AudioExperience.Builder.internalSignals.setter();
  AudioExperience.Builder.pegasusAudioType.setter();
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v21 = 0xD000000000000013;
  v22 = 0x80000002234DCCA0;
  v18 = UsoIdentifier.appBundleId.getter();
  MEMORY[0x223DDF6D0](v18);

  AudioExperience.Builder.launchID.setter();
  AudioExperience.Builder.systemExtensionBundleID.setter();
  AudioExperience.Builder.boltProxiedBundleID.setter();
  AudioExperience.Builder.shouldPerformAppSelection.setter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.init()();
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  return AudioExperience.Builder.audioClientComponent.setter();
}

uint64_t PlayThisLibraryItemPreflightClient.audioItem(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = type metadata accessor for ClientAudioResult.Scheme();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v92);
  v100 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = &v69 - v15;
  v96 = type metadata accessor for UsoIdentifier();
  v16 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v24 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v25 = v24;
  v26 = *(v24 + 16);
  v99 = v5;
  v94 = v16;
  v79 = a2;
  v78 = a1;
  v77 = v23;
  if (!v26)
  {

    v35 = 1;
    v31 = v96;
    goto LABEL_13;
  }

  v27 = v16;
  v28 = 0;
  v29 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v30 = (v27 + 8);
  v31 = v96;
  while (1)
  {
    if (v28 >= *(v25 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    (*(v94 + 16))(v18, v29 + *(v94 + 72) * v28, v31);
    v33 = UsoIdentifier.namespace.getter();
    if (v34)
    {
      break;
    }

LABEL_4:
    ++v28;
    v31 = v96;
    (*v30)(v18, v96);
    v5 = v99;
    if (v26 == v28)
    {

      v35 = 1;
      v23 = v77;
      v16 = v94;
      goto LABEL_13;
    }
  }

  if (v33 != 0x6574736973726570 || v34 != 0xED000064695F746ELL)
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

LABEL_10:

  v16 = v94;
  v23 = v77;
  v31 = v96;
  (*(v94 + 32))(v77, v18, v96);
  v35 = 0;
  v5 = v99;
LABEL_13:
  (*(v16 + 56))(v23, v35, 1, v31);
  Apple_Parsec_Siri_V2alpha_AudioItem.init()();
  dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
  v36 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
  if (!v36)
  {
    goto LABEL_43;
  }

  v31 = v36 & 0xFFFFFFFFFFFFFF8;
  v93 = v36;
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v84;
    v39 = v93;
    if (v37)
    {
      goto LABEL_16;
    }

LABEL_42:

    v23 = v77;
    v16 = v94;
LABEL_43:

    goto LABEL_44;
  }

LABEL_41:
  v39 = v93;
  v37 = __CocoaSet.count.getter();
  v38 = v84;
  if (!v37)
  {
    goto LABEL_42;
  }

LABEL_16:
  v40 = 0;
  v91 = v39 & 0xC000000000000001;
  v41 = (v70 + 56);
  v89 = *MEMORY[0x277D5EDC0];
  v87 = (v70 + 48);
  v88 = (v70 + 104);
  v76 = (v70 + 32);
  v82 = (v70 + 8);
  v42 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd;
  v85 = v37;
  v86 = v31;
  v90 = (v70 + 56);
  while (2)
  {
    if (v91)
    {
      v44 = MEMORY[0x223DDFF80](v40, v39);
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_34;
      }

LABEL_23:
      v97 = v45;
      dispatch thunk of CodeGenListEntry.entry.getter();
      v98 = v44;
      if (v101 && (v46 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter(), , v46))
      {
        v47 = v95;
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

        v5 = v99;
      }

      else
      {
        v47 = v95;
        v5 = v99;
        (*v41)(v95, 1, 1, v99);
      }

      (*v88)(v38, v89, v5);
      (*v41)(v38, 0, 1, v5);
      v48 = *(v92 + 48);
      v49 = v100;
      outlined init with copy of MediaUserStateCenter?(v47, v100, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v38, v49 + v48, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v50 = v42;
      v51 = *v87;
      if ((*v87)(v49, 1, v5) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v38, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v47, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v43 = v51(v100 + v48, 1, v5);
        v41 = v90;
        v39 = v93;
        if (v43 == 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v52 = v100;
        v53 = v83;
        outlined init with copy of MediaUserStateCenter?(v100, v83, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v51(v52 + v48, 1, v5) != 1)
        {
          v54 = v80;
          (*v76)(v80, v52 + v48, v5);
          lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues();
          v81 = dispatch thunk of static Equatable.== infix(_:_:)();
          v55 = *v82;
          (*v82)(v54, v5);
          v38 = v84;
          outlined destroy of MediaUserStateCenter?(v84, v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v95, v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v55(v53, v5);
          outlined destroy of MediaUserStateCenter?(v52, v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v39 = v93;
          v41 = v90;
          v42 = v50;
          if (v81)
          {
            goto LABEL_36;
          }

          goto LABEL_19;
        }

        v38 = v84;
        outlined destroy of MediaUserStateCenter?(v84, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v95, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*v82)(v53, v5);
        v39 = v93;
        v41 = v90;
      }

      outlined destroy of MediaUserStateCenter?(v100, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
LABEL_19:

      ++v40;
      v31 = v86;
      if (v97 == v85)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (v40 >= *(v31 + 16))
  {
    goto LABEL_40;
  }

  v44 = *(v39 + 8 * v40 + 32);

  v45 = v40 + 1;
  if (!__OFADD__(v40, 1))
  {
    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  outlined destroy of MediaUserStateCenter?(v100, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_36:

  dispatch thunk of CodeGenListEntry.entry.getter();

  v23 = v77;
  v16 = v94;
  if (!v101)
  {
    goto LABEL_43;
  }

  dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v57 = v56;

  if (!v57)
  {
    goto LABEL_43;
  }

LABEL_44:
  v58 = v72;
  Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
  v59 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v60 = v73;
  if (v59)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v70 + 56))(v58, 1, 1, v5);
  }

  v61 = v71;
  static ClientAudioResult.Scheme.from(_:)();
  outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v23, v61, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v62 = v96;
  if ((*(v16 + 48))(v61, 1, v96) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v61, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v63 = 0xE100000000000000;
    v64 = 48;
  }

  else
  {
    v65 = UsoIdentifier.value.getter();
    v63 = v66;
    (*(v16 + 8))(v61, v62);
    v64 = v65;
  }

  v67 = v63;
  ClientAudioResult.Scheme.buildDeviceID(withId:)(*&v64);

  (*(v74 + 8))(v60, v75);
  Apple_Parsec_Siri_V2alpha_AudioItem.identifier.setter();
  return outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
}

uint64_t PlayThisLibraryItemPreflightClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues);
  }

  return result;
}

uint64_t OpenAppVocPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v150[4] = *MEMORY[0x277D85DE8];
  v120 = *v1;
  v119 = type metadata accessor for PommesSearchReason();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = (&v115 - v6);
  v143 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Siri_Nlu_External_UserParse();
  v16 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for PommesSearchRequest(0);
  v18 = *(v115 + 76);
  v121 = a1;
  v19 = *(a1 + v18);
  v20 = MEMORY[0x277D84F90];
  v150[0] = MEMORY[0x277D84F90];
  v124 = *(v19 + 16);
  if (!v124)
  {
LABEL_41:
    v60 = *(v20 + 2);
    if (!v60)
    {
LABEL_59:

      goto LABEL_60;
    }

    v61 = 0;
    v62 = v20 + 48;
    v63 = &_sypSgMd;
    v3 = MEMORY[0x277D84F70];
    v146 = *(v20 + 2);
    v147 = v20;
    while (1)
    {
      if (v61 >= *(v20 + 2))
      {
        goto LABEL_102;
      }

      static UsoTask_CodegenConverter.convert(task:)();
      if (!v150[3])
      {
        break;
      }

      outlined init with copy of MediaUserStateCenter?(v150, &v149, v63, &_sypSgMR);
      type metadata accessor for UsoTask_open_common_App();
      if ((swift_dynamicCast() & 1) == 0)
      {
        type metadata accessor for UsoTask_noVerb_common_App();
        if (swift_dynamicCast())
        {
          goto LABEL_65;
        }

        __swift_destroy_boxed_opaque_existential_1(&v149);
        goto LABEL_44;
      }

      v64 = v63;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v148 || (v65 = dispatch thunk of UsoEntity_common_App.appSection.getter(), , !v65))
      {
LABEL_65:

        goto LABEL_67;
      }

      dispatch thunk of UsoEntity_common_AppSubSection.name.getter();
      v67 = v66;

      if (!v67)
      {

LABEL_67:
        __swift_destroy_boxed_opaque_existential_1(&v149);
        outlined destroy of MediaUserStateCenter?(v150, &_sypSgMd, &_sypSgMR);

        v81 = UsoTask.vocAppIds.getter();
        if (v81)
        {
          v82 = v81;
          v83 = v81[2];
          if (v83)
          {
            v84 = 0;
            v85 = v81 + 5;
            while (1)
            {
              if (v84 >= v82[2])
              {
                __break(1u);
                goto LABEL_107;
              }

              v87 = *(v85 - 1);
              v86 = *v85;
              v88._countAndFlagsBits = 0x6C7070612E6D6F63;
              v88._object = 0xEE00697269732E65;
              if (String.hasPrefix(_:)(v88))
              {

                goto LABEL_87;
              }

              v89 = objc_allocWithZone(MEMORY[0x277CC1E70]);

              v90 = MEMORY[0x223DDF550](v87, v86);

              v150[0] = 0;
              v91 = [v89 initWithBundleIdentifier:v90 allowPlaceholder:1 error:v150];

              if (v91)
              {
                break;
              }

              ++v84;
              v92 = v150[0];
              v93 = _convertNSErrorToError(_:)();

              v3 = v93;
              swift_willThrow();

              v85 += 2;
              if (v83 == v84)
              {

                if (one-time initialization token for pommes != -1)
                {
                  swift_once();
                }

                v94 = type metadata accessor for Logger();
                __swift_project_value_buffer(v94, static Logger.pommes);
                v95 = Logger.logObject.getter();
                v96 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v95, v96))
                {
                  v97 = swift_slowAlloc();
                  *v97 = 0;
                  v98 = "#OpenAppVoc: Found open app task with vocFile matches, but app is not installed or does not have special prefix. Ignoring.";
                  goto LABEL_83;
                }

                goto LABEL_84;
              }
            }

            v100 = v150[0];

LABEL_87:
            v101 = v121;
            v102 = (v121 + *(v115 + 32));
            v103 = *v102;
            v104 = v102[1];
            v105 = v116;
            PommesSearchRequest.pommesCandidateId.getter(v116);
            v106 = type metadata accessor for PommesCandidateId();
            (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
            v107 = v117;
            default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v117);
            v108 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v101, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v103, v104, v105, v107, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000019, 0x80000002234D4310);
            (*(v118 + 8))(v107, v119);
            outlined destroy of MediaUserStateCenter?(v105, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
            if (v108)
            {
              v109 = v108;
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v110 = type metadata accessor for Logger();
              __swift_project_value_buffer(v110, static Logger.pommes);
              v111 = Logger.logObject.getter();
              v112 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                *v113 = 0;
                _os_log_impl(&dword_2232BB000, v111, v112, "#OpenAppVoc: Found open app task with vocFile match for installed app. Handling.", v113, 2u);
                MEMORY[0x223DE0F80](v113, -1, -1);
              }

              swift_bridgeObjectRelease_n();

              return v109;
            }

            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v114 = type metadata accessor for Logger();
            __swift_project_value_buffer(v114, static Logger.pommes);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = "#OpenAppVoc: Error. Unable to construct preflight response.";
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logger.pommes);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          v98 = "#OpenAppVoc: Found open app task but no vocFile matches. Ignoring.";
LABEL_83:
          _os_log_impl(&dword_2232BB000, v95, v96, v98, v97, 2u);
          MEMORY[0x223DE0F80](v97, -1, -1);
        }

LABEL_84:

        swift_bridgeObjectRelease_n();

        return 1;
      }

      __swift_destroy_boxed_opaque_existential_1(&v149);
      v63 = v64;
      outlined destroy of MediaUserStateCenter?(v150, v64, &_sypSgMR);
      v60 = v146;
      v20 = v147;
LABEL_45:
      ++v61;
      v62 += 24;
      if (v60 == v61)
      {
        goto LABEL_59;
      }
    }

LABEL_44:
    outlined destroy of MediaUserStateCenter?(v150, v63, &_sypSgMR);
    goto LABEL_45;
  }

  v21 = 0;
  v127 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v126 = v16 + 16;
  v138 = v13 + 16;
  v137 = (v10 + 8);
  v139 = (v7 + 8);
  v136 = (v13 + 8);
  v125 = (v16 + 8);
  v133 = v9;
  v132 = v12;
  v131 = v15;
  v134 = v13;
  v123 = v16;
  v122 = v19;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v22 = *(v16 + 72);
    v128 = v21;
    (*(v16 + 16))(v129, v127 + v22 * v21, v130);
    v23 = Siri_Nlu_External_Span.matcherNames.getter();
    v24 = v23;
    v140 = *(v23 + 16);
    if (v140)
    {
      break;
    }

    v26 = v20;
LABEL_39:
    v21 = v128 + 1;
    v59 = v26;

    (*v125)(v129, v130);
    specialized Array.append<A>(contentsOf:)(v59);
    v16 = v123;
    v19 = v122;
    if (v21 == v124)
    {
      v20 = v150[0];
      goto LABEL_41;
    }
  }

  v25 = 0;
  v26 = v20;
  v135 = v23;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v146 = v25;
    v147 = v26;
    (*(v13 + 16))(v15, v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, v12);
    v28 = v141;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*v137)(v28, v142);
    v29 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    if (v3)
    {
      break;
    }

    v30 = v29;
    (*v139)(v9, v143);
    v31 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v33 = v32;
    v34 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v34 >> 62)
    {
      v48 = v34;
      v35 = __CocoaSet.count.getter();
      v34 = v48;
      if (!v35)
      {
LABEL_25:

        (*v136)(v15, v12);
        v37 = v20;
        goto LABEL_26;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_25;
      }
    }

    v145 = 0;
    v36 = v34;
    v149 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      goto LABEL_100;
    }

    v144 = v30;
    v37 = v149;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v38 = 0;
      do
      {
        v39 = MEMORY[0x223DDFF80](v38, v36);
        v149 = v37;
        v40 = *(v37 + 2);
        v41 = *(v37 + 3);

        if (v40 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v40 + 1, 1);
          v37 = v149;
        }

        ++v38;
        *(v37 + 2) = v40 + 1;
        v42 = &v37[24 * v40];
        *(v42 + 4) = v39;
        *(v42 + 5) = v31;
        *(v42 + 6) = v33;
      }

      while (v35 != v38);
    }

    else
    {
      v43 = (v36 + 32);
      do
      {
        v44 = *v43;
        v149 = v37;
        v45 = *(v37 + 2);
        v46 = *(v37 + 3);

        if (v45 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v45 + 1, 1);
          v37 = v149;
        }

        *(v37 + 2) = v45 + 1;
        v47 = &v37[24 * v45];
        *(v47 + 4) = v44;
        *(v47 + 5) = v31;
        *(v47 + 6) = v33;
        ++v43;
        --v35;
      }

      while (v35);
    }

    v15 = v131;
    v12 = v132;
    (*v136)(v131, v132);
    v20 = MEMORY[0x277D84F90];
    v9 = v133;
    v3 = v145;
LABEL_26:
    v49 = *(v37 + 2);
    v50 = *(v147 + 2);
    v51 = v50 + v49;
    v13 = v134;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_98;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v147;
    if (!isUniquelyReferenced_nonNull_native || v51 > *(v147 + 3) >> 1)
    {
      if (v50 <= v51)
      {
        v54 = v50 + v49;
      }

      else
      {
        v54 = v50;
      }

      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v54, 1, v147);
    }

    v24 = v135;
    if (*(v37 + 2))
    {
      if ((*(v53 + 3) >> 1) - *(v53 + 2) < v49)
      {
        goto LABEL_101;
      }

      v55 = v53;
      swift_arrayInitWithCopy();

      v26 = v55;
      if (v49)
      {
        v56 = *(v55 + 2);
        v57 = __OFADD__(v56, v49);
        v58 = v56 + v49;
        if (v57)
        {
          goto LABEL_103;
        }

        *(v55 + 2) = v58;
      }
    }

    else
    {
      v27 = v53;

      v26 = v27;
      if (v49)
      {
        goto LABEL_99;
      }
    }

    v25 = v146 + 1;
    if (v146 + 1 == v140)
    {
      goto LABEL_39;
    }
  }

  (*v139)(v9, v143);
  (*v136)(v15, v12);

  (*v125)(v129, v130);

  if (one-time initialization token for pommes != -1)
  {
LABEL_107:
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.pommes);
  v69 = v3;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    v74 = v3;
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v75;
    *v73 = v75;
    _os_log_impl(&dword_2232BB000, v70, v71, "#OpenAppVoc: Error scanning for matching USO tasks. %@", v72, 0xCu);
    outlined destroy of MediaUserStateCenter?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v73, -1, -1);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  else
  {
  }

LABEL_60:
  if (one-time initialization token for pommes != -1)
  {
LABEL_105:
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Logger.pommes);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_2232BB000, v77, v78, "#OpenAppVoc: No matching task. Ignoring.", v79, 2u);
    MEMORY[0x223DE0F80](v79, -1, -1);
  }

  return 1;
}

void *UsoTask.vocAppIds.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of MediaUserStateCenter?(v6, v4, &_sypSgMd, &_sypSgMR);
  if (!v5)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  outlined init with copy of MediaUserStateCenter?(v4, v3, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_App();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_12:
    v0 = 0;
    goto LABEL_13;
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_7:

  if (v2)
  {
    v0 = CodeGenGlobalArgs.vocAppIds.getter();

    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);

    v0 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_13:
  outlined destroy of MediaUserStateCenter?(v4, &_sypSgMd, &_sypSgMR);
  return v0;
}

void *CodeGenGlobalArgs.vocAppIds.getter()
{
  v116 = type metadata accessor for SpanProperty();
  v112 = *(v116 - 8);
  v0 = MEMORY[0x28223BE20](v116);
  v109 = &v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v101 = &v85 - v3;
  MEMORY[0x28223BE20](v2);
  v113 = &v85 - v4;
  v104 = type metadata accessor for UsoEntitySpan.SpanSource();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v87 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
  MEMORY[0x28223BE20](v105);
  v103 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v85 - v15);
  v17 = type metadata accessor for UsoEntitySpan();
  v106 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v92 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v85 - v21;
  MEMORY[0x28223BE20](v20);
  v114 = &v85 - v22;
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (!result)
  {
    return result;
  }

  v24 = result[2];
  v115 = v17;
  v102 = v24;
  if (v24)
  {
    v111 = v16;
    v25 = 0;
    v97 = v106 + 16;
    v96 = *MEMORY[0x277D5E488];
    v95 = (v5 + 104);
    v94 = (v5 + 56);
    v26 = (v5 + 48);
    v86 = (v5 + 32);
    v88 = (v5 + 8);
    v89 = (v106 + 8);
    v91 = (v106 + 32);
    v93 = MEMORY[0x277D84F90];
    v99 = v11;
    v90 = (v5 + 48);
    v110 = v14;
    v98 = result;
    while (1)
    {
      if (v25 >= result[2])
      {
        __break(1u);
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
        return result;
      }

      v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v107 = *(v106 + 72);
      (*(v106 + 16))(v114, result + v108 + v107 * v25, v17);
      v27 = v111;
      UsoEntitySpan.sourceComponent.getter();
      v28 = v104;
      (*v95)(v14, v96, v104);
      (*v94)(v14, 0, 1, v28);
      v29 = *(v105 + 48);
      v30 = v103;
      outlined init with copy of MediaUserStateCenter?(v27, v103, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined init with copy of MediaUserStateCenter?(v14, v30 + v29, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v31 = *v26;
      if ((*v26)(v30, 1, v28) == 1)
      {
        break;
      }

      v32 = v99;
      outlined init with copy of MediaUserStateCenter?(v30, v99, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      if (v31(v30 + v29, 1, v28) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v110, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
        outlined destroy of MediaUserStateCenter?(v111, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
        (*v88)(v32, v28);
LABEL_5:
        outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
        v17 = v115;
        goto LABEL_6;
      }

      v33 = v87;
      (*v86)(v87, v30 + v29, v28);
      lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource();
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *v88;
      v36 = v33;
      v37 = v99;
      (*v88)(v36, v28);
      outlined destroy of MediaUserStateCenter?(v110, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined destroy of MediaUserStateCenter?(v111, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v35(v37, v28);
      v26 = v90;
      outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v17 = v115;
      if (v34)
      {
        goto LABEL_14;
      }

LABEL_6:
      (*v89)(v114, v17);
      v14 = v110;
LABEL_7:
      ++v25;
      result = v98;
      if (v102 == v25)
      {
        goto LABEL_20;
      }
    }

    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    outlined destroy of MediaUserStateCenter?(v27, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    if (v31(v30 + v29, 1, v28) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v17 = v115;
LABEL_14:
      v38 = *v91;
      (*v91)(v92, v114, v17);
      v39 = v93;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v39;
      v14 = v110;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1);
        v39 = v117;
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v39 = v117;
      }

      *(v39 + 16) = v42 + 1;
      v93 = v39;
      v17 = v115;
      v38((v39 + v108 + v42 * v107), v92, v115);
      v26 = v90;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_20:

  v43 = *(v93 + 16);
  if (v43)
  {
    v114 = *(v106 + 16);
    v44 = v93 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v45 = *(v106 + 72);
    v46 = (v106 + 8);
    v47 = MEMORY[0x277D84F90];
    do
    {
      v48 = v100;
      (v114)(v100, v44, v17);
      v49 = UsoEntitySpan.properties.getter();
      result = (*v46)(v48, v17);
      v50 = *(v49 + 16);
      v51 = *(v47 + 2);
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_71;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v52 > *(v47 + 3) >> 1)
      {
        if (v51 <= v52)
        {
          v53 = v51 + v50;
        }

        else
        {
          v53 = v51;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v53, 1, v47);
        v47 = result;
      }

      v17 = v115;
      if (*(v49 + 16))
      {
        if ((*(v47 + 3) >> 1) - *(v47 + 2) < v50)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();

        if (v50)
        {
          v54 = *(v47 + 2);
          v55 = __OFADD__(v54, v50);
          v56 = v54 + v50;
          if (v55)
          {
            goto LABEL_74;
          }

          *(v47 + 2) = v56;
        }
      }

      else
      {

        if (v50)
        {
          goto LABEL_72;
        }
      }

      v44 += v45;
      --v43;
    }

    while (v43);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v115 = *(v47 + 2);
  if (v115)
  {
    v57 = 0;
    v114 = v112 + 16;
    v111 = (v112 + 8);
    v58 = (v112 + 32);
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v57 >= *(v47 + 2))
      {
        goto LABEL_70;
      }

      v60 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v61 = *(v112 + 72);
      (*(v112 + 16))(v113, &v47[v60 + v61 * v57], v116);
      if (SpanProperty.key.getter() == 0x656D614E707061 && v62 == 0xE700000000000000)
      {
        break;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63)
      {
        goto LABEL_47;
      }

      result = (*v111)(v113, v116);
LABEL_41:
      if (v115 == ++v57)
      {
        goto LABEL_53;
      }
    }

LABEL_47:
    v64 = *v58;
    (*v58)(v109, v113, v116);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v59;
    if ((v65 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 16) + 1, 1);
      v59 = v117;
    }

    v67 = *(v59 + 16);
    v66 = *(v59 + 24);
    if (v67 >= v66 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
      v59 = v117;
    }

    *(v59 + 16) = v67 + 1;
    result = (v64)(v59 + v60 + v67 * v61, v109, v116);
    goto LABEL_41;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_53:

  v68 = *(v59 + 16);
  if (v68)
  {
    v69 = *(v112 + 16);
    v70 = v59 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v114 = *(v112 + 72);
    v115 = v69;
    v71 = (v112 + 8);
    v72 = MEMORY[0x277D84F90];
    do
    {
      v74 = v101;
      v75 = v116;
      v115(v101, v70, v116);
      v76 = SpanProperty.valueString.getter();
      v78 = v77;
      (*v71)(v74, v75);
      if (v78)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
        }

        v80 = *(v72 + 2);
        v79 = *(v72 + 3);
        if (v80 >= v79 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v72);
        }

        *(v72 + 2) = v80 + 1;
        v73 = &v72[16 * v80];
        *(v73 + 4) = v76;
        *(v73 + 5) = v78;
      }

      v70 += v114;
      --v68;
    }

    while (v68);
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v81 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v72);

  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v81 + 16), 0);
    v84 = specialized Sequence._copySequenceContents(initializing:)(&v117, v83 + 4, v82, v81);
    result = outlined consume of Set<String>.Iterator._Variant(v117);
    if (v84 != v82)
    {
      goto LABEL_75;
    }

    return v83;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x223DDF550](a1);

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

unint64_t lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource()
{
  result = lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource;
  if (!lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource)
  {
    type metadata accessor for UsoEntitySpan.SpanSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource);
  }

  return result;
}

uint64_t UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v40 = a1;
  v41 = type metadata accessor for UsoIdentifier();
  v4 = *(v41 - 8);
  v5 = MEMORY[0x28223BE20](v41);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v39 = *(result + 16);
  if (v39)
  {
    v10 = 0;
    v37 = v4 + 16;
    v34 = (v4 + 8);
    v35 = (v4 + 32);
    v11 = MEMORY[0x277D84F90];
    v32 = a3;
    v38 = result;
    while (1)
    {
      if (v10 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = *(v4 + 72);
      (*(v4 + 16))(v8, result + v12 + v13 * v10, v41);
      v14 = UsoIdentifier.namespace.getter();
      v16 = v15;
      v17 = AudioUsoIntent.UsoNamespace.rawValue.getter(v40);
      if (!v16)
      {

        v19 = 0;
        goto LABEL_15;
      }

      if (v14 == v17 && v16 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v19 = 0;
        if ((v20 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v21 = UsoIdentifier.value.getter();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      v19 = v24 != 0;
LABEL_15:
      if (a3)
      {
        if (v19)
        {
          if (UsoIdentifier.appBundleId.getter() == v33 && v25 == a3)
          {

LABEL_23:
            v27 = *v35;
            (*v35)(v36, v8, v41);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
              v11 = v42;
            }

            v30 = *(v11 + 16);
            v29 = *(v11 + 24);
            if (v30 >= v29 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
              v11 = v42;
            }

            *(v11 + 16) = v30 + 1;
            v27((v11 + v12 + v30 * v13), v36, v41);
            a3 = v32;
            goto LABEL_4;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v19)
      {
        goto LABEL_23;
      }

      (*v34)(v8, v41);
LABEL_4:
      ++v10;
      result = v38;
      if (v39 == v10)
      {
        goto LABEL_29;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_29:

  return v11;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasNonEmptyName()()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromArtist()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = type metadata accessor for UsoIdentifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x80000002234D9D80;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = UsoIdentifier.namespace.getter();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x697472416D6F7266 && v26 == 0xEA00000000007473)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v29 = v48;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5EDC0], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        outlined init with copy of MediaUserStateCenter?(v29, v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v33, v31 + v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        outlined init with copy of MediaUserStateCenter?(v31, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v32 + 8);
        v38(v37, v30);
        outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v38(v36, v30);
        outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromSong()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = type metadata accessor for UsoIdentifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x80000002234D9D80;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = UsoIdentifier.namespace.getter();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x676E6F536D6F7266 && v26 == 0xE800000000000000)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v29 = v48;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5ED90], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        outlined init with copy of MediaUserStateCenter?(v29, v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v33, v31 + v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        outlined init with copy of MediaUserStateCenter?(v31, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v32 + 8);
        v38(v37, v30);
        outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v38(v36, v30);
        outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromAlbum()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = type metadata accessor for UsoIdentifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x80000002234D9D80;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = UsoIdentifier.namespace.getter();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x75626C416D6F7266 && v26 == 0xE90000000000006DLL)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v29 = v48;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5ED98], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        outlined init with copy of MediaUserStateCenter?(v29, v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v33, v31 + v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        outlined init with copy of MediaUserStateCenter?(v31, v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v32 + 8);
        v38(v37, v30);
        outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v38(v36, v30);
        outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isRecommended()()
{
  v0 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v40);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v43 = &v27 - v12;
  if (!dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    return 0;
  }

  v13 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter();

  if (!v13)
  {
    return 0;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v31 = v8;
      v8 = 0;
      v39 = v13 & 0xC000000000000001;
      v16 = (v1 + 7);
      v37 = *MEMORY[0x277D5EE78];
      v35 = (v1 + 6);
      v36 = (v1 + 13);
      v28 = (v1 + 4);
      v30 = (v1 + 1);
      v1 = &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR;
      v38 = v13;
      v32 = v15;
      v33 = v14;
      v41 = v11;
      v34 = v16;
      while (v39)
      {
        MEMORY[0x223DDFF80](v8, v13);
        v18 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_22:
          __break(1u);
          return 0;
        }

LABEL_12:
        v42 = v18;
        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v44)
        {
          dispatch thunk of UsoEntity_common_SortDirection.definedValue.getter();
        }

        else
        {
          (*v16)(v43, 1, 1, v0);
        }

        (*v36)(v11, v37, v0);
        (*v16)(v11, 0, 1, v0);
        v19 = *(v40 + 48);
        outlined init with copy of MediaUserStateCenter?(v43, v4, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v11, &v4[v19], &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v20 = *v35;
        if ((*v35)(v4, 1, v0) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          v17 = v20(&v4[v19], 1, v0);
          v13 = v38;
          v16 = v34;
          if (v17 == 1)
          {
            outlined destroy of MediaUserStateCenter?(v4, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
LABEL_25:
            v25 = 1;
            goto LABEL_29;
          }

          goto LABEL_7;
        }

        v21 = v31;
        outlined init with copy of MediaUserStateCenter?(v4, v31, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        if (v20(&v4[v19], 1, v0) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          (*v30)(v21, v0);
          v13 = v38;
          v16 = v34;
LABEL_7:
          outlined destroy of MediaUserStateCenter?(v4, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMR);
          goto LABEL_8;
        }

        v22 = v29;
        (*v28)(v29, &v4[v19], v0);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SortDirection.DefinedValues and conformance UsoEntity_common_SortDirection.DefinedValues, MEMORY[0x277D5EEB8], MEMORY[0x277D5EEC0]);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();

        v24 = *v30;
        (*v30)(v22, v0);
        outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v24(v21, v0);
        outlined destroy of MediaUserStateCenter?(v4, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v13 = v38;
        v16 = v34;
        if (v23)
        {
          goto LABEL_25;
        }

LABEL_8:
        ++v8;
        v14 = v33;
        v11 = v41;
        if (v42 == v32)
        {
          goto LABEL_28;
        }
      }

      if (v8 < *(v14 + 16))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v15 = __CocoaSet.count.getter();
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_28:
  v25 = 0;
LABEL_29:

  return v25;
}

uint64_t UsoEntity_common_MediaItem.isAffinity()(unsigned int *a1)
{
  v2 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v16, 1, 1, v2);
  }

  (*(v3 + 104))(v14, *a1, v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v17 = *(v5 + 48);
  outlined init with copy of MediaUserStateCenter?(v16, v7, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v14, &v7[v17], &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v18 = *(v3 + 48);
  if (v18(v7, 1, v2) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v7, v11, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    if (v18(&v7[v17], 1, v2) != 1)
    {
      v20 = v24;
      (*(v3 + 32))(v24, &v7[v17], v2);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, MEMORY[0x277D5F058], MEMORY[0x277D5F060]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v3 + 8);
      v21(v20, v2);
      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      v21(v11, v2);
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      return v19 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    (*(v3 + 8))(v11, v2);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  if (v18(&v7[v17], 1, v2) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    v19 = 0;
    return v19 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v19 = 1;
  return v19 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isMoreOf()()
{
  v0 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EA40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  outlined init with copy of MediaUserStateCenter?(v14, v5, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v12, &v5[v15], &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v5, v9, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    if (v16(&v5[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v5[v15], v0);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v1 + 8);
      v19(v18, v0);
      outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v19(v9, v0);
      outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      return v17 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    (*(v1 + 8))(v9, v0);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  if (v16(&v5[v15], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v17 = 1;
  return v17 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isDifferentThan()()
{
  v0 = type metadata accessor for UsoEntity_common_Similarity.DefinedValues();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter() && (v15 = dispatch thunk of UsoEntity_common_SearchQualifier.similarity.getter(), , v15))
  {
    dispatch thunk of UsoEntity_common_Similarity.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EA80], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v3 + 48);
  outlined init with copy of MediaUserStateCenter?(v14, v5, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v12, &v5[v16], &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v17 = *(v1 + 48);
  if (v17(v5, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v5, v9, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    if (v17(&v5[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v5[v16], v0);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Similarity.DefinedValues and conformance UsoEntity_common_Similarity.DefinedValues, MEMORY[0x277D5EA88], MEMORY[0x277D5EA90]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      v20(v9, v0);
      outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      return v18 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    (*(v1 + 8))(v9, v0);
    goto LABEL_10;
  }

  outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  if (v17(&v5[v16], 1, v0) != 1)
  {
LABEL_10:
    outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMR);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v18 = 1;
  return v18 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isResolvedReference()()
{
  v1 = type metadata accessor for UsoIdentifier();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - v5;
  v7 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v8 = v7;
  if (*(v7 + 16))
  {
    v9 = *(v7 + 16);
    v27[1] = v0;
    v10 = 0;
    v31 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 = 0x80000002234DCD00;
    v30 = 0x80000002234D9E10;
    v11 = (v2 + 8);
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      (*(v2 + 16))(v6, v31 + *(v2 + 72) * v10, v1);
      v12 = UsoIdentifier.namespace.getter();
      if (!v13)
      {
        break;
      }

      if (v12 == 0xD000000000000019 && v13 == v30)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.appBundleId.getter() == 0xD00000000000001CLL && v29 == v15)
      {

        (*v11)(v6, v1);
LABEL_18:

        LODWORD(v30) = 1;
        goto LABEL_19;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v7) = (*v11)(v6, v1);
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_4:
      if (v9 == ++v10)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v7) = (*v11)(v6, v1);
    goto LABEL_4;
  }

LABEL_15:

  LODWORD(v30) = 0;
LABEL_19:
  v7 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v17 = v7;
  v18 = *(v7 + 16);
  v19 = v28;
  if (v18)
  {
    v20 = 0;
    v21 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v31 = 0x80000002234D9DA0;
    v22 = (v2 + 8);
    while (v20 < *(v17 + 16))
    {
      (*(v2 + 16))(v19, v21 + *(v2 + 72) * v20, v1);
      v23 = UsoIdentifier.namespace.getter();
      if (v24)
      {
        if (v23 == 0xD000000000000014 && v24 == v31)
        {

          (*v22)(v28, v1);
LABEL_31:

          if ((v30 & 1) == 0)
          {
            goto LABEL_33;
          }

          LOBYTE(v7) = 1;
          return v7;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v19 = v28;
        LOBYTE(v7) = (*v22)(v28, v1);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v7) = (*v22)(v19, v1);
      }

      if (v18 == ++v20)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:

LABEL_33:
    LOBYTE(v7) = 0;
  }

  return v7;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v47 = &v40 - v13;
  v14 = type metadata accessor for UsoIdentifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v18 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v40 = v4;
    v41 = v10;
    v42 = v2;
    v43 = v6;
    v44 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v49 = 0x80000002234D9AC0;
    v50 = 0x80000002234D9D80;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = UsoIdentifier.namespace.getter();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0xD000000000000018 && v49 == v26)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v29 = v47;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v31 = v43;
          v30 = v44;
          v32 = v42;
        }

        else
        {
          v32 = v42;
          v29 = v47;
          v30 = v44;
          (*(v42 + 56))(v47, 1, 1, v44);
          v31 = v43;
        }

        v33 = v48;
        (*(v32 + 104))(v48, *MEMORY[0x277D5EE18], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v46 + 48);
        outlined init with copy of MediaUserStateCenter?(v29, v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v33, v31 + v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v41;
        outlined init with copy of MediaUserStateCenter?(v31, v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v37 = v40;
        (*(v32 + 32))(v40, v31 + v34, v30);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v32 + 8);
        v38(v37, v30);
        outlined destroy of MediaUserStateCenter?(v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v38(v36, v30);
        outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}