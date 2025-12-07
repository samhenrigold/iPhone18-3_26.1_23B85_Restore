unint64_t SiriExecutionStep.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C646E7542707061;
    v6 = 0x7463617265746E69;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x614E746E65746E69;
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
    v1 = 0x64496B736174;
    v2 = 0x706574536B736174;
    if (a1 != 7)
    {
      v2 = 0x6D6954746E657665;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x756C6156746F6C73;
    if (a1 != 4)
    {
      v3 = 0x6552737574617473;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TaskSuccess.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TaskSuccess.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriExecutionStep.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SiriExecutionStep.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriExecutionStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriExecutionStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SiriExecutionStep.deinit()
{

  v1 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriExecutionTask.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t SiriExecutionStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionStepC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionStepC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 152))(v11);
  v38 = 0;
  v29 = v7;
  v12 = v28;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v12)
  {
    (*(v8 + 8))(v10, v29);
  }

  else
  {
    v28 = v6;
    v13 = v27;

    (*(*v2 + 176))(v14);
    v37 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 200))(v16);
    v36 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v8;

    (*(*v2 + 224))(v18);
    v35 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 248))(v19);
    v34 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 272))(v20);
    v33 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 296))(v21);
    v32 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 320))(v22);
    v31 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v24 = v28;
    (*(*v2 + 344))(v23);
    v30 = 8;
    lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v24, v13);
    return (*(v17 + 8))(v10, v29);
  }
}

id SiriExecutionTaskFactory.convertBiomeEventToSiriExecutionStep(bmEvent:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  result = [a1 taskId];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [a1 absoluteTimestamp];
    if (!v14)
    {
LABEL_9:

      return 0;
    }

    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = &off_279A51000;
    v17 = [a1 intentName];
    if (v17)
    {
      v59 = v6;
      v18 = v3;
      v19 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = String.lowercased()();

      if (v20._countAndFlagsBits == 0x7361742065676173 && v20._object == 0xE90000000000006BLL)
      {

        v3 = v18;
LABEL_8:
        (*(v3 + 8))(v8, v2);
        goto LABEL_9;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v18;
      v6 = v59;
      v16 = &off_279A51000;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v22 = [a1 appBundleID];
    if (v22)
    {
      v23 = v22;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v24;
    }

    else
    {
      v59 = 0;
      v58 = 0;
    }

    v25 = [a1 v16[488]];
    if (v25)
    {
      v26 = v25;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v27;
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v28 = [a1 interactionID];
    if (v28)
    {
      v29 = v28;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v30;
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    v31 = [a1 rootInteractionID];
    if (v31)
    {
      v32 = v31;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v33;
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    v34 = [a1 slotValue];
    if (v34)
    {
      v35 = v34;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v36;
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }

    v37 = [a1 statusReason];
    v61 = v13;
    v60 = v11;
    if (v37)
    {
      v38 = v37;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v39;
    }

    else
    {
      v49 = 0;
      v48 = 0;
    }

    [a1 taskStep];
    v47 = specialized static SiriExecutionTaskFactory.getTaskStepDescription(taskStepType:)();
    v46 = v40;
    v41 = *(v3 + 32);
    v44 = v3 + 32;
    v45 = v41;
    v41(v6, v8, v2);
    type metadata accessor for SiriExecutionStep(0);
    v42 = swift_allocObject();
    *(v42 + 96) = 0u;
    *(v42 + 80) = 0u;
    *(v42 + 64) = 0u;
    *(v42 + 48) = 0u;
    *(v42 + 32) = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 136) = 0;
    *(v42 + 128) = 0;
    swift_beginAccess();
    *(v42 + 16) = v59;
    *(v42 + 24) = v58;
    swift_beginAccess();
    *(v42 + 32) = v57;
    *(v42 + 40) = v56;
    swift_beginAccess();
    *(v42 + 48) = v55;
    *(v42 + 56) = v54;
    swift_beginAccess();
    *(v42 + 64) = v53;
    *(v42 + 72) = v52;
    swift_beginAccess();
    *(v42 + 80) = v51;
    *(v42 + 88) = v50;
    swift_beginAccess();
    *(v42 + 96) = v49;
    v43 = v60;
    *(v42 + 104) = v48;
    *(v42 + 112) = v43;
    *(v42 + 120) = v61;
    swift_beginAccess();
    *(v42 + 128) = v47;
    *(v42 + 136) = v46;
    v45(v42 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime, v6, v2);
    return v42;
  }

  return result;
}

void *SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(unint64_t a1)
{
  v1 = a1;
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x25F8CE500](a1);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_17:

      v11 = specialized Array._copyToContiguousArray()(v8);
      specialized MutableCollection<>.sort(by:)(&v11, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), type metadata accessor for SiriExecutionStep, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

      return v11;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(*v10 + 80);
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F8CE460](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (v4())
      {

        MEMORY[0x25F8CE160](v7);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    goto LABEL_17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = a3;
  v137 = a2;
  v142 = type metadata accessor for Date();
  v3 = *(v142 - 8);
  v4 = MEMORY[0x28223BE20](v142);
  v136 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v135 = &v132 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v132 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v139 = &v132 - v12;
  MEMORY[0x28223BE20](v11);
  v141 = &v132 - v13;
  v14 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];

  v16 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement0E13ExecutionStepCGTt1g504_s18de14Engagement0B20g72TaskFactoryC04loadE8Entities5steps15siriUISessionIdSayAA0bdE0CGSayAA0bD4H16CG_SStFSSAKXEfU_Tf1nc_nTf4g_n(v15);
  v160 = 0;

  v17 = v16 + 8;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v154 = v19 & v16[8];
  v20 = (v18 + 63) >> 6;
  v140 = (v3 + 32);
  v133 = (v3 + 16);
  v132 = (v3 + 8);

  v21 = 0;
  v144 = v14;
  v134 = v10;
  v146 = v16;
  v145 = v16 + 8;
  v152 = v20;
  while (1)
  {
    v22 = v154;
    do
    {
      if (v22)
      {
        v23 = v22;
        goto LABEL_12;
      }

      do
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_140;
        }

        if (v24 >= v20)
        {

          v21 = v144;
          if (!(v144 >> 62))
          {
            if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
            {
LABEL_136:

              v163 = specialized Array._copyToContiguousArray()(v129);
              v30 = v160;
              specialized MutableCollection<>.sort(by:)(&v163, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), type metadata accessor for SiriExecutionTask, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
              if (v30)
              {
                goto LABEL_150;
              }

              return v163;
            }

            return v21;
          }

LABEL_140:
          if (v21 < 0)
          {
            v131 = v21;
          }

          else
          {
            v131 = v21 & 0xFFFFFFFFFFFFFF8;
          }

          if (MEMORY[0x25F8CE500](v131) > 1)
          {
            goto LABEL_136;
          }

          return v21;
        }

        v23 = v17[v24];
        ++v21;
      }

      while (!v23);
      v21 = v24;
LABEL_12:
      v22 = (v23 - 1) & v23;
    }

    while (!v16[2]);
    v154 = (v23 - 1) & v23;
    v25 = (v16[6] + ((v21 << 10) | (16 * __clz(__rbit64(v23)))));
    v26 = *v25;
    v27 = v25[1];

    v149 = v26;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    if ((v29 & 1) == 0)
    {

      v20 = v152;
      continue;
    }

    v148 = v27;
    v30 = *(v16[7] + 8 * v28);
    if (v30 >> 62)
    {
      if (v30 < 0)
      {
        v106 = *(v16[7] + 8 * v28);
      }

      else
      {
        v106 = v30 & 0xFFFFFFFFFFFFFF8;
      }

      v31 = MEMORY[0x25F8CE500](v106);
      v158 = v31;
      if (!v31)
      {
        goto LABEL_118;
      }

LABEL_16:
      if (v31 < 1)
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v161 = v30 & 0xC000000000000001;

      v143 = 0;
      v32 = 0;
      v150 = 0xE000000000000000;
      v162 = MEMORY[0x277D84F90];
      v153 = MEMORY[0x277D84F90];
      v156 = MEMORY[0x277D84F90];
      v157 = MEMORY[0x277D84F90];
      v159 = v30;
      v33 = v158;
      while (1)
      {
        if (v161)
        {
          v34 = MEMORY[0x25F8CE460](v32, v30);
        }

        else
        {
          v34 = *(v30 + 8 * v32 + 32);
        }

        v35 = (*v34 + 320);
        v36 = *v35;
        v37 = (*v35)();
        if (!v38)
        {
          goto LABEL_30;
        }

        if (v37 == 0x6C706552776F6C46 && v38 == 0xEA00000000006E61)
        {

LABEL_37:

          goto LABEL_20;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
LABEL_30:
          isUniquelyReferenced_nonNull_native = (*(*v34 + 200))(v37);
          if (v42)
          {
            v43 = v42;
            v44 = HIBYTE(v42) & 0xF;
            if ((v42 & 0x2000000000000000) == 0)
            {
              v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFLL;
            }

            if (v44)
            {
              v155 = isUniquelyReferenced_nonNull_native;
              v163 = isUniquelyReferenced_nonNull_native;
              v164 = v42;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
              *(&v132 - 2) = &v163;
              v45 = v160;
              v46 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v132 - 4), v156);
              v160 = v45;
              if (v46)
              {
              }

              else
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native)
                {
                  v47 = v156;
                }

                else
                {
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v156 + 2) + 1, 1, v156);
                  v47 = isUniquelyReferenced_nonNull_native;
                }

                v49 = *(v47 + 2);
                v48 = *(v47 + 3);
                v50 = v155;
                if (v49 >= v48 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
                  v47 = isUniquelyReferenced_nonNull_native;
                  v50 = v155;
                }

                *(v47 + 2) = v49 + 1;
                v156 = v47;
                v51 = &v47[16 * v49];
                *(v51 + 4) = v50;
                *(v51 + 5) = v43;
              }

              v33 = v158;
              v30 = v159;
            }

            else
            {
            }
          }

          v52 = (*(*v34 + 224))(isUniquelyReferenced_nonNull_native);
          if (v53)
          {
            v54 = v53;
            v55 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v55 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (v55)
            {
              v155 = v52;
              v163 = v52;
              v164 = v53;
              MEMORY[0x28223BE20](v52);
              *(&v132 - 2) = &v163;
              v56 = v160;
              v57 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v132 - 4), v157);
              v160 = v56;
              if (v57)
              {
              }

              else
              {
                v52 = swift_isUniquelyReferenced_nonNull_native();
                if (v52)
                {
                  v58 = v157;
                }

                else
                {
                  v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 2) + 1, 1, v157);
                  v58 = v52;
                }

                v60 = *(v58 + 2);
                v59 = *(v58 + 3);
                v61 = v155;
                if (v60 >= v59 >> 1)
                {
                  v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
                  v58 = v52;
                  v61 = v155;
                }

                *(v58 + 2) = v60 + 1;
                v157 = v58;
                v62 = &v58[16 * v60];
                *(v62 + 4) = v61;
                *(v62 + 5) = v54;
              }

              v33 = v158;
              v30 = v159;
            }

            else
            {
            }
          }

          v63 = (*(*v34 + 152))(v52);
          if (v64)
          {
            v65 = HIBYTE(v64) & 0xF;
            if ((v64 & 0x2000000000000000) == 0)
            {
              v65 = v63 & 0xFFFFFFFFFFFFLL;
            }

            if (!v65 || (v63 == 1701736302 ? (v66 = v64 == 0xE400000000000000) : (v66 = 0), v66))
            {
            }

            else
            {
              v155 = v63;
              v67 = v64;
              v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v68 & 1) != 0 || (v151 = &v132, v163 = v155, v164 = v67, MEMORY[0x28223BE20](v68), *(&v132 - 2) = &v163, v69 = v160, v70 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v132 - 4), v153), v160 = v69, (v70))
              {

                v30 = v159;
              }

              else
              {
                v63 = swift_isUniquelyReferenced_nonNull_native();
                if (v63)
                {
                  v100 = v153;
                }

                else
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v153 + 2) + 1, 1, v153);
                  v100 = v63;
                }

                v102 = *(v100 + 2);
                v101 = *(v100 + 3);
                v103 = v155;
                if (v102 >= v101 >> 1)
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100);
                  v104 = v67;
                  v100 = v63;
                  v103 = v155;
                }

                else
                {
                  v104 = v67;
                }

                *(v100 + 2) = v102 + 1;
                v153 = v100;
                v105 = &v100[16 * v102];
                *(v105 + 4) = v103;
                *(v105 + 5) = v104;
                v33 = v158;
                v30 = v159;
              }
            }
          }

          v71 = (v36)(v63);
          if (v72)
          {
            v73 = v71;
            v74 = v72;
            v75 = (*(*v34 + 248))();
            if (v76)
            {
              v77 = v75;
              v78 = v76;
              v79 = HIBYTE(v76) & 0xF;
              if ((v76 & 0x2000000000000000) == 0)
              {
                v79 = v75 & 0xFFFFFFFFFFFFLL;
              }

              if (!v79 || (v75 == 1701736302 ? (v80 = v76 == 0xE400000000000000) : (v80 = 0), v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
              }

              else
              {
                v163 = 10272;
                v164 = 0xE200000000000000;
                MEMORY[0x25F8CE090](v77, v78);

                MEMORY[0x25F8CE090](41, 0xE100000000000000);
                v98 = v163;
                v99 = v164;
                v163 = v73;
                v164 = v74;

                MEMORY[0x25F8CE090](v98, v99);

                v73 = v163;
                v74 = v164;
              }
            }

            v71 = swift_isUniquelyReferenced_nonNull_native();
            v30 = v159;
            if (v71)
            {
              v81 = v162;
            }

            else
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v162 + 2) + 1, 1, v162);
              v81 = v71;
            }

            v83 = *(v81 + 2);
            v82 = *(v81 + 3);
            if (v83 >= v82 >> 1)
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v81);
              v81 = v71;
            }

            *(v81 + 2) = v83 + 1;
            v162 = v81;
            v84 = &v81[16 * v83];
            *(v84 + 4) = v73;
            *(v84 + 5) = v74;
            v33 = v158;
          }

          v85 = (*(*v34 + 176))(v71);
          if (v86)
          {
            v87 = v85;
            v88 = v86;
            v89 = String.lowercased()();
            if (v89._countAndFlagsBits == 0x74746E6572727563 && v89._object == 0xEB000000006B7361)
            {
LABEL_94:

              goto LABEL_20;
            }

            v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v91 & 1) == 0)
            {
              v92 = String.lowercased()();
              if (v92._countAndFlagsBits == 0x6465737261706E75 && v92._object == 0xEE00746E65746E69)
              {
                goto LABEL_94;
              }

              v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v93 & 1) == 0)
              {
                v94 = String.lowercased()();
                if (v94._countAndFlagsBits == 0x206E776F6E6B6E75 && v94._object == 0xED00006573726170)
                {
                  goto LABEL_94;
                }

                v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v95 & 1) == 0)
                {
                  v96 = String.lowercased()();
                  if (v96._countAndFlagsBits == 0x7361742065676173 && v96._object == 0xE90000000000006BLL)
                  {
                    goto LABEL_94;
                  }

                  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v97 & 1) == 0)
                  {

                    v143 = v87;
                    v150 = v88;
                    goto LABEL_20;
                  }

                  goto LABEL_37;
                }
              }
            }
          }
        }

