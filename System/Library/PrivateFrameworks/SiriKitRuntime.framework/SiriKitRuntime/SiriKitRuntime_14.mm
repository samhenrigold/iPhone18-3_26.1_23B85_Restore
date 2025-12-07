uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, double a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = type metadata accessor for RRCandidate();
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t specialized static AffinityScorerUtils.getTask(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19[-v1];
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v2);
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Could not obtain uso tasks", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_17:
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  v17 = result;
  v18 = __CocoaSet.count.getter();
  result = v17;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1E12A1FE0](0);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);

LABEL_15:

    (*(v8 + 8))(v10, v7);
    return v16;
  }

  __break(1u);
  return result;
}

void *specialized static AffinityScorerUtils.getEntitySpans(_:)()
{
  v61 = type metadata accessor for Node();
  v52 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v51 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v55 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v51 - v16;
  v17 = USOParse.userParse.getter();
  v18 = MEMORY[0x1E129C0F0](v17);
  (*(v7 + 8))(v9, v6);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:

    v21 = 1;
    goto LABEL_8;
  }

  v20 = 0;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
LABEL_10:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.executor);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DC659000, v23, v24, "Could not extract userStatedTask, returning empty entity spans", v25, 2u);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }

    (*(v3 + 16))(v5, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v2);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {
      break;
    }

    ++v20;
    (*(v3 + 8))(v5, v2);
    if (v19 == v20)
    {
      goto LABEL_6;
    }
  }

  (*(v3 + 32))(v12, v5, v2);
  v21 = 0;
LABEL_8:
  (*(v3 + 56))(v12, v21, 1, v2);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v26 = v54;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v3 + 8))(v12, v2);
  v27 = v53;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v55 + 8))(v26, v59);
  v29 = v56;
  v28 = v57;
  v30 = v58;
  (*(v57 + 32))(v56, v27, v58);
  v55 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v33 = dispatch thunk of Graph.nodes.getter();
  v34 = *(v33 + 16);
  if (v34)
  {
    v59 = *(v52 + 16);
    v35 = *(v52 + 80);
    v54 = v33;
    v36 = v33 + ((v35 + 32) & ~v35);
    v37 = *(v52 + 72);
    v38 = (v52 + 8);
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v40 = v60;
      v39 = v61;
      v59(v60, v36, v61);
      v41 = Node.entitySpans.getter();
      (*v38)(v40, v39);
      v42 = *(v41 + 16);
      v43 = v31[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v44 <= v31[3] >> 1)
      {
        if (*(v41 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v46, 1, v31);
        if (*(v41 + 16))
        {
LABEL_28:
          v47 = (v31[3] >> 1) - v31[2];
          type metadata accessor for UsoEntitySpan();
          if (v47 < v42)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v48 = v31[2];
            v49 = __OFADD__(v48, v42);
            v50 = v48 + v42;
            if (v49)
            {
              goto LABEL_39;
            }

            v31[2] = v50;
          }

          goto LABEL_18;
        }
      }

      if (v42)
      {
        goto LABEL_37;
      }

LABEL_18:
      v36 += v37;
      if (!--v34)
      {

        v28 = v57;
        v30 = v58;
        v29 = v56;
        goto LABEL_34;
      }
    }
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_34:

  (*(v28 + 8))(v29, v30);
  return v31;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for kAffinityScorers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime15AffinityScoring_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime15AffinityScoring_pGMR);
  v0 = swift_allocObject();
  v0[4] = 0xD00000000000001ELL;
  v0[7] = &type metadata for AlarmAffinityScorer;
  v0[8] = &protocol witness table for AlarmAffinityScorer;
  v0[5] = 0x80000001DCA7C9A0;
  v0[12] = &type metadata for AppLaunchAffinityScorer;
  v0[13] = &protocol witness table for AppLaunchAffinityScorer;
  v0[9] = 0xD00000000000001ELL;
  v0[10] = 0x80000001DCA7C9C0;
  v0[17] = &type metadata for CAMRootFlowAffinityScorer;
  v0[18] = &protocol witness table for CAMRootFlowAffinityScorer;
  v0[14] = 0xD000000000000020;
  v0[15] = 0x80000001DCA7C9E0;
  v0[22] = &type metadata for CarCommandsAffinityScorer;
  v0[23] = &protocol witness table for CarCommandsAffinityScorer;
  v0[19] = 0xD00000000000002CLL;
  v0[20] = 0x80000001DCA7CA10;
  v0[27] = &type metadata for CalendarAffinityScorer;
  v0[28] = &protocol witness table for CalendarAffinityScorer;
  v0[24] = 0xD000000000000029;
  v0[25] = 0x80000001DCA7CA40;
  v0[32] = &type metadata for ContactsAffinityScorer;
  v0[33] = &protocol witness table for ContactsAffinityScorer;
  v0[29] = 0xD000000000000029;
  v0[30] = 0x80000001DCA7CA70;
  v0[37] = &type metadata for EmergencyAffinityScorer;
  v0[38] = &protocol witness table for EmergencyAffinityScorer;
  v0[34] = 0xD000000000000022;
  v0[35] = 0x80000001DCA7CAA0;
  v0[42] = &type metadata for FindMyAffinityScorer;
  v0[43] = &protocol witness table for FindMyAffinityScorer;
  v0[39] = 0xD000000000000026;
  v0[40] = 0x80000001DCA7CAD0;
  v0[47] = &type metadata for HomeAutomationAffinityScorer;
  v0[48] = &protocol witness table for HomeAutomationAffinityScorer;
  v0[44] = 0xD00000000000002FLL;
  v0[45] = 0x80000001DCA7CB00;
  v0[52] = &type metadata for InformationAffinityScorer;
  v0[53] = &protocol witness table for InformationAffinityScorer;
  v0[49] = 0xD000000000000024;
  v0[50] = 0x80000001DCA7CB30;
  v0[57] = &type metadata for MessagesAffinityScorer;
  v0[58] = &protocol witness table for MessagesAffinityScorer;
  v0[54] = 0xD000000000000031;
  v0[55] = 0x80000001DCA7CB60;
  v0[62] = &type metadata for NotificationAffinityScorer;
  v0[63] = &protocol witness table for NotificationAffinityScorer;
  v0[59] = 0xD00000000000002ELL;
  v0[60] = 0x80000001DCA7CBA0;
  v0[67] = &type metadata for PlaybackControlsAffinityScorer;
  v0[68] = &protocol witness table for PlaybackControlsAffinityScorer;
  v0[64] = 0xD00000000000002FLL;
  v0[65] = 0x80000001DCA7CBD0;
  v0[72] = &type metadata for SettingsAffinityScorer;
  v0[73] = &protocol witness table for SettingsAffinityScorer;
  v0[69] = 0xD000000000000029;
  v0[70] = 0x80000001DCA7CC00;
  v0[77] = &type metadata for SiriAudioAffinityScorer;
  v0[78] = &protocol witness table for SiriAudioAffinityScorer;
  v0[74] = 0xD00000000000002CLL;
  v0[75] = 0x80000001DCA7CC30;
  v0[82] = &type metadata for SiriClockFlowAffinityScorer;
  v0[83] = &protocol witness table for SiriClockFlowAffinityScorer;
  v0[79] = 0xD00000000000001ELL;
  v0[80] = 0x80000001DCA7CC60;
  v0[87] = &type metadata for SiriLinkFlowAffinityScorer;
  v0[88] = &protocol witness table for SiriLinkFlowAffinityScorer;
  v0[84] = 0xD000000000000021;
  v0[85] = 0x80000001DCA7CC80;
  v0[92] = &type metadata for SocialConversationAffinityScorer;
  v0[93] = &protocol witness table for SocialConversationAffinityScorer;
  v0[89] = 0xD000000000000033;
  v0[90] = 0x80000001DCA7CCB0;
  v0[97] = &type metadata for SystemCommandsAffinityScorer;
  v0[98] = &protocol witness table for SystemCommandsAffinityScorer;
  v0[94] = 0xD00000000000002FLL;
  v0[95] = 0x80000001DCA7CCF0;
  v0[102] = &type metadata for PhoneAffinityScorer;
  v0[103] = &protocol witness table for PhoneAffinityScorer;
  v0[99] = 0xD00000000000002ALL;
  v0[100] = 0x80000001DCA7CD20;
  v0[107] = &type metadata for ReaderAffinityScorer;
  v0[108] = &protocol witness table for ReaderAffinityScorer;
  v0[104] = 0xD00000000000001FLL;
  v0[105] = 0x80000001DCA7CD50;
  v0[112] = &type metadata for TimerAffinityScorer;
  v0[113] = &protocol witness table for TimerAffinityScorer;
  v0[109] = 0xD000000000000026;
  v0[110] = 0x80000001DCA7CD70;
  v0[117] = &type metadata for TranslationAffinityScorer;
  v0[118] = &protocol witness table for TranslationAffinityScorer;
  v0[114] = 0xD00000000000002CLL;
  v0[115] = 0x80000001DCA7CDA0;
  v0[122] = &type metadata for NotebookAffinityScorer;
  v0[123] = &protocol witness table for NotebookAffinityScorer;
  v0[119] = 0xD000000000000021;
  v0[120] = 0x80000001DCA7CDD0;
  v0[127] = &type metadata for HealthAffinityScorer;
  v0[128] = &protocol witness table for HealthAffinityScorer;
  v0[124] = 0xD000000000000021;
  v0[125] = 0x80000001DCA7CE00;
  v0[132] = &type metadata for PhotosAffinityScorer;
  v0[133] = &protocol witness table for PhotosAffinityScorer;
  v0[129] = 0xD000000000000027;
  v0[130] = 0x80000001DCA7CE30;
  v0[137] = &type metadata for SiriVideoAffinityScorer;
  v0[138] = &protocol witness table for SiriVideoAffinityScorer;
  v0[134] = 0xD000000000000026;
  v0[135] = 0x80000001DCA7CE60;
  v0[142] = &type metadata for SiriSafariAffinityScorer;
  v0[143] = &protocol witness table for SiriSafariAffinityScorer;
  v0[139] = 0xD000000000000027;
  v0[140] = 0x80000001DCA7CE90;
  v19 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 28, 0);
  v1 = v19;
  for (i = 4; i != 144; i += 5)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v0[i], &v16);
    v3 = *(&v17 + 1);
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    *&v15 = (*(v4 + 8))(v3, v4);
    *(&v15 + 1) = v5;
    v19 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      v1 = v19;
    }

    *(v1 + 16) = v7 + 1;
    v8 = v1 + 56 * v7;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    *(v8 + 80) = v18;
    *(v8 + 48) = v10;
    *(v8 + 64) = v11;
    *(v8 + 32) = v9;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AffinityScoring_pMd, &_s14SiriKitRuntime15AffinityScoring_pMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR);
    v12 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v15 = v12;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, 1, &v15);

  static AffinityScorerManager.kAffinityScorers = v15;
  return result;
}

uint64_t *AffinityScorerManager.kAffinityScorers.unsafeMutableAddressor()
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }

  return &static AffinityScorerManager.kAffinityScorers;
}

uint64_t static AffinityScorerManager.kAffinityScorers.getter()
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }
}

SiriKitRuntime::AffinityScorerManager::DefaultAffinityScorer __swiftcall AffinityScorerManager.DefaultAffinityScorer.init(score:)(SiriKitRuntime::Affinity score)
{
  v2 = 0x80000001DCA7C910;
  v3 = 0xD000000000000023;
  result.bundleIdentifier._object = v2;
  result.bundleIdentifier._countAndFlagsBits = v3;
  result.score = score;
  return result;
}

void static AffinityScorerManager.affinityScorer(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }

  v6 = static AffinityScorerManager.kAffinityScorers;
  if (*(static AffinityScorerManager.kAffinityScorers + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v14);
    outlined init with take of NSExtensionProtocol(v14, v15);
    outlined init with take of NSExtensionProtocol(v15, a3);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
      _os_log_impl(&dword_1DC659000, v10, v11, "No AffinityScorer found for %s, returning default.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    *(a3 + 24) = &type metadata for AffinityScorerManager.DefaultAffinityScorer;
    *(a3 + 32) = &protocol witness table for AffinityScorerManager.DefaultAffinityScorer;
    *a3 = 0xD000000000000023;
    *(a3 + 8) = 0x80000001DCA7C910;
    *(a3 + 16) = 2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Affinity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Affinity(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Affinity@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Affinity.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AffinityScoringAdapter.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AffinityScoringAdapter.affinityScorer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AffinityScoringAdapter(0) + 20);

  return outlined init with copy of ReferenceResolutionClientProtocol(v3, a1);
}

uint64_t AffinityScoringAdapter.init(affinityScorer:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v4 = a2 + *(type metadata accessor for AffinityScoringAdapter(0) + 20);

  return outlined init with take of NSExtensionProtocol(a1, v4);
}

uint64_t AffinityScoringAdapter.score(for:loopCheck:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AffinityScoringAdapter(0) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  type metadata accessor for SiriEnvironment();
  v6 = static SiriEnvironment.default.getter();
  v7 = (*(v5 + 16))(a1, v6, v4, v5);

  return v7;
}

uint64_t protocol witness for AffinityScorer.id.getter in conformance AffinityScoringAdapter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  outlined init with copy of (String, AffinityScoring)(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  outlined init with take of NSExtensionProtocol(v46, v41);
  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  outlined init with take of NSExtensionProtocol(v41, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      outlined init with copy of (String, AffinityScoring)(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      outlined init with take of NSExtensionProtocol(v46, v41);
      v29 = *a3;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      outlined init with take of NSExtensionProtocol(v41, v37[7] + 40 * v30);
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 56;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7CF00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized AffinityScorerManager.DefaultAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69D0138])
  {
    (*(v4 + 96))(v6, v3);
    v7 = *v6;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v8 <= 0.5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.executor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DC659000, v14, v15, "Detected low confidence pommes result", v16, 2u);
        MEMORY[0x1E12A2F50](v16, -1, -1);
      }

      return 0;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.executor);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DC659000, v10, v11, "Detected high confidence pommes result", v12, 2u);
        MEMORY[0x1E12A2F50](v12, -1, -1);
      }
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  return a2;
}

uint64_t type metadata accessor for AffinityScoringAdapter(uint64_t a1)
{
  result = type metadata singleton initialization cache for AffinityScoringAdapter;
  if (!type metadata singleton initialization cache for AffinityScoringAdapter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Affinity and conformance Affinity()
{
  result = lazy protocol witness table cache variable for type Affinity and conformance Affinity;
  if (!lazy protocol witness table cache variable for type Affinity and conformance Affinity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Affinity and conformance Affinity);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AffinityScoringAdapter(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, type metadata accessor for AffinityScoringAdapter, &protocol conformance descriptor for AffinityScoringAdapter);
  result = lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, type metadata accessor for AffinityScoringAdapter, &protocol conformance descriptor for AffinityScoringAdapter);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for AffinityScorerManager.DefaultAffinityScorer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Affinity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destroy for AffinityScoringAdapter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(a2 + 20)));
}

uint64_t initializeWithCopy for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7 + 24);
  *(a1 + v7 + 24) = v8;
  (**(v8 - 8))();
  return a1;
}

uint64_t assignWithCopy for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  __swift_assign_boxed_opaque_existential_1((a1 + *(a3 + 20)), (a2 + *(a3 + 20)));
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t initializeWithTake for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  return a1;
}

uint64_t assignWithTake for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v7));
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  return a1;
}

uint64_t type metadata completion function for AffinityScoringAdapter(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of (String, AffinityScoring)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime15AffinityScoring_ptMd, &_sSS_14SiriKitRuntime15AffinityScoring_ptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

SiriKitRuntime::AlarmAffinityScorer __swiftcall AlarmAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9A0;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for kAppBundleIdMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static AlarmAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static ReaderAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static TimerAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

uint64_t *AlarmAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static AlarmAffinityScorer.kAppBundleIdMatches;
}

uint64_t static AlarmAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }
}

uint64_t specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v6, v4);
  if (!v5)
  {
    outlined destroy of Any?(v4);
LABEL_5:
    outlined init with copy of Any?(v6, v4);
    if (v5)
    {
      type metadata accessor for UsoTask_noVerb_common_Alarm();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of Any?(v4);
    }

    outlined destroy of Any?(v6);
    return 0;
  }

  type metadata accessor for UsoTask_create_common_Alarm();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_8:

  if (v4[0] && (v1 = dispatch thunk of UsoEntity_common_Alarm.endDateTime.getter(), , v1))
  {
    v2 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

    outlined destroy of Any?(v6);
    if (v2)
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  return 0;
}

uint64_t specialized AlarmAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v121 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v95[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v95[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95[-v10];
  v12 = type metadata accessor for RRMetadata();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v95[-v17];
  v141 = type metadata accessor for UsoIdentifier();
  v18 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v123 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v95[-v21];
  v114 = type metadata accessor for RREntity();
  v22 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v106 = &v95[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v95[-v25];
  v111 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v95[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = *(a1 + 16);
  if (!v105)
  {
    return 0;
  }

  v28 = v26;
  v104 = type metadata accessor for UsoEntity_common_App();
  v29 = 0;
  v103 = *(v28 + 16);
  v102 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v101 = *(v28 + 72);
  v113 = (v22 + 8);
  v124 = v18 + 16;
  v122 = (v18 + 32);
  v127 = v18;
  v116 = (v18 + 8);
  v134 = (v13 + 32);
  v135 = v13 + 16;
  v133 = (v13 + 88);
  v132 = *MEMORY[0x1E69D27E8];
  v118 = (v13 + 8);
  v117 = (v13 + 96);
  v131 = (v3 + 32);
  v99 = *MEMORY[0x1E69D2918];
  v30 = (v3 + 104);
  v119 = v3;
  v98 = (v3 + 8);
  v100 = (v28 + 8);
  v96 = *MEMORY[0x1E69D28F8];
  v109 = v11;
  v139 = v12;
  v129 = v13;
  v138 = v15;
  v130 = (v3 + 104);
  v125 = v2;
  v97 = v28 + 16;
  while (1)
  {
    v110 = v29;
    v103(v115, v102 + v101 * v29, v111);
    v31 = v108;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v112 = *v113;
    v112(v31, v114);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v32 = v142;
    if (!v142)
    {
      goto LABEL_39;
    }

    v33 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v107 = v32;

    result = v33;
    v128 = *(v33 + 16);
    if (v128)
    {
      break;
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v66 = *(v36 + 16);

    v11 = v109;
    if (v66)
    {
      (*v100)(v115, v111);
      return 1;
    }

LABEL_39:
    v67 = v106;
    RRCandidate.entity.getter();
    v68 = RREntity.metadata.getter();
    v112(v67, v114);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v128 = v68;
      v71 = v68 + v70;
      v72 = *(v13 + 72);
      v73 = *(v13 + 16);
      v74 = MEMORY[0x1E69E7CC0];
      do
      {
        v75 = v136;
        v73(v136, v71, v12);
        (*v134)(v15, v75, v12);
        v76 = (*v133)(v15, v12);
        if (v76 == v132)
        {
          (*v117)(v15, v12);
          v77 = v15;
          v78 = *v131;
          v79 = v121;
          (*v131)(v121, v77, v2);
          v80 = v120;
          v78(v120, v79, v2);
          v78(v137, v80, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
          }

          v82 = v74[2];
          v81 = v74[3];
          v83 = v119;
          if (v82 >= v81 >> 1)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v74);
            v83 = v119;
            v74 = v84;
          }

          v74[2] = v82 + 1;
          v78(v74 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, v137, v2);
          v15 = v138;
          v12 = v139;
        }

        else
        {
          (*v118)(v15, v12);
        }

        v71 += v72;
        --v69;
      }

      while (v69);

      v11 = v109;
      v13 = v129;
      v30 = v130;
    }

    else
    {

      v74 = MEMORY[0x1E69E7CC0];
    }

    v85 = *v30;
    (*v30)(v11, v99, v2);
    v86 = specialized Sequence<>.contains(_:)(v11, v74);
    v87 = *v98;
    (*v98)(v11, v2);
    if (v86)
    {
      v85(v11, v96, v2);
      v88 = specialized Sequence<>.contains(_:)(v11, v74);

      v87(v11, v2);
      if (v88)
      {
        (*v100)(v115, v111);
        v11 = v109;
      }

      else
      {
        if (one-time initialization token for kAppBundleIdMatches != -1)
        {
          swift_once();
        }

        v89 = static AlarmAffinityScorer.kAppBundleIdMatches;
        v90 = v108;
        v91 = v115;
        RRCandidate.entity.getter();
        v92 = RREntity.appBundleId.getter();
        v94 = v93;
        v112(v90, v114);
        LOBYTE(v92) = specialized Set.contains(_:)(v92, v94, v89);

        (*v100)(v91, v111);
        v11 = v109;
        if (v92)
        {
          return 1;
        }
      }
    }

    else
    {
      (*v100)(v115, v111);
    }

    v29 = v110 + 1;
    v30 = v130;
    if (v110 + 1 == v105)
    {
      return 0;
    }
  }

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v127;
  v38 = v140;
  v126 = result;
  while (v35 < *(result + 16))
  {
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = *(v37 + 72);
    (*(v37 + 16))(v38, result + v39 + v40 * v35, v141);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v41 = static AlarmAffinityScorer.kAppBundleIdMatches;
    v42 = UsoIdentifier.appBundleId.getter();
    v44 = v43;
    if (*(v41 + 16))
    {
      v45 = v42;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v46 = Hasher._finalize()();
      v47 = -1 << *(v41 + 32);
      v48 = v46 & ~v47;
      if ((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v49 = ~v47;
        do
        {
          v50 = (*(v41 + 48) + 16 * v48);
          v51 = *v50 == v45 && v50[1] == v44;
          if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_32;
          }

          v48 = (v48 + 1) & v49;
        }

        while (((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
      }
    }

    v52 = UsoIdentifier.value.getter();
    v54 = v53;
    if (*(v41 + 16))
    {
      v55 = v52;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v56 = Hasher._finalize()();
      v57 = -1 << *(v41 + 32);
      v58 = v56 & ~v57;
      if ((*(v41 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
      {
        v59 = ~v57;
        while (1)
        {
          v60 = (*(v41 + 48) + 16 * v58);
          v61 = *v60 == v55 && v60[1] == v54;
          if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          if (((*(v41 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_32:

        v62 = *v122;
        v38 = v140;
        (*v122)(v123, v140, v141);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v36;
        v2 = v125;
        v12 = v139;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1);
          v38 = v140;
          v36 = v143;
        }

        v65 = *(v36 + 16);
        v64 = *(v36 + 24);
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v38 = v140;
          v36 = v143;
        }

        *(v36 + 16) = v65 + 1;
        v62(v36 + v39 + v65 * v40, v123, v141);
        goto LABEL_9;
      }
    }

LABEL_8:

    v38 = v140;
    (*v116)(v140, v141);
    v2 = v125;
    v12 = v139;
LABEL_9:
    ++v35;
    v13 = v129;
    v15 = v138;
    v37 = v127;
    v30 = v130;
    result = v126;
    if (v35 == v128)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized AlarmAffinityScorer.priorityForSharedTask(_:environment:)(uint64_t a1, double a2)
{
  v56 = type metadata accessor for RREntity();
  v2 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v63, &v60);
  if (v62)
  {
    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v63);

      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(&v60);
  }

  v60 = UsoTask.baseEntityAsString.getter();
  v61 = v9;
  strcpy(v59, "uso_NoEntity");
  HIBYTE(v59[6]) = 0;
  v59[7] = -5120;
  v53 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.contains<A>(_:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_31;
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v11 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v52 = *(v11 + 16);
  if (v52)
  {
    v12 = 0;
    v50 = (v2 + 8);
    v51 = v57 + 16;
    v47 = (v57 + 8);
    v49 = (v57 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v48 = v4;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v15 = v11;
      v16 = v11 + v14;
      v17 = *(v57 + 72);
      (*(v57 + 16))(v8, v16 + v17 * v12, v4);
      v18 = v55;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*v50)(v18, v56);
      v19 = UsoTask.verbString.getter();
      v21 = v20;

      v60 = v19;
      v61 = v21;
      strcpy(v59, "common_Alarm");
      HIBYTE(v59[6]) = 0;
      v59[7] = -5120;
      v22 = StringProtocol.contains<A>(_:)();

      if (v22)
      {
        v23 = *v49;
        (*v49)(v54, v8, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v58;
        }

        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v13 = v58;
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + v14 + v26 * v17;
        v4 = v48;
        v23(v27, v54, v48);
      }

      else
      {
        (*v47)(v8, v4);
      }

      ++v12;
      v11 = v15;
      if (v52 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (!*(v13 + 16))
  {

    v39 = specialized AlarmAffinityScorer.supportedAppIsOnScreen(with:)(v11);

    if ((v39 & 1) == 0)
    {
      outlined destroy of Any?(v63);
      return 0;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = 2;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "AlarmAffinityScorer found commonApp entity with Clock/NanoAlarm bundle ID", v44, 2u);
      MEMORY[0x1E12A2F50](v44, -1, -1);

      outlined destroy of Any?(v63);
      return v43;
    }

LABEL_31:
    outlined destroy of Any?(v63);
    return 2;
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_35:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.executor);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v4;
    v34 = v32;
    v60 = v32;
    *v31 = 136315138;
    v35 = MEMORY[0x1E12A16D0](v13, v33);
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v60);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v29, v30, "AlarmAffinityScorer found salient alarm entities %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {
  }

  outlined destroy of Any?(v63);
  return 3;
}

uint64_t specialized AlarmAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = specialized static AffinityScorerUtils.getTask(_:)();
    if (v8)
    {
      v9 = v8;
      v31[2] = UsoTask.baseEntityAsString.getter();
      v31[3] = v10;
      v31[0] = 0x6D72616C41;
      v31[1] = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v11 = StringProtocol.contains<A>(_:)();

      if ((v11 & 1) == 0)
      {
        v16 = specialized AlarmAffinityScorer.priorityForSharedTask(_:environment:)(v9, v12);
        goto LABEL_20;
      }

      if (specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)(v9))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        __swift_project_value_buffer(v13, static Logger.executor);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = 2;
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1DC659000, v14, v15, "AlarmAffinityScorer Task is Create Alarm with a relative offset duration – alarm should not take a first pass; timer should handle first", v17, 2u);
          MEMORY[0x1E12A2F50](v17, -1, -1);

LABEL_20:

          (*(v5 + 8))(v7, v4);
          return v16;
        }
      }

      else
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.executor);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1DC659000, v27, v28, "AlarmAffinityScorer Task contains Alarm – using .default affinity", v29, 2u);
          MEMORY[0x1E12A2F50](v29, -1, -1);

          (*(v5 + 8))(v7, v4);
          return 2;
        }
      }

      (*(v5 + 8))(v7, v4);
      return 2;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "AlarmAffinityScorer Could not extract usoTask from parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {

      return 2;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "AlarmAffinityScorer Not a USO parse – .default", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);

    return 2;
  }
}

uint64_t getEnumTagSinglePayload for AlarmAffinityScorer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AlarmAffinityScorer(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void one-time initialization function for forceEnabled()
{
  static AmbiguityFeatureFlags.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SydneyConversationFeatureFlags.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriKitFlowFeatureFlagDefinitions.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriPlaybackControlFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriPhoneFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static LinkFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

uint64_t *AmbiguityFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static AmbiguityFeatureFlags.forceEnabled;
}

uint64_t static AmbiguityFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AmbiguityFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = a1;
}

uint64_t (*static AmbiguityFeatureFlags.forceEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static AmbiguityFeatureFlags.forceEnabled : AmbiguityFeatureFlags.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static AmbiguityFeatureFlags.forceEnabled;
}

uint64_t key path setter for static AmbiguityFeatureFlags.forceEnabled : AmbiguityFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for forceEnabled;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = v1;
}

const char *AmbiguityFeatureFlags.feature.getter(char a1)
{
  if (!a1)
  {
    return "affinity_scoring_v2";
  }

  if (a1 == 1)
  {
    return "input_paraphrasing_flows";
  }

  return "app_shortcuts_omitting_app_name";
}