LABEL_20:
        if (v33 == ++v32)
        {
          goto LABEL_119;
        }
      }
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v158 = v31;
    if (v31)
    {
      goto LABEL_16;
    }

LABEL_118:

    v143 = 0;
    v150 = 0xE000000000000000;
    v162 = MEMORY[0x277D84F90];
    v153 = MEMORY[0x277D84F90];
    v156 = MEMORY[0x277D84F90];
    v157 = MEMORY[0x277D84F90];
    v33 = v31;
LABEL_119:
    v107 = (*(*v147 + 104))(v162);
    if (!v33)
    {

      v16 = v146;
      v17 = v145;
      v20 = v152;
      continue;
    }

    if ((v30 & 0xC000000000000001) == 0)
    {
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v108 = *(v30 + 32);

        goto LABEL_124;
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      break;
    }

    v109 = MEMORY[0x25F8CE460](0, v30);
    v108 = v109;
LABEL_124:
    v110 = v139;
    (*(*v108 + 344))(v109);

    v111 = *v140;
    (*v140)(v141, v110, v142);
    v112 = v158 - 1;
    if (__OFSUB__(v158, 1))
    {
      goto LABEL_146;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v113 = MEMORY[0x25F8CE460](v112, v30);
      goto LABEL_130;
    }

    if ((v112 & 0x8000000000000000) != 0)
    {
      goto LABEL_148;
    }

    if (v112 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v113 = *(v30 + 8 * v112 + 32);

LABEL_130:

    v115 = v134;
    (*(*v113 + 344))(v114);

    v116 = *v133;
    v117 = v135;
    v118 = v141;
    v119 = v142;
    (*v133)(v135, v141, v142);
    v120 = v136;
    v116(v136, v115, v119);
    type metadata accessor for SiriExecutionTask(0);
    v121 = swift_allocObject();
    v122 = v138;
    *(v121 + 2) = v137;
    *(v121 + 3) = v122;
    v123 = v148;
    *(v121 + 4) = v149;
    *(v121 + 5) = v123;
    v124 = v157;
    *(v121 + 6) = v156;
    *(v121 + 7) = v124;
    v125 = v143;
    *(v121 + 8) = v153;
    *(v121 + 9) = v125;
    v126 = v162;
    *(v121 + 10) = v150;
    *(v121 + 11) = v126;
    *(v121 + 12) = v107;
    v111(&v121[OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime], v117, v119);
    v111(&v121[OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime], v120, v119);

    MEMORY[0x25F8CE160](v127);
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v128 = *v132;
    (*v132)(v115, v119);
    v128(v118, v119);
    v144 = v165;
    v16 = v146;
    v17 = v145;
    v20 = v152;
  }

  __break(1u);
LABEL_150:

  __break(1u);
  return result;
}