Swift::Int AmbiguityFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance AmbiguityFeatureFlags()
{
  v1 = "input_paraphrasing_flows";
  if (*v0 != 1)
  {
    v1 = "app_shortcuts_omitting_app_name";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "affinity_scoring_v2";
  }
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.getter in conformance AmbiguityFeatureFlags()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.setter in conformance AmbiguityFeatureFlags(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = a1;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

unint64_t instantiation function for generic protocol witness table for AmbiguityFeatureFlags(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AmbiguityFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AmbiguityFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AmbiguityServiceResponse.topParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AmbiguityServiceResponse(0) + 24);
  v4 = type metadata accessor for Parse();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AmbiguityServiceResponse.init(correctionsOutput:ambiguityOutput:topParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, a4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, a4 + *(v7 + 20), &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for Parse();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t AmbiguityService.__allocating_init(correctionsService:camBridge:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  type metadata accessor for ServerFallbackDisablingUtils();
  v5 = swift_allocObject();
  v5[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v5[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v5[4] = 0;
  *(v4 + 64) = v5;
  *(v4 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v4 + 24);
  return v4;
}

uint64_t AmbiguityService.init(correctionsService:camBridge:)(uint64_t a1, __int128 *a2)
{
  type metadata accessor for ServerFallbackDisablingUtils();
  v5 = swift_allocObject();
  v5[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v5[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v5[4] = 0;
  *(v2 + 64) = v5;
  *(v2 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v2 + 24);
  return v2;
}

Swift::Void __swiftcall AmbiguityService.newSessionStarted()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t AmbiguityService.newTurnStarted(executionUUID:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = v1[2];
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  return (*(v7 + 8))(a1, v6, v7);
}

uint64_t AmbiguityService.createRankedInput(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v159 = &v159 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v162 = &v159 - v7;
  v173 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for NLRouterParse();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v160 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v159 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v169 = &v159 - v13;
  v177 = type metadata accessor for NLRouterParse.InputCandidate();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v165 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v175 = (&v159 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = &v159 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v164 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v159 - v22;
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v24 = *(v23 - 8);
  v204 = v23;
  v205 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v203 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v185 = &v159 - v27;
  v28 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v182 = &v159 - v32;
  v198 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v187 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v208 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v207 = (&v159 - v35);
  v197 = type metadata accessor for Siri_Nlu_External_Parser();
  v186 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for Siri_Nlu_External_UserParse();
  v37 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v179 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v180 = &v159 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v161 = &v159 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v210 = &v159 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v211 = &v159 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v159 - v48;
  v192 = type metadata accessor for Parse();
  v194 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v183 = &v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v159 - v52;
  if (one-time initialization token for executor != -1)
  {
LABEL_72:
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v178 = __swift_project_value_buffer(v54, static Logger.executor);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1DC659000, v55, v56, "[AmbiguityService] Creating ranked input by ranking between NL and Pommes", v57, 2u);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  v188 = v29;
  v189 = v28;
  v190 = a2;

  v170 = a1;
  v191 = *(a1 + 56);
  v58 = *(v191 + 16);
  v59 = *(v58 + 16);
  v200 = v37;
  v206 = v59;
  v193 = v53;
  a1 = 0;
  if (!v59)
  {
    v64 = v209;
    goto LABEL_17;
  }

  v202 = v37 + 16;
  v201 = (v186 + 8);
  LODWORD(v199) = *MEMORY[0x1E69D0980];
  v53 = (v187 + 104);
  v29 = (v187 + 8);
  v195 = (v37 + 8);
  v37 = v208;
  while (1)
  {
    if (a1 >= *(v58 + 16))
    {
      __break(1u);
      goto LABEL_72;
    }

    v60 = v58;
    (*(v200 + 2))(v49, v58 + ((v200[80] + 32) & ~v200[80]) + *(v200 + 9) * a1, v209);
    v61 = v196;
    Siri_Nlu_External_UserParse.parser.getter();
    v28 = v207;
    Siri_Nlu_External_Parser.parserID.getter();
    (*v201)(v61, v197);
    a2 = v198;
    (*v53)(v37, v199, v198);
    lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v62 = *v29;
    (*v29)(v37, a2);
    v62(v28, a2);
    if (v213 == v212 || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
    {
      v64 = v209;
      (*v195)(v49, v209);
      goto LABEL_15;
    }

    v63 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*v195)(v49, v209);
    if (v63)
    {
      break;
    }

    ++a1;
    v58 = v60;
    if (v206 == a1)
    {
      a1 = v206;
      v64 = v209;
      goto LABEL_16;
    }
  }

  v64 = v209;
LABEL_15:
  v58 = v60;
LABEL_16:
  v37 = v200;
  if (*(v58 + 16) < a1)
  {
    __break(1u);
    goto LABEL_74;
  }

LABEL_17:
  v65 = (v37[80] + 32) & ~v37[80];

  v206 = v65;
  v184 = v66;
  if (a1)
  {
    v67 = v66 + v65;
    v68 = v37 + 16;
    v207 = *(v37 + 2);
    v208 = v37 + 16;
    v69 = *(v37 + 9);
    v201 = (v205 + 8);
    v202 = (v205 + 16);
    v199 = (v68 - 8);
    v70 = (v68 + 16);
    v71 = MEMORY[0x1E69E7CC0];
    for (i = v207(v211, v67, v64); ; i = v207(v211, v67, v64))
    {
      v73 = MEMORY[0x1E129C0F0](i);
      if (*(v73 + 16))
      {
        v74 = v204;
        v75 = v205;
        v76 = v203;
        (*(v205 + 16))(v203, v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v204);

        v77 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
        (*(v75 + 8))(v76, v74);
        if (v77)
        {
          (*v199)(v211, v64);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v78 = *v70;
      (*v70)(v210, v211, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 16) + 1, 1);
        v71 = v213;
      }

      v81 = *(v71 + 16);
      v80 = *(v71 + 24);
      if (v81 >= v80 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
        v71 = v213;
      }

      *(v71 + 16) = v81 + 1;
      v64 = v209;
      v78((v71 + v206 + v81 * v69), v210, v209);
LABEL_20:
      v67 += v69;
      if (!--a1)
      {
        goto LABEL_32;
      }
    }
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v82 = v191;
  v83 = v185;
  outlined init with copy of ReferenceResolutionClientProtocol?(v191 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v185, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v84 = v188;
  v85 = v189;
  if ((v188[6])(v83, 1, v189) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v60 = v190;
    v37 = v192;
    v64 = v194;
  }

  else
  {
    v86 = v182;
    (v84[4])(v182, v83, v85);
    v87 = NLRoutingDecisionMessage.RoutingDecision.shouldBeHandledBySiriX.getter();
    v60 = v190;
    v37 = v192;
    v64 = v194;
    if ((v87 & 1) == 0)
    {
      v88 = *(v170 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);
      if (v88)
      {
        v89 = *(v170 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance);
        if (*(v71 + 16))
        {
          v90 = v200;
          v91 = *(v200 + 2);
          v211 = *(v170 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);
          v92 = v161;
          v93 = v209;
          v91(v161, v71 + v206, v209);

          v91(v180, v92, v93);
          v94 = v196;
          Siri_Nlu_External_UserParse.parser.getter();
          v95 = v181;
          Siri_Nlu_External_Parser.parserID.getter();
          (*(v186 + 8))(v94, v197);
          (*(v187 + 56))(v95, 0, 1, v198);
          v96 = v174;
          USOParse.init(userParse:parserIdentifier:appBundleId:)();
          v97 = v92;
          v88 = v211;
          (*(v90 + 1))(v97, v93);
          v98 = 0;
        }

        else
        {

          v98 = 1;
          v96 = v174;
        }

        v128 = type metadata accessor for USOParse();
        (*(*(v128 - 8) + 56))(v96, v98, 1, v128);
        v129 = v175;
        *v175 = v89;
        v129[1] = v88;
        v130 = v176;
        v131 = v177;
        (*(v176 + 104))(v129, *MEMORY[0x1E69CFE20], v177);
        (v84[2])(v163, v182, v85);
        (*(v130 + 16))(v165, v129, v131);
        outlined init with copy of ReferenceResolutionClientProtocol?(v96, v164, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        v132 = *(v191 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
        if (v132)
        {
          v133 = *(v132 + 16);
        }

        v134 = v169;
        v135 = v166;

        NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)();
        v136 = v167;
        v137 = *(v167 + 16);
        v138 = v193;
        v139 = v168;
        v137(v193, v134, v168);
        (*(v194 + 104))(v138, *MEMORY[0x1E69D0180], v192);
        v137(v135, v134, v139);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v213 = v143;
          *v142 = 136315138;
          v137(v160, v135, v139);
          v144 = String.init<A>(describing:)();
          v146 = v145;
          v147 = *(v136 + 8);
          v147(v135, v139);
          v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v213);

          *(v142 + 4) = v148;
          _os_log_impl(&dword_1DC659000, v140, v141, "[AmbiguityService] Choosing NLRouterParse. nl router parse: %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v143);
          MEMORY[0x1E12A2F50](v143, -1, -1);
          MEMORY[0x1E12A2F50](v142, -1, -1);

          v147(v169, v139);
        }

        else
        {

          v149 = *(v136 + 8);
          v149(v135, v139);
          v149(v134, v139);
        }

        (*(v176 + 8))(v175, v177);
        outlined destroy of ReferenceResolutionClientProtocol?(v174, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        v188[1](v182, v189);
        v37 = v192;
        v64 = v194;
        v123 = v183;
        v60 = v190;
        goto LABEL_51;
      }
    }

    v84[1](v86, v85);
  }

  v99 = *(v82 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  if (v99)
  {
    v100 = *(v99 + 16);
    if (v100)
    {
      v101 = v100;
      dispatch thunk of PommesResponse.primaryQueryConfidence()();
      if (v102 >= 0.7)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = v60;
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1DC659000, v117, v118, "[AmbiguityService] Choosing pommes as top as it has higher confidence", v120, 2u);
          v121 = v120;
          v60 = v119;
          MEMORY[0x1E12A2F50](v121, -1, -1);
        }

        *v193 = v101;
        (*(v64 + 104))();
        v122 = v101;
        specialized AmbiguityService.getAlternatives<A>(nlParses:)(v71);

        goto LABEL_50;
      }
    }
  }

  if (!*(v71 + 16))
  {

    v113 = v172;
    v114 = v171;
    v115 = v173;
    (*(v172 + 104))(v171, *MEMORY[0x1E69D0A98], v173);
    lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x1E69D0AA8], MEMORY[0x1E69D0AB8]);
    v116 = v191;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v113 + 8))(v114, v115);
    if (v213 == v212)
    {
LABEL_46:
      (*(v64 + 104))(v193, *MEMORY[0x1E69D0178], v37);
      goto LABEL_50;
    }

    if (*(*(v116 + 16) + 16))
    {
LABEL_54:
      v125 = 1;
      goto LABEL_52;
    }

    (*(v200 + 7))(v162, 1, 1, v209);
    v150 = type metadata accessor for ServerFallbackReason();
    v49 = v159;
    (*(*(v150 - 8) + 56))(v159, 1, 1, v150);
    if (one-time initialization token for fallbackDisabledOverride == -1)
    {
LABEL_63:
      v151 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
      os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
      os_unfair_lock_opaque_low = LOBYTE(v151[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v151 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        v153 = v162;
        if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v162, v49) & 1) == 0)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          v125 = 1;
          goto LABEL_52;
        }

        v154 = [objc_opt_self() sharedPreferences];
        LOBYTE(os_unfair_lock_opaque_low) = [v154 shouldDisableServerFallbackDomain];
      }

      v155 = v162;
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      if (os_unfair_lock_opaque_low)
      {
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_1DC659000, v156, v157, "[AmbiguityService] Empty nlParses and isServerFallbackDisabled = true", v158, 2u);
          MEMORY[0x1E12A2F50](v158, -1, -1);
        }

        goto LABEL_46;
      }

      goto LABEL_54;
    }

LABEL_74:
    swift_once();
    goto LABEL_63;
  }

  v103 = v200;
  v104 = *(v200 + 2);
  v105 = v206;
  v106 = v179;
  v107 = v209;
  v104(v179, v71 + v206, v209);
  v108 = v193;
  v104(v180, v106, v107);
  v109 = v196;
  Siri_Nlu_External_UserParse.parser.getter();
  v110 = v181;
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v186 + 8))(v109, v197);
  (*(v187 + 56))(v110, 0, 1, v198);
  v111 = v108;
  v60 = v190;
  v37 = v192;
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  (*(v194 + 104))(v111, *MEMORY[0x1E69D0168], v37);
  specialized AmbiguityService.getAlternatives<A>(nlParses:)(v71 + v105, *(v71 + 16) != 0, (2 * *(v71 + 16)) | 1);

  v112 = v106;
  v64 = v194;
  (*(v103 + 1))(v112, v107);
LABEL_50:
  v123 = v183;
LABEL_51:
  v124 = v193;
  (*(v64 + 16))(v123, v193, v37);
  Input.init(parse:alternatives:)();
  (*(v64 + 8))(v124, v37);
  v125 = 0;
LABEL_52:
  v126 = type metadata accessor for Input();
  return (*(*(v126 - 8) + 56))(v60, v125, 1, v126);
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v25;
  v9[19] = v8;
  v9[16] = a8;
  v9[17] = v24;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  v10 = type metadata accessor for AmbiguityServiceResponse(0);
  v9[20] = v10;
  v9[21] = *(v10 - 8);
  v9[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime9CamOutputOSgMd, &_s14SiriKitRuntime9CamOutputOSgMR);
  v9[25] = swift_task_alloc();
  v11 = type metadata accessor for CamOutput(0);
  v9[26] = v11;
  v9[27] = *(v11 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v12 = type metadata accessor for Input();
  v9[31] = v12;
  v9[32] = *(v12 - 8);
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v13 = type metadata accessor for CamParse();
  v9[35] = v13;
  v9[36] = *(v13 - 8);
  v9[37] = swift_task_alloc();
  v14 = type metadata accessor for Parse();
  v9[38] = v14;
  v9[39] = *(v14 - 8);
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v9[42] = swift_task_alloc();
  v15 = type metadata accessor for PluginAction();
  v9[43] = v15;
  v9[44] = *(v15 - 8);
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v16 = type metadata accessor for RankedAction();
  v9[48] = v16;
  v9[49] = *(v16 - 8);
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  type metadata accessor for ResponseMode();
  v9[53] = swift_task_alloc();
  v17 = type metadata accessor for RankerContext();
  v9[54] = v17;
  v9[55] = *(v17 - 8);
  v9[56] = swift_task_alloc();
  v18 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v9[57] = v18;
  v9[58] = *(v18 - 8);
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v19 = type metadata accessor for Siri_Nlu_External_Parser();
  v9[61] = v19;
  v9[62] = *(v19 - 8);
  v9[63] = swift_task_alloc();
  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9[64] = v20;
  v9[65] = *(v20 - 8);
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v9[68] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static MessageBusActor.shared;
  v9[69] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v21, 0);
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)()
{
  v80 = v0;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v1 = *(v0 + 104);
    v2 = type metadata accessor for Logger();
    *(v0 + 560) = __swift_project_value_buffer(v2, static Logger.executor);
    Logger.debugF(file:function:)("SiriKitRuntime/AmbiguityService.swift", 37, 2, "findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)", 156, 2);
    if (!*(v1 + 16))
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DC659000, v23, v24, "[AmbiguityService] findBestActionFor was not given a list of action candidates, returning a default response.", v25, 2u);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      v26 = *(v0 + 120);
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);

      AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v26, v27, v28);

      v29 = *(v0 + 8);

      return v29();
    }

    v3 = *(v0 + 80);
    v66 = v3[2];
    *(v0 + 568) = v66;
    v65 = v3[3];
    *(v0 + 576) = v65;
    v4 = *(*(v3[7] + 16) + 16);

    v76 = v4;
    if (!v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v0 + 520);
    v8 = *(v0 + 464);
    v73 = (*(v0 + 496) + 8);
    v72 = *MEMORY[0x1E69D0968];
    v70 = (v8 + 8);
    v71 = (v8 + 104);
    v67 = (v7 + 32);
    v74 = v7;
    v69 = (v7 + 8);
    v68 = MEMORY[0x1E69E7CC0];
    v75 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v0 + 504);
      v11 = *(v0 + 480);
      v10 = *(v0 + 488);
      v12 = *(v0 + 472);
      v13 = *(v0 + 456);
      v14 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v15 = *(v74 + 72);
      (*(v74 + 16))(*(v0 + 544), v5 + v14 + v15 * v6, *(v0 + 512));
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*v73)(v9, v10);
      (*v71)(v12, v72, v13);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v16 = *v70;
      (*v70)(v12, v13);
      v16(v11, v13);
      if (*(v0 + 56) == *(v0 + 64) || (Siri_Nlu_External_UserParse.isOverriddenPSC.getter() & 1) != 0)
      {
        (*v69)(*(v0 + 544), *(v0 + 512));
      }

      else
      {
        v17 = *v67;
        (*v67)(*(v0 + 536), *(v0 + 544), *(v0 + 512));
        v18 = v68;
        v79 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 16) + 1, 1);
          v18 = v79;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = v79;
        }

        v21 = *(v0 + 536);
        v22 = *(v0 + 512);
        *(v18 + 16) = v20 + 1;
        v68 = v18;
        v17(v18 + v14 + v20 * v15, v21, v22);
      }

      ++v6;
      v5 = v75;
      if (v76 == v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v31 = *(v68 + 16);
  if (v31)
  {
    v32 = *(v0 + 520);
    v79 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v33 = v79;
    v34 = *(v32 + 16);
    v32 += 16;
    v77 = v34;
    v35 = v68 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    v37 = (v32 - 8);
    do
    {
      v38 = *(v0 + 528);
      v39 = *(v0 + 512);
      v77(v38, v35, v39);
      Siri_Nlu_External_UserParse.comparableProbability.getter();
      v41 = v40;
      (*v37)(v38, v39);
      v79 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v33 = v79;
      }

      *(v33 + 16) = v43 + 1;
      *(v33 + 8 * v43 + 32) = v41;
      v35 += v36;
      --v31;
    }

    while (v31);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v33 + 16);
  if (v44)
  {
    v45 = *(v33 + 32);
    v46 = v44 - 1;
    if (v44 != 1)
    {
      v47 = (v33 + 40);
      do
      {
        v48 = *v47++;
        v49 = v48;
        if (v45 < v48)
        {
          v45 = v49;
        }

        --v46;
      }

      while (v46);
    }

    v50 = v45;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v79 = v54;
    *v53 = 136315138;
    *(v0 + 40) = v50;
    *(v0 + 48) = v44 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v55 = String.init<A>(describing:)();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v79);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1DC659000, v51, v52, "Extracted maxNLProba %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1E12A2F50](v54, -1, -1);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  v58 = *(v0 + 128);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.responseMode.getter();

  if (v58)
  {
  }

  v59 = *(v0 + 152);

  RankerContext.init(rrCandidates:responseMode:previousConversationHandlerId:maxNLProba:)();
  v60 = v59[6];
  v61 = v59[7];
  __swift_project_boxed_opaque_existential_1(v59 + 3, v60);
  v78 = (*(v61 + 56) + **(v61 + 56));
  v62 = swift_task_alloc();
  *(v0 + 584) = v62;
  *v62 = v0;
  v62[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
  v63 = *(v0 + 448);
  v64 = *(v0 + 104);

  return v78(v66, v65, v64, v63, v60, v61);
}

{
  v1 = *(v0 + 592);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 600) = v2;
    if (v2)
    {
      v4 = *(v0 + 408);
      v3 = *(v0 + 416);
      v6 = *(v0 + 384);
      v5 = *(v0 + 392);
      v7 = *(v5 + 16);
      v5 += 16;
      v8 = *(v5 + 64);
      *(v0 + 52) = v8;
      *(v0 + 608) = v7;
      *(v0 + 616) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v3, v1 + ((v8 + 32) & ~v8), v6);
      v7(v4, v3, v6);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 408);
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50 = v47;
        *v15 = 136315138;
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type RankedAction and conformance RankedAction, MEMORY[0x1E69CE360], MEMORY[0x1E69CE368]);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        v19 = *(v13 + 8);
        v19(v12, v14);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v50);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1DC659000, v9, v10, "[AmbiguityService] Top action after CAAR ranking: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1E12A2F50](v47, -1, -1);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }

      else
      {

        v19 = *(v13 + 8);
        v19(v12, v14);
      }

      *(v0 + 624) = v19;
      v32 = *(v0 + 376);
      v33 = *(v0 + 328);
      v34 = *(v0 + 336);
      v36 = *(v0 + 312);
      v35 = *(v0 + 320);
      v37 = *(v0 + 296);
      v46 = *(v0 + 304);
      v38 = *(v0 + 288);
      v45 = *(v0 + 280);
      v39 = *(v0 + 152);
      v40 = type metadata accessor for ActionParaphrase();
      *(v0 + 632) = v40;
      v41 = *(v40 - 8);
      v42 = *(v41 + 56);
      *(v0 + 640) = v42;
      *(v0 + 648) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v42(v34, 1, 1, v40);
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v34, v32);
      outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      RankedAction.parse.getter();
      CamParse.asSKEParse()(v33);
      (*(v38 + 8))(v37, v45);
      (*(v36 + 16))(v35, v33, v46);
      Input.init(parse:)();
      v43 = v39[7];
      __swift_project_boxed_opaque_existential_1(v39 + 3, v39[6]);
      v48 = *(v43 + 32) + **(v43 + 32);
      v44 = swift_task_alloc();
      *(v0 + 656) = v44;
      *v44 = v0;
      v44[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);

      __asm { BRAA            X8, X16 }
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "[AmbiguityService] Despite a non-empty list of action candidates, CAAR didn't return a list of ranked actions or returned an empty one. This might be a bug in CAAR. Returning a default response.", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v25 = *(v0 + 440);
  v24 = *(v0 + 448);
  v26 = *(v0 + 432);
  v27 = *(v0 + 120);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);

  AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v27, v28, v29);
  (*(v25 + 8))(v24, v26);

  v30 = *(v0 + 8);

  return v30();
}

{
  v1 = *(*v0 + 552);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v1, 0);
}

{
  v88 = v0;
  v1 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v1, 1, *(v0 + 208)) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s14SiriKitRuntime9CamOutputOSgMd, &_s14SiriKitRuntime9CamOutputOSgMR);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[AmbiguityService] CAM ambiguity handling failed. Fall back to returning pluginActions", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 592);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v8 + 16);

      _os_log_impl(&dword_1DC659000, v5, v6, "[AmbiguityService] Converting %ld rankedActions to PluginActions", v9, 0xCu);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    else
    {
    }

    v23 = 0;
    v24 = 0;
    v25 = *(v0 + 392);
    v80 = *(v25 + 72);
    v82 = *(v0 + 352);
    v26 = MEMORY[0x1E69E7CC0];
    v77 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v27 = *(v0 + 640);
      v28 = *(v0 + 632);
      v85 = *(v0 + 624);
      v29 = *(v0 + 400);
      v30 = *(v0 + 384);
      v31 = v26;
      v32 = *(v0 + 368);
      v33 = *(v0 + 336);
      (*(v0 + 608))(v29, *(v0 + 592) + v23 + ((*(v0 + 52) + 32) & ~*(v0 + 52)), v30);
      v27(v33, 1, 1, v28);
      v34 = v32;
      v26 = v31;
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v33, v34);
      outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      *(v0 + 672) = v77;
      v85(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v36 = v26[2];
      v35 = v26[3];
      if (v36 >= v35 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v26);
      }

      *(v0 + 680) = v26;
      v37 = *(v0 + 600);
      v38 = *(v0 + 368);
      v39 = *(v0 + 344);
      ++v24;
      v26[2] = v36 + 1;
      v40 = v26 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
      (*(v82 + 32))(&v40[*(v82 + 72) * v36], v38, v39);
      v23 += v80;
    }

    while (v24 != v37);
    swift_bridgeObjectRetain_n();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 592);
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      v46 = *(v44 + 16);

      *(v45 + 4) = v46;

      *(v45 + 12) = 2048;
      v47 = v26[2];

      *(v45 + 14) = v47;

      _os_log_impl(&dword_1DC659000, v41, v42, "[AmbiguityService] Converted %ld rankedActions to %ld pluginActions", v45, 0x16u);
      MEMORY[0x1E12A2F50](v45, -1, -1);

      if (v26[2])
      {
LABEL_17:
        v48 = *(v0 + 248);
        v49 = *(v0 + 256);
        v50 = *(v0 + 184);
        (*(*(v0 + 352) + 16))(*(v0 + 360), v40, *(v0 + 344));
        (*(v49 + 56))(v50, 1, 1, v48);
        v51 = swift_task_alloc();
        *(v0 + 688) = v51;
        *v51 = v0;
        v51[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
        v52 = *(v0 + 360);
        v54 = *(v0 + 184);
        v53 = *(v0 + 192);
        v55 = *(v0 + 80);

        return CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(v53, v52, v55, v54);
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      if (v26[2])
      {
        goto LABEL_17;
      }
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "[AmbiguityService] Could not convert ranked actions to plugin actions", v64, 2u);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    v83 = *(v0 + 624);
    v65 = *(v0 + 440);
    v84 = *(v0 + 432);
    v86 = *(v0 + 448);
    v79 = *(v0 + 384);
    v81 = *(v0 + 416);
    v66 = *(v0 + 352);
    v76 = *(v0 + 344);
    v78 = *(v0 + 376);
    v67 = *(v0 + 312);
    v74 = *(v0 + 304);
    v75 = *(v0 + 328);
    v68 = *(v0 + 272);
    v69 = *(v0 + 248);
    v70 = *(v0 + 256);
    v72 = *(v0 + 72);
    v71 = *(v0 + 80);

    AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v68, v71, v72);
    (*(v70 + 8))(v68, v69);
    (*(v67 + 8))(v75, v74);
    (*(v66 + 8))(v78, v76);
    v83(v81, v79);
    (*(v65 + 8))(v86, v84);

    v73 = *(v0 + 8);

    return v73();
  }

  else
  {
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);

    outlined init with take of AmbiguityServiceResponse(v1, v10, type metadata accessor for CamOutput);
    outlined init with copy of CamOutput(v10, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 232);
    if (v14)
    {
      v16 = *(v0 + 224);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v87 = v18;
      *v17 = 136315138;
      outlined init with copy of CamOutput(v15, v16);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      outlined destroy of CamOutput(v15, type metadata accessor for CamOutput);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v87);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v12, v13, "[AmbiguityService] CAM output: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {

      outlined destroy of CamOutput(v15, type metadata accessor for CamOutput);
    }

    v57 = swift_task_alloc();
    *(v0 + 664) = v57;
    *v57 = v0;
    v57[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
    v58 = *(v0 + 376);
    v59 = *(v0 + 240);
    v60 = *(v0 + 72);
    v61 = *(v0 + 80);

    return AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)(v60, v59, v58, v61);
  }
}

{
  v1 = *(*v0 + 552);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v1, 0);
}

{
  v1 = v0[55];
  v21 = v0[56];
  v19 = v0[78];
  v20 = v0[54];
  v15 = v0[48];
  v2 = v0[44];
  v13 = v0[43];
  v14 = v0[47];
  v12 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];
  v9 = v0[21];
  v17 = v0[52];
  v18 = v0[20];
  v16 = v0[9];

  outlined destroy of CamOutput(v8, type metadata accessor for CamOutput);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v12, v4);
  (*(v2 + 8))(v14, v13);
  v19(v17, v15);
  (*(v1 + 8))(v21, v20);
  (*(v9 + 56))(v16, 0, 1, v18);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 184);

  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v1, 0);
}

{
  v1 = v0[85];
  v28 = v0[78];
  v30 = v0[56];
  v27 = v0[55];
  v29 = v0[54];
  v24 = v0[48];
  v25 = v0[52];
  v2 = v0[44];
  v21 = v0[41];
  v22 = v0[47];
  v3 = v0[39];
  v20 = v0[38];
  v4 = v0[33];
  v18 = v0[43];
  v19 = v0[34];
  v5 = v0[32];
  v16 = v0[45];
  v17 = v0[31];
  v6 = v0[24];
  v15 = v6;
  v7 = v0[22];
  v26 = v0[21];
  v8 = v0[20];
  v23 = v0[9];

  outlined init with copy of ReferenceResolutionClientProtocol?(v6, v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9 = *(v8 + 20);
  *(v7 + v9) = v1;
  v10 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7 + v9, 0, 1, v10);
  PluginAction.input.getter();
  Input.parse.getter();
  v11 = *(v5 + 8);
  v11(v4, v17);
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v12 = *(v2 + 8);
  v12(v16, v18);
  v11(v19, v17);
  (*(v3 + 8))(v21, v20);
  v12(v22, v18);
  v28(v25, v24);
  (*(v27 + 8))(v30, v29);
  outlined init with take of AmbiguityServiceResponse(v7, v23, type metadata accessor for AmbiguityServiceResponse);
  (*(v26 + 56))(v23, 0, 1, v8);

  v13 = v0[1];

  return v13();
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1)
{
  v2 = *(*v1 + 552);
  *(*v1 + 592) = a1;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v2, 0);
}

uint64_t AmbiguityService.getDefaultResponse(input:conversationUserInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CorrectionsService.getCorrectionsAction(input:conversationUserInput:)(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v13 = type metadata accessor for AmbiguityServiceResponse(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(a3, v12, v9);
    (*(v10 + 56))(a3, 0, 1, v9);
    v15 = type metadata accessor for AmbiguityServiceResponse(0);
    v16 = *(v15 + 20);
    v17 = type metadata accessor for AmbiguityOutput(0);
    (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
    Input.parse.getter();
    (*(v10 + 8))(v12, v9);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

int64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for CamOutput(0);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for Input();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v5[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v8, 0);
}

uint64_t AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)(uint64_t a1)
{
  v55 = v1;
  v2 = v1[17];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[12];
  v6 = v1[6];
  PluginAction.input.getter();
  Input.parse.getter();
  v7 = *(v4 + 8);
  v7(v2, v3);
  outlined init with copy of CamOutput(v6, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v1[16];
    v9 = v1[13];
    v10 = v1[14];
    v11 = v1[12];
    v12 = *(v10 + 32);
    v1[24] = v12;
    v1[25] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v8, v11, v9);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = v1[15];
    v14 = v1[16];
    v15 = v1[13];
    v16 = v1[14];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[15];
    v23 = v1[13];
    if (v21)
    {
      v24 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v24 = 136315138;
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v52 = v20;
      v25 = v18;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v7;
      v29 = v28;
      v27(v22, v23);
      v30 = v26;
      v18 = v25;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v54);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1DC659000, v19, v52, "[AmbiguityService] Returning a Direct Invocation for CAM flow: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x1E12A2F50](v53, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    else
    {

      v7(v22, v23);
    }

    v44 = v1[13];
    v45 = v1[14];
    v46 = v1[10];
    v18(v46, v1[16], v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v42 = swift_task_alloc();
    v1[26] = v42;
    *v42 = v1;
    v43 = AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:);
  }

  else
  {
    v32 = *v1[12];
    v1[22] = v32;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136315138;
      v38 = type metadata accessor for PluginAction();
      v39 = MEMORY[0x1E12A16D0](v32, v38);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v54);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DC659000, v34, v35, "[AmbiguityService] Returning set of actions to execute: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    (*(v1[14] + 56))(v1[10], 1, 1, v1[13]);
    v42 = swift_task_alloc();
    v1[23] = v42;
    *v42 = v1;
    v43 = AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:);
  }

  v42[1] = v43;
  v47 = v1[10];
  v48 = v1[7];
  v49 = v1[8];
  v50 = v1[5];

  return CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(v50, v48, v49, v47);
}

uint64_t AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 80);

  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v1, 0);
}

{
  v1 = v0[22];
  v2 = v0[5];

  v3 = type metadata accessor for AmbiguityServiceResponse(0);
  v4 = *(v3 + 20);
  *(v2 + v4) = v1;
  v5 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v2 + v4, 0, 1, v5);
  (*(v0[19] + 32))(v0[5] + *(v3 + 24), v0[20], v0[18]);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 80);

  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v1, 0);
}