_BYTE *SiriExecutionTaskFactory.calculateEngagementUnderstandingFeatures(conversationPath:)(uint64_t a1)
{
  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    v2 = 2;
  }

  else if (specialized static EngagementSignalEnrichmentUtils.isFailedTask(executionSequence:)(a1))
  {
    v2 = 3;
  }

  else if (specialized static EngagementSignalEnrichmentUtils.isSiriCompletedTask(executionSequence:)(a1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  v3 = specialized static EngagementSignalEnrichmentUtils.isPromptInteractionTask(executionSequence:)(a1);
  v4 = specialized static EngagementSignalEnrichmentUtils.isConfirmInteractionTask(executionSequence:)(a1);
  v5 = specialized static EngagementSignalEnrichmentUtils.isDisambiguateInteractionTask(executionSequence:)(a1);
  v6 = specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(a1);
  type metadata accessor for EngagementUnderstandingFeatures();
  result = swift_allocObject();
  result[16] = 0;
  result[17] = v3;
  result[18] = v4;
  result[19] = v5;
  result[20] = v6;
  result[21] = v2;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v38 = &v33 - v12;
  v34 = a2;
  if (a3 != a2)
  {
    v13 = (v11 + 8);
    v41 = *a4;
    v14 = v41 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v36 = v14;
    v37 = a3;
    v16 = *(v41 + 8 * a3);
    v17 = v14;
    v35 = v15;
    while (1)
    {
      v18 = *v17;
      v19 = *(*v16 + 344);

      v21 = v38;
      v19(v20);
      Date.timeIntervalSinceReferenceDate.getter();
      v23 = v22;
      v24 = *v13;
      v25 = v21;
      v26 = v40;
      v27 = (*v13)(v25, v40);
      v28 = v39;
      (*(*v18 + 344))(v27);
      Date.timeIntervalSinceReferenceDate.getter();
      v30 = v29;
      v24(v28, v26);

      if (v23 >= v30)
      {
LABEL_4:
        a3 = v37 + 1;
        v14 = v36 + 8;
        v15 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = *v17;
      v16 = v17[1];
      *v17 = v16;
      v17[1] = v31;
      --v17;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v36 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 352);

      v22 = v20(v21);
      v23 = v35;
      (*(*v19 + 352))(v22);
      v24 = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v23;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v28;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v36 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 376);

      v22 = v20(v21);
      v23 = v35;
      (*(*v19 + 376))(v22);
      v24 = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v23;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v28;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v36 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 352);

      v22 = v20(v21);
      v23 = v35;
      (*(*v19 + 352))(v22);
      v24 = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v23;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v28;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v34 = type metadata accessor for SiriUISession(0);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      outlined init with copy of SiriUISession(v23, v17);
      outlined init with copy of SiriUISession(v20, v13);
      v24 = static Date.< infix(_:_:)();
      outlined destroy of SiriUISession(v13, type metadata accessor for SiriUISession);
      result = outlined destroy of SiriUISession(v17, type metadata accessor for SiriUISession);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      outlined init with take of SiriUISession(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of SiriUISession(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v36 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 224);

      v22 = v20(v21);
      v23 = v35;
      (*(*v19 + 224))(v22);
      v24 = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v23;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v28;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v8 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v33 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = v16 + v19 * (a3 - 1);
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      v45(v47, v22, v8);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v28 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v29 = *v44;
      (*v44)(v26, v8);
      result = v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = v38 + v34;
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v30)(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v138 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v138);
  v137 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v136 = &v123 - v13;
  v133 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_86:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_119:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v16 = result;
    }

    v119 = v6;
    v139 = v16;
    v120 = *(v16 + 2);
    if (v120 >= 2)
    {
      while (*v133)
      {
        v121 = *&v16[16 * v120];
        v6 = *&v16[16 * v120 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v133 + 8 * v121), (*v133 + 8 * *&v16[16 * v120 + 16]), (*v133 + 8 * v6), v5);
        if (v119)
        {
        }

        if (v6 < v121)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v120 - 2 >= *(v16 + 2))
        {
          goto LABEL_113;
        }

        v122 = &v16[16 * v120];
        *v122 = v121;
        *(v122 + 1) = v6;
        v139 = v16;
        result = specialized Array.remove(at:)(v120 - 1);
        v16 = v139;
        v120 = *(v139 + 2);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_123;
    }
  }

  v124 = a4;
  v15 = 0;
  v135 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v132 = v14;
      v125 = v6;
      v18 = *v133;
      v5 = *(*v133 + 8 * v15);
      v129 = 8 * v17;
      v19 = (v18 + 8 * v17);
      v21 = *v19;
      v20 = v19 + 2;
      v22 = *(*v5 + 344);
      v127 = v17;

      v24 = v136;
      v22(v23);
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      v27 = *v135;
      v28 = v24;
      v29 = v138;
      v30 = (*v135)(v28, v138);
      v31 = v137;
      (*(*v21 + 344))(v30);
      Date.timeIntervalSinceReferenceDate.getter();
      v33 = v32;
      v130 = v27;
      v27(v31, v29);

      v34 = v127 + 2;
      v131 = v16;
      while (1)
      {
        v15 = v132;
        if (v132 == v34)
        {
          break;
        }

        LODWORD(v134) = v26 < v33;
        v35 = *(v20 - 1);
        v5 = *v20;
        v36 = *(**v20 + 344);

        v38 = v136;
        v36(v37);
        Date.timeIntervalSinceReferenceDate.getter();
        v40 = v39;
        v41 = v138;
        v42 = v130;
        v43 = (v130)(v38, v138);
        v44 = v137;
        (*(*v35 + 344))(v43);
        Date.timeIntervalSinceReferenceDate.getter();
        v46 = v45;
        v42(v44, v41);
        v16 = v131;

        ++v34;
        ++v20;
        if (((v134 ^ (v40 >= v46)) & 1) == 0)
        {
          v15 = v34 - 1;
          break;
        }
      }

      v6 = v125;
      v17 = v127;
      v47 = v129;
      if (v26 < v33)
      {
        if (v15 < v127)
        {
          goto LABEL_116;
        }

        if (v127 < v15)
        {
          v48 = 8 * v15 - 8;
          v49 = v15;
          v50 = v127;
          do
          {
            if (v50 != --v49)
            {
              v52 = *v133;
              if (!*v133)
              {
                goto LABEL_122;
              }

              v51 = *(v52 + v47);
              *(v52 + v47) = *(v52 + v48);
              *(v52 + v48) = v51;
            }

            ++v50;
            v48 -= 8;
            v47 += 8;
          }

          while (v50 < v49);
        }
      }
    }

    v53 = v133[1];
    if (v15 < v53)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_115;
      }

      if (v15 - v17 < v124)
      {
        v54 = v17 + v124;
        if (__OFADD__(v17, v124))
        {
          goto LABEL_117;
        }

        if (v54 >= v53)
        {
          v54 = v133[1];
        }

        if (v54 < v17)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v15 != v54)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v15 < v17)
    {
      goto LABEL_114;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      v16 = result;
    }

    v74 = *(v16 + 2);
    v73 = *(v16 + 3);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v75;
    v76 = &v16[16 * v74];
    *(v76 + 4) = v17;
    *(v76 + 5) = v15;
    v77 = *v126;
    if (!*v126)
    {
      goto LABEL_124;
    }

    if (v74)
    {
      while (1)
      {
        v5 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v16 + 4);
          v79 = *(v16 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_55:
          if (v81)
          {
            goto LABEL_103;
          }

          v94 = &v16[16 * v75];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_106;
          }

          v100 = &v16[16 * v5 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_110;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v5 = v75 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v104 = &v16[16 * v75];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_69:
        if (v99)
        {
          goto LABEL_105;
        }

        v107 = &v16[16 * v5];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_108;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_76:
        v115 = v5 - 1;
        if (v5 - 1 >= v75)
        {
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*v133)
        {
          goto LABEL_121;
        }

        v116 = *&v16[16 * v115 + 32];
        v117 = *&v16[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v133 + 8 * v116), (*v133 + 8 * *&v16[16 * v5 + 32]), (*v133 + 8 * v117), v77);
        if (v6)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v115 >= *(v16 + 2))
        {
          goto LABEL_100;
        }

        v118 = &v16[16 * v115];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v139 = v16;
        result = specialized Array.remove(at:)(v5);
        v16 = v139;
        v75 = *(v139 + 2);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v16[16 * v75 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_101;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_102;
      }

      v89 = &v16[16 * v75];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_104;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_107;
      }

      if (v93 >= v85)
      {
        v111 = &v16[16 * v5 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_111;
        }

        if (v80 < v114)
        {
          v5 = v75 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v14 = v133[1];
    if (v15 >= v14)
    {
      goto LABEL_86;
    }
  }

  v131 = v16;
  v125 = v6;
  v134 = *v133;
  v55 = v134 + 8 * v15 - 8;
  v127 = v17;
  v128 = v54;
  v56 = v17 - v15;
LABEL_28:
  v132 = v15;
  v5 = *(v134 + 8 * v15);
  v129 = v56;
  v130 = v55;
  v57 = v55;
  while (1)
  {
    v58 = *v57;
    v59 = *(*v5 + 344);

    v61 = v136;
    v59(v60);
    Date.timeIntervalSinceReferenceDate.getter();
    v63 = v62;
    v64 = *v135;
    v65 = v61;
    v66 = v138;
    v67 = (*v135)(v65, v138);
    v68 = v137;
    (*(*v58 + 344))(v67);
    Date.timeIntervalSinceReferenceDate.getter();
    v70 = v69;
    v64(v68, v66);

    if (v63 >= v70)
    {
LABEL_27:
      v15 = v132 + 1;
      v55 = v130 + 8;
      v56 = v129 - 1;
      if (v132 + 1 != v128)
      {
        goto LABEL_28;
      }

      v15 = v128;
      v6 = v125;
      v16 = v131;
      v17 = v127;
      goto LABEL_35;
    }

    if (!v134)
    {
      break;
    }

    v71 = *v57;
    v5 = v57[1];
    *v57 = v5;
    v57[1] = v71;
    --v57;
    if (__CFADD__(v56++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v121 = &v108 - v13;
  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v14)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * a4), (*v14 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v14 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v120 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v14;
  while (1)
  {
    v18 = v16++;
    if (v16 >= v15)
    {
      v40 = v14;
    }

    else
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *v14;
      v20 = *(*v14 + 8 * v16);
      v116 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(*v20 + 352);

      v25 = v121;
      v26 = v23(v24);
      v14 = v122;
      (*(*v22 + 352))(v26);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v27 = *v120;
      v28 = v123;
      (*v120)(v14, v123);
      v117 = v27;
      v27(v25, v28);

      v110 = v18;
      v29 = v18 + 2;
      while (1)
      {
        v16 = v118;
        if (v118 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(**v5 + 352);

        v33 = v121;
        v34 = v31(v32);
        v35 = v122;
        (*(*v30 + 352))(v34);
        v36 = static Date.< infix(_:_:)() & 1;
        v37 = v35;
        v14 = v123;
        v38 = v117;
        v117(v37, v123);
        v38(v33, v14);

        ++v29;
        v5 += 8;
        if ((v119 & 1) != v36)
        {
          v16 = v29 - 1;
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v116;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_119;
        }

        v40 = v109;
        if (v110 < v16)
        {
          v41 = 8 * v16 - 8;
          v42 = v16;
          v43 = v110;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v40;
              if (!*v40)
              {
                goto LABEL_125;
              }

              v44 = *(v45 + v39);
              *(v45 + v39) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v39 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v40 = v109;
      }
    }

    v46 = v40[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v47 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v47 >= v46)
        {
          v47 = v40[1];
        }

        if (v47 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v47)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    v14 = *(v17 + 16);
    v61 = *(v17 + 24);
    a4 = v14 + 1;
    if (v14 >= v61 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v14 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v62 = v17 + 16 * v14;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v14)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v64 = *(v17 + 32);
          v65 = *(v17 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_106;
          }

          v80 = (v17 + 16 * a4);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_109;
          }

          v86 = (v17 + 32 + 16 * v5);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_113;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v17 + 16 * a4);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_108;
        }

        v93 = v17 + 16 * v5;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_111;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v14 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v40)
        {
          goto LABEL_124;
        }

        v101 = v17;
        a4 = *(v17 + 32 + 16 * v14);
        v102 = *(v17 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v40 + 8 * a4), (*v40 + 8 * *(v17 + 32 + 16 * v5)), (*v40 + 8 * v102), v63);
        if (v6)
        {
        }

        if (v102 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (v14 >= *(v101 + 2))
        {
          goto LABEL_103;
        }

        v103 = &v101[16 * v14];
        *(v103 + 4) = a4;
        *(v103 + 5) = v102;
        v124 = v101;
        result = specialized Array.remove(at:)(v5);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v17 + 32 + 16 * a4;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_104;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_105;
      }

      v75 = (v17 + 16 * a4);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_107;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_110;
      }

      if (v79 >= v71)
      {
        v97 = (v17 + 32 + 16 * v5);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_114;
        }

        if (v66 < v100)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = v40;
    v15 = v40[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *v40;
  v14 = v119 + 8 * v16 - 8;
  v110 = v18;
  v48 = v18 - v16;
  v115 = v47;
LABEL_30:
  v117 = v14;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = v48;
  while (1)
  {
    v49 = *v14;
    v50 = *(*v5 + 352);

    v52 = v121;
    v53 = v50(v51);
    v54 = v122;
    (*(*v49 + 352))(v53);
    a4 = static Date.< infix(_:_:)();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v16 = v118 + 1;
      v14 = v117 + 8;
      v48 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      v40 = v109;
      v18 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v14;
    v5 = *(v14 + 8);
    *v14 = v5;
    *(v14 + 8) = v58;
    v14 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v121 = &v108 - v13;
  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v14)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * a4), (*v14 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v14 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v120 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v14;
  while (1)
  {
    v18 = v16++;
    if (v16 >= v15)
    {
      v40 = v14;
    }

    else
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *v14;
      v20 = *(*v14 + 8 * v16);
      v116 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(*v20 + 376);

      v25 = v121;
      v26 = v23(v24);
      v14 = v122;
      (*(*v22 + 376))(v26);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v27 = *v120;
      v28 = v123;
      (*v120)(v14, v123);
      v117 = v27;
      v27(v25, v28);

      v110 = v18;
      v29 = v18 + 2;
      while (1)
      {
        v16 = v118;
        if (v118 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(**v5 + 376);

        v33 = v121;
        v34 = v31(v32);
        v35 = v122;
        (*(*v30 + 376))(v34);
        v36 = static Date.< infix(_:_:)() & 1;
        v37 = v35;
        v14 = v123;
        v38 = v117;
        v117(v37, v123);
        v38(v33, v14);

        ++v29;
        v5 += 8;
        if ((v119 & 1) != v36)
        {
          v16 = v29 - 1;
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v116;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_119;
        }

        v40 = v109;
        if (v110 < v16)
        {
          v41 = 8 * v16 - 8;
          v42 = v16;
          v43 = v110;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v40;
              if (!*v40)
              {
                goto LABEL_125;
              }

              v44 = *(v45 + v39);
              *(v45 + v39) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v39 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v40 = v109;
      }
    }

    v46 = v40[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v47 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v47 >= v46)
        {
          v47 = v40[1];
        }

        if (v47 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v47)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    v14 = *(v17 + 16);
    v61 = *(v17 + 24);
    a4 = v14 + 1;
    if (v14 >= v61 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v14 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v62 = v17 + 16 * v14;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v14)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v64 = *(v17 + 32);
          v65 = *(v17 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_106;
          }

          v80 = (v17 + 16 * a4);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_109;
          }

          v86 = (v17 + 32 + 16 * v5);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_113;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v17 + 16 * a4);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_108;
        }

        v93 = v17 + 16 * v5;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_111;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v14 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v40)
        {
          goto LABEL_124;
        }

        v101 = v17;
        a4 = *(v17 + 32 + 16 * v14);
        v102 = *(v17 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v40 + 8 * a4), (*v40 + 8 * *(v17 + 32 + 16 * v5)), (*v40 + 8 * v102), v63);
        if (v6)
        {
        }

        if (v102 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (v14 >= *(v101 + 2))
        {
          goto LABEL_103;
        }

        v103 = &v101[16 * v14];
        *(v103 + 4) = a4;
        *(v103 + 5) = v102;
        v124 = v101;
        result = specialized Array.remove(at:)(v5);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v17 + 32 + 16 * a4;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_104;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_105;
      }

      v75 = (v17 + 16 * a4);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_107;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_110;
      }

      if (v79 >= v71)
      {
        v97 = (v17 + 32 + 16 * v5);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_114;
        }

        if (v66 < v100)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = v40;
    v15 = v40[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *v40;
  v14 = v119 + 8 * v16 - 8;
  v110 = v18;
  v48 = v18 - v16;
  v115 = v47;
LABEL_30:
  v117 = v14;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = v48;
  while (1)
  {
    v49 = *v14;
    v50 = *(*v5 + 376);

    v52 = v121;
    v53 = v50(v51);
    v54 = v122;
    (*(*v49 + 376))(v53);
    a4 = static Date.< infix(_:_:)();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v16 = v118 + 1;
      v14 = v117 + 8;
      v48 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      v40 = v109;
      v18 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v14;
    v5 = *(v14 + 8);
    *v14 = v5;
    *(v14 + 8) = v58;
    v14 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v121 = &v108 - v13;
  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v14)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * a4), (*v14 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v14 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v120 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v14;
  while (1)
  {
    v18 = v16++;
    if (v16 >= v15)
    {
      v40 = v14;
    }

    else
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *v14;
      v20 = *(*v14 + 8 * v16);
      v116 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(*v20 + 352);

      v25 = v121;
      v26 = v23(v24);
      v14 = v122;
      (*(*v22 + 352))(v26);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v27 = *v120;
      v28 = v123;
      (*v120)(v14, v123);
      v117 = v27;
      v27(v25, v28);

      v110 = v18;
      v29 = v18 + 2;
      while (1)
      {
        v16 = v118;
        if (v118 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(**v5 + 352);

        v33 = v121;
        v34 = v31(v32);
        v35 = v122;
        (*(*v30 + 352))(v34);
        v36 = static Date.< infix(_:_:)() & 1;
        v37 = v35;
        v14 = v123;
        v38 = v117;
        v117(v37, v123);
        v38(v33, v14);

        ++v29;
        v5 += 8;
        if ((v119 & 1) != v36)
        {
          v16 = v29 - 1;
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v116;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_119;
        }

        v40 = v109;
        if (v110 < v16)
        {
          v41 = 8 * v16 - 8;
          v42 = v16;
          v43 = v110;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v40;
              if (!*v40)
              {
                goto LABEL_125;
              }

              v44 = *(v45 + v39);
              *(v45 + v39) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v39 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v40 = v109;
      }
    }

    v46 = v40[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v47 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v47 >= v46)
        {
          v47 = v40[1];
        }

        if (v47 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v47)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    v14 = *(v17 + 16);
    v61 = *(v17 + 24);
    a4 = v14 + 1;
    if (v14 >= v61 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v14 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v62 = v17 + 16 * v14;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v14)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v64 = *(v17 + 32);
          v65 = *(v17 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_106;
          }

          v80 = (v17 + 16 * a4);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_109;
          }

          v86 = (v17 + 32 + 16 * v5);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_113;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v17 + 16 * a4);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_108;
        }

        v93 = v17 + 16 * v5;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_111;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v14 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v40)
        {
          goto LABEL_124;
        }

        v101 = v17;
        a4 = *(v17 + 32 + 16 * v14);
        v102 = *(v17 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v40 + 8 * a4), (*v40 + 8 * *(v17 + 32 + 16 * v5)), (*v40 + 8 * v102), v63);
        if (v6)
        {
        }

        if (v102 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (v14 >= *(v101 + 2))
        {
          goto LABEL_103;
        }

        v103 = &v101[16 * v14];
        *(v103 + 4) = a4;
        *(v103 + 5) = v102;
        v124 = v101;
        result = specialized Array.remove(at:)(v5);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v17 + 32 + 16 * a4;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_104;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_105;
      }

      v75 = (v17 + 16 * a4);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_107;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_110;
      }

      if (v79 >= v71)
      {
        v97 = (v17 + 32 + 16 * v5);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_114;
        }

        if (v66 < v100)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = v40;
    v15 = v40[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *v40;
  v14 = v119 + 8 * v16 - 8;
  v110 = v18;
  v48 = v18 - v16;
  v115 = v47;
LABEL_30:
  v117 = v14;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = v48;
  while (1)
  {
    v49 = *v14;
    v50 = *(*v5 + 352);

    v52 = v121;
    v53 = v50(v51);
    v54 = v122;
    (*(*v49 + 352))(v53);
    a4 = static Date.< infix(_:_:)();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v16 = v118 + 1;
      v14 = v117 + 8;
      v48 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      v40 = v109;
      v18 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v14;
    v5 = *(v14 + 8);
    *v14 = v5;
    *(v14 + 8) = v58;
    v14 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v121 = &v108 - v13;
  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v14)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * a4), (*v14 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v14 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v120 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v14;
  while (1)
  {
    v18 = v16++;
    if (v16 >= v15)
    {
      v40 = v14;
    }

    else
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *v14;
      v20 = *(*v14 + 8 * v16);
      v116 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(*v20 + 224);

      v25 = v121;
      v26 = v23(v24);
      v14 = v122;
      (*(*v22 + 224))(v26);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v27 = *v120;
      v28 = v123;
      (*v120)(v14, v123);
      v117 = v27;
      v27(v25, v28);

      v110 = v18;
      v29 = v18 + 2;
      while (1)
      {
        v16 = v118;
        if (v118 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(**v5 + 224);

        v33 = v121;
        v34 = v31(v32);
        v35 = v122;
        (*(*v30 + 224))(v34);
        v36 = static Date.< infix(_:_:)() & 1;
        v37 = v35;
        v14 = v123;
        v38 = v117;
        v117(v37, v123);
        v38(v33, v14);

        ++v29;
        v5 += 8;
        if ((v119 & 1) != v36)
        {
          v16 = v29 - 1;
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v116;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_119;
        }

        v40 = v109;
        if (v110 < v16)
        {
          v41 = 8 * v16 - 8;
          v42 = v16;
          v43 = v110;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v40;
              if (!*v40)
              {
                goto LABEL_125;
              }

              v44 = *(v45 + v39);
              *(v45 + v39) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v39 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v40 = v109;
      }
    }

    v46 = v40[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v47 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v47 >= v46)
        {
          v47 = v40[1];
        }

        if (v47 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v47)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    v14 = *(v17 + 16);
    v61 = *(v17 + 24);
    a4 = v14 + 1;
    if (v14 >= v61 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v14 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v62 = v17 + 16 * v14;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v14)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v64 = *(v17 + 32);
          v65 = *(v17 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_106;
          }

          v80 = (v17 + 16 * a4);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_109;
          }

          v86 = (v17 + 32 + 16 * v5);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_113;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v17 + 16 * a4);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_108;
        }

        v93 = v17 + 16 * v5;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_111;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v14 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v40)
        {
          goto LABEL_124;
        }

        v101 = v17;
        a4 = *(v17 + 32 + 16 * v14);
        v102 = *(v17 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v40 + 8 * a4), (*v40 + 8 * *(v17 + 32 + 16 * v5)), (*v40 + 8 * v102), v63);
        if (v6)
        {
        }

        if (v102 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (v14 >= *(v101 + 2))
        {
          goto LABEL_103;
        }

        v103 = &v101[16 * v14];
        *(v103 + 4) = a4;
        *(v103 + 5) = v102;
        v124 = v101;
        result = specialized Array.remove(at:)(v5);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v17 + 32 + 16 * a4;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_104;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_105;
      }

      v75 = (v17 + 16 * a4);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_107;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_110;
      }

      if (v79 >= v71)
      {
        v97 = (v17 + 32 + 16 * v5);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_114;
        }

        if (v66 < v100)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = v40;
    v15 = v40[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *v40;
  v14 = v119 + 8 * v16 - 8;
  v110 = v18;
  v48 = v18 - v16;
  v115 = v47;
LABEL_30:
  v117 = v14;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = v48;
  while (1)
  {
    v49 = *v14;
    v50 = *(*v5 + 224);

    v52 = v121;
    v53 = v50(v51);
    v54 = v122;
    (*(*v49 + 224))(v53);
    a4 = static Date.< infix(_:_:)();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v16 = v118 + 1;
      v14 = v117 + 8;
      v48 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      v40 = v109;
      v18 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v14;
    v5 = *(v14 + 8);
    *v14 = v5;
    *(v14 + 8) = v58;
    v14 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v54 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v61 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v63 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v61)
    {
      v55 = (v8 + 8);
      v56 = a4;
LABEL_27:
      v54 = a1;
      v33 = a1 - 8;
      v34 = a3 - 8;
      v35 = v63;
      v57 = a1 - 8;
      do
      {
        v36 = *(v35 - 1);
        v35 -= 8;
        v62 = v34;
        v37 = v34 + 8;
        v38 = *v33;
        v39 = *(*v36 + 344);

        v41 = v58;
        v39(v40);
        Date.timeIntervalSinceReferenceDate.getter();
        v43 = v42;
        v44 = *v55;
        v45 = v41;
        v46 = v60;
        v47 = (*v55)(v45, v60);
        v48 = v59;
        (*(*v38 + 344))(v47);
        Date.timeIntervalSinceReferenceDate.getter();
        v50 = v49;
        v44(v48, v46);

        if (v43 < v50)
        {
          a4 = v56;
          v52 = v57;
          a3 = v62;
          if (v37 != v54)
          {
            *v62 = *v57;
          }

          if (v63 <= a4 || (a1 = v52, v52 <= v61))
          {
            a1 = v52;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v56;
        v51 = v62;
        if (v37 != v63)
        {
          *v62 = *v35;
        }

        v34 = v51 - 8;
        v63 = v35;
        v33 = v57;
      }

      while (v35 > a4);
      v63 = v35;
      a1 = v54;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v63 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v62 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v61 = a1;
        v17 = *a4;
        v18 = *(**a2 + 344);

        v20 = v58;
        v18(v19);
        Date.timeIntervalSinceReferenceDate.getter();
        v22 = v21;
        v23 = *v16;
        v24 = v20;
        v25 = v60;
        v26 = (*v16)(v24, v60);
        v27 = v59;
        (*(*v17 + 344))(v26);
        Date.timeIntervalSinceReferenceDate.getter();
        v29 = v28;
        v23(v27, v25);

        if (v22 >= v29)
        {
          break;
        }

        v30 = a2;
        v31 = v61;
        v32 = v61 == a2;
        a2 += 8;
        if (!v32)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v31 + 8;
        if (a4 >= v63 || a2 >= v62)
        {
          goto LABEL_39;
        }
      }

      v30 = a4;
      v31 = v61;
      v32 = v61 == a4;
      a4 += 8;
      if (v32)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v31 = *v30;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v63 - a4 + (v63 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v63 - a4) / 8));
  }

  return 1;
}