{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[5];

  v5 = type metadata accessor for AmbiguityServiceResponse(0);
  v6 = *(v5 + 20);
  v1(v4 + v6, v2, v3);
  v7 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v4 + v6, 0, 1, v7);
  (*(v0[19] + 32))(v0[5] + *(v5 + 24), v0[20], v0[18]);

  v8 = v0[1];

  return v8();
}

uint64_t AmbiguityService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t AmbiguityService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AmbiguityServiceProviding.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:) in conformance AmbiguityService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t specialized AmbiguityService.getAlternatives<A>(nlParses:)(uint64_t a1)
{
  v46 = type metadata accessor for Siri_Nlu_External_Parser();
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = v31 - v5;
  v43 = type metadata accessor for Siri_Nlu_External_UserParse();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v31 - v9;
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v47 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v47;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = (a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v36 = *(v16 + 56);
    v37 = v17;
    v34 = (v16 - 8);
    v35 = (v2 + 8);
    v33 = *MEMORY[0x1E69D0168];
    v31[1] = v11 + 32;
    v32 = (v11 + 104);
    v39 = v11;
    v40 = v16;
    v38 = v10;
    v19 = v42;
    do
    {
      v20 = v41;
      v21 = v43;
      v22 = v37;
      v37(v41, v18, v43);
      v22(v19, v20, v21);
      v23 = v45;
      Siri_Nlu_External_UserParse.parser.getter();
      v24 = v44;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v35)(v23, v46);
      v25 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      v26 = v21;
      v27 = v38;
      (*v34)(v20, v26);
      (*v32)(v13, v33, v27);
      v47 = v15;
      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v15 = v47;
      }

      *(v15 + 16) = v29 + 1;
      (*(v39 + 32))(v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, v13, v27);
      v18 += v36;
      --v14;
    }

    while (v14);
  }

  return v15;
}

void specialized AmbiguityService.getAlternatives<A>(nlParses:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39 = a1;
  v38 = type metadata accessor for Siri_Nlu_External_Parser();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v27 - v8;
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v43 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Parse();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3 >> 1;
  v15 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_13;
  }

  if (v15)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v16 = v44;
    v31 = (v5 + 8);
    v32 = v43 + 16;
    v30 = v43 + 8;
    v29 = *MEMORY[0x1E69D0168];
    v27 = v42 + 32;
    v28 = (v42 + 104);
    v17 = v41;
    if (a2 > v41)
    {
      v17 = a2;
    }

    v33 = v17;
    v18 = v35;
    while (v33 != a2)
    {
      v19 = v43;
      v20 = *(v43 + 16);
      v20(v12, v39 + *(v43 + 72) * a2, v18);
      v20(v34, v12, v18);
      v21 = v37;
      Siri_Nlu_External_UserParse.parser.getter();
      v22 = v36;
      Siri_Nlu_External_Parser.parserID.getter();
      v23 = v40;
      (*v31)(v21, v38);
      v24 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (*(v19 + 8))(v12, v18);
      (*v28)(v23, v29, v13);
      v44 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v23 = v40;
        v16 = v44;
      }

      *(v16 + 16) = v26 + 1;
      (*(v42 + 32))(v16 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26, v23, v13);
      if (v41 == ++a2)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

uint64_t outlined init with take of AmbiguityServiceResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CamOutput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamOutput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for AmbiguityServiceResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Input();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for AmbiguityOutput(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v8 + 16))(a1 + v11, a2 + v11, v7);
      }

      else
      {
        *(a1 + v11) = *(a2 + v11);
      }

      swift_storeEnumTagMultiPayload();
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    v15 = *(a3 + 24);
    v16 = type metadata accessor for Parse();
    (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
  }

  return a1;
}

uint64_t destroy for AmbiguityServiceResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for AmbiguityOutput(0);
  if (!(*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 8))(a1 + v6, v4);
    }

    else
    {
    }
  }

  v8 = *(a2 + 24);
  v9 = type metadata accessor for Parse();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v8, v9);
}

char *initializeWithCopy for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for AmbiguityOutput(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 16))(&a1[v9], &a2[v9], v6);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for Parse();
  (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *assignWithCopy for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for AmbiguityOutput(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v7 + 16))(&a1[v12], &a2[v12], v6);
      }

      else
      {
        *&a1[v12] = *&a2[v12];
      }

      swift_storeEnumTagMultiPayload();
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_21;
    }

LABEL_13:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    goto LABEL_21;
  }

  if (v17)
  {
    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 16))(&a1[v12], &a2[v12], v6);
    }

    else
    {
      *&a1[v12] = *&a2[v12];
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_21:
  v19 = *(a3 + 24);
  v20 = type metadata accessor for Parse();
  (*(*(v20 - 8) + 24))(&a1[v19], &a2[v19], v20);
  return a1;
}

uint64_t outlined destroy of CamOutput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for AmbiguityOutput(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(&a1[v9], &a2[v9], v6);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v9], &a2[v9], *(v11 + 64));
    }

    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for Parse();
  (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *assignWithTake for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for AmbiguityOutput(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v7 + 32))(&a1[v12], &a2[v12], v6);
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

      v18 = *(v14 + 64);
      goto LABEL_14;
    }

    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
LABEL_13:
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR) - 8) + 64);
LABEL_14:
    memcpy(&a1[v12], &a2[v12], v18);
    goto LABEL_21;
  }

  if (v17)
  {
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(&a1[v12], &a2[v12], v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v12], &a2[v12], *(v14 + 64));
  }

  (*(v14 + 56))(&a1[v12], 0, 1, v13);
LABEL_21:
  v19 = *(a3 + 24);
  v20 = type metadata accessor for Parse();
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  return a1;
}

void type metadata completion function for AmbiguityServiceResponse(uint64_t a1)
{
  type metadata accessor for Input?(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Input?(319, &lazy cache variable for type metadata for AmbiguityOutput?, type metadata accessor for AmbiguityOutput);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Parse();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for Input?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for AmbiguityOutput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AmbiguityOutput(uint64_t *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for Input();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  else
  {
  }
}

uint64_t *initializeWithCopy for AmbiguityOutput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Input();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *assignWithCopy for AmbiguityOutput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of CamOutput(a1, type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Input();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for AmbiguityOutput(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for AmbiguityOutput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of CamOutput(a1, type metadata accessor for AmbiguityOutput);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for AmbiguityOutput(uint64_t a1)
{
  result = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of AmbiguityServiceProviding.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*(a12 + 32) + **(a12 + 32));
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  *v18 = v12;
  v18[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t AnnounceContext.__allocating_init(activeTasks:executedTasks:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnnounceContext.init(activeTasks:executedTasks:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnnounceContext.deinit()
{

  return v0;
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

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E12A1FE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(char *), char a2, uint64_t a3, double a4)
{
  v25 = a1;
  v26 = type metadata accessor for AppShortcutGeneralizedInvocation();
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v4)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double one-time initialization function for announceTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AnnounceTypeOverride_pXpGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AnnounceTypeOverride_pXpGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1DCA65720;
  *(v0 + 32) = &type metadata for AnnounceTypeOverrideMessages;
  *(v0 + 40) = &protocol witness table for AnnounceTypeOverrideMessages;
  *(v0 + 48) = &type metadata for AnnounceTypeOverridePhoneCall;
  *(v0 + 56) = &protocol witness table for AnnounceTypeOverridePhoneCall;
  static AnnounceExecutionOverride.announceTypes = v0;
  return result;
}

uint64_t *AnnounceExecutionOverride.announceTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for announceTypes != -1)
  {
    swift_once();
  }

  return &static AnnounceExecutionOverride.announceTypes;
}

uint64_t static AnnounceExecutionOverride.announceTypes.getter()
{
  if (one-time initialization token for announceTypes != -1)
  {
    swift_once();
  }
}

uint64_t outlined init with copy of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceExecutionOverride.__allocating_init(activeTasks:executedTasks:topNlParse:isTriggerlessFollowup:isMitigated:isMedocSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 1028;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  outlined init with take of Siri_Nlu_External_UserParse?(a3, v12 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse);
  *(v12 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = a4;
  *(v12 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = a5;
  *(v12 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = a6;
  return v12;
}

uint64_t AnnounceExecutionOverride.init(activeTasks:executedTasks:topNlParse:isTriggerlessFollowup:isMitigated:isMedocSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v6 + 16) = 1028;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  outlined init with take of Siri_Nlu_External_UserParse?(a3, v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse);
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = a4;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = a5;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = a6;
  return v6;
}

uint64_t outlined init with take of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall AnnounceExecutionOverride.evaluate()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Evaluating Announce Override rule...", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if ((*(*v2 + 168))())
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "AnnounceExecutionOverride overriding mitigator decision.", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = 3;
    goto LABEL_24;
  }

  v13 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  if (v13 != 1)
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "Evaluation result from Announce rule is accept when request is not trigger less follow up nor the request should be mitigated for an Intercom task", v23, 2u);
      v22 = v23;
      goto LABEL_22;
    }

LABEL_23:

    v12 = 11;
LABEL_24:
    *v3 = v12;
    return result;
  }

  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "Request is a triggerless followup aka siri announcement.,.", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) == 1)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    v18 = static FlexibleAnnounceFeatureFlag.forceEnabled;
    os_unfair_lock_lock((static FlexibleAnnounceFeatureFlag.forceEnabled + 20));
    v19 = *(v18 + 16);
    if (v19 == 2)
    {
      v27[3] = &type metadata for FlexibleAnnounceFeatureFlag;
      v27[4] = lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag();
      LOBYTE(v19) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    os_unfair_lock_unlock((v18 + 20));
    if (v19)
    {
      v14 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = v21;
LABEL_22:
        MEMORY[0x1E12A2F50](v22, -1, -1);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "Announce rule feature flag is disabled or we are on a non-medoc-enabled device; running rule..", v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  AnnounceExecutionOverride.triggerlessFollowupRulesWithoutFlexibleAnnounce()(v3);
  return result;
}

void AnnounceExecutionOverride.triggerlessFollowupRulesWithoutFlexibleAnnounce()(_BYTE *a1@<X8>)
{
  (*(*v1 + 176))(&v13);
  v3 = v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v5, v6, "With trigger less followup evaluation result from Announce rule is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  *a1 = v3;
}

Swift::Bool __swiftcall AnnounceExecutionOverride.shouldOverrideMitigatorAndIsIntercomTask()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) != 1 || !AnnounceExecutionOverride.parseContainsAnnounceIntercomTask()())
  {
    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, v4);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;

    *(v8 + 14) = 1;

    _os_log_impl(&dword_1DC659000, v6, v7, "Overriding mitigator decision based on Announce Mitigator rule:\ntopParse: %s,\nisMitigated: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }

  return 1;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall AnnounceExecutionOverride.executionOverrideDecisionForTriggerlessFollowup()()
{
  v99 = v0;
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v95 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v95 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v95 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_Task();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v95 - v20;
  v22 = v2;
  v24 = v23;
  (*(v22 + 184))(v19);
  if ((*(v24 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.executor);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, v26, v27, "Unable to retrieve task from activeTasks or executedTasks in SessionState for triggerless followup. Rejecting.", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

LABEL_7:
    *v99 = 1;
    return result;
  }

  (*(v24 + 32))(v21, v14, v15);
  v97 = v21;
  static AnnounceExecutionOverride.announceTypeForTask(_:)(&v104);
  if (!v105)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v104, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    v34 = v24;
    v35 = *(v24 + 16);
    v36 = v97;
    v35(v17, v97, v15);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v104 = v40;
      *v39 = 136315138;
      type metadata accessor for SiriNLUTypesPrintUtils();
      v108 = v15;
      v109 = lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
      v35(boxed_opaque_existential_0, v17, v15);
      v42 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
      v44 = v43;
      v45 = *(v34 + 8);
      v45(v17, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v104);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_1DC659000, v37, v38, "Unable to identify announce type of task: %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);

      result = v45(v97, v15);
    }

    else
    {

      v53 = *(v34 + 8);
      v53(v17, v15);
      result = v53(v36, v15);
    }

    goto LABEL_7;
  }

  v96 = v24;
  outlined init with take of ReferenceResolutionClientProtocol(&v104, v107);
  outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, v5);
  v30 = type metadata accessor for Siri_Nlu_External_UserParse();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v5, 1, v30) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    (*(v10 + 56))(v8, 1, 1, v9);
    v32 = v96;
LABEL_20:
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.executor);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v97;
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "Unable to retrieve UserDialogAct from parse.", v60, 2u);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    (*(v32 + 8))(v59, v15);
    v61 = 1;
    goto LABEL_25;
  }

  v47 = MEMORY[0x1E129C0F0]();
  (*(v31 + 8))(v5, v30);
  v48 = v10;
  if (*(v47 + 16))
  {
    v49 = *(v10 + 16);
    v50 = v47 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v51 = v9;
    v49(v8, v50, v9);
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v51 = v9;
  }

  v32 = v96;
  v54 = v98;

  (*(v48 + 56))(v8, v52, 1, v51);
  if ((*(v48 + 48))(v8, 1, v51) == 1)
  {
    goto LABEL_20;
  }

  (*(v48 + 32))(v54, v8, v51);
  if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 && (v66 = v108, v67 = v109, __swift_project_boxed_opaque_existential_1(v107, v108), ((*(v67 + 16))(v66, v67)))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.executor);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DC659000, v63, v64, "Accepting WantedToRepeat / UserCancelled dialog act.", v65, 2u);
      MEMORY[0x1E12A2F50](v65, -1, -1);
    }

    goto LABEL_33;
  }

  if (!Siri_Nlu_External_UserDialogAct.toUsoTask()())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v107, &v104);
    outlined init with copy of ReferenceResolutionClientProtocol(v107, v101);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v100 = v95;
      *v76 = 136315394;
      v77 = v105;
      v78 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      v79 = (v78[1])(v77, v78);
      v81 = v80;
      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v100);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2080;
      v83 = v102;
      v84 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      v85 = *(v84 + 24);
      v86 = v84;
      v54 = v98;
      v32 = v96;
      v87 = v85(v83, v86);
      if (v87)
      {
        v88 = 0;
      }

      else
      {
        v88 = 5525326;
      }

      if (v87)
      {
        v89 = 0xE000000000000000;
      }

      else
      {
        v89 = 0xE300000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v100);

      *(v76 + 14) = v90;
      _os_log_impl(&dword_1DC659000, v74, v75, "UserDialog was not of type UsoTask. AnnounceType %s DOES %s allow non-UsoTask parses.", v76, 0x16u);
      v91 = v95;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v91, -1, -1);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
    }

    v92 = v108;
    v93 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    LOBYTE(v92) = (*(v93 + 24))(v92, v93);
    (*(v48 + 8))(v54, v51);
    (*(v32 + 8))(v97, v15);
    if (v92)
    {
      v61 = 11;
    }

    else
    {
      v61 = 1;
    }

    goto LABEL_25;
  }

  v68 = v108;
  v69 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  if (((*(v69 + 32))(v68, v69) & 1) == 0)
  {
    goto LABEL_57;
  }

  v105 = &type metadata for AnnounceTypeGlobalOverride;
  v106 = &protocol witness table for AnnounceTypeGlobalOverride;
  v70 = swift_allocObject();
  *&v104 = v70;
  *(v70 + 16) = 0x6C61626F6C47;
  *(v70 + 24) = 0xE600000000000000;
  *(v70 + 32) = 16777217;
  *(v70 + 40) = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  *(v70 + 48) = v71;
  static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)(&v104, v101);
  __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  if (ExecutionOverrideDecision.rawValue.getter() != 0x747065636361 || v72 != 0xE600000000000000)
  {
    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v32 = v96;
    v54 = v98;
    if (v94)
    {

      goto LABEL_33;
    }

LABEL_57:
    static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)(v107, v99);

    (*(v48 + 8))(v54, v51);
    (*(v32 + 8))(v97, v15);
    return __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  v32 = v96;
  v54 = v98;
LABEL_33:
  (*(v48 + 8))(v54, v51);
  (*(v32 + 8))(v97, v15);
  v61 = 11;
LABEL_25:
  *v99 = v61;
  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

double static AnnounceExecutionOverride.announceTypeForTask(_:)@<D0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_Task();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_Task.task.getter();
  v7 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  (*(v4 + 8))(v6, v3);
  v8 = MEMORY[0x1E129C9E0](v7);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_41:

    if (one-time initialization token for executor == -1)
    {
LABEL_42:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v48, v49))
      {

        goto LABEL_46;
      }

      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v62[0] = v51;
      *v50 = 136315138;
      v52 = dispatch thunk of Graph.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v62);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v48, v49, "Unable to convert UsoGraphSiriNL to UsoTask for graph %s.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);

      goto LABEL_44;
    }

LABEL_49:
    swift_once();
    goto LABEL_42;
  }

  v45 = v8;
  v46 = __CocoaSet.count.getter();
  v8 = v45;
  if (!v46)
  {
    goto LABEL_41;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_49;
  }

  MEMORY[0x1E12A1FE0](0);
LABEL_6:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v62[0] = v13;
    *v12 = 136315394;
    v14 = UsoTask.baseEntityAsString.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v62);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = UsoTask.verbString.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v62);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1DC659000, v10, v11, "Found UsoTask %s::%s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (v61)
  {
    outlined init with take of Any(&v60, v62);
    outlined init with copy of Any(v62, &v60);
    type metadata accessor for UsoTask_read_common_Message();
    if (swift_dynamicCast())
    {

      v20 = v59;
      v59[3] = &type metadata for AnnounceTypeOverrideMessages;
      v20[4] = &protocol witness table for AnnounceTypeOverrideMessages;
      v21 = swift_allocObject();
      *v20 = v21;
      *(v21 + 16) = 0xD000000000000010;
      *(v21 + 24) = 0x80000001DCA7D1B0;
      *(v21 + 32) = 16842753;
      *(v21 + 40) = MEMORY[0x1E69E7CC0];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
LABEL_13:
      swift_arrayDestroy();
LABEL_19:

      *(v21 + 48) = v22;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
      return result;
    }

    type metadata accessor for UsoTask_summarise_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v33 = v59;
      v59[3] = &type metadata for AnnounceTypeOverridePhoneCall;
      v33[4] = &protocol witness table for AnnounceTypeOverridePhoneCall;
      v21 = swift_allocObject();
      *v33 = v21;
      strcpy((v21 + 16), "AnnounceCalls");
      *(v21 + 30) = -4864;
      *(v21 + 32) = 65794;
      *(v21 + 40) = MEMORY[0x1E69E7CC0];
      v34 = &outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init();
LABEL_18:
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v34);
      outlined destroy of ReferenceResolutionClientProtocol?(v34 + 32, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
      goto LABEL_19;
    }

    type metadata accessor for UsoTask_read_common_Notification();
    if (swift_dynamicCast())
    {

      v36 = v59;
      v59[3] = &type metadata for AnnounceTypeOverrideGenericNotification;
      v36[4] = &protocol witness table for AnnounceTypeOverrideGenericNotification;
      v37 = swift_allocObject();
      *v36 = v37;
      *(v37 + 16) = 0xD00000000000001BLL;
      *(v37 + 24) = 0x80000001DCA7D190;
      *(v37 + 32) = 16843009;
      goto LABEL_25;
    }

    type metadata accessor for UsoTask_summarise_common_NotebookList();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_snooze_common_Reminder(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_Reminder(), swift_dynamicCast()))
    {

      v40 = v59;
      v59[3] = &type metadata for AnnounceTypeOverrideReminder;
      v40[4] = &protocol witness table for AnnounceTypeOverrideReminder;
      v21 = swift_allocObject();
      *v40 = v21;
      *(v21 + 16) = 0xD000000000000010;
      *(v21 + 24) = 0x80000001DCA7D170;
      *(v21 + 32) = 16777217;
      *(v21 + 40) = MEMORY[0x1E69E7CC0];
      v41 = &outlined read-only object #2 of AnnounceTypeOverrideReminder.init();
    }

    else
    {
      type metadata accessor for UsoTask_summarise_common_Voicemail();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_noVerb_common_UserEntity();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_send_common_Announcement();
          if (swift_dynamicCast() || (type metadata accessor for UsoTask_reply_common_Announcement(), swift_dynamicCast()) || (type metadata accessor for UsoTask_play_common_Announcement(), swift_dynamicCast()) || (type metadata accessor for UsoTask_stop_common_Announcement(), swift_dynamicCast()))
          {

            v44 = v59;
            v59[3] = &type metadata for AnnounceTypeOverrideMitigationForIntercomRequest;
            v44[4] = &protocol witness table for AnnounceTypeOverrideMitigationForIntercomRequest;
            v21 = swift_allocObject();
            *v44 = v21;
            *(v21 + 16) = 0xD00000000000001ALL;
            *(v21 + 24) = 0x80000001DCA7D110;
            *(v21 + 32) = 16777219;
            *(v21 + 40) = MEMORY[0x1E69E7CC0];
            v34 = &outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init();
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_Workout();
            if (!swift_dynamicCast())
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v62);

              v57 = v59;
              v59[4] = 0;
              *v57 = 0u;
              *(v57 + 1) = 0u;
              goto LABEL_21;
            }

            v56 = v59;
            v59[3] = &type metadata for AnnounceTypeOverrideWorkoutReminder;
            v56[4] = &protocol witness table for AnnounceTypeOverrideWorkoutReminder;
            v21 = swift_allocObject();
            *v56 = v21;
            *(v21 + 16) = 0xD000000000000017;
            *(v21 + 24) = 0x80000001DCA7D0F0;
            *(v21 + 32) = 65537;
            *(v21 + 40) = MEMORY[0x1E69E7CC0];
            v34 = &outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init();
          }

          goto LABEL_18;
        }

        v43 = v59;
        v59[3] = &type metadata for AnnounceTypeOverrideIntercom;
        v43[4] = &protocol witness table for AnnounceTypeOverrideIntercom;
        v37 = swift_allocObject();
        *v43 = v37;
        *(v37 + 16) = 0xD000000000000010;
        *(v37 + 24) = 0x80000001DCA7D130;
        *(v37 + 32) = 16777217;
LABEL_25:
        v38 = MEMORY[0x1E69E7CC0];
        *(v37 + 40) = MEMORY[0x1E69E7CC0];
        v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v38);

        *(v37 + 48) = v39;
        goto LABEL_20;
      }

      v42 = v59;
      v59[3] = &type metadata for AnnounceTypeOverrideVoicemail;
      v42[4] = &protocol witness table for AnnounceTypeOverrideVoicemail;
      v21 = swift_allocObject();
      *v42 = v21;
      *(v21 + 16) = 0xD000000000000011;
      *(v21 + 24) = 0x80000001DCA7D150;
      *(v21 + 32) = 1;
      *(v21 + 40) = MEMORY[0x1E69E7CC0];
      v41 = &outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init();
    }

    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
    goto LABEL_13;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v60, &_sypSgMd, &_sypSgMR);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v23, v24))
  {

LABEL_44:

    goto LABEL_46;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  *&v62[0] = v26;
  *v25 = 136315394;
  v27 = UsoTask.baseEntityAsString.getter();
  v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v62);

  *(v25 + 4) = v29;
  *(v25 + 12) = 2080;
  v30 = UsoTask.verbString.getter();
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v62);

  *(v25 + 14) = v32;
  _os_log_impl(&dword_1DC659000, v23, v24, "Unable to run codegen converter on UsoTask %s::%s.", v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v26, -1, -1);
  MEMORY[0x1E12A2F50](v25, -1, -1);

LABEL_46:
  v55 = v59;
  v59[4] = 0;
  result = 0.0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  return result;
}

unint64_t Siri_Nlu_External_UserDialogAct.toUsoTask()()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result;
    v3 = __CocoaSet.count.getter();
    result = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E12A1FE0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

void __swiftcall AnnounceTypeGlobalOverride.init()(SiriKitRuntime::AnnounceTypeGlobalOverride *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0x6C61626F6C47;
  retstr->name._object = 0xE600000000000000;
  *&retstr->rejectDecision = 16777217;
  retstr->validVerbsForAllEntities._rawValue = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void *static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v64);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v61);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v58);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57[0] = v55;
    *v7 = 136316162;
    v8 = UsoTask.baseEntityAsString.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v57);

    *(v7 + 4) = v10;
    v56 = a2;
    *(v7 + 12) = 2080;
    v11 = UsoTask.verbString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v57);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = v66;
    v15 = v67;
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v57);

    *(v7 + 24) = v19;
    *(v7 + 32) = 2080;
    v20 = v62;
    v21 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v21 + 48))(v20, v21);
    v22 = MEMORY[0x1E12A16D0]();
    v24 = v23;

    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v57);

    *(v7 + 34) = v25;
    *(v7 + 42) = 2080;
    a2 = v56;
    v26 = v59;
    v27 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v27 + 56))(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v28 = Dictionary.description.getter();
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v57);

    *(v7 + 44) = v31;
    _os_log_impl(&dword_1DC659000, v5, v6, "Validating task: %s::%s\nwith AnnounceType: %s\nwith allowed verb set: %s\nand allowed entityToVerb map: %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  }

  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = (*(v33 + 48))(v32, v33);
  v64 = UsoTask.verbString.getter();
  v65 = v35;
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v64;
  v36 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v53, v34);

  if (v36)
  {
    goto LABEL_7;
  }

  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 56))(v38, v39);
  v41 = UsoTask.baseEntityAsString.getter();
  if (!*(v40 + 16))
  {

    goto LABEL_13;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_13:

    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);
    return (*(v52 + 40))(v51, v52);
  }

  v46 = *(*(v40 + 56) + 8 * v43);

  v64 = UsoTask.verbString.getter();
  v65 = v47;
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v64;
  v48 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v53, v46);

  if (v48)
  {
LABEL_7:
    *a2 = 11;
    return result;
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 40))(&v64, v49, v50);
  *a2 = v64;
  return result;
}

uint64_t AnnounceExecutionOverride.getAnnounceTask()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Siri_Nlu_External_Task();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v17;
  v20 = *(v1 + 24);
  if (*(v20 + 16))
  {
    v50 = v16;
    v21 = *(v16 + 16);
    v21(&v48 - v17, v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v3, v18.n128_f64[0]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    (v21)(v14, v19, v3);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = a1;
      v27 = v26;
      v51 = v26;
      *v25 = 136315138;
      (v21)(v11, v14, v3);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v50 + 8))(v14, v3);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v51);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1DC659000, v23, v24, "Found announceTask in SessionState's activeTasks: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v32 = v27;
      a1 = v49;
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v14, v3);
    }

    (*(v50 + 32))(a1, v19, v3);
    return (*(v50 + 56))(a1, 0, 1, v3);
  }

  v33 = *(v1 + 32);
  if (*(v33 + 16))
  {
    v50 = v16;
    v34 = *(v16 + 16);
    v34(v8, v33 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v3, v18.n128_f64[0]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);
    (v34)(v5, v8, v3);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = a1;
      v40 = v39;
      v51 = v39;
      *v38 = 136315138;
      (v34)(v11, v5, v3);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      (*(v50 + 8))(v5, v3);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v51);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1DC659000, v36, v37, "Found announceTask in SessionState's executedTasks: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v45 = v40;
      a1 = v49;
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v5, v3);
    }

    (*(v50 + 32))(a1, v8, v3);
    return (*(v50 + 56))(a1, 0, 1, v3);
  }

  v46 = *(v16 + 56);

  return v46(a1, 1, 1, v3, v18);
}

BOOL AnnounceExecutionOverride.parseContainsAnnounceIntercomTask()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Task();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 184))(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Parse does not contain an announce intercom task.", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    static AnnounceExecutionOverride.announceTypeForTask(_:)(v16);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR);
    (*(v6 + 8))(v9, v5);
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR) == &type metadata for AnnounceTypeOverrideMitigationForIntercomRequest;
  }
}