{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v55 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v57 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v49 = (v8 + 8);
      v50 = a4;
LABEL_27:
      v48 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v57;
      v51 = a1 - 8;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v56 = v31;
        v34 = v31 + 8;
        v35 = *v30;
        v36 = *(*v33 + 352);

        v38 = v52;
        v39 = v36(v37);
        v40 = v53;
        (*(*v35 + 352))(v39);
        v41 = static Date.< infix(_:_:)();
        v42 = *v49;
        v43 = v40;
        v44 = v54;
        (*v49)(v43, v54);
        v42(v38, v44);

        if (v41)
        {
          a4 = v50;
          v46 = v51;
          a3 = v56;
          if (v34 != v48)
          {
            *v56 = *v51;
          }

          if (v57 <= a4 || (a1 = v46, v46 <= v55))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v50;
        v45 = v56;
        if (v34 != v57)
        {
          *v56 = *v32;
        }

        v31 = v45 - 8;
        v57 = v32;
        v30 = v51;
      }

      while (v32 > a4);
      v57 = v32;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v57 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v56 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v55 = a1;
        v17 = *a4;
        v18 = *(**a2 + 352);

        v20 = v52;
        v21 = v18(v19);
        v22 = v53;
        (*(*v17 + 352))(v21);
        v23 = static Date.< infix(_:_:)();
        v24 = *v16;
        v25 = v22;
        v26 = v54;
        (*v16)(v25, v54);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v55;
        v29 = v55 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v57 || a2 >= v56)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v55;
      v29 = v55 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v55 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v57 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v49 = (v8 + 8);
      v50 = a4;
LABEL_27:
      v48 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v57;
      v51 = a1 - 8;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v56 = v31;
        v34 = v31 + 8;
        v35 = *v30;
        v36 = *(*v33 + 376);

        v38 = v52;
        v39 = v36(v37);
        v40 = v53;
        (*(*v35 + 376))(v39);
        v41 = static Date.< infix(_:_:)();
        v42 = *v49;
        v43 = v40;
        v44 = v54;
        (*v49)(v43, v54);
        v42(v38, v44);

        if (v41)
        {
          a4 = v50;
          v46 = v51;
          a3 = v56;
          if (v34 != v48)
          {
            *v56 = *v51;
          }

          if (v57 <= a4 || (a1 = v46, v46 <= v55))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v50;
        v45 = v56;
        if (v34 != v57)
        {
          *v56 = *v32;
        }

        v31 = v45 - 8;
        v57 = v32;
        v30 = v51;
      }

      while (v32 > a4);
      v57 = v32;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v57 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v56 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v55 = a1;
        v17 = *a4;
        v18 = *(**a2 + 376);

        v20 = v52;
        v21 = v18(v19);
        v22 = v53;
        (*(*v17 + 376))(v21);
        v23 = static Date.< infix(_:_:)();
        v24 = *v16;
        v25 = v22;
        v26 = v54;
        (*v16)(v25, v54);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v55;
        v29 = v55 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v57 || a2 >= v56)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v55;
      v29 = v55 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v55 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v57 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v49 = (v8 + 8);
      v50 = a4;
LABEL_27:
      v48 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v57;
      v51 = a1 - 8;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v56 = v31;
        v34 = v31 + 8;
        v35 = *v30;
        v36 = *(*v33 + 352);

        v38 = v52;
        v39 = v36(v37);
        v40 = v53;
        (*(*v35 + 352))(v39);
        v41 = static Date.< infix(_:_:)();
        v42 = *v49;
        v43 = v40;
        v44 = v54;
        (*v49)(v43, v54);
        v42(v38, v44);

        if (v41)
        {
          a4 = v50;
          v46 = v51;
          a3 = v56;
          if (v34 != v48)
          {
            *v56 = *v51;
          }

          if (v57 <= a4 || (a1 = v46, v46 <= v55))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v50;
        v45 = v56;
        if (v34 != v57)
        {
          *v56 = *v32;
        }

        v31 = v45 - 8;
        v57 = v32;
        v30 = v51;
      }

      while (v32 > a4);
      v57 = v32;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v57 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v56 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v55 = a1;
        v17 = *a4;
        v18 = *(**a2 + 352);

        v20 = v52;
        v21 = v18(v19);
        v22 = v53;
        (*(*v17 + 352))(v21);
        v23 = static Date.< infix(_:_:)();
        v24 = *v16;
        v25 = v22;
        v26 = v54;
        (*v16)(v25, v54);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v55;
        v29 = v55 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v57 || a2 >= v56)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v55;
      v29 = v55 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v47 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v55 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v56 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v48 = (v8 + 8);
      v49 = a4;
LABEL_27:
      v47 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v56;
      v50 = a1 - 8;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v34 = v31;
        v35 = v31 + 8;
        v36 = *v30;
        v37 = *(*v33 + 224);

        v39 = v52;
        v40 = v37(v38);
        v41 = v53;
        (*(*v36 + 224))(v40);
        LODWORD(v51) = static Date.< infix(_:_:)();
        v42 = *v48;
        v43 = v41;
        v44 = v54;
        (*v48)(v43, v54);
        v42(v39, v44);

        if (v51)
        {
          a4 = v49;
          v45 = v50;
          a3 = v34;
          if (v35 != v47)
          {
            *v34 = *v50;
          }

          if (v56 <= a4 || (a1 = v45, v45 <= v55))
          {
            a1 = v45;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v49;
        if (v35 != v56)
        {
          *v34 = *v32;
        }

        v31 = v34 - 8;
        v56 = v32;
        v30 = v50;
      }

      while (v32 > a4);
      v56 = v32;
      a1 = v47;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v56 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v51 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v55 = a1;
        v17 = *a4;
        v18 = *(**a2 + 224);

        v20 = v52;
        v21 = v18(v19);
        v22 = v53;
        (*(*v17 + 224))(v21);
        v23 = static Date.< infix(_:_:)();
        v24 = *v16;
        v25 = v22;
        v26 = v54;
        (*v16)(v25, v54);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v55;
        v29 = v55 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v56 || a2 >= v51)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v55;
      v29 = v55 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v56 - a4 + (v56 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v56 - a4) / 8));
  }

  return 1;
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

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement0E13ExecutionStepCGTt1g504_s18de14Engagement0B20g72TaskFactoryC04loadE8Entities5steps15siriUISessionIdSayAA0bdE0CGSayAA0bD4H16CG_SStFSSAKXEfU_Tf1nc_nTf4g_n(unint64_t a1)
{
  v28 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v25);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F8CE460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v27 = v8;
        v9 = (*(*v7 + 296))();
        v11 = v10;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
          v4 = v28;
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v17 & 1) != (v19 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x25F8CE160](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_25ED7ACC0;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v9;
          v21[1] = v11;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v27 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t specialized TaskSuccess.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C707041746F6ELL && a2 == 0xED0000656C626163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75636C6143746F6ELL && a2 == 0xED0000646574616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEA00000000006C75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365636375736E75 && a2 == 0xEC0000006C756673)
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

uint64_t specialized TaskSuccess.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v37[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys();
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v30 = &type metadata for TaskSuccess;
    v31 = v40;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys();
      v33 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys();
        v35 = v50;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v54);
  return v38;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

uint64_t specialized TaskCompletionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
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

uint64_t specialized TaskCompletionType.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v37[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys();
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v30 = &type metadata for TaskCompletionType;
    v31 = v40;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys();
      v33 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys();
        v35 = v50;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v54);
  return v38;
}

unint64_t lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

uint64_t specialized TaskInteractionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x736564756C636E69 && a2 == 0xEE0074706D6F7250;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736564756C636E69 && a2 == 0xEF6D7269666E6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025ED7EBC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025ED7EBE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized TaskInteractionType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 3;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v10)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  if (v15)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v7 & 1 | v12 | v11;
}

unint64_t lazy protocol witness table accessor for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess and conformance TaskSuccess()
{
  result = lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess;
  if (!lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess;
  if (!lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskInteractionType and conformance TaskInteractionType()
{
  result = lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType;
  if (!lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType and conformance TaskCompletionType()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType;
  if (!lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType;
  if (!lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for SiriExecutionStep(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for TaskInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for SiriExecutionTask(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SiriExecutionStep(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriExecutionStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriExecutionStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriExecutionTask.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriExecutionTask.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUnderstandingFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementUnderstandingFeatures.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskInteractionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskInteractionType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskSuccess(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskSuccess(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized EngagementUnderstandingFeatures.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636375536B736174 && a2 == 0xEB00000000737365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025ED7E9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EA00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized SiriExecutionTask.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737365536975 && a2 == 0xEB0000000064496ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574746150707061 && a2 == 0xEA00000000006E72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025ED7EAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t specialized SiriExecutionStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xED000064496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025ED7EB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756C6156746F6C73 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706574536B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t PSEGenericSELFEmitter.emitPSEGeneric(appLaunchSignals:task:)(unint64_t a1, uint64_t a2)
{
  v193 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v169 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v186 = &v169 - v13;
  MEMORY[0x28223BE20](v12);
  v187 = &v169 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v185 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v184 = &v169 - v19;
  MEMORY[0x28223BE20](v18);
  v183 = &v169 - v20;
  v21 = type metadata accessor for UUID();
  v189 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v182 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v169 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v169 - v27;
  MEMORY[0x28223BE20](v26);
  v190 = &v169 - v28;
  v29 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v29)
  {
    v192 = v29;
    v188 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v188)
    {
      v177 = [objc_allocWithZone(MEMORY[0x277D5A1A8]) init];
      if (v177)
      {
        v175 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v175)
        {
          v196[0]._countAndFlagsBits = MEMORY[0x277D84F90];
          if (a1 >> 62)
          {
            if ((a1 & 0x8000000000000000) != 0)
            {
              v49 = a1;
            }

            else
            {
              v49 = a1 & 0xFFFFFFFFFFFFFF8;
            }

            v8 = MEMORY[0x25F8CE500](v49);
          }

          else
          {
            v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v30 = MEMORY[0x277D84F90];
          v179 = v4;
          v178 = v5;
          v173 = v11;
          v176 = v21;
          if (v8)
          {
            v31 = 0;
            v5 = 0xE400000000000000;
            while (1)
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v2 = MEMORY[0x25F8CE460](v31, a1);
                v4 = (v31 + 1);
                if (__OFADD__(v31, 1))
                {
LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }
              }

              else
              {
                if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_43;
                }

                v2 = *(a1 + 8 * v31 + 32);

                v4 = (v31 + 1);
                if (__OFADD__(v31, 1))
                {
                  goto LABEL_23;
                }
              }

              if ((*(*v2 + 168))() == 1769105747 && v32 == 0xE400000000000000)
              {
              }

              else
              {
                v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v34 & 1) == 0)
                {

                  goto LABEL_11;
                }
              }

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
LABEL_11:
              ++v31;
              if (v4 == v8)
              {
                countAndFlagsBits = v196[0]._countAndFlagsBits;
                v21 = v176;
                v30 = MEMORY[0x277D84F90];
                if ((v196[0]._countAndFlagsBits & 0x8000000000000000) == 0)
                {
                  goto LABEL_36;
                }

                goto LABEL_48;
              }
            }
          }

          countAndFlagsBits = MEMORY[0x277D84F90];
          if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

LABEL_36:
          if ((countAndFlagsBits & 0x4000000000000000) != 0)
          {
LABEL_48:
            if (MEMORY[0x25F8CE500](countAndFlagsBits))
            {
              goto LABEL_38;
            }
          }

          else if (*(countAndFlagsBits + 16))
          {
LABEL_38:
            if ((countAndFlagsBits & 0xC000000000000001) != 0)
            {
              v2 = MEMORY[0x25F8CE460](0, countAndFlagsBits);
            }

            else
            {
              if (!*(countAndFlagsBits + 16))
              {
                __break(1u);
                goto LABEL_138;
              }

              v2 = *(countAndFlagsBits + 32);
            }

LABEL_50:
            v196[0]._countAndFlagsBits = v30;
            v172 = v2;
            if (v8)
            {
              v5 = 0;
              v21 = a1 & 0xFFFFFFFFFFFFFF8;
              v30 = 0xE400000000000000;
              while (1)
              {
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v50 = MEMORY[0x25F8CE460](v5, a1);
                  v4 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    v30 = v196[0]._countAndFlagsBits;
                    v21 = v176;
                    v2 = v172;
                    break;
                  }
                }

                else
                {
                  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  v50 = *(a1 + 8 * v5 + 32);

                  v4 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_66;
                  }
                }

                if ((*(*v50 + 168))() == 1769105747 && v51 == 0xE400000000000000)
                {
                }

                else
                {
                  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v2)
                  {
                  }

                  else
                  {
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v2 = *(v196[0]._countAndFlagsBits + 16);
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }
                }

                ++v5;
                if (v4 == v8)
                {
                  goto LABEL_67;
                }
              }
            }

            v5 = v177;
            v8 = v175;
            if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
            {
LABEL_76:
              if (MEMORY[0x25F8CE500](v30))
              {
LABEL_71:
                if ((v30 & 0xC000000000000001) == 0)
                {
                  if (!*(v30 + 16))
                  {
                    __break(1u);
                    goto LABEL_140;
                  }

                  v53 = *(v30 + 32);

                  goto LABEL_74;
                }

LABEL_138:
                v53 = MEMORY[0x25F8CE460](0, v30);
LABEL_74:

                goto LABEL_78;
              }
            }

            else if (*(v30 + 16))
            {
              goto LABEL_71;
            }

            v53 = 0;
LABEL_78:
            v174 = v53;
            [v8 setIsDonatedBySiri_];
            if (v2)
            {
              v54 = *(*v2 + 120);

              v54(v196, v55);

              v56 = *&v196[0]._countAndFlagsBits;
            }

            else
            {
              v56 = -1.0;
            }

            v57 = [v8 setEventDonationTimeInSecondsSince2001_];
            v58 = v193;
            v59 = *(*v193 + 280);
            v60 = (v59)(v57);
            v61 = MEMORY[0x25F8CDFC0](v60);

            [v8 setDomain_];

            v62 = v59();
            v63 = MEMORY[0x25F8CDFC0](v62);

            [v8 setAction_];

            v64 = v174;
            if (v174)
            {
              v65 = v5;

              (*(*v64 + 120))(v196, [v8 setHasUserInitiatedFollowup_]);
              v66 = (*(*v64 + 168))([v8 setAppLaunchTimeInSecondsSince2001_]);
              v67 = v64;
              v68 = (*(*v191 + 136))(v66);

              (v59)([v8 setAppLaunchReason_]);
              v69 = String.lowercased()();

              v196[0] = v69;
              v194 = 1936744813;
              v195 = 0xE400000000000000;
              lazy protocol witness table accessor for type String and conformance String();
              LOBYTE(v68) = StringProtocol.contains<A>(_:)();

              v71 = v58;
              if (v68)
              {
                v72 = (*(*v67 + 216))(v70);
                if (*(v72 + 16))
                {
                  v73 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690);
                  v74 = v188;
                  v5 = v65;
                  if (v75)
                  {
                    outlined init with copy of Any(*(v72 + 56) + 32 * v73, v196);

                    v76 = swift_dynamicCast();
                    v77 = v76 == 0;
                    if (v76)
                    {
                      v78 = v194;
                    }

                    else
                    {
                      v78 = 0;
                    }

                    if (v77)
                    {
                      v79 = 0;
                    }

                    else
                    {
                      v79 = v195;
                    }
                  }

                  else
                  {

                    v78 = 0;
                    v79 = 0;
                  }
                }

                else
                {

                  v78 = 0;
                  v79 = 0;
                  v74 = v188;
                  v5 = v65;
                }

                v86 = &off_279A51000;
                v87 = (*(*v191 + 128))(v78, v79);
              }

              else
              {
                v80 = (*(*v67 + 216))(v70);
                if (*(v80 + 16))
                {
                  v81 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690);
                  v5 = v65;
                  if (v82)
                  {
                    outlined init with copy of Any(*(v80 + 56) + 32 * v81, v196);

                    v83 = swift_dynamicCast();
                    if (v83)
                    {
                      v84 = v194;
                    }

                    else
                    {
                      v84 = 0;
                    }

                    if (v83)
                    {
                      v85 = v195;
                    }

                    else
                    {
                      v85 = 0;
                    }
                  }

                  else
                  {

                    v84 = 0;
                    v85 = 0;
                  }
                }

                else
                {

                  v84 = 0;
                  v85 = 0;
                  v5 = v65;
                }

                v86 = &off_279A51000;
                v88 = (*(*v58 + 256))();
                if (v88[2])
                {
                  v90 = v88[4];
                  v89 = v88[5];

                  v71 = v193;
                }

                else
                {
                  v90 = 0;
                  v89 = 0;
                }

                v87 = (*(*v191 + 120))(v84, v85, v90, v89);

                v74 = v188;
              }

              [v8 v86[442]];
              if ([v8 appFollowup] == 4)
              {
                v91 = (*(*v71 + 328))();
                (*(*v91 + 112))(4);
              }
            }

            else
            {
              [v8 setHasUserInitiatedFollowup_];
              [v8 setAppFollowup_];
              v74 = v188;
            }

            [v5 setCommonSignal_];
            v92 = v190;
            UUID.init()();
            v93 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v95 = [v93 initWithNSUUID_];

            v96 = v189;
            v98 = v189 + 8;
            v97 = *(v189 + 8);
            v97(v92, v21);
            [v74 setPseId_];

            v99 = v193;
            (*(*v193 + 160))();
            v100 = v183;
            UUID.init(uuidString:)();

            v171 = *(v96 + 48);
            if (v171(v100, 1, v21) == 1)
            {
              v101 = outlined destroy of UUID?(v100);
              v102 = v184;
              v103 = v98;
              v104 = &off_279A51000;
            }

            else
            {
              v105 = *(v96 + 32);
              v106 = v181;
              v105(v181, v100, v21);
              v107 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v108 = UUID._bridgeToObjectiveC()().super.isa;
              v104 = &off_279A51000;
              v109 = [v107 initWithNSUUID_];

              [v74 setUiSessionId_];
              v101 = (v97)(v106, v21);
              v102 = v184;
              v103 = v98;
            }

            v110 = *((*(*v99 + 208))(v101) + 16);
            v5 = &SiriExecutionTask;
            v170 = v97;
            if (v110)
            {

              v21 = v176;

              UUID.init(uuidString:)();

              if (v171(v102, 1, v21) != 1)
              {
                v125 = v180;
                (*(v189 + 32))(v180, v102, v21);
                v120 = 0x277D5A000uLL;
                v126 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v127 = UUID._bridgeToObjectiveC()().super.isa;
                v128 = [v126 v104[449]];

                [v188 setOriginalLastRequestId_];
                v124 = (v97)(v125, v21);
                v30 = v173;
                goto LABEL_125;
              }

              outlined destroy of UUID?(v102);
            }

            else
            {
            }

            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v111 = type metadata accessor for Logger();
            __swift_project_value_buffer(v111, static Logger.engagement);
            v112 = *MEMORY[0x277D615E0];
            v113 = type metadata accessor for EngagementSignalCollectionError();
            v114 = v187;
            (*(*(v113 - 8) + 104))(v187, v112, v113);
            (*(v178 + 104))(v114, *MEMORY[0x277D616A8], v179);
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v196[0]._countAndFlagsBits = v118;
              *v117 = 136315138;
              *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v196[0]._countAndFlagsBits);
              _os_log_impl(&dword_25ECEC000, v115, v116, "%s", v117, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v118);
              MEMORY[0x25F8CEE50](v118, -1, -1);
              v119 = v117;
              v21 = v176;
              MEMORY[0x25F8CEE50](v119, -1, -1);
            }

            v30 = v173;
            v120 = 0x277D5A000;
            type metadata accessor for SiriTaskEngagementUtils();
            v121 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
            v122 = v187;
            MEMORY[0x25F8CDB30](v187, v121, v123);

            v124 = (*(v178 + 8))(v122, v179);
            v5 = 0x280FEE000;
LABEL_125:
            (*(*v193 + 184))(v124);
            v129 = v185;
            UUID.init(uuidString:)();
            v130 = v129;

            if (v171(v129, 1, v21) != 1)
            {
              v140 = v120;
              v141 = v182;
              (*(v189 + 32))(v182, v130, v21);
              v142 = objc_allocWithZone(*(v140 + 3192));
              v143 = UUID._bridgeToObjectiveC()().super.isa;
              v144 = [v142 v104[449]];

              v4 = v188;
              [v188 setTaskId_];

              v145 = v170(v141, v21);
              v8 = v177;
LABEL_131:
              v149 = (*(*v193 + 328))(v145);
              v150 = (*(*v149 + 104))(v149);

              v151 = v191;
              v152 = [v4 setSiriEngagementTaskSuccess_];
              [v4 setTriggerOrigin_];
              v153 = v192;
              [v192 setEventMetadata_];
              [v153 setGenericSignalGenerated_];
              if (*(v5 + 1440) != -1)
              {
                swift_once();
              }

              v154 = type metadata accessor for Logger();
              __swift_project_value_buffer(v154, static Logger.engagement);
              v155 = *MEMORY[0x277D61628];
              v156 = type metadata accessor for SELFPSELogged();
              (*(*(v156 - 8) + 104))(v30, v155, v156);
              (*(v178 + 104))(v30, *MEMORY[0x277D61658], v179);
              v157 = Logger.logObject.getter();
              v158 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v157, v158))
              {
                v159 = swift_slowAlloc();
                v160 = swift_slowAlloc();
                v196[0]._countAndFlagsBits = v160;
                *v159 = 136315138;
                *(v159 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000025ED7F260, &v196[0]._countAndFlagsBits);
                _os_log_impl(&dword_25ECEC000, v157, v158, "%s", v159, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v160);
                MEMORY[0x25F8CEE50](v160, -1, -1);
                v161 = v159;
                v21 = v176;
                v30 = v173;
                MEMORY[0x25F8CEE50](v161, -1, -1);
              }

              type metadata accessor for SiriTaskEngagementUtils();
              v162 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              MEMORY[0x25F8CDB30](v30, v162, v163);

              (*(v178 + 8))(v30, v179);
              v164 = [objc_opt_self() sharedAnalytics];
              v165 = [v164 defaultMessageStream];

              v166 = v190;
              UUID.init()();
              v167 = UUID._bridgeToObjectiveC()().super.isa;
              v170(v166, v21);
              v168 = v192;
              [v165 emitMessage:v192 isolatedStreamUUID:v167];
            }

            v189 = v103;
            outlined destroy of UUID?(v129);
            v4 = v188;
            v8 = v177;
            if (*(v5 + 1440) == -1)
            {
LABEL_127:
              v131 = type metadata accessor for Logger();
              __swift_project_value_buffer(v131, static Logger.engagement);
              v132 = *MEMORY[0x277D615C8];
              v133 = type metadata accessor for EngagementSignalCollectionError();
              v134 = v186;
              (*(*(v133 - 8) + 104))(v186, v132, v133);
              (*(v178 + 104))(v134, *MEMORY[0x277D616A8], v179);
              v135 = Logger.logObject.getter();
              v136 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                v196[0]._countAndFlagsBits = v138;
                *v137 = 136315138;
                *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v196[0]._countAndFlagsBits);
                _os_log_impl(&dword_25ECEC000, v135, v136, "%s", v137, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v138);
                MEMORY[0x25F8CEE50](v138, -1, -1);
                v139 = v137;
                v21 = v176;
                v30 = v173;
                MEMORY[0x25F8CEE50](v139, -1, -1);
              }

              type metadata accessor for SiriTaskEngagementUtils();
              v146 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              v147 = v186;
              MEMORY[0x25F8CDB30](v186, v146, v148);

              v145 = (*(v178 + 8))(v147, v179);
              goto LABEL_131;
            }