void __swiftcall AnnounceTypeOverrideMessages.init()(SiriKitRuntime::AnnounceTypeOverrideMessages *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D1B0;
  *&retstr->rejectDecision = 16842753;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverridePhoneCall.init()(SiriKitRuntime::AnnounceTypeOverridePhoneCall *__return_ptr retstr)
{
  strcpy(retstr, "AnnounceCalls");
  HIWORD(retstr->name._object) = -4864;
  *&retstr->rejectDecision = 65794;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825868, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideGenericNotification.init()(SiriKitRuntime::AnnounceTypeOverrideGenericNotification *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD00000000000001BLL;
  retstr->name._object = 0x80000001DCA7D190;
  *&retstr->rejectDecision = 16843009;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  retstr->validEntityToVerbMap._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v1);
}

void __swiftcall AnnounceTypeOverrideReminder.init()(SiriKitRuntime::AnnounceTypeOverrideReminder *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D170;
  *&retstr->rejectDecision = 16777217;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideReminder.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideVoicemail.init()(SiriKitRuntime::AnnounceTypeOverrideVoicemail *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000011;
  retstr->name._object = 0x80000001DCA7D150;
  *&retstr->rejectDecision = 1;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideIntercom.init()(SiriKitRuntime::AnnounceTypeOverrideIntercom *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D130;
  *&retstr->rejectDecision = 16777217;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  retstr->validEntityToVerbMap._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v1);
}

void __swiftcall AnnounceTypeOverrideMitigationForIntercomRequest.init()(SiriKitRuntime::AnnounceTypeOverrideMitigationForIntercomRequest *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD00000000000001ALL;
  retstr->name._object = 0x80000001DCA7D110;
  *&retstr->rejectDecision = 16777219;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825AA0, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideWorkoutReminder.init()(SiriKitRuntime::AnnounceTypeOverrideWorkoutReminder *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000017;
  retstr->name._object = 0x80000001DCA7D0F0;
  *&retstr->rejectDecision = 65537;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825B28, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

uint64_t AnnounceExecutionOverride.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  return v0;
}

uint64_t AnnounceExecutionOverride.__deallocating_deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance AnnounceExecutionOverride()
{
  (*(**v0 + 152))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AnnounceTypeGlobalOverride.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t AnnounceUsoVerbOverride.rawValue.getter(char a1)
{
  result = 0x656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x656C6261736964;
      break;
    case 2:
      result = 0x6B6361626C6C6163;
      break;
    case 3:
      result = 1819042147;
      break;
    case 4:
      result = 0x726577736E61;
      break;
    case 5:
      result = 0x7075676E6168;
      break;
    case 6:
      result = 1684956531;
      break;
    case 7:
      result = 0x796C706572;
      break;
    case 8:
      result = 2036427888;
      break;
    case 9:
      result = 0x74736575716572;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x657A6F6F6E73;
      break;
    case 12:
      result = 0x736972616D6D7573;
      break;
    case 13:
      result = 0x657461647075;
      break;
    case 14:
      result = 1886352499;
      break;
    case 15:
      result = 1684104562;
      break;
    case 16:
      result = 0x746165706572;
      break;
    case 17:
      result = 1852141679;
      break;
    case 18:
      result = 0x657461657263;
      break;
    case 19:
      result = 0x6573756170;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t AnnounceUsoEntity.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x535F6E6F6D6D6F63;
    v6 = 0x6E456F4E5F6F7375;
    if (a1 != 10)
    {
      v6 = 0x575F6E6F6D6D6F63;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x525F6E6F6D6D6F63;
    v8 = 0xD000000000000013;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4D5F6E6F6D6D6F63;
    v2 = 0xD000000000000013;
    if (a1 == 4)
    {
      v2 = 0x415F6E6F6D6D6F63;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000010;
    if (a1 != 1)
    {
      v3 = 0x455F6E6F6D6D6F63;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeGlobalOverride@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x6C61626F6C47;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 16777217;
  *(a1 + 24) = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideMessages@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D1B0;
  *(a1 + 16) = 16842753;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverridePhoneCall@<X0>(uint64_t a1@<X8>)
{
  strcpy(a1, "AnnounceCalls");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 65794;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825868, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideIntercom@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D130;
  *(a1 + 16) = 16777217;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideMitigationForIntercomRequest@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001DCA7D110;
  *(a1 + 16) = 16777219;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825AA0, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideGenericNotification@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x80000001DCA7D190;
  *(a1 + 16) = 16843009;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideReminder@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D170;
  *(a1 + 16) = 16777217;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideReminder.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideWorkoutReminder@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001DCA7D0F0;
  *(a1 + 16) = 65537;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825B28, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideVoicemail@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001DCA7D150;
  *(a1 + 16) = 1;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceUsoEntity@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AnnounceUsoEntity.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceUsoEntity@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceUsoEntity.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnnounceUsoEntity(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceUsoVerbOverride@<X0>(Swift::String *a1@<X0>, SiriKitRuntime::AnnounceUsoVerbOverride_optional *a2@<X8>)
{
  result = specialized AnnounceUsoVerbOverride.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceUsoVerbOverride@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceUsoVerbOverride.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag()
{
  result = lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag;
  if (!lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag;
  if (!lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task)
  {
    type metadata accessor for Siri_Nlu_External_Task();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task);
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

{
  type metadata accessor for LNSystemProtocol();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t specialized AnnounceUsoEntity.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceUsoEntity.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized AnnounceUsoVerbOverride.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceUsoEntity and conformance AnnounceUsoEntity()
{
  result = lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity;
  if (!lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride()
{
  result = lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride;
  if (!lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceExecutionOverride(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceExecutionOverride;
  if (!type metadata singleton initialization cache for AnnounceExecutionOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnnounceExecutionOverride(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Siri_Nlu_External_UserParse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_UserParse?)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Siri_Nlu_External_UserParse?);
    }
  }
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

uint64_t destroy for AnnounceTypeGlobalOverride(void *a1)
{
}

uint64_t initializeWithCopy for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnnounceTypeGlobalOverride(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnnounceTypeGlobalOverride(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AnnounceUsoEntity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnnounceUsoEntity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceUsoVerbOverride(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceUsoVerbOverride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

uint64_t AnyFlow.instrumentationId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA66060;
  v1 = ObjectIdentifier.hashValue.getter();
  v2 = MEMORY[0x1E69E65A8];
  *(v0 + 56) = MEMORY[0x1E69E6530];
  *(v0 + 64) = v2;
  *(v0 + 32) = v1;

  return String.init(format:_:)();
}

SiriKitRuntime::AppLaunchAffinityScorer __swiftcall AppLaunchAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9C0;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized AppLaunchAffinityScorer.score(_:environment:)(double a1)
{
  v1 = type metadata accessor for RREntity();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = type metadata accessor for RRCandidate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v24[0])
  {
    v12 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v12)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v13 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topOpenableEntity(candidates:)(v13, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v14 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v15 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v16 = v7;
LABEL_19:
    outlined destroy of ReferenceResolutionClientProtocol?(v16, v14, v15);
    return 5;
  }

  (*(v9 + 32))(v11, v7, v8);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v2 + 8))(v4, v1);
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v24[3])
  {
    (*(v9 + 8))(v11, v8);
LABEL_18:
    v14 = &_sypSgMd;
    v15 = &_sypSgMR;
    v16 = v24;
    goto LABEL_19;
  }

  outlined init with copy of Any?(v24, v23);
  type metadata accessor for UsoEntity_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoEntity_common_Window();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoEntity_common_AppEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v9 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "AppLaunchAffinityScorer found valid Window/App entity for open::uso_NoEntity parse", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return 3;
}

{
  v19 = type metadata accessor for RREntity();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v8 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v18 = *(v8 + 16);
  if (!v18)
  {
LABEL_9:

    return 5;
  }

  v9 = 0;
  v17 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v16[1] = v5 + 16;
  v10 = (v1 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    (*(v5 + 16))(v7, v17 + *(v5 + 72) * v9, v4);
    RRCandidate.entity.getter();
    (*(v5 + 8))(v7, v4);
    RREntity.usoEntity.getter();
    (*v10)(v3, v19);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v22)
    {
      break;
    }

LABEL_3:
    ++v9;
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sypSgMd, &_sypSgMR);
    if (v18 == v9)
    {
      goto LABEL_9;
    }
  }

  outlined init with copy of Any?(v21, v20);
  type metadata accessor for UsoEntity_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoEntity_common_Window();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_once();
LABEL_11:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v13, v14, "AppLaunchAffinityScorer found valid app/window entity for close::common_App parse", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  return 3;
}

uint64_t specialized AppLaunchAffinityScorer.score(input:environment:)(uint64_t a1)
{
  v31[1] = a1;
  v1 = type metadata accessor for USOParse();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31[0] = v5;
    v13 = v4;
    v14 = v1;
    v15 = v2;
    v16 = v12;
    *v12 = 0;
    _os_log_impl(&dword_1DC659000, v10, v11, "AppLaunchAffinityScorer running", v12, 2u);
    v17 = v16;
    v2 = v15;
    v1 = v14;
    v4 = v13;
    v5 = v31[0];
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  Input.parse.getter();
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x1E69D0168])
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "AppLaunchAffinityScorer got unimplemented parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 2;
  }

  (*(v6 + 96))(v8, v5);
  (*(v2 + 32))(v4, v8, v1);
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    if (v34)
    {
      outlined init with copy of Any?(v33, v32);
      type metadata accessor for UsoTask_open_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v19 = specialized AppLaunchAffinityScorer.score(_:environment:)(v18);
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_close_uso_NoEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

        if (v31[2] && (v26 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v26))
        {
          dispatch thunk of CodeGenBase.usoIdentifiers.getter();

          (*(v2 + 8))(v4, v1);
        }

        else
        {
          (*(v2 + 8))(v4, v1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_31:
        outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
        return 2;
      }

      type metadata accessor for UsoTask_close_common_App();
      if (swift_dynamicCast())
      {
        v19 = specialized AppLaunchAffinityScorer.score(_:environment:)(v27);
LABEL_10:
        v20 = v19;
        v21 = v19;

        (*(v2 + 8))(v4, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        if (v21 != 5)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
          return v20;
        }

        goto LABEL_31;
      }

      type metadata accessor for UsoTask_open_common_Setting();
      if (swift_dynamicCast() || (type metadata accessor for UsoTask_enable_common_Setting(), swift_dynamicCast()))
      {
        (*(v2 + 8))(v4, v1);

        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "AppLaunchAffinityScorer got unimplemented USO parse", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_31;
  }

  (*(v2 + 8))(v4, v1);
  return 2;
}

uint64_t AppResolutionResult.selectedApp.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppResolutionResult();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69CE248] || v7 == *MEMORY[0x1E69CE258])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

SiriKitRuntime::AppResolutionType_optional __swiftcall AppResolutionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppResolutionType.init(rawValue:), v3);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t AppResolutionType.rawValue.getter()
{
  result = 0x6E49746F4E707041;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6465727265666E49;
      break;
    case 5:
      v2 = 9;
      goto LABEL_14;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x746C7561666544;
      break;
    case 8:
      v2 = 5;
LABEL_14:
      result = v2 | 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x6E776F6E6B6E55;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0x656C655372657355;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppResolutionType()
{
  v0 = AppResolutionType.rawValue.getter();
  v2 = v1;
  if (v0 == AppResolutionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type AppResolutionType and conformance AppResolutionType()
{
  result = lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType;
  if (!lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppResolutionType()
{
  Hasher.init(_seed:)();
  AppResolutionType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppResolutionType(uint64_t a1)
{
  AppResolutionType.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppResolutionType(uint64_t a1)
{
  Hasher.init(_seed:)();
  AppResolutionType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AppResolutionType@<X0>(unint64_t *a1@<X8>)
{
  result = AppResolutionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [AppResolutionType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime17AppResolutionTypeOGMd, &_sSay14SiriKitRuntime17AppResolutionTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppResolutionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppResolutionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *AppShortcutExpansionContext.emptyContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  return &static AppShortcutExpansionContext.emptyContext;
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:), v4, 0);
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v5 = v1 + 32;
    v4 = *(v1 + 32);
    v3 = *(v5 + 8);

    v6 = v0[1];

    return v6(v2, v4, v3);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:);
    v9 = v0[9];
    v10 = v0[8];

    return AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(v10, v9);
  }
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v4[3];
  v4[3] = v3;
  v4[4] = v1;
  v4[5] = v2;

  outlined consume of AppShortcutExpansionContext?(v5);
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[1];

  return v9(v8, v6, v7);
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:), v5, 0);
}

unint64_t ConditionalIntentMetadataStore.debugDescription.getter()
{
  _StringGuts.grow(_:)(29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSbGGMd, &_sSDySSSDySSSbGGMR);
  v0 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v0);

  return 0xD00000000000001BLL;
}

Swift::Bool __swiftcall ConditionalIntentMetadataStore.isConditionalIntent(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (object = actionId._object, countAndFlagsBits = actionId._countAndFlagsBits, v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object), (v7 & 1) != 0) && *(*(*(v3 + 56) + 8 * v6) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall ConditionalIntentMetadataStore.isPersistedConditionalIntent(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  object = actionId._object;
  countAndFlagsBits = actionId._countAndFlagsBits;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if (v10)
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t IntentStatesStore.__allocating_init(conditionalIntentsStates:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t IntentStatesStore.debugDescription.getter()
{
  _StringGuts.grow(_:)(21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSo8NSNumberCGGMd, &_sSDySSSDySSSo8NSNumberCGGMR);
  v0 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v0);

  return 0xD000000000000013;
}

Swift::Bool __swiftcall IntentStatesStore.isConditionallyActive(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16))
  {
    object = actionId._object;
    countAndFlagsBits = actionId._countAndFlagsBits;
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);
      if (*(v8 + 16))
      {

        v9 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          v12 = [v11 BOOLValue];

          return v12;
        }
      }
    }
  }

  return 0;
}

uint64_t one-time initialization function for emptyContext()
{
  type metadata accessor for ConditionalIntentMetadataStore();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for IntentStatesStore();
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  *(result + 16) = v1;
  static AppShortcutExpansionContext.emptyContext = v3;
  *algn_1EE15DC78 = v0;
  qword_1EE15DC80 = result;
  return result;
}

{
  if (one-time initialization token for emptySessionContext != -1)
  {
    swift_once();
  }

  v0 = static LinkExpansionContext.SessionContext.emptySessionContext;
  v1 = one-time initialization token for emptyTurnContext;

  if (v1 != -1)
  {
    swift_once();
  }

  static LinkExpansionContext.emptyContext = v0;
  unk_1ECCA1100 = static LinkExpansionContext.TurnContext.emptyTurnContext;
}

uint64_t static AppShortcutExpansionContext.emptyContext.getter()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  v0 = static AppShortcutExpansionContext.emptyContext;

  return v0;
}

unint64_t AppShortcutExpansionContext.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(26);

  v3 = Set.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7D2C0);

  _StringGuts.grow(_:)(23);

  type metadata accessor for ConditionalIntentMetadataStore();

  v4 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA7D2E0);

  _StringGuts.grow(_:)(28);

  type metadata accessor for IntentStatesStore();

  v5 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v5);

  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA7D300);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  return 0xD00000000000001CLL;
}

uint64_t AppShortcutExpansionContextBuilder.cachedConditionalIntentsMetadata.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t AppShortcutExpansionContextBuilder.appShortcutExpansionContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of AppShortcutExpansionContext?(v1);
  return v1;
}

uint64_t AppShortcutExpansionContextBuilder.appShortcutExpansionContext.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[3];
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return outlined consume of AppShortcutExpansionContext?(v7);
}

void *AppShortcutExpansionContextBuilder.__allocating_init(metadataProvider:appShortcutStateProvider:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(v10, v17, v4, v6, v12, v5, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

void *AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v4, 0);
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[AppShortcutExpansionContext] Collecting TurnContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[11];

  v0[16] = specialized AppShortcutExpansionContextBuilder.extractOnScreenBundleIDs(from:)(v6);
  swift_beginAccess();
  v7 = v0[13];
  if (*(*(*(v5 + 16) + 16) + 16))
  {
    v8 = v7[14];
    v9 = v7[15];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v8);
    v10 = v7[2];
    v0[19] = v10;
    v11 = *(v9 + 8);

    v18 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);
    v13 = v0[12];

    return v18(v13, v10, v8, v9);
  }

  else
  {
    v15 = v7[9];
    v16 = v7[10];
    __swift_project_boxed_opaque_existential_1(v7 + 6, v15);
    v19 = (*(v16 + 16) + **(v16 + 16));
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);

    return v19(v15, v16);
  }
}

{
  v1 = v0[13];
  v2 = specialized AppShortcutExpansionContextBuilder.extractActionMetadata(actionsMetadata:)(v0[18]);

  *(v1 + 16) = v2;

  v3 = v0[13];
  v4 = v3[14];
  v5 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v4);
  v6 = v3[2];
  v0[19] = v6;
  v7 = *(v5 + 8);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);
  v9 = v0[12];

  return v11(v9, v6, v4, v5);
}

{
  v17 = v0;
  v1 = v0[21];
  v2 = v0[13];

  type metadata accessor for IntentStatesStore();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = *(v2 + 16);
  swift_retain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[8] = v7;
    v0[9] = v4;
    v0[10] = v3;

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v5, v6, "[AppShortcutExpansionContext] TurnContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v13 = v0[1];
  v14 = v0[16];

  return v13(v14, v4, v3);
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v2, 0);
}

{
  v2 = *(*v1 + 112);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v2, 0);
}