LABEL_140:
            swift_once();
            goto LABEL_127;
          }

          v2 = 0;
          goto LABEL_50;
        }

        v37 = v188;
        v36 = v177;
      }

      else
      {
        v36 = v188;
        v37 = v192;
      }

      v35 = v36;
    }

    else
    {
LABEL_24:
      v35 = v192;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_43:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.engagement);
  v40 = *MEMORY[0x277D615B0];
  v41 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v41 - 8) + 104))(v8, v40, v41);
  (*(v5 + 104))(v8, *MEMORY[0x277D616A8], v4);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v196[0]._countAndFlagsBits = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025ED7F220, &v196[0]._countAndFlagsBits);
    _os_log_impl(&dword_25ECEC000, v42, v43, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x25F8CEE50](v45, -1, -1);
    MEMORY[0x25F8CEE50](v44, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v46 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v8, v46, v47);

  return (*(v5 + 8))(v8, v4);
}

uint64_t AnswerCallsIntentSignalFactory.donatedBySiriCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AnswerCallsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t AnswerCallsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void AnswerCallsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v495 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v499 = &v465 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v498 = &v465 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v497 = &v465 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v496 = &v465 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v485 = &v465 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v484 = &v465 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v483 = &v465 - v17;
  MEMORY[0x28223BE20](v16);
  v482 = &v465 - v18;
  v19 = type metadata accessor for Date();
  v500 = *(v19 - 1);
  v501 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v489 = &v465 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v490 = &v465 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v491 = &v465 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v475 = &v465 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v478 = &v465 - v29;
  MEMORY[0x28223BE20](v28);
  v479 = &v465 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v492 = &v465 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v493 = &v465 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v487 = &v465 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v488 = &v465 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v480 = &v465 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v481 = &v465 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v476 = &v465 - v45;
  MEMORY[0x28223BE20](v44);
  v477 = &v465 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v50 = &v465 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v465 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v465 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v465 - v57;
  v59 = type metadata accessor for ReliabilityCategory();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v465 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x25F8CE7F0](v61);
  v65 = v502;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v504, &v506._countAndFlagsBits);
  if (v65)
  {
    objc_autoreleasePoolPop(v64);
    return;
  }

  v468 = v63;
  v469 = v60;
  v470 = v59;
  v471 = v50;
  v473 = v53;
  v466 = v56;
  v467 = v58;
  v474 = a1;
  v472 = 0;
  objc_autoreleasePoolPop(v64);
  countAndFlagsBits = v506._countAndFlagsBits;
  v502 = [v506._countAndFlagsBits intent];
  v66 = [v502 domain];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  if (v67 == 0x736C6C6143 && v69 == 0xE500000000000000)
  {

    v70 = v474;
    v71 = v473;
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = v474;
    v71 = v473;
    if ((v72 & 1) == 0)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static Logger.engagement);
      v506._countAndFlagsBits = 0;
      v506._object = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
      v89 = [v502 domain];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      MEMORY[0x25F8CE090](v90, v92);

      MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED7F2F0);
      v93 = v506;
      v94 = *MEMORY[0x277D616E0];
      v95 = type metadata accessor for AppIntentEventDataIssues();
      v96 = v468;
      (*(*(v95 - 8) + 104))(v468, v94, v95);
      v97 = v469;
      v98 = v470;
      (*(v469 + 104))(v96, *MEMORY[0x277D61678], v470);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v506._countAndFlagsBits = v102;
        *v101 = 136315138;
        *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93._countAndFlagsBits, v93._object, &v506._countAndFlagsBits);
        _os_log_impl(&dword_25ECEC000, v99, v100, "%s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v102);
        MEMORY[0x25F8CEE50](v102, -1, -1);
        MEMORY[0x25F8CEE50](v101, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v103 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v96, v103, v104);

      (*(v97 + 8))(v96, v98);
      return;
    }
  }

  if (![v70 donatedBySiri] || (v73 = objc_msgSend(v70, sel_intentClass)) == 0 || (v74 = v73, static String._unconditionallyBridgeFromObjectiveC(_:)(), v74, v75 = String.lowercased()(), , v506 = v75, *&v504 = 0xD000000000000010, *(&v504 + 1) = 0x800000025ED7F3E0, v76 = lazy protocol witness table accessor for type String and conformance String(), LOBYTE(v74) = StringProtocol.contains<A>(_:)(), , (v74 & 1) == 0))
  {
    if ([v70 donatedBySiri])
    {
      goto LABEL_16;
    }

    v85 = [v70 absoluteTimestamp];
    if (v85)
    {
      v86 = v85;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v105 = v500;
    v106 = v491;
    v107 = v489;
    v108 = v488;
    v109 = v487;
    v110 = 1;
    (*(v500 + 7))(v71, v87, 1, v501);
    v111 = [countAndFlagsBits dateInterval];
    if (v111)
    {
      v112 = v111;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = 0;
    }

    v113 = type metadata accessor for DateInterval();
    v114 = *(v113 - 8);
    v115 = v114;
    v491 = *(v114 + 56);
    v489 = (v114 + 56);
    (v491)(v109, v110, 1, v113);
    outlined init with take of DateInterval?(v109, v108, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v488 = *(v115 + 48);
    v116 = 0;
    if (!(v488)(v108, 1, v113))
    {
      DateInterval.duration.getter();
      v116 = v117;
    }

    outlined destroy of Date?(v108, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v118 = *(v105 + 2);
    v119 = v106;
    v120 = v106;
    v121 = v495;
    v122 = v501;
    v118(v119, v495, v501);
    v123 = &v121[*(type metadata accessor for SiriUISession(0) + 20)];
    v124 = v490;
    v118(v490, v123, v122);
    v125 = v500;
    v126 = v471;
    outlined init with copy of Date?(v71, v471);
    LODWORD(v484) = (*(v125 + 6))(v126, 1, v122);
    if (v484 == 1)
    {
      v139 = *(v125 + 1);
      v139(v124, v122);
      v139(v120, v122);
      outlined destroy of Date?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v485 = 0x3FF0000000000000;
      v128 = 0;
      v132 = 0.0;
      v138 = 0.0;
      v116 = 0;
    }

    else
    {
      (*(v125 + 4))(v107, v126, v122);
      Date.timeIntervalSinceReferenceDate.getter();
      v128 = v127;
      Date.timeIntervalSinceReferenceDate.getter();
      v130 = v129;
      Date.timeIntervalSinceReferenceDate.getter();
      v132 = v130 - v131;
      Date.timeIntervalSinceReferenceDate.getter();
      v134 = v133;
      Date.timeIntervalSinceReferenceDate.getter();
      v136 = v135;
      v137 = *(v125 + 1);
      v137(v107, v122);
      v137(v124, v122);
      v137(v120, v122);
      outlined destroy of Date?(v473, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v485 = 0;
      v138 = v134 - v136;
    }

    v140 = [countAndFlagsBits dateInterval];
    v141 = v492;
    if (v140)
    {
      v142 = v140;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v143 = 0;
    }

    else
    {
      v143 = 1;
    }

    (v491)(v141, v143, 1, v113);
    v144 = v141;
    v145 = v493;
    outlined init with take of DateInterval?(v144, v493, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    if ((v488)(v145, 1, v113))
    {
      outlined destroy of Date?(v145, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      v507 = MEMORY[0x277D83B88];
      v506._countAndFlagsBits = -1;
    }

    else
    {
      DateInterval.duration.getter();
      v505 = MEMORY[0x277D839F8];
      *&v504 = v146;
      outlined destroy of Date?(v145, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      outlined init with take of Any(&v504, &v506);
    }

    outlined init with take of Any(&v506, &v504);
    v147 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v503 = v147;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x617275446C6C6163, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
    v149 = v503;
    v150 = [v502 parametersByName];
    v151 = MEMORY[0x277D837D0];
    if (v150)
    {
      v152 = v150;
      v153 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v153 + 16))
      {
        v154 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
        if (v155)
        {
          outlined init with copy of Any(*(v153 + 56) + 32 * v154, &v504);

          outlined init with take of Any(&v504, &v506);
          goto LABEL_44;
        }
      }
    }

    v507 = v151;
    v506._countAndFlagsBits = 0;
    v506._object = 0xE000000000000000;
LABEL_44:
    outlined init with take of Any(&v506, &v504);
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v149;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x756F526F69647561, 0xEA00000000006574, v156);
    v157 = v503;
    v158 = v474;
    v159 = [v474 donatedBySiri];
    v160 = MEMORY[0x277D839B0];
    v507 = MEMORY[0x277D839B0];
    LOBYTE(v506._countAndFlagsBits) = v159;
    outlined init with take of Any(&v506, &v504);
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v157;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x42646574616E6F64, 0xED00006972695379, v161);
    v162 = v503;
    v163 = [v502 typeName];
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v166 = v165;

    v507 = v151;
    v506._countAndFlagsBits = v164;
    v506._object = v166;
    outlined init with take of Any(&v506, &v504);
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v162;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x7954746E65746E69, 0xEE00656D614E6570, v167);
    v168 = v503;
    v169 = [v158 bundleID];
    if (v169)
    {
      v170 = v169;
      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;
    }

    else
    {
      v171 = 0;
      v173 = 0xE000000000000000;
    }

    v506._countAndFlagsBits = v171;
    v506._object = v173;
    *&v504 = 0x6C7070612E6D6F63;
    *(&v504 + 1) = 0xEA00000000002E65;
    lazy protocol witness table accessor for type String and conformance String();
    v174 = StringProtocol.contains<A>(_:)();

    v507 = v160;
    LOBYTE(v506._countAndFlagsBits) = v174 & 1;
    outlined init with take of Any(&v506, &v504);
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v168;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000016, 0x800000025ED7E770, v175);
    v490 = v503;
    (*(*v494 + 136))(0);
    v176 = [v502 donationMetadata];
    if (v176)
    {
      v177 = v176;
      objc_opt_self();
      v178 = swift_dynamicCastObjCClass();
      if (v178)
      {
        v179 = v178;
        [v178 callDuration];
        v180 = MEMORY[0x277D839F8];
        v507 = MEMORY[0x277D839F8];
        v506._countAndFlagsBits = v181;
        outlined init with take of Any(&v506, &v504);
        v182 = v490;
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v503 = v182;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x617275446C6C6163, 0xEC0000006E6F6974, v183);
        v184 = v503;
        [v179 timeToEstablish];
        v507 = v180;
        v506._countAndFlagsBits = v185;
        outlined init with take of Any(&v506, &v504);
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v503 = v184;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000018, 0x800000025ED7F380, v186);
        v187 = v503;
        v188 = [v179 recentCallStatus];
        if (v188)
        {
          v189 = v188;
          v505 = type metadata accessor for NSNumber();
          *&v504 = v189;
          outlined init with take of Any(&v504, &v506);
        }

        else
        {
          v507 = MEMORY[0x277D83B88];
          v506._countAndFlagsBits = 0;
        }

        outlined init with take of Any(&v506, &v504);
        v190 = swift_isUniquelyReferenced_nonNull_native();
        v503 = v187;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000010, 0x800000025ED7F3A0, v190);
        v191 = v503;
        v192 = [v179 disconnectedReason];
        if (v192)
        {
          v193 = v192;
          v505 = type metadata accessor for NSNumber();
          *&v504 = v193;
          outlined init with take of Any(&v504, &v506);
        }

        else
        {
          v507 = MEMORY[0x277D83B88];
          v506._countAndFlagsBits = 0;
        }

        outlined init with take of Any(&v506, &v504);
        v194 = swift_isUniquelyReferenced_nonNull_native();
        v503 = v191;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000012, 0x800000025ED7F3C0, v194);

        v490 = v503;
      }

      else
      {
      }
    }

    v195 = [v502 parametersByName];
    if (v195)
    {
      v196 = v195;
      v197 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v197 + 16))
      {
        v198 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000);
        if (v199)
        {
          outlined init with copy of Any(*(v197 + 56) + 32 * v198, &v506);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_107;
          }

          v200 = v504;
          if (v504 >> 62)
          {
            if (v504 < 0)
            {
              v461 = v504;
            }

            else
            {
              v461 = v504 & 0xFFFFFFFFFFFFFF8;
            }

            v462 = v504;
            v201 = MEMORY[0x25F8CE500](v461);
            v200 = v462;
            if (v201)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v201 = *((v504 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v201)
            {
LABEL_65:
              if (v201 < 1)
              {
                __break(1u);
                goto LABEL_203;
              }

              v202 = 0;
              v203 = MEMORY[0x277D84F90];
              v487 = (v200 & 0xC000000000000001);
              v204 = MEMORY[0x277D84F90];
              v205 = MEMORY[0x277D84F90];
              v206 = MEMORY[0x277D84F90];
              v489 = v200;
              v488 = v201;
              while (1)
              {
                if (v487)
                {
                  v207 = MEMORY[0x25F8CE460](v202);
                }

                else
                {
                  v207 = *(v200 + 8 * v202 + 32);
                }

                v208 = v207;
                v209 = [v207 personHandle];
                if (v209 && (v210 = v209, v211 = [v209 value], v210, v211))
                {
                  v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v214 = v213;
                }

                else
                {
                  v212 = 0;
                  v214 = 0xE000000000000000;
                }

                v215 = swift_isUniquelyReferenced_nonNull_native();
                v501 = v208;
                if ((v215 & 1) == 0)
                {
                  v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
                }

                v493 = v202;
                v217 = *(v206 + 2);
                v216 = *(v206 + 3);
                v492 = v204;
                if (v217 >= v216 >> 1)
                {
                  v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v206);
                }

                *(v206 + 2) = v217 + 1;
                v218 = &v206[16 * v217];
                *(v218 + 4) = v212;
                *(v218 + 5) = v214;
                v219 = [v501 displayName];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v220 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v222 = v221;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v205 + 2) + 1, 1, v205);
                }

                v224 = *(v205 + 2);
                v223 = *(v205 + 3);
                if (v224 >= v223 >> 1)
                {
                  v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v205);
                }

                *(v205 + 2) = v224 + 1;
                v225 = &v205[16 * v224];
                *(v225 + 4) = v220;
                *(v225 + 5) = v222;
                v226 = [v501 nameComponents];
                v500 = v203;
                v495 = v205;
                v494 = v206;
                if (v226)
                {
                  v227 = v497;
                  v228 = v226;
                  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

                  v229 = 0;
                }

                else
                {
                  v229 = 1;
                  v227 = v497;
                }

                v230 = type metadata accessor for PersonNameComponents();
                v231 = *(v230 - 8);
                v491 = *(v231 + 56);
                (v491)(v227, v229, 1, v230);
                v232 = v227;
                v233 = v496;
                outlined init with take of DateInterval?(v232, v496, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                v234 = *(v231 + 48);
                if (v234(v233, 1, v230))
                {
                  break;
                }

                PersonNameComponents.givenName.getter();
                v236 = v235;
                outlined destroy of Date?(v233, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                if (!v236)
                {
                  goto LABEL_87;
                }

LABEL_89:
                v237 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v239 = v238;

                v240 = v492;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v240 + 2) + 1, 1, v240);
                }

                v242 = *(v240 + 2);
                v241 = *(v240 + 3);
                v243 = v240;
                if (v242 >= v241 >> 1)
                {
                  v243 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v240);
                }

                *(v243 + 2) = v242 + 1;
                v204 = v243;
                v244 = &v243[16 * v242];
                *(v244 + 4) = v237;
                *(v244 + 5) = v239;
                v245 = [v501 nameComponents];
                if (v245)
                {
                  v246 = v499;
                  v247 = v245;
                  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

                  v248 = 0;
                }

                else
                {
                  v248 = 1;
                  v246 = v499;
                }

                v249 = v498;
                (v491)(v246, v248, 1, v230);
                outlined init with take of DateInterval?(v246, v249, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                if (v234(v249, 1, v230))
                {
                  outlined destroy of Date?(v249, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                  v203 = v500;
                  v205 = v495;
                  v206 = v494;
                }

                else
                {
                  PersonNameComponents.familyName.getter();
                  v251 = v250;
                  outlined destroy of Date?(v249, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                  v203 = v500;
                  v205 = v495;
                  v206 = v494;
                  if (v251)
                  {
                    goto LABEL_100;
                  }
                }

LABEL_100:
                v252 = v493;
                v253 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v255 = v254;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v203 + 2) + 1, 1, v203);
                }

                v257 = *(v203 + 2);
                v256 = *(v203 + 3);
                if (v257 >= v256 >> 1)
                {
                  v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v256 > 1), v257 + 1, 1, v203);
                }

                v202 = v252 + 1;

                *(v203 + 2) = v257 + 1;
                v258 = &v203[16 * v257];
                *(v258 + 4) = v253;
                *(v258 + 5) = v255;
                v200 = v489;
                if (v488 == v202)
                {

                  goto LABEL_108;
                }
              }

              outlined destroy of Date?(v233, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_87:

              goto LABEL_89;
            }
          }
        }
      }
    }