uint64_t *AppShortcutExpansionContextBuilder.deinit()
{

  outlined consume of AppShortcutExpansionContext?(v0[3]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  return v0;
}

uint64_t AppShortcutExpansionContextBuilder.__deallocating_deinit()
{

  outlined consume of AppShortcutExpansionContext?(v0[3]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);

  return swift_deallocClassInstance();
}

uint64_t outlined copy of AppShortcutExpansionContext?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[9] = a4;
  a3[10] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 6);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[14] = a5;
  a3[15] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_0(a3 + 11);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  type metadata accessor for ConditionalIntentMetadataStore();
  a3[4] = 0;
  a3[5] = 0;
  a3[3] = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x1E69E7CC8];
  a3[2] = v15;
  return a3;
}

uint64_t destroy for AppShortcutExpansionContext(void *a1)
{
}

uint64_t *initializeBufferWithCopyOfBuffer for AppShortcutExpansionContext(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AppShortcutExpansionContext(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for AppShortcutExpansionContext(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutExpansionContext(uint64_t *a1, int a2)
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

uint64_t specialized AppShortcutExpansionContextBuilder.extractOnScreenBundleIDs(from:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v128 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v95 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - v10;
  v131 = type metadata accessor for RRMetadata();
  v12 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  v123 = type metadata accessor for RREntity();
  v18 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v95 - v23;
  v24 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v95 - v27;
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v111 = &v95 - v32;
  v33 = *(a1 + 16);
  v122 = v29;
  v115 = v33;
  v97 = v30;
  v96 = v18;
  if (v33)
  {
    v130 = v14;
    v34 = 0;
    v36 = *(v30 + 16);
    v35 = v30 + 16;
    v113 = v36;
    v98 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v112 = a1 + v98;
    v119 = *(v35 + 56);
    v120 = (v18 + 8);
    v109 = (v35 - 8);
    v136 = (v12 + 32);
    v137 = v12 + 16;
    v135 = (v12 + 88);
    v134 = *MEMORY[0x1E69D27E8];
    v124 = (v12 + 96);
    v125 = (v12 + 8);
    v133 = (v3 + 32);
    v106 = *MEMORY[0x1E69D2918];
    v105 = (v3 + 104);
    v126 = v3;
    v104 = (v3 + 8);
    v100 = *MEMORY[0x1E69D28F8];
    v114 = v35;
    v99 = (v35 + 16);
    v103 = MEMORY[0x1E69E7CC0];
    v132 = v2;
    v37 = v111;
    v38 = v29;
    v102 = v11;
    v107 = v12;
    while (1)
    {
      v121 = v34;
      v113(v37, v112 + v119 * v34, v38, v31);
      v39 = v116;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v40 = *v120;
      (*v120)(v39, v123);
      v41 = UsoTask.verbString.getter();
      v43 = v42;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      if (v41 == kUsoCommonAppEntityName._countAndFlagsBits && v43 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v38 = v122;
        if ((v45 & 1) == 0)
        {
          (*v109)(v37, v122);
          goto LABEL_4;
        }
      }

      v46 = v108;
      RRCandidate.entity.getter();
      v47 = RREntity.metadata.getter();
      v40(v46, v123);
      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v110 = v47;
        v50 = v47 + v49;
        v51 = *(v12 + 72);
        v53 = MEMORY[0x1E69E7CC0];
        v54 = v131;
        v55 = v132;
        v56 = v130;
        v129 = *(v12 + 16);
        v52 = v129;
        v129(v17, v50, v131);
        while (1)
        {
          (*v136)(v56, v17, v54);
          v57 = (*v135)(v56, v54);
          if (v57 == v134)
          {
            v58 = v17;
            (*v124)(v56, v54);
            v59 = *v133;
            v60 = v128;
            (*v133)(v128, v56, v55);
            v61 = v55;
            v62 = v127;
            v59(v127, v60, v61);
            v59(v138, v62, v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
            }

            v64 = v53[2];
            v63 = v53[3];
            v56 = v130;
            if (v64 >= v63 >> 1)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v53);
            }

            v53[2] = v64 + 1;
            v65 = v53 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v64;
            v55 = v132;
            v59(v65, v138, v132);
            v17 = v58;
            v54 = v131;
            v52 = v129;
          }

          else
          {
            (*v125)(v56, v54);
          }

          v50 += v51;
          if (!--v48)
          {
            break;
          }

          v52(v17, v50, v54);
        }

        v11 = v102;
      }

      else
      {

        v53 = MEMORY[0x1E69E7CC0];
      }

      v66 = *v105;
      v67 = v132;
      (*v105)(v11, v106, v132);
      v68 = specialized Sequence<>.contains(_:)(v11, v53);
      v69 = *v104;
      (*v104)(v11, v67);
      if (v68)
      {
        v66(v11, v100, v67);
        v70 = specialized Sequence<>.contains(_:)(v11, v53);

        v69(v11, v67);
        if (!v70)
        {
          v71 = *v99;
          v38 = v122;
          (*v99)(v101, v111, v122);
          v72 = v103;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 16) + 1, 1);
            v72 = v139;
          }

          v75 = *(v72 + 16);
          v74 = *(v72 + 24);
          v12 = v107;
          if (v75 >= v74 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
            v72 = v139;
          }

          *(v72 + 16) = v75 + 1;
          v103 = v72;
          v71((v72 + v98 + v75 * v119), v101, v38);
          v37 = v111;
          goto LABEL_4;
        }

        v37 = v111;
        v38 = v122;
        (*v109)(v111, v122);
      }

      else
      {
        v37 = v111;
        v38 = v122;
        (*v109)(v111, v122);
      }

      v12 = v107;
LABEL_4:
      v34 = v121 + 1;
      if (v121 + 1 == v115)
      {
        goto LABEL_38;
      }
    }
  }

  v103 = MEMORY[0x1E69E7CC0];
  v38 = v29;
LABEL_38:
  v76 = *(v103 + 16);
  if (v76)
  {
    v139 = MEMORY[0x1E69E7CC0];
    v77 = v103;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
    v78 = v139;
    v79 = v97 + 16;
    v80 = *(v97 + 16);
    v81 = v77 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v137 = *(v97 + 72);
    v138 = v80;
    v136 = (v96 + 8);
    v82 = (v97 + 8);
    do
    {
      v83 = v117;
      v84 = v79;
      (v138)(v117, v81, v38);
      v85 = v118;
      RRCandidate.entity.getter();
      v86 = RREntity.appBundleId.getter();
      v87 = v38;
      v89 = v88;
      (*v136)(v85, v123);
      (*v82)(v83, v87);
      v139 = v78;
      v91 = *(v78 + 16);
      v90 = *(v78 + 24);
      if (v91 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v78 = v139;
      }

      *(v78 + 16) = v91 + 1;
      v92 = v78 + 16 * v91;
      *(v92 + 32) = v86;
      *(v92 + 40) = v89;
      v81 += v137;
      --v76;
      v38 = v122;
      v79 = v84;
    }

    while (v76);
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
  }

  v93 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v78);

  return v93;
}

uint64_t specialized AppShortcutExpansionContextBuilder.extractActionMetadata(actionsMetadata:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *MEMORY[0x1E69AC358];
  v60 = a1;
  v61 = v6;

  v55 = 0;
  v7 = 0;
  v56 = MEMORY[0x1E69E7CC8];
  v58 = v5;
  v59 = v1;
LABEL_6:
  if (v4)
  {
    v8 = v7;
LABEL_11:
    v62 = (v4 - 1) & v4;
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    v10 = (*(v60 + 48) + 16 * v9);
    v11 = *(*(v60 + 56) + 8 * v9);
    v12 = v10[1];
    v57 = *v10;
    v13 = v11 + 64;
    v14 = 1 << *(v11 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v11 + 64);
    v17 = (v14 + 63) >> 6;
    v63 = v12;

    v67 = v11;

    v18 = 0;
    v65 = v11 + 64;
    v66 = v17;
    while (v16)
    {
LABEL_22:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v18 << 6);
      v22 = *(v67 + 56);
      v23 = (*(v67 + 48) + 16 * v21);
      v24 = v23[1];
      v64 = *v23;
      v25 = *(v22 + 8 * v21);

      v26 = v25;
      v27 = [v26 systemProtocols];
      type metadata accessor for LNSystemProtocol();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = [objc_opt_self() conditionallyEnabledProtocol];
      v68 = v29;
      MEMORY[0x1EEE9AC00](v29);
      v53[2] = &v68;
      v30 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v53, v28);

      if (v30)
      {
        v31 = [v26 systemProtocolMetadata];
        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
        lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier();
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v32 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v33 & 1) != 0))
        {
          swift_unknownObjectRetain();

          objc_opt_self();
          v34 = swift_dynamicCastObjCClass();
          v35 = v24;
          if (v34)
          {
            v36 = [v34 persistState];
            _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v55, 0);
            v37 = v56;
            LODWORD(v55) = swift_isUniquelyReferenced_nonNull_native();
            v68 = v37;
            v39 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v63);
            v40 = v37[2];
            v41 = (v38 & 1) == 0;
            v42 = v40 + v41;
            if (__OFADD__(v40, v41))
            {
              goto LABEL_40;
            }

            v43 = v37[3];
            v54 = v36;
            if (v43 >= v42)
            {
              if ((v55 & 1) == 0)
              {
                v51 = v38;
                specialized _NativeDictionary.copy()();
                LOBYTE(v38) = v51;
              }
            }

            else
            {
              LODWORD(v56) = v38;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v55);
              v44 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v63);
              v45 = v38 & 1;
              LOBYTE(v38) = v56;
              if ((v56 & 1) != v45)
              {
                goto LABEL_41;
              }

              v39 = v44;
            }

            v46 = v39;
            v47 = v68;
            if ((v38 & 1) == 0)
            {
              v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
              specialized _NativeDictionary._insert(at:key:value:)(v39, v57, v63, v48, v47);
            }

            v56 = v47;
            v49 = v47[7];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v68 = *(v49 + 8 * v46);
            *(v49 + 8 * v46) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v64, v35, isUniquelyReferenced_nonNull_native);

            *(v49 + 8 * v46) = v68;
            swift_unknownObjectRelease();

            v55 = specialized thunk for @callee_guaranteed () -> (@owned [String : Bool]);
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v13 = v65;
      v17 = v66;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v7 = v8;
        v5 = v58;
        v1 = v59;
        v4 = v62;
        goto LABEL_6;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v55, 0);
        type metadata accessor for ConditionalIntentMetadataStore();
        result = swift_allocObject();
        *(result + 16) = v56;
        return result;
      }

      v4 = *(v1 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier;
  if (!lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier)
  {
    type metadata accessor for LNSystemProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier);
  }

  return result;
}

void *AppShortcutParseExpansion.__allocating_init(appShortcutExpansionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t AppShortcutParseExpansion.appShortcutExpansionContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *AppShortcutParseExpansion.init(appShortcutExpansionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v69 = a3;
  v64 = a2;
  v5 = type metadata accessor for Siri_Nlu_External_Parser();
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58[-v9];
  v65 = type metadata accessor for Siri_Nlu_External_UserParse();
  v11 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v72 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v67 = *(a1 + 32);
  v66 = *(a1 + 36);
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v17 = swift_beginAccess();
  v18 = static LinkFeature.forceEnabled;
  if (*(static LinkFeature.forceEnabled + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v20 & 1) != 0))
  {
    if (*(*(v18 + 56) + v19) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v71[3] = &type metadata for LinkFeature;
    v71[4] = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v21 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v62 = v5;
  v22 = v14;
  v23 = v64;
  v24 = *(v64 + 24);

  v63 = v22;
  v25._countAndFlagsBits = v22;
  v25._object = v72;
  v26._countAndFlagsBits = v15;
  v26._object = v16;
  if (ConditionalIntentMetadataStore.isConditionalIntent(appBundleId:actionId:)(v25, v26))
  {
    v27 = v15;
    v28 = v16;
    v60 = v24;

    v29._countAndFlagsBits = v63;
    v30 = v72;
    v29._object = v72;
    v31._countAndFlagsBits = v27;
    v31._object = v16;
    v61 = v27;
    v32 = IntentStatesStore.isConditionallyActive(appBundleId:actionId:)(v29, v31);

    if (!v32)
    {
      v53 = v61;
      v54 = v63;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.executor);
      v56 = v72;

      v57 = v28;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_24;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v71);
      *(v45 + 12) = 2080;
      *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v57, v71);
      v47 = "[AppShortcutExpansion] Dropping disabled conditional intent: %s - %s";
      goto LABEL_23;
    }

    v33 = v63;
    v34._countAndFlagsBits = v63;
    v34._object = v30;
    v35._countAndFlagsBits = v61;
    v35._object = v28;
    v59 = ConditionalIntentMetadataStore.isPersistedConditionalIntent(appBundleId:actionId:)(v34, v35);
    v36 = specialized Set.contains(_:)(v33, v30, *(v23 + 16));
    v37 = v61;
    if (!v59 && (v36 & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.executor);
      v39 = v72;

      v40 = v28;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v63;
      if (!v43)
      {
        goto LABEL_24;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v39, v71);
      *(v45 + 12) = 2080;
      *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v71);
      v47 = "[AppShortcutExpansion] Dropping non persisted conditional intent as the bundle isn't on screen: %s - %s";
LABEL_23:
      _os_log_impl(&dword_1DC659000, v41, v42, v47, v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);
LABEL_24:

      v50 = 1;
      v49 = v70;
      goto LABEL_18;
    }
  }

  v5 = v62;
LABEL_17:
  (*(v11 + 16))(v13, v69, v65);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v68 + 8))(v7, v5);
  v48 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  (*(*(v48 - 8) + 56))(v10, 0, 1, v48);

  LOBYTE(v71[0]) = v66;
  v49 = v70;
  USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
  v50 = 0;
LABEL_18:
  v51 = type metadata accessor for USOParse();
  return (*(*(v51 - 8) + 56))(v49, v50, 1, v51);
}

uint64_t AppShortcutParseExpansion.expand(nlParse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Siri_Nlu_External_Parser();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = Siri_Nlu_External_UserParse.appShortcuts.getter();
  if (*(v15 + 2))
  {
    MEMORY[0x1EEE9AC00](v15);
    *&v23[-16] = v2;
    *&v23[-8] = a1;
    v17 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:), &v23[-32], v16);
  }

  else
  {

    v18 = Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter();
    if (!*(v18 + 2))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR);
      type metadata accessor for USOParse();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DCA66060;
      (*(v12 + 16))(v14, a1, v11);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v5 + 8))(v7, v4);
      v22 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      return v20;
    }

    MEMORY[0x1EEE9AC00](v18);
    *&v23[-16] = a1;
    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(partial apply for closure #1 in AppShortcutParseExpansion.expand(nlParse:), &v23[-32], v19);
  }

  v20 = v17;

  return v20;
}

uint64_t closure #1 in AppShortcutParseExpansion.expand(nlParse:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = *(a1 + 20);
  (*(v12 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v13 = *MEMORY[0x1E69D0970];
  v14 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);

  v18 = v11;
  return USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
}

uint64_t AppShortcutParseExpansion.deinit()
{

  return v0;
}

uint64_t AppShortcutParseExpansion.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(a1, a2);
}

uint64_t AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}