LABEL_107:
    v203 = MEMORY[0x277D84F90];
    v204 = MEMORY[0x277D84F90];
    v205 = MEMORY[0x277D84F90];
    v206 = MEMORY[0x277D84F90];
LABEL_108:
    v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v507 = v259;
    v506._countAndFlagsBits = v206;
    outlined init with take of Any(&v506, &v504);
    v260 = v490;
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v260;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x73746361746E6F63, 0xED000065756C6156, v261);
    v262 = v503;
    v507 = v259;
    v506._countAndFlagsBits = v205;
    outlined init with take of Any(&v506, &v504);
    v263 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v262;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000013, 0x800000025ED7F320, v263);
    v264 = v503;
    v507 = v259;
    v506._countAndFlagsBits = v204;
    outlined init with take of Any(&v506, &v504);
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v264;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000011, 0x800000025ED7F340, v265);
    v266 = v503;
    v507 = v259;
    v506._countAndFlagsBits = v203;
    outlined init with take of Any(&v506, &v504);
    v267 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v266;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000010, 0x800000025ED7F360, v267);
    v268 = v503;
    v269 = [v502 verb];
    v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v272 = v271;

    if ([countAndFlagsBits direction] == 2)
    {

      v272 = 0xEA00000000006C6CLL;
      v270 = 0x6143726577736E41;
    }

    v273 = v484 != 1;
    v274 = v502;
    v275 = [v502 domain];
    v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v278 = v277;

    type metadata accessor for Signal();
    v279 = swift_allocObject();
    *(v279 + 16) = v128;
    *(v279 + 24) = v132;
    *(v279 + 32) = v138;
    *(v279 + 40) = v116;
    *(v279 + 48) = v485;
    *(v279 + 56) = v273;
    *(v279 + 64) = v276;
    *(v279 + 72) = v278;
    *(v279 + 80) = v270;
    *(v279 + 88) = v272;
    *(v279 + 96) = 1;
    *(v279 + 104) = v268;
    return;
  }

  v77 = specialized static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(v70);
  if (!v77)
  {
LABEL_16:

    return;
  }

  v78 = v77;
  v79 = [v77 intentClass];
  if (!v79 || (v80 = v79, static String._unconditionallyBridgeFromObjectiveC(_:)(), v80, v81 = String.lowercased()(), , v506 = v81, *&v504 = 0x65746E696C6C6163, *(&v504 + 1) = 0xEA0000000000746ELL, LOBYTE(v80) = StringProtocol.contains<A>(_:)(), v82 = , (v80 & 1) == 0))
  {

    goto LABEL_16;
  }

  v83 = MEMORY[0x25F8CE7F0](v82);
  v84 = v472;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(v78, &v504, &v506._countAndFlagsBits);
  if (v84)
  {
    objc_autoreleasePoolPop(v83);

    return;
  }

  objc_autoreleasePoolPop(v83);
  v280 = v506._countAndFlagsBits;
  v499 = [v506._countAndFlagsBits intent];
  v281 = [v70 absoluteTimestamp];
  v472 = 0;
  v488 = v78;
  if (v281)
  {
    v282 = v467;
    v283 = v281;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v284 = 0;
    v285 = v500;
    v286 = v479;
  }

  else
  {
    v284 = 1;
    v285 = v500;
    v286 = v479;
    v282 = v467;
  }

  v287 = v466;
  v288 = 1;
  (*(v285 + 7))(v282, v284, 1, v501);
  v289 = [v280 dateInterval];
  v290 = v495;
  v493 = v280;
  v470 = v76;
  if (v289)
  {
    v291 = v476;
    v292 = v289;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v288 = 0;
    v293 = v477;
  }

  else
  {
    v293 = v477;
    v291 = v476;
  }

  v294 = type metadata accessor for DateInterval();
  v295 = *(v294 - 8);
  v296 = *(v295 + 56);
  v497 = (v295 + 56);
  v498 = v296;
  (v296)(v291, v288, 1, v294);
  outlined init with take of DateInterval?(v291, v293, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v496 = *(v295 + 48);
  v116 = 0;
  if (!(v496)(v293, 1, v294))
  {
    DateInterval.duration.getter();
    v116 = v297;
  }

  outlined destroy of Date?(v293, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v298 = v500;
  v299 = *(v500 + 2);
  v300 = v286;
  v301 = v290;
  v302 = v286;
  v303 = v290;
  v304 = v501;
  v299(v300, v301, v501);
  v305 = &v303[*(type metadata accessor for SiriUISession(0) + 20)];
  v306 = v478;
  v299(v478, v305, v304);
  v307 = v304;
  v308 = v467;
  outlined init with copy of Date?(v467, v287);
  LODWORD(v479) = (*(v298 + 6))(v287, 1, v307);
  if (v479 == 1)
  {
    v322 = *(v298 + 1);
    v322(v306, v307);
    v322(v302, v307);
    outlined destroy of Date?(v308, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v287, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v321 = 0x3FF0000000000000;
    v128 = 0;
    v132 = 0.0;
    v138 = 0.0;
    v116 = 0;
  }

  else
  {
    v309 = v287;
    v310 = v308;
    v311 = v475;
    (*(v298 + 4))(v475, v309, v307);
    Date.timeIntervalSinceReferenceDate.getter();
    v128 = v312;
    Date.timeIntervalSinceReferenceDate.getter();
    v314 = v313;
    Date.timeIntervalSinceReferenceDate.getter();
    v132 = v314 - v315;
    Date.timeIntervalSinceReferenceDate.getter();
    v317 = v316;
    Date.timeIntervalSinceReferenceDate.getter();
    v319 = v318;
    v320 = *(v298 + 1);
    v320(v311, v307);
    v320(v306, v307);
    v320(v302, v307);
    outlined destroy of Date?(v310, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v321 = 0;
    v138 = v317 - v319;
  }

  v323 = v480;
  v324 = [v493 dateInterval];
  v325 = v481;
  if (v324)
  {
    v326 = v324;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v327 = 0;
  }

  else
  {
    v327 = 1;
  }

  (v498)(v323, v327, 1, v294);
  outlined init with take of DateInterval?(v323, v325, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v328 = (v496)(v325, 1, v294);
  v487 = v321;
  if (v328)
  {
    outlined destroy of Date?(v325, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v507 = MEMORY[0x277D83B88];
    v506._countAndFlagsBits = -1;
  }

  else
  {
    DateInterval.duration.getter();
    v505 = MEMORY[0x277D839F8];
    *&v504 = v329;
    outlined destroy of Date?(v325, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    outlined init with take of Any(&v504, &v506);
  }

  outlined init with take of Any(&v506, &v504);
  v330 = MEMORY[0x277D84F98];
  v331 = swift_isUniquelyReferenced_nonNull_native();
  v503 = v330;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x617275446C6C6163, 0xEC0000006E6F6974, v331);
  v332 = v503;
  v333 = [v499 parametersByName];
  if (v333)
  {
    v334 = v333;
    v335 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v335 + 16))
    {
      v336 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
      if (v337)
      {
        outlined init with copy of Any(*(v335 + 56) + 32 * v336, &v504);

        outlined init with take of Any(&v504, &v506);
        v338 = MEMORY[0x277D837D0];
        goto LABEL_134;
      }
    }
  }

  v338 = MEMORY[0x277D837D0];
  v507 = MEMORY[0x277D837D0];
  v506._countAndFlagsBits = 0;
  v506._object = 0xE000000000000000;
LABEL_134:
  outlined init with take of Any(&v506, &v504);
  v339 = swift_isUniquelyReferenced_nonNull_native();
  v503 = v332;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x756F526F69647561, 0xEA00000000006574, v339);
  v340 = v503;
  v341 = v474;
  v342 = [v474 donatedBySiri];
  v343 = MEMORY[0x277D839B0];
  v507 = MEMORY[0x277D839B0];
  LOBYTE(v506._countAndFlagsBits) = v342;
  outlined init with take of Any(&v506, &v504);
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v503 = v340;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x42646574616E6F64, 0xED00006972695379, v344);
  v345 = v503;
  v346 = [v499 typeName];
  v347 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v349 = v348;

  v507 = v338;
  v506._countAndFlagsBits = v347;
  v506._object = v349;
  outlined init with take of Any(&v506, &v504);
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v503 = v345;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x7954746E65746E69, 0xEE00656D614E6570, v350);
  v351 = v503;
  v352 = [v341 bundleID];
  if (v352)
  {
    v353 = v352;
    v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v356 = v355;
  }

  else
  {
    v354 = 0;
    v356 = 0xE000000000000000;
  }

  v506._countAndFlagsBits = v354;
  v506._object = v356;
  *&v504 = 0x6C7070612E6D6F63;
  *(&v504 + 1) = 0xEA00000000002E65;
  v357 = StringProtocol.contains<A>(_:)();

  v507 = v343;
  LOBYTE(v506._countAndFlagsBits) = v357 & 1;
  outlined init with take of Any(&v506, &v504);
  v358 = swift_isUniquelyReferenced_nonNull_native();
  v503 = v351;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000016, 0x800000025ED7E770, v358);
  v492 = v503;
  v359 = [v499 donationMetadata];
  if (v359)
  {
    v360 = v359;
    objc_opt_self();
    v361 = swift_dynamicCastObjCClass();
    if (v361)
    {
      v362 = v361;
      [v361 callDuration];
      v363 = MEMORY[0x277D839F8];
      v507 = MEMORY[0x277D839F8];
      v506._countAndFlagsBits = v364;
      outlined init with take of Any(&v506, &v504);
      v365 = v492;
      v366 = swift_isUniquelyReferenced_nonNull_native();
      v503 = v365;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x617275446C6C6163, 0xEC0000006E6F6974, v366);
      v367 = v503;
      [v362 timeToEstablish];
      v507 = v363;
      v506._countAndFlagsBits = v368;
      outlined init with take of Any(&v506, &v504);
      v369 = swift_isUniquelyReferenced_nonNull_native();
      v503 = v367;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000018, 0x800000025ED7F380, v369);
      v370 = v503;
      v371 = [v362 recentCallStatus];
      if (v371)
      {
        v372 = v371;
        v505 = type metadata accessor for NSNumber();
        *&v504 = v372;
        outlined init with take of Any(&v504, &v506);
      }

      else
      {
        v507 = MEMORY[0x277D83B88];
        v506._countAndFlagsBits = 0;
      }

      outlined init with take of Any(&v506, &v504);
      v373 = swift_isUniquelyReferenced_nonNull_native();
      v503 = v370;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000010, 0x800000025ED7F3A0, v373);
      v374 = v503;
      v375 = [v362 disconnectedReason];
      if (v375)
      {
        v376 = v375;
        v505 = type metadata accessor for NSNumber();
        *&v504 = v376;
        outlined init with take of Any(&v504, &v506);
      }

      else
      {
        v507 = MEMORY[0x277D83B88];
        v506._countAndFlagsBits = 0;
      }

      outlined init with take of Any(&v506, &v504);
      v377 = swift_isUniquelyReferenced_nonNull_native();
      v503 = v374;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000012, 0x800000025ED7F3C0, v377);

      v492 = v503;
    }

    else
    {
    }
  }

  v378 = [v499 parametersByName];
  if (!v378)
  {
LABEL_195:
    v385 = MEMORY[0x277D84F90];
    v460 = MEMORY[0x277D84F90];
    v386 = MEMORY[0x277D84F90];
    v387 = MEMORY[0x277D84F90];
    v459 = v479;
LABEL_196:
    v438 = v459 != 1;
    v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v507 = v439;
    v506._countAndFlagsBits = v387;
    outlined init with take of Any(&v506, &v504);
    v440 = v492;
    v441 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v440;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0x73746361746E6F63, 0xED000065756C6156, v441);
    v442 = v503;
    v507 = v439;
    v506._countAndFlagsBits = v386;
    outlined init with take of Any(&v506, &v504);
    v443 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v442;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000013, 0x800000025ED7F320, v443);
    v444 = v503;
    v507 = v439;
    v506._countAndFlagsBits = v460;
    outlined init with take of Any(&v506, &v504);
    v445 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v444;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000011, 0x800000025ED7F340, v445);
    v446 = v503;
    v507 = v439;
    v506._countAndFlagsBits = v385;
    outlined init with take of Any(&v506, &v504);
    v447 = swift_isUniquelyReferenced_nonNull_native();
    v503 = v446;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v504, 0xD000000000000010, 0x800000025ED7F360, v447);
    v449 = v502;
    v448 = v503;
    v450 = [v502 domain];
    v451 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v453 = v452;

    v454 = [v449 verb];
    v455 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v457 = v456;

    type metadata accessor for Signal();
    v458 = swift_allocObject();
    *(v458 + 16) = v128;
    *(v458 + 24) = v132;
    *(v458 + 32) = v138;
    *(v458 + 40) = v116;
    *(v458 + 48) = v487;
    *(v458 + 56) = v438;
    *(v458 + 64) = v451;
    *(v458 + 72) = v453;
    *(v458 + 80) = v455;
    *(v458 + 88) = v457;
    *(v458 + 96) = 1;
    *(v458 + 104) = v448;
    return;
  }

  v379 = v378;
  v380 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v380 + 16) || (v381 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000), (v382 & 1) == 0))
  {
LABEL_194:

    goto LABEL_195;
  }

  outlined init with copy of Any(*(v380 + 56) + 32 * v381, &v506);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_195;
  }

  v200 = v504;
  if (v504 >> 62)
  {
LABEL_203:
    if (v200 < 0)
    {
      v463 = v200;
    }

    else
    {
      v463 = v200 & 0xFFFFFFFFFFFFFF8;
    }

    v464 = v200;
    v383 = MEMORY[0x25F8CE500](v463);
    v200 = v464;
    if (v383)
    {
      goto LABEL_153;
    }

    goto LABEL_194;
  }

  v383 = *((v504 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v383)
  {
    goto LABEL_194;
  }

LABEL_153:
  if (v383 >= 1)
  {
    v384 = 0;
    v385 = MEMORY[0x277D84F90];
    v489 = (v200 & 0xC000000000000001);
    v500 = MEMORY[0x277D84F90];
    v386 = MEMORY[0x277D84F90];
    v387 = MEMORY[0x277D84F90];
    v491 = v200;
    v490 = v383;
    while (1)
    {
      if (v489)
      {
        v388 = MEMORY[0x25F8CE460](v384);
      }

      else
      {
        v388 = *(v200 + 8 * v384 + 32);
      }

      v389 = v388;
      v390 = [v388 personHandle];
      if (v390 && (v391 = v390, v392 = [v390 value], v391, v392))
      {
        v393 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v395 = v394;
      }

      else
      {
        v393 = 0;
        v395 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v387 + 2) + 1, 1, v387);
      }

      v397 = *(v387 + 2);
      v396 = *(v387 + 3);
      v498 = v385;
      if (v397 >= v396 >> 1)
      {
        v387 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v396 > 1), v397 + 1, 1, v387);
      }

      *(v387 + 2) = v397 + 1;
      v496 = v387;
      v398 = &v387[16 * v397];
      *(v398 + 4) = v393;
      *(v398 + 5) = v395;
      v501 = v389;
      v399 = [v389 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v400 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v402 = v401;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v386 + 2) + 1, 1, v386);
      }

      v403 = v483;
      v404 = v482;
      v406 = *(v386 + 2);
      v405 = *(v386 + 3);
      if (v406 >= v405 >> 1)
      {
        v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v405 > 1), v406 + 1, 1, v386);
      }

      *(v386 + 2) = v406 + 1;
      v407 = &v386[16 * v406];
      *(v407 + 4) = v400;
      *(v407 + 5) = v402;
      v408 = [v501 nameComponents];
      v497 = v386;
      v495 = v384;
      if (v408)
      {
        v409 = v408;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v410 = 0;
      }

      else
      {
        v410 = 1;
      }

      v411 = type metadata accessor for PersonNameComponents();
      v412 = *(v411 - 8);
      v494 = *(v412 + 56);
      (v494)(v403, v410, 1, v411);
      outlined init with take of DateInterval?(v403, v404, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v413 = *(v412 + 48);
      if (v413(v404, 1, v411))
      {
        break;
      }

      PersonNameComponents.givenName.getter();
      v415 = v414;
      outlined destroy of Date?(v404, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (!v415)
      {
        goto LABEL_175;
      }

LABEL_177:
      v416 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v418 = v417;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v500 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v500 + 2) + 1, 1, v500);
      }

      v419 = v500;
      v421 = *(v500 + 2);
      v420 = *(v500 + 3);
      if (v421 >= v420 >> 1)
      {
        v419 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v420 > 1), v421 + 1, 1, v500);
      }

      *(v419 + 2) = v421 + 1;
      v500 = v419;
      v422 = &v419[16 * v421];
      *(v422 + 4) = v416;
      *(v422 + 5) = v418;
      v423 = [v501 nameComponents];
      if (v423)
      {
        v424 = v485;
        v425 = v423;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v426 = 0;
      }

      else
      {
        v426 = 1;
        v424 = v485;
      }

      v385 = v498;
      (v494)(v424, v426, 1, v411);
      v427 = v484;
      outlined init with take of DateInterval?(v424, v484, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (v413(v427, 1, v411))
      {
        outlined destroy of Date?(v427, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v387 = v496;
        v386 = v497;
        v428 = v495;
      }

      else
      {
        PersonNameComponents.familyName.getter();
        v430 = v429;
        outlined destroy of Date?(v427, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v387 = v496;
        v386 = v497;
        v428 = v495;
        if (v430)
        {
          goto LABEL_188;
        }
      }

LABEL_188:
      v431 = v501;
      v432 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v434 = v433;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v385 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v385 + 2) + 1, 1, v385);
      }

      v436 = *(v385 + 2);
      v435 = *(v385 + 3);
      if (v436 >= v435 >> 1)
      {
        v385 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v435 > 1), v436 + 1, 1, v385);
      }

      v384 = v428 + 1;

      *(v385 + 2) = v436 + 1;
      v437 = &v385[16 * v436];
      *(v437 + 4) = v432;
      *(v437 + 5) = v434;
      v200 = v491;
      if (v490 == v384)
      {

        v459 = v479;
        v460 = v500;
        goto LABEL_196;
      }
    }

    outlined destroy of Date?(v404, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_175:

    goto LABEL_177;
  }

  __break(1u);
